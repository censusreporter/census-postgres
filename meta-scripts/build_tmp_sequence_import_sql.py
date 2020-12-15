#!/bin/python

import sys
import os


def run(data_root, working_dir, release, config):
    with open(os.path.join(working_dir, "import_sequences.sql"), "w") as sql_file:
        estimate_sequences = []
        moe_sequences = []

        for root, dirs, files in os.walk(data_root):
            files.sort()

            for fname in files:
                fpath = os.path.join(root, fname)

                if fname.startswith('e') and fname.endswith('.txt'):
                    sqn = int(fname[8:12])
                    estimate_sequences.append((sqn, fpath))
                elif fname.startswith('m') and fname.endswith('.txt'):
                    sqn = int(fname[8:12])
                    moe_sequences.append((sqn, fpath))

        if not estimate_sequences:
            print("ERROR: No estimate sequences found. You probably forgot to unzip the All_Geographies.zip file.")
            sys.exit(1)

        for (sqn, fpath) in sorted(estimate_sequences):
            sql_file.write("COPY %s.tmp_seq%04d FROM '%s' WITH CSV;\n" % (release, sqn, fpath))

        for (sqn, fpath) in sorted(moe_sequences):
            sql_file.write("COPY %s.tmp_seq%04d_moe FROM '%s' WITH CSV;\n" % (release, sqn, fpath))
