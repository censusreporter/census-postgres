"""Given a table shell datafile, create SQL tables suitable for loading data for each table,
and views that preserve legacy access to the same data without the margin of error."""

# e.g. https://www2.census.gov/programs-surveys/acs/summary_file/2021/table-based-SF/documentation/ACS20211YR_Table_Shells.txt

import argparse
import csv
from pathlib import Path

def write_table_details(schema, table_id, columns, tables_path, views_path):
    if table_id.startswith('b9'):
        return # time to give up on the technical tables... if we didn't we'd have to deal with the fact that they don't have MOE
        # table_name = f'{schema}.{table_id}'
    else:
        table_name = f'{schema}.{table_id}_moe'

    datatype = 'REAL'
    with tables_path.open('a') as f:
        f.write(f"\n--- {table_id.upper()} {columns[0]['Title']}")
        f.write(f"\nDROP TABLE IF EXISTS {table_name} CASCADE;")
        f.write(f"\nCREATE TABLE {table_name} (")
        f.write(f"\n\tgeoid VARCHAR(40) REFERENCES {schema}.geoheader")
        for column in columns:
            if column['Unique ID']: # skip if blank (for label-only rows)
                f.write(f",\n\t{column['Unique ID']} {datatype}")
                f.write(f",\n\t{column['Unique ID']}_moe {datatype}")
        f.write(f"\n);\n")
        f.write(f"CREATE INDEX {table_id}_moe_geoid_idx ON {table_name} USING btree (geoid);\n")

    if table_name.endswith('_moe'):
        view_name = table_name.replace('_moe','')
        with views_path.open('a') as f:
            f.write(f"\n--- {table_id.upper()} {columns[0]['Title']}")
            f.write(f"\ndrop view if exists {view_name};")
            f.write(f"\nCREATE VIEW {view_name} as SELECT")
            f.write(f"\n\tgeoid")
            for column in columns:
                if column['Unique ID']: # skip if blank (for label-only rows)
                    f.write(f", {column['Unique ID']}")
            f.write(f"\nFROM {table_name};\n\n")

def run(data_file, schema, output_dir):
    drop_schema_file = output_dir / "drop_schema_tables.sql"
    if drop_schema_file.exists():
        drop_schema_file.unlink()

    with drop_schema_file.open('w') as f:
        # can't drop the whole schema, it errors out, so do this first
        complicated_drop = f"""
    do $$ declare
        r record;
        i integer := 0;

    begin
        for r in (select tablename from pg_tables where schemaname = '{schema}') loop
            execute 'drop table if exists {schema}.' || quote_ident(r.tablename) || ' cascade';
            i = i + 1;
            IF i % 100 = 0 THEN
                COMMIT;
            END IF;
        end loop;
    end $$;
    """
        f.write(complicated_drop)


    tables_file = output_dir / "create_tables.sql"
    if tables_file.exists():
        tables_file.unlink()

    views_file = output_dir / "create_views.sql"
    if views_file.exists():
        views_file.unlink()


    with open(data_file, encoding='utf-8-sig') as f:
        # fields: Table ID|Line|Indent|Unique ID|Label|Title|Universe|Type
        r = csv.DictReader(f, delimiter='|')
        columns = []
        table_id = None
        for row in r:
            row['Unique ID'] = row['Unique ID'].lower().replace('_','')
            row['Table ID'] = row['Table ID'].lower()
            if row['Table ID'] == table_id:
                columns.append(row)
            else:
                if columns:
                    write_table_details(schema, table_id, columns, tables_file, views_file)
                columns = [row]
                table_id = row['Table ID']

        # flush the last table:
        write_table_details(schema, table_id, columns, tables_file, views_file)


if __name__ == '__main__':
    # Parse arguments
    parser = argparse.ArgumentParser(description='Create SQL files for loading ACS data')
    parser.add_argument('data_file', type=Path, help='path to ACS table shell datafile')
    parser.add_argument('schema', type=str, help='name of schema to create tables in')
    parser.add_argument('output_dir', type=Path, help='directory to write SQL files to')
    args = parser.parse_args()

    assert args.data_file.exists(), \
        f"Datafile {args.data_file} doesn't exist or is not readable"
    assert args.output_dir.exists(), \
        f"Output directory {args.output_dir} doesn't exist or is not readable"
    args.output_dir.mkdir(parents=True, exist_ok=True)
    run(args.data_file, args.schema, args.output_dir)
