
    do $$ declare
        r record;
        i integer := 0;

    begin
        for r in (select tablename from pg_tables where schemaname = 'acs2021_1yr_tables') loop
            execute 'drop table if exists acs2021_1yr_tables.' || quote_ident(r.tablename) || ' cascade';
            i = i + 1;
            IF i % 100 = 0 THEN
                COMMIT;
            END IF;
        end loop;
    end $$;
    