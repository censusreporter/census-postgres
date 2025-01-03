# Table-based schemas sometimes use "Jam Values" to indicate suppressed data
# these are 9-digit negative numbers that Census Reporter is not designed to ignore
# we should try to avoid loading those values (see fix_geoids.py) but if they slip in
# here's a script that will take them out
#
# expects an environment variable, PG_URL to be set to support connecting to the right database
# and a command line argument specifying which schema to fix
import psycopg2
import os
import sys

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
    cur.execute(f"""
        SELECT column_name
        FROM information_schema.columns
        WHERE table_schema = %s AND table_name = %s
        AND data_type = 'real'
    """, (schema_name, table_name))
    columns = cur.fetchall()
    print(f"{table_name} {len(columns)} cols: ",end='')

    for column in columns:
        column_name = column[0]
        
        # Update columns with values less than -100000000 to be null
        cur.execute(f"""
            UPDATE {schema_name}.{table_name}
            SET {column_name} = NULL
            WHERE {column_name} < -100000000
        """)
        print('.',end='')
    conn.commit()
    print()

def fix_jam_values(schema_name):
    DSN = os.environ.get('PG_URL')
    if DSN:
        conn = psycopg2.connect(DSN)
        cur = conn.cursor()

        tables = get_moe_tables(cur, schema_name)

        for row in tables:
            fix_table(conn, cur, schema_name, row[0])

        conn.commit()        
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
    fix_jam_values(schema_name)
