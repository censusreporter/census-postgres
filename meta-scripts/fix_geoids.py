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

import csv
import sys
from pathlib import Path
import logging
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger()

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
