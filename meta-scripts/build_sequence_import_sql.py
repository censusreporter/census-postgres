#!/bin/python

import codecs
import csv
import os
from itertools import groupby

sequence_tables_sql_root = '.'


def write_one_seq_table(sql_file, sqn, cell_columns, release):
    sql_file.write("""INSERT INTO %s.seq%04d
SELECT s.fileid, s.filetype, upper(s.stusab), s.chariter, s.seq, s.logrecno::int, g.geoid,
""" % (release, sqn,))
    sql_file.write(',\n'.join(cell_columns))
    sql_file.write("""
FROM %s.tmp_seq%04d s
JOIN %s.geoheader g ON (lower(s.stusab)=lower(g.stusab) AND s.logrecno=g.logrecno);\nDROP TABLE %s.tmp_seq%04d CASCADE;\n\n""" % (release, sqn, release, release, sqn,))

    # A tiny hack to append "_moe" to the name of the column
    cell_moe_columns = [t.replace(", ''", "_moe, ''") for t in cell_columns]

    sql_file.write("""INSERT INTO %s.seq%04d_moe
SELECT s.fileid, s.filetype, upper(s.stusab), s.chariter, s.seq, s.logrecno::int, g.geoid,
""" % (release, sqn,))
    sql_file.write(',\n'.join(cell_moe_columns))
    sql_file.write("""
FROM %s.tmp_seq%04d_moe s
JOIN %s.geoheader g ON (lower(s.stusab)=lower(g.stusab) AND s.logrecno=g.logrecno);\nDROP TABLE %s.tmp_seq%04d CASCADE;\n\n""" % (release, sqn, release, release, sqn,))


def run(data_root, working_dir, release, config):
    sqn_col_name = config['sequence_number_column_name']
    line_no_col_name = config['line_number_column_name']
    table_id_col_name = config.get('table_id_column_name', 'Table ID')

    with open(os.path.join(working_dir, "insert_into_tables.sql"), 'w') as sql_file:
        with codecs.open(os.path.join(data_root, "Sequence_Number_and_Table_Number_Lookup.txt"), 'r', 'iso-8859-1') as sqn_lookup_file:
            sqn_lookup_reader = csv.DictReader(sqn_lookup_file)

            cell_names = []
            prev_line_number = 0

            for sqn, rows in groupby(sqn_lookup_reader, key=lambda row: int(row[sqn_col_name])):
                for row in rows:
                    table_id = row[table_id_col_name]
                    line_number = row[line_no_col_name]

                    if not line_number or line_number.endswith('.5') or line_number.endswith('.7') or line_number == '.' or line_number == ' ':
                        # Skip over entries that don't have line numbers because they won't have data in the sequences
                        # Also skip over lines ending in .5 because they're labels
                        continue

                    line_number = int(line_number)

                    if (line_number - prev_line_number) != 1 and (line_number != 1):
                        # In 2009 it looks like they screwed up the .5 label thing
                        #   and the only way to detect a label is to ensure the line
                        #   number increments by one
                        # We also want to let the line number reset back to 1 mid-sequence
                        continue

                    cell_names.append("NULLIF(NULLIF(s.%s%03d, ''), '.')::double precision" % (table_id, line_number))
                    prev_line_number = line_number

                write_one_seq_table(sql_file, sqn, cell_names, release)
                cell_names = []
