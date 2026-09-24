# ACS table-based shells use "long" geoids, with a seven char prefix to the left of 'US'
# Census reporter uses five characters here
# we'd love to synchronize, but two of those seven characters are unknowable when
# loading geographies, so it'll be easier to load the data with geoids
# as we've been using them
#
# This tool takes files and/or directories as arguments. It will walk directories looking for files, and then,
# for every ".dat" file (assumed to be an ACS data file), it will rewrite it, shortening the geocode, and, incidentally,
# converting from pipe-delimited to comma-delimited. New files will be written alongside input files, with just the suffix changed.
#
# oh, but the geoheader file ends with .txt instead of .dat (because of course)
# and the geoid is in a different column.  But you have to specify the file directly; the directory
# globbing will only look for .dat files
#
# table-based data files also include special "JAM Values" in some MOE columns, 
# which should not be loaded. We'll use this to fix that too.

import csv
import sys
from pathlib import Path
import logging
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger()

# Known jam values are nine-digit negative numbers (-222222222, -333333333, -555555555,
# -666666666, -888888888, -999999999) but Census has added to the list over time, and they
# don't always come formatted the way we expect. Rather than match specific strings, treat
# any value below this threshold as a jam value; no real ACS estimate comes anywhere near it.
# This is the same test fix_jam_values.py uses to clean up after a load.
JAM_VALUE_THRESHOLD = -100000000


def is_jam_value(value):
    try:
        return float(value) < JAM_VALUE_THRESHOLD
    except ValueError:  # not a number, e.g. the GEO_ID or NAME columns
        return False

def rewrite_file(f):
    output_path = f.parent / f.name.replace(f.suffix,'.csv')
    fix_pos = None
    with f.open() as input:
        reader = csv.reader(input, delimiter='|')
        with output_path.open('w', encoding="utf-8") as output:
            writer = csv.writer(output)
            for i, row in enumerate(reader):
                if i == 0: # don't change header row but find where geoid is
                    try:
                        fix_pos = row.index('GEO_ID')
                    except ValueError as e:
                        logger.warning(f"{e} with file {f.name} -- SKIPPING")
                        output_path.unlink()
                        return
                else:
                    row[fix_pos] = row[fix_pos][:3] + row[fix_pos][5:] # chop out chars 4-5
                    for j in range(len(row)):
                        if is_jam_value(row[j]):
                            row[j] = ''
                writer.writerow(row)
    logger.debug(f"Wrote {output_path.name}")

files = []

logger.info('begin')

if len(sys.argv) == 1:
    logger.warning("Provide one or more filenames or directories for rewriting.")
    sys.exit(1)

for path in sys.argv[1:]:
    p = Path(path)
    if p.is_dir():
        files.extend(p.rglob('*.dat'))
    else:
        files.append(p)

for f in files:
    if f.suffix not in ('.dat', '.txt'):
        logger.warning(f"Unexpected filename pattern {f.name} -- SKIPPING")
        continue

    rewrite_file(f)

logger.info('end')
