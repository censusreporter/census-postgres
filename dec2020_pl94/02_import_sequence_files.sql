-- TODO: how will we fetch these files and where will they be?
-- COPY requires a fully-qualified file path, and SQL scripts are not great with variables
COPY tmp_seq0001   FROM '/Users/germuska/Development/census-postgres/dec2020_pl94/ri000012018_2020Style.pl' WITH CSV DELIMITER '|';
COPY tmp_seq0002   FROM '/Users/germuska/Development/census-postgres/dec2020_pl94/ri000022018_2020Style.pl' WITH CSV DELIMITER '|';
COPY tmp_seq0003   FROM '/Users/germuska/Development/census-postgres/dec2020_pl94/ri000032018_2020Style.pl' WITH CSV DELIMITER '|';
COPY tmp_geoheader FROM '/Users/germuska/Development/census-postgres/dec2020_pl94/rigeo2018_2020Style.pl' WITH CSV DELIMITER '|';
