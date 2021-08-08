DROP SCHEMA IF EXISTS aggregation CASCADE; 
CREATE SCHEMA aggregation;

CREATE TABLE aggregation.user_geodata (
    user_geodata_id SERIAL PRIMARY KEY,
    hash_digest CHAR(32),
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    name    TEXT,
    source_url TEXT,
    bbox GEOMETRY(POLYGON,4326) NOT NULL,
    fields  JSON,
    public BOOLEAN DEFAULT FALSE,
    status TEXT NOT NULL DEFAULT 'NEW'
);
CREATE INDEX user_geodata_bbox_idx ON aggregation.user_geodata using GIST(bbox);

CREATE TABLE aggregation.user_geodata_geometry (
    user_geodata_geometry_id SERIAL PRIMARY KEY,
    user_geodata_id INT NOT NULL REFERENCES aggregation.user_geodata ON DELETE CASCADE,
    geom GEOMETRY(MULTIPOLYGON,4326),
    name text,
    original_id text,
    properties JSON
);
CREATE INDEX user_geodata_geometry_geom_idx ON aggregation.user_geodata_geometry using GIST(geom);

CREATE TABLE aggregation.user_geodata_blocks_2010 (
    user_geodata_geometry_id INT NOT NULL REFERENCES aggregation.user_geodata_geometry ON DELETE CASCADE,
    geoid varchar(15) NOT NULL REFERENCES blocks.tabblock10(geoid10)
);
CREATE  INDEX user_geodata_blocks_2010_geoid_idx ON aggregation.user_geodata_blocks_2010 (geoid);

CREATE TABLE aggregation.user_geodata_blocks_2020 (
    user_geodata_geometry_id INT NOT NULL REFERENCES aggregation.user_geodata_geometry ON DELETE CASCADE,
    geoid varchar(15) NOT NULL REFERENCES blocks.tabblock20(geoid20)
);
CREATE  INDEX user_geodata_blocks_2020_geoid_idx ON aggregation.user_geodata_blocks_2020 (geoid);
