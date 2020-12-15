#!/bin/python

import codecs
import csv
import os
from itertools import groupby


def write_one_seq_view(sql_file, table_id, sequences, cell_columns, release):
    sql_file.write("""CREATE VIEW %s.%s AS SELECT
geoid,
""" % (release, table_id,))
    sql_file.write(',\n'.join(cell_columns))

    sql_file.write("\nFROM %s.seq%04d" % (release, sequences[0]))

    if len(sequences) > 1:
        for sequence in sequences[1:]:
            sql_file.write("\nJOIN %s.seq%04d USING (geoid)" % (release, sequence))

    sql_file.write(";\n\n")

    # A tiny hack to append "_moe" to the name of the column
    cell_moe_columns = ["%s, %s_moe" % (t, t) for t in cell_columns]

    sql_file.write("""CREATE VIEW %s.%s_moe AS SELECT
geoid,
""" % (release, table_id,))
    sql_file.write(',\n'.join(cell_moe_columns))
    sql_file.write("\nFROM %s.seq%04d JOIN %s.seq%04d_moe USING (geoid)" % (release, sequences[0], release, sequences[0]))

    if len(sequences) > 1:
        for sequence in sequences[1:]:
            sql_file.write("\nJOIN %s.seq%04d USING (geoid) JOIN %s.seq%04d_moe USING (geoid)" % (release, sequence, release, sequence))

    sql_file.write(";\n\n")


def run(data_root, working_dir, release, config):
    sqn_col_name = config['sequence_number_column_name']
    line_no_col_name = config['line_number_column_name']
    table_id_col_name = config.get('table_id_column_name', 'Table ID')

    with open(os.path.join(working_dir, "view_stored_by_tables.sql"), "w") as sql_file:
        with codecs.open(os.path.join(data_root, "Sequence_Number_and_Table_Number_Lookup.txt"), 'r', 'iso-8859-1') as sqn_lookup_file:
            sqn_lookup_reader = csv.DictReader(sqn_lookup_file)

            cell_names = []
            sequences = set()
            tables_written = {}
            prev_line_number = 0

            for table_id, rows in groupby(sqn_lookup_reader, key=lambda row: row[table_id_col_name]):

                if table_id in tables_written:
                    print("Skipping table %s in this sqn because it was already written from sqn %s." % (table_id, tables_written[table_id]))
                    continue

                for row in rows:
                    sqn = int(row[sqn_col_name])
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

                    sequences.add(sqn)
                    cell_names.append("%s%03d" % (table_id, line_number))
                    prev_line_number = line_number

                tables_written[table_id] = sqn

                write_one_seq_view(sql_file, table_id, sorted(sequences), cell_names, release)
                sequences = set()
                cell_names = []
