#!/bin/python

import os


def run(data_root, working_dir, release, config):
    with open(os.path.join(working_dir, 'import_geoheader.sql'), 'w') as geo_file:
        for root, dirs, files in os.walk(data_root):
            files.sort()
            for fname in files:
                if fname.startswith('g') and fname.endswith('.txt'):
                    fpath = os.path.join(root, fname)
                    geo_file.write("COPY %s.tmp_geoheader FROM '%s' WITH ENCODING 'latin1';\n" % (release, fpath,))
