#!/bin/python

# This script builds the plsql files required to generate a `census-postgres`-style
# database for any arbitrary ACS dataset.
#
# This assumes that you've downloaded the "All in 1 Giant File" zip files, unpacked
# them somewhere, and placed the "Sequence_Number_and_Table_Number_Lookup.txt" file
# in the same directory as the unpacked files. The directory with those files is
# referred to as the `acs_root` variable in this program.
#
# The comments below that begin with ... represent the various SQL files that need
# to be generated to complete the import and how they're built in this script.

import argparse
import sys

parser = argparse.ArgumentParser(description="Build SQL for an ACS release")
parser.add_argument('release', help='Which ACS release to use.')
parser.add_argument('--data_root', default='/mnt/tmp', help='The root directory for the raw data.')
parser.add_argument('--working_dir', default='.', help='The directory to store finished and working files.')

args = parser.parse_args()

which_acs = args.release
data_root = args.data_root
working_dir = args.working_dir

# Each ACS release tends to do things just a bit differently,
# so we'll throw that stuff in here.
config = {
    'acs2007_1yr': {
        'sequence_number_column_name': 'Sequence Number',
        'line_number_column_name': 'Line Number'
    },
    'acs2007_3yr': {
        'sequence_number_column_name': 'Sequence Number',
        'line_number_column_name': 'Line Number'
    },
    'acs2007_5yr': {
        'sequence_number_column_name': 'Sequence Number',
        'line_number_column_name': 'Line Number'
    },

    'acs2008_1yr': {
        'sequence_number_column_name': 'seq',
        'line_number_column_name': 'order'
    },
    'acs2008_3yr': {
        'sequence_number_column_name': 'seq',
        'line_number_column_name': 'order'
    },
    'acs2008_5yr': {
        'sequence_number_column_name': 'seq',
        'line_number_column_name': 'order'
    },

    'acs2009_1yr': {
        'sequence_number_column_name': 'Sequence Number',
        'line_number_column_name': 'Line Number'
    },
    'acs2009_3yr': {
        'sequence_number_column_name': 'Sequence Number',
        'line_number_column_name': 'Line Number'
    },
    'acs2009_5yr': {
        'sequence_number_column_name': 'Sequence Number',
        'line_number_column_name': 'Line Number'
    },

    'acs2010_1yr': {
        'sequence_number_column_name': 'Sequence Number',
        'line_number_column_name': 'Line Number'
    },
    'acs2010_3yr': {
        'sequence_number_column_name': 'Sequence Number',
        'line_number_column_name': 'Line Number'
    },
    'acs2010_5yr': {
        'sequence_number_column_name': 'Sequence Number',
        'line_number_column_name': 'Line Number'
    },

    'acs2011_1yr': {
        'sequence_number_column_name': 'seq',
        'line_number_column_name': 'Line Number Decimal M Lines'
    },
    'acs2011_3yr': {
        'sequence_number_column_name': 'seq',
        'line_number_column_name': 'Line Number Decimal M Lines'
    },
    'acs2011_5yr': {
        'sequence_number_column_name': 'seq',
        'line_number_column_name': 'Line Number Decimal M Lines'
    },

    'acs2012_1yr': {
        'sequence_number_column_name': 'Sequence Number',
        'line_number_column_name': 'Line Number'
    },
    'acs2012_3yr': {
        'sequence_number_column_name': 'Sequence Number',
        'line_number_column_name': 'Line Number'
    },

    'acs2013_1yr': {
        'sequence_number_column_name': 'Sequence\nNumber',
        'line_number_column_name': 'Line\nNumber',
        'table_id_column_name': 'Table\nID'
    },
    'acs2013_3yr': {
        'sequence_number_column_name': 'Sequence Number',
        'line_number_column_name': 'Line Number',
        'table_id_column_name': 'Table ID'
    },
    'acs2013_5yr': {
        'sequence_number_column_name': 'Sequence Number',
        'line_number_column_name': 'Line Number',
        'table_id_column_name': 'Table ID'
    },

    'acs2014_1yr': {
        'sequence_number_column_name': 'Sequence Number',
        'line_number_column_name': 'Line Number',
        'table_id_column_name': 'Table ID'
    },
    'acs2014_5yr': {
        'sequence_number_column_name': 'Sequence Number',
        'line_number_column_name': 'Line Number',
        'table_id_column_name': 'Table ID'
    },

    'acs2015_1yr': {
        'sequence_number_column_name': 'Sequence Number',
        'line_number_column_name': 'Line Number',
        'table_id_column_name': 'Table ID'
    },
    'acs2015_5yr': {
        'sequence_number_column_name': 'Sequence Number',
        'line_number_column_name': 'Line Number',
        'table_id_column_name': 'Table ID'
    },

    'acs2016_1yr': {
        'sequence_number_column_name': 'Sequence Number',
        'line_number_column_name': 'Line Number',
        'table_id_column_name': 'Table ID'
    },
    'acs2016_5yr': {
        'sequence_number_column_name': 'Sequence Number',
        'line_number_column_name': 'Line Number',
        'table_id_column_name': 'Table ID'
    },

    'acs2017_1yr': {
        'sequence_number_column_name': 'Sequence Number',
        'line_number_column_name': 'Line Number',
        'table_id_column_name': 'Table ID'
    },
    'acs2017_5yr': {
        'sequence_number_column_name': 'Sequence Number',
        'line_number_column_name': 'Line Number',
        'table_id_column_name': 'Table ID'
    },

    'acs2018_1yr': {
        'sequence_number_column_name': 'Sequence Number',
        'line_number_column_name': 'Line Number',
        'table_id_column_name': 'Table ID'
    },
    'acs2018_5yr': {
        'sequence_number_column_name': 'Sequence Number',
        'line_number_column_name': 'Line Number',
        'table_id_column_name': 'Table ID'
    },

    'acs2019_1yr': {
        'sequence_number_column_name': 'Sequence Number',
        'line_number_column_name': 'Line Number',
        'table_id_column_name': 'Table ID'
    },
    'acs2019_5yr': {
        'sequence_number_column_name': 'Sequence Number',
        'line_number_column_name': 'Line Number',
        'table_id_column_name': 'Table ID'
    },

    # Note that there was no acs2020_1yr because of the pandemic
    'acs2020_5yr': {
        'sequence_number_column_name': 'Sequence Number',
        'line_number_column_name': 'Line Number',
        'table_id_column_name': 'Table ID'
    },

    'acs2021_1yr': {
        'sequence_number_column_name': 'Sequence Number',
        'line_number_column_name': 'Line Number',
        'table_id_column_name': 'Table ID'
    },
    'acs2021_5yr': {
        'sequence_number_column_name': 'Sequence Number',
        'line_number_column_name': 'Line Number',
        'table_id_column_name': 'Table ID'
    },
}

if which_acs not in config:
    print("Config for release '%s' is not specified." % which_acs)
    sys.exit(1)

acs_root = "%s/%s" % (data_root, which_acs)

##
## The generated SQL in this section creates the schema for the data to be copied
## in to. It should run fairly quick and generate a few thousand tables in your DB.
##

# ... create_geoheader.sql: doesn't change and should be copied

# ... geoheader_comments.sql: doesn't change and should be copied

# ... create_tmp_geoheader.sql: doesn't change and should be copied

# ... drop_import_tables.sql: drops any existing tmp_* or tmp_*_moe tables
#                             in preparation for importing new ones
import build_drop_import_tables_sql
build_drop_import_tables_sql.run(acs_root, working_dir, which_acs, config[which_acs])

# ... create_import_tables.sql: builds the tmp_* and tmp_*_moe tables
#                               that will be imported into with COPY commands
import build_tmp_sequence_sql
build_tmp_sequence_sql.run(acs_root, working_dir, which_acs, config[which_acs])

##
## The generated SQL in this section actually performs the loading into the tables
## that were created above using a bunch of COPY statements.
##

# ... import_geoheader.sql: COPYs the geometry files to the tmp_geoheader table
import build_geoheader_import_sql
build_geoheader_import_sql.run(acs_root, working_dir, which_acs, config[which_acs])

# ... import_sequences.sql: COPYs the estimate and moe data into the tmp_* and tmp_*_moe tables
import build_tmp_sequence_import_sql
build_tmp_sequence_import_sql.run(acs_root, working_dir, which_acs, config[which_acs])

# ... parse_tmp_geoheader.sql: parses the tmp_geoheader table into the geoheader table
# (Should be copied from another year)

# ... store_by_tables.sql: builds the sequence-based (not tmp_*) tables
#                          you might wonder why we're building tmp* then dumping
#                          straight into real tables. I did this because the original
#                          author did it so he could experiment with other storage
#                          idioms and I wanted to be flexible like that too.
import build_sequence_sql
build_sequence_sql.run(acs_root, working_dir, which_acs, config[which_acs])

# ... insert_into_tables.sql: inserts the data from the tmp_* tables into the
#                             appropriate seq_* tables.
import build_sequence_import_sql
build_sequence_import_sql.run(acs_root, working_dir, which_acs, config[which_acs])

# ... view_stored_by_tables.sql: creates views for each ACS table based on the sequences
import build_views_sql
build_views_sql.run(acs_root, working_dir, which_acs, config[which_acs])
