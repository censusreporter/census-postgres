
    do $$ declare
        r record;
        i integer := 0;

    begin
        for r in (select tablename from pg_tables where schemaname = 'acs2022_5yr') loop
            execute 'drop table if exists acs2022_5yr.' || quote_ident(r.tablename) || ' cascade';
            i = i + 1;
            IF i % 100 = 0 THEN
                COMMIT;
            END IF;
        end loop;
    end $$;
