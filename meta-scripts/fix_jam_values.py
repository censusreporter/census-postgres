# Table-based schemas sometimes use "Jam Values" to indicate suppressed data
# these are 9-digit negative numbers that Census Reporter is not designed to ignore
# we should try to avoid loading those values (see fix_geoids.py) but if they slip in
# here's a script that will take them out
#
# actually, jam values are something else but leave the name since Joe always thinks
# of that first when searching. They aren't stop values either.
# they are sometimes called sentinel values
# and they are documented at 
# https://www.census.gov/data/developers/data-sets/acs-1year/notes-on-acs-estimate-and-annotation-values.html
# without using that word either
#
# expects an environment variable, PG_URL to be set to support connecting to the right database
# and a command line argument specifying which schema to fix
import psycopg2
import os
import sys
from datetime import datetime
def get_moe_tables(cur, schema_name):
    # Find all tables in the schema that end with _moe
    cur.execute(f"""
        SELECT table_name
        FROM information_schema.tables
        WHERE table_schema = %s AND table_name LIKE '%%_moe'
        ORDER BY table_name
    """, (schema_name,))
    return cur.fetchall()

def fix_table(conn, cur, schema_name, table_name):
    # Get all columns of the table that are 'real' values, since the jam values won't occur in character-type columns
    print(f"{table_name} ", end='')
    cur.execute(f"""
        SELECT column_name
        FROM information_schema.columns
        WHERE table_schema = %s AND table_name = %s
        AND data_type = 'real'
    """, (schema_name, table_name))
    columns = [row[0] for row in cur.fetchall()]
    print(f"{len(columns)} cols: ", end='')
    if not columns:
        print()
        return

    # Single UPDATE per table: fix all columns in one pass, only touching rows that need it
    set_clause = ", ".join(
        f"{col} = CASE WHEN {col} < -100000000 THEN NULL ELSE {col} END"
        for col in columns
    )
    where_clause = " OR ".join(f"{col} < -100000000" for col in columns)
    cur.execute(f"UPDATE {schema_name}.{table_name} SET {set_clause} WHERE {where_clause}")
    print(f"{cur.rowcount} rows fixed")
    conn.commit()

# if you use this again, put a note about why skipping, especially for 
# "problem" cases
SKIP_THESE = [
]
def fix_jam_values(schema_name):
    DSN = os.environ.get('PG_URL')
    if DSN:
        conn = psycopg2.connect(DSN)
        cur = conn.cursor()
        print('get tables')
        tables = get_moe_tables(cur, schema_name)
        print(f'got {len(tables)} tables')

        for row in tables:
            table = row[0]
            if table not in SKIP_THESE:
                start = datetime.now()
                fix_table(conn, cur, schema_name, table)
                print(f'elapsed: {datetime.now() - start}')
            else:
                print(f"{table} - skip")

        cur.close()
        conn.close()
    else:
        print('No PG_URL environment variable found. Cannot continue.')

if __name__ == '__main__':
    # get the first command line argument and call fix_jam_values using it
    if len(sys.argv) != 2:
        print("Usage: python fix_jam_values.py <schema_name>")
        sys.exit(1)
    
    schema_name = sys.argv[1]
    print('main: ',schema_name)
    fix_jam_values(schema_name)
