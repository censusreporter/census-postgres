#!/bin/python

import codecs
import csv
import os
from itertools import groupby


def run(data_root, working_dir, release, config):
    sqn_col_name = config['sequence_number_column_name']

    with open(os.path.join(working_dir, "drop_import_tables.sql"), 'w') as sql_file:
        with codecs.open(os.path.join(data_root, "Sequence_Number_and_Table_Number_Lookup.txt"), 'r', 'iso-8859-1') as f:
            sqn_lookup_file = csv.DictReader(f)
            for sqn, rows in groupby(sqn_lookup_file, key=lambda row: int(row[sqn_col_name])):
                sql_file.write("DROP TABLE IF EXISTS %s.tmp_seq%04d;\n" % (release, sqn,))
                sql_file.write("DROP TABLE IF EXISTS %s.tmp_seq%04d_moe;\n" % (release, sqn,))

        sql_file.write("DROP TABLE IF EXISTS %s.tmp_geoheader;\n" % (release,))
