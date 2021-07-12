#!/usr/bin/env python3

import shutil
import urllib.request
import zipfile
import os.path
import io
import re
from collections import defaultdict

SAS_SCRIPT_ZIP_URL = 'https://www2.census.gov/programs-surveys/decennial/rdo/about/2020-census-program/Phase3/SupportMaterials/2020PL_SAS_import_scripts.zip'
LOCAL_SAS_ZIPFILE = SAS_SCRIPT_ZIP_URL.split('/')[-1]

if not os.path.isfile(LOCAL_SAS_ZIPFILE):

    with urllib.request.urlopen(SAS_SCRIPT_ZIP_URL) as response:
        with open(LOCAL_SAS_ZIPFILE,'wb') as fn:
            shutil.copyfileobj(response, fn)
    print("Downloaded SAS script ZIP")

# let's skip the geoheaders, since all we care about is blocks
SAS_FILES = [
    'pl_geohd_2020_notab_dar.sas',
    'pl_part1_2020_notab_dar.sas',  
    'pl_part2_2020_notab_dar.sas',  
    'pl_part3_2020_notab_dar.sas'
]


CREATE_TABLE_SQL_FILENAME = "01_create_import_tables.sql"
CREATE_VIEW_SQL_FILENAME = "03_create_views.sql"

# pattern to parse out useful info from the field def section of the SAS script
SAS_COLUMN_PAT = re.compile('^(\S+)\s+\$(\d+)\s+\/\*(.+)\*\/.*$')
# pattern to distinguish data columns from linkage columns
DATA_COLUMN_PAT = re.compile(r'^(P|H)(\d{3})\d+$')
view_prep = defaultdict(list)

# we'll also create python structures which could be used for CSV headers
py_output_file = open("headers.py","w")

with open(CREATE_TABLE_SQL_FILENAME,'w') as output_file:
    with zipfile.ZipFile(LOCAL_SAS_ZIPFILE) as zf:
        for fn in SAS_FILES:
            output_file.write(f"-- {fn}\n")
            if 'geohd' in fn:
                table_name = "tmp_geoheader"
                py_struct_prefix = 'GEOHEADER'
            else:
                table_number = re.search('part(\d+)_',fn).group(1)
                table_name = f"tmp_seq{table_number.zfill(4)}"
                py_struct_prefix = f'SEQ{table_number.zfill(2)}'

            cols = []
            in_the_meat = False

            # loop through and build a data structure for all of the columns
            with io.TextIOWrapper(zf.open(fn), encoding="utf-8") as sas_file:
                for l in sas_file:
                    l = l[:-1] # trim newline
                    if l == 'LENGTH':
                        in_the_meat = True
                    elif l == ';' or l == 'INPUT':
                        in_the_meat = False
                    elif in_the_meat:
                        if SAS_COLUMN_PAT.match(l):
                            (col,length,comment) = SAS_COLUMN_PAT.match(l).groups()
                            cols.append((col,length,comment))
                            # walrus operator (:=) req python 3.8+
                            # build the list of columns for each view based on logical tables
                            if match := DATA_COLUMN_PAT.match(col):
                                ltr,nbr = match.groups()
                                view_name = f"{ltr.upper()}{nbr.lstrip('0')}"
                                view_prep[view_name].append((table_name,col))
                        else:
                            print(f"Line in {fn} doesn't match expected pattern {l}")
            # write the SQL DDL
            output_file.write(f"DROP TABLE IF EXISTS {table_name} CASCADE;\n")
            output_file.write(f"CREATE TABLE {table_name} (\n")
            for i,(col, length, comment) in enumerate(cols):
                if DATA_COLUMN_PAT.match(col):
                    output_file.write(f"\t{col} INTEGER")
                else:
                    output_file.write(f"\t{col} VARCHAR({length})")
                if i+1 < len(cols):
                    output_file.write(",\n")
                else:
                    output_file.write("\n")
            output_file.write(')\n')
            output_file.write("WITH (autovacuum_enabled = FALSE, toast.autovacuum_enabled = FALSE);\n\n")
            for col, length, comment in cols:
                escaped_comment = comment.replace("'","''")
                output_file.write(f"COMMENT ON COLUMN {table_name}.{col} IS '{escaped_comment}';\n")
            output_file.write("\n\n")

            # write arrays of column names
            py_output_file.write(f"{py_struct_prefix}_COLS = [  \n")
            for col, length, comment in cols:
                py_output_file.write(f"    '{col}', # {comment} \n")
            py_output_file.write("]\n\n")

            # write dtypes
            py_output_file.write(f"{py_struct_prefix}_DTYPES = {{  \n")
            for col, length, comment in cols:
                if DATA_COLUMN_PAT.match(col):
                    dtype = 'int'
                else:
                    dtype = 'o'

                py_output_file.write(f"    '{col}': '{dtype}', # {comment} \n")
            py_output_file.write("}\n\n")



                

print(f"wrote {CREATE_TABLE_SQL_FILENAME}")

with open(CREATE_VIEW_SQL_FILENAME,"w") as output_file:
    output_file.write("-- Create views\n")
    for view, cols in view_prep.items():
        source_tables = set(x[0] for x in cols)
        assert len(source_tables) == 1 # not dealing with data that spans sequence files today
        source_table = cols[0][0]
        hdr = f"""
    SELECT g.geoid full_geoid,
    g.geocode geoid,
    """
        ftr = f"""
    FROM tmp_geoheader g,
    {source_table} d
    WHERE g.fileid   = d.fileid
    AND g.stusab = d.stusab
    AND g.chariter = d.chariter
    AND g.logrecno = d.logrecno
    AND g.sumlev = '750';

    """

        output_file.write(f"CREATE OR REPLACE VIEW {view} AS {hdr}")
        tmp = []
        for tbl,col in cols:
            tmp.append(f"            d.{col}")
        output_file.write(",\n".join(tmp))
        output_file.write(ftr)
        
print(f"wrote {CREATE_VIEW_SQL_FILENAME}")
