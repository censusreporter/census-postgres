-- pl_geohd_2020_notab_dar.sas
DROP TABLE IF EXISTS tmp_geoheader CASCADE;
CREATE TABLE tmp_geoheader (
	FILEID VARCHAR(6),
	STUSAB VARCHAR(2),
	SUMLEV VARCHAR(3),
	GEOVAR VARCHAR(2),
	GEOCOMP VARCHAR(2),
	CHARITER VARCHAR(3),
	CIFSN VARCHAR(2),
	LOGRECNO VARCHAR(7),
	GEOID VARCHAR(60),
	GEOCODE VARCHAR(51),
	REGION VARCHAR(1),
	DIVISION VARCHAR(1),
	STATE VARCHAR(2),
	STATENS VARCHAR(8),
	COUNTY VARCHAR(3),
	COUNTYCC VARCHAR(2),
	COUNTYNS VARCHAR(8),
	COUSUB VARCHAR(5),
	COUSUBCC VARCHAR(2),
	COUSUBNS VARCHAR(8),
	SUBMCD VARCHAR(5),
	SUBMCDCC VARCHAR(2),
	SUBMCDNS VARCHAR(8),
	ESTATE VARCHAR(5),
	ESTATECC VARCHAR(2),
	ESTATENS VARCHAR(8),
	CONCIT VARCHAR(5),
	CONCITCC VARCHAR(2),
	CONCITNS VARCHAR(8),
	PLACE VARCHAR(5),
	PLACECC VARCHAR(2),
	PLACENS VARCHAR(8),
	TRACT VARCHAR(6),
	BLKGRP VARCHAR(1),
	BLOCK VARCHAR(4),
	AIANHH VARCHAR(4),
	AIHHTLI VARCHAR(1),
	AIANHHFP VARCHAR(5),
	AIANHHCC VARCHAR(2),
	AIANHHNS VARCHAR(8),
	AITS VARCHAR(3),
	AITSFP VARCHAR(5),
	AITSCC VARCHAR(2),
	AITSNS VARCHAR(8),
	TTRACT VARCHAR(6),
	TBLKGRP VARCHAR(1),
	ANRC VARCHAR(5),
	ANRCCC VARCHAR(2),
	ANRCNS VARCHAR(8),
	CBSA VARCHAR(5),
	MEMI VARCHAR(1),
	CSA VARCHAR(3),
	METDIV VARCHAR(5),
	NECTA VARCHAR(5),
	NMEMI VARCHAR(1),
	CNECTA VARCHAR(3),
	NECTADIV VARCHAR(5),
	CBSAPCI VARCHAR(1),
	NECTAPCI VARCHAR(1),
	UA VARCHAR(5),
	UATYPE VARCHAR(1),
	UR VARCHAR(1),
	CD116 VARCHAR(2),
	CD118 VARCHAR(2),
	CD119 VARCHAR(2),
	CD120 VARCHAR(2),
	CD121 VARCHAR(2),
	SLDU18 VARCHAR(3),
	SLDU22 VARCHAR(3),
	SLDU24 VARCHAR(3),
	SLDU26 VARCHAR(3),
	SLDU28 VARCHAR(3),
	SLDL18 VARCHAR(3),
	SLDL22 VARCHAR(3),
	SLDL24 VARCHAR(3),
	SLDL26 VARCHAR(3),
	SLDL28 VARCHAR(3),
	VTD VARCHAR(6),
	VTDI VARCHAR(1),
	ZCTA VARCHAR(5),
	SDELM VARCHAR(5),
	SDSEC VARCHAR(5),
	SDUNI VARCHAR(5),
	PUMA VARCHAR(5),
	AREALAND VARCHAR(14),
	AREAWATR VARCHAR(14),
	BASENAME VARCHAR(100),
	NAME VARCHAR(125),
	FUNCSTAT VARCHAR(1),
	GCUNI VARCHAR(1),
	POP100 VARCHAR(9),
	HU100 VARCHAR(9),
	INTPTLAT VARCHAR(11),
	INTPTLON VARCHAR(12),
	LSADC VARCHAR(2),
	PARTFLAG VARCHAR(1),
	UGA VARCHAR(5)
)
WITH (autovacuum_enabled = FALSE, toast.autovacuum_enabled = FALSE);

COMMENT ON COLUMN tmp_geoheader.FILEID IS 'File Identification';
COMMENT ON COLUMN tmp_geoheader.STUSAB IS 'State/US-Abbreviation (USPS)';
COMMENT ON COLUMN tmp_geoheader.SUMLEV IS 'Summary Level';
COMMENT ON COLUMN tmp_geoheader.GEOVAR IS 'Geographic Variant';
COMMENT ON COLUMN tmp_geoheader.GEOCOMP IS 'Geographic Component';
COMMENT ON COLUMN tmp_geoheader.CHARITER IS 'Characteristic Iteration';
COMMENT ON COLUMN tmp_geoheader.CIFSN IS 'Characteristic Iteration File Sequence Number';
COMMENT ON COLUMN tmp_geoheader.LOGRECNO IS 'Logical Record Number';
COMMENT ON COLUMN tmp_geoheader.GEOID IS 'Geographic Record Identifier';
COMMENT ON COLUMN tmp_geoheader.GEOCODE IS 'Geographic Code Identifier';
COMMENT ON COLUMN tmp_geoheader.REGION IS 'Region';
COMMENT ON COLUMN tmp_geoheader.DIVISION IS 'Division';
COMMENT ON COLUMN tmp_geoheader.STATE IS 'State (FIPS)';
COMMENT ON COLUMN tmp_geoheader.STATENS IS 'State (NS)';
COMMENT ON COLUMN tmp_geoheader.COUNTY IS 'County (FIPS)';
COMMENT ON COLUMN tmp_geoheader.COUNTYCC IS 'FIPS County Class Code';
COMMENT ON COLUMN tmp_geoheader.COUNTYNS IS 'County (NS)';
COMMENT ON COLUMN tmp_geoheader.COUSUB IS 'County Subdivision (FIPS)';
COMMENT ON COLUMN tmp_geoheader.COUSUBCC IS 'FIPS County Subdivision Class Code';
COMMENT ON COLUMN tmp_geoheader.COUSUBNS IS 'County Subdivision (NS)';
COMMENT ON COLUMN tmp_geoheader.SUBMCD IS 'Subminor Civil Division (FIPS)';
COMMENT ON COLUMN tmp_geoheader.SUBMCDCC IS 'FIPS Subminor Civil Division Class Code';
COMMENT ON COLUMN tmp_geoheader.SUBMCDNS IS 'Subminor Civil Division (NS)';
COMMENT ON COLUMN tmp_geoheader.ESTATE IS 'Estate (FIPS)';
COMMENT ON COLUMN tmp_geoheader.ESTATECC IS 'FIPS Estate Class Code';
COMMENT ON COLUMN tmp_geoheader.ESTATENS IS 'Estate (NS)';
COMMENT ON COLUMN tmp_geoheader.CONCIT IS 'Consolidated City (FIPS)';
COMMENT ON COLUMN tmp_geoheader.CONCITCC IS 'FIPS Consolidated City Class Code';
COMMENT ON COLUMN tmp_geoheader.CONCITNS IS 'Consolidated City (NS)';
COMMENT ON COLUMN tmp_geoheader.PLACE IS 'Place (FIPS)';
COMMENT ON COLUMN tmp_geoheader.PLACECC IS 'FIPS Place Class Code';
COMMENT ON COLUMN tmp_geoheader.PLACENS IS 'Place (NS)';
COMMENT ON COLUMN tmp_geoheader.TRACT IS 'Census Tract';
COMMENT ON COLUMN tmp_geoheader.BLKGRP IS 'Block Group';
COMMENT ON COLUMN tmp_geoheader.BLOCK IS 'Block';
COMMENT ON COLUMN tmp_geoheader.AIANHH IS 'American Indian Area/Alaska Native Area/Hawaiian Home Land (Census)';
COMMENT ON COLUMN tmp_geoheader.AIHHTLI IS 'American Indian Trust Land/Hawaiian Home Land Indicator';
COMMENT ON COLUMN tmp_geoheader.AIANHHFP IS 'American Indian Area/Alaska Native Area/Hawaiian Home Land (FIPS)';
COMMENT ON COLUMN tmp_geoheader.AIANHHCC IS 'FIPS American Indian Area/Alaska Native Area/Hawaiian Home Land Class Code';
COMMENT ON COLUMN tmp_geoheader.AIANHHNS IS 'American Indian Area/Alaska Native Area/Hawaiian Home Land (NS)';
COMMENT ON COLUMN tmp_geoheader.AITS IS 'American Indian Tribal Subdivision (Census)';
COMMENT ON COLUMN tmp_geoheader.AITSFP IS 'American Indian Tribal Subdivision (FIPS)';
COMMENT ON COLUMN tmp_geoheader.AITSCC IS 'FIPS American Indian Tribal Subdivision Class Code';
COMMENT ON COLUMN tmp_geoheader.AITSNS IS 'American Indian Tribal Subdivision (NS)';
COMMENT ON COLUMN tmp_geoheader.TTRACT IS 'Tribal Census Tract';
COMMENT ON COLUMN tmp_geoheader.TBLKGRP IS 'Tribal Block Group';
COMMENT ON COLUMN tmp_geoheader.ANRC IS 'Alaska Native Regional Corporation (FIPS)';
COMMENT ON COLUMN tmp_geoheader.ANRCCC IS 'FIPS Alaska Native Regional Corporation Class Code';
COMMENT ON COLUMN tmp_geoheader.ANRCNS IS 'Alaska Native Regional Corporation (NS)';
COMMENT ON COLUMN tmp_geoheader.CBSA IS 'Metropolitan Statistical Area/Micropolitan Statistical Area';
COMMENT ON COLUMN tmp_geoheader.MEMI IS 'Metropolitan/Micropolitan Indicator';
COMMENT ON COLUMN tmp_geoheader.CSA IS 'Combined Statistical Area';
COMMENT ON COLUMN tmp_geoheader.METDIV IS 'Metropolitan Division';
COMMENT ON COLUMN tmp_geoheader.NECTA IS 'New England City and Town Area';
COMMENT ON COLUMN tmp_geoheader.NMEMI IS 'NECTA Metropolitan/Micropolitan Indicator';
COMMENT ON COLUMN tmp_geoheader.CNECTA IS 'Combined New England City and Town Area';
COMMENT ON COLUMN tmp_geoheader.NECTADIV IS 'New England City and Town Area Division';
COMMENT ON COLUMN tmp_geoheader.CBSAPCI IS 'Metropolitan Statistical Area/Micropolitan Statistical Area Principal City Indicator';
COMMENT ON COLUMN tmp_geoheader.NECTAPCI IS 'New England City and Town Area Principal City Indicator';
COMMENT ON COLUMN tmp_geoheader.UA IS 'Urban Area';
COMMENT ON COLUMN tmp_geoheader.UATYPE IS 'Urban Area Type';
COMMENT ON COLUMN tmp_geoheader.UR IS 'Urban/Rural';
COMMENT ON COLUMN tmp_geoheader.CD116 IS 'Congressional District (116th)';
COMMENT ON COLUMN tmp_geoheader.CD118 IS 'Congressional District (118th)';
COMMENT ON COLUMN tmp_geoheader.CD119 IS 'Congressional District (119th)';
COMMENT ON COLUMN tmp_geoheader.CD120 IS 'Congressional District (120th)';
COMMENT ON COLUMN tmp_geoheader.CD121 IS 'Congressional District (121st)';
COMMENT ON COLUMN tmp_geoheader.SLDU18 IS 'State Legislative District (Upper Chamber) (2018)';
COMMENT ON COLUMN tmp_geoheader.SLDU22 IS 'State Legislative District (Upper Chamber) (2022)';
COMMENT ON COLUMN tmp_geoheader.SLDU24 IS 'State Legislative District (Upper Chamber) (2024)';
COMMENT ON COLUMN tmp_geoheader.SLDU26 IS 'State Legislative District (Upper Chamber) (2026)';
COMMENT ON COLUMN tmp_geoheader.SLDU28 IS 'State Legislative District (Upper Chamber) (2028)';
COMMENT ON COLUMN tmp_geoheader.SLDL18 IS 'State Legislative District (Lower Chamber) (2018)';
COMMENT ON COLUMN tmp_geoheader.SLDL22 IS 'State Legislative District (Lower Chamber) (2022)';
COMMENT ON COLUMN tmp_geoheader.SLDL24 IS 'State Legislative District (Lower Chamber) (2024)';
COMMENT ON COLUMN tmp_geoheader.SLDL26 IS 'State Legislative District (Lower Chamber) (2026)';
COMMENT ON COLUMN tmp_geoheader.SLDL28 IS 'State Legislative District (Lower Chamber) (2028)';
COMMENT ON COLUMN tmp_geoheader.VTD IS 'Voting District';
COMMENT ON COLUMN tmp_geoheader.VTDI IS 'Voting District Indicator';
COMMENT ON COLUMN tmp_geoheader.ZCTA IS 'ZIP Code Tabulation Area (5-Digit)';
COMMENT ON COLUMN tmp_geoheader.SDELM IS 'School District (Elementary)';
COMMENT ON COLUMN tmp_geoheader.SDSEC IS 'School District (Secondary)';
COMMENT ON COLUMN tmp_geoheader.SDUNI IS 'School District (Unified)';
COMMENT ON COLUMN tmp_geoheader.PUMA IS 'Public Use Microdata Area';
COMMENT ON COLUMN tmp_geoheader.AREALAND IS 'Area (Land)';
COMMENT ON COLUMN tmp_geoheader.AREAWATR IS 'Area (Water)';
COMMENT ON COLUMN tmp_geoheader.BASENAME IS 'Area Base Name';
COMMENT ON COLUMN tmp_geoheader.NAME IS 'Area Name-Legal/Statistical Area Description (LSAD) Term-Part Indicator';
COMMENT ON COLUMN tmp_geoheader.FUNCSTAT IS 'Functional Status Code';
COMMENT ON COLUMN tmp_geoheader.GCUNI IS 'Geographic Change User Note Indicator';
COMMENT ON COLUMN tmp_geoheader.POP100 IS 'Population Count (100%)';
COMMENT ON COLUMN tmp_geoheader.HU100 IS 'Housing Unit Count (100%)';
COMMENT ON COLUMN tmp_geoheader.INTPTLAT IS 'Internal Point (Latitude)';
COMMENT ON COLUMN tmp_geoheader.INTPTLON IS 'Internal Point (Longitude)';
COMMENT ON COLUMN tmp_geoheader.LSADC IS 'Legal/Statistical Area Description Code';
COMMENT ON COLUMN tmp_geoheader.PARTFLAG IS 'Part Flag';
COMMENT ON COLUMN tmp_geoheader.UGA IS 'Urban Growth Area';


-- pl_part1_2020_notab_dar.sas
DROP TABLE IF EXISTS tmp_seq0001 CASCADE;
CREATE TABLE tmp_seq0001 (
	FILEID VARCHAR(6),
	STUSAB VARCHAR(2),
	CHARITER VARCHAR(3),
	CIFSN VARCHAR(2),
	LOGRECNO VARCHAR(7),
	P0010001 INTEGER,
	P0010002 INTEGER,
	P0010003 INTEGER,
	P0010004 INTEGER,
	P0010005 INTEGER,
	P0010006 INTEGER,
	P0010007 INTEGER,
	P0010008 INTEGER,
	P0010009 INTEGER,
	P0010010 INTEGER,
	P0010011 INTEGER,
	P0010012 INTEGER,
	P0010013 INTEGER,
	P0010014 INTEGER,
	P0010015 INTEGER,
	P0010016 INTEGER,
	P0010017 INTEGER,
	P0010018 INTEGER,
	P0010019 INTEGER,
	P0010020 INTEGER,
	P0010021 INTEGER,
	P0010022 INTEGER,
	P0010023 INTEGER,
	P0010024 INTEGER,
	P0010025 INTEGER,
	P0010026 INTEGER,
	P0010027 INTEGER,
	P0010028 INTEGER,
	P0010029 INTEGER,
	P0010030 INTEGER,
	P0010031 INTEGER,
	P0010032 INTEGER,
	P0010033 INTEGER,
	P0010034 INTEGER,
	P0010035 INTEGER,
	P0010036 INTEGER,
	P0010037 INTEGER,
	P0010038 INTEGER,
	P0010039 INTEGER,
	P0010040 INTEGER,
	P0010041 INTEGER,
	P0010042 INTEGER,
	P0010043 INTEGER,
	P0010044 INTEGER,
	P0010045 INTEGER,
	P0010046 INTEGER,
	P0010047 INTEGER,
	P0010048 INTEGER,
	P0010049 INTEGER,
	P0010050 INTEGER,
	P0010051 INTEGER,
	P0010052 INTEGER,
	P0010053 INTEGER,
	P0010054 INTEGER,
	P0010055 INTEGER,
	P0010056 INTEGER,
	P0010057 INTEGER,
	P0010058 INTEGER,
	P0010059 INTEGER,
	P0010060 INTEGER,
	P0010061 INTEGER,
	P0010062 INTEGER,
	P0010063 INTEGER,
	P0010064 INTEGER,
	P0010065 INTEGER,
	P0010066 INTEGER,
	P0010067 INTEGER,
	P0010068 INTEGER,
	P0010069 INTEGER,
	P0010070 INTEGER,
	P0010071 INTEGER,
	P0020001 INTEGER,
	P0020002 INTEGER,
	P0020003 INTEGER,
	P0020004 INTEGER,
	P0020005 INTEGER,
	P0020006 INTEGER,
	P0020007 INTEGER,
	P0020008 INTEGER,
	P0020009 INTEGER,
	P0020010 INTEGER,
	P0020011 INTEGER,
	P0020012 INTEGER,
	P0020013 INTEGER,
	P0020014 INTEGER,
	P0020015 INTEGER,
	P0020016 INTEGER,
	P0020017 INTEGER,
	P0020018 INTEGER,
	P0020019 INTEGER,
	P0020020 INTEGER,
	P0020021 INTEGER,
	P0020022 INTEGER,
	P0020023 INTEGER,
	P0020024 INTEGER,
	P0020025 INTEGER,
	P0020026 INTEGER,
	P0020027 INTEGER,
	P0020028 INTEGER,
	P0020029 INTEGER,
	P0020030 INTEGER,
	P0020031 INTEGER,
	P0020032 INTEGER,
	P0020033 INTEGER,
	P0020034 INTEGER,
	P0020035 INTEGER,
	P0020036 INTEGER,
	P0020037 INTEGER,
	P0020038 INTEGER,
	P0020039 INTEGER,
	P0020040 INTEGER,
	P0020041 INTEGER,
	P0020042 INTEGER,
	P0020043 INTEGER,
	P0020044 INTEGER,
	P0020045 INTEGER,
	P0020046 INTEGER,
	P0020047 INTEGER,
	P0020048 INTEGER,
	P0020049 INTEGER,
	P0020050 INTEGER,
	P0020051 INTEGER,
	P0020052 INTEGER,
	P0020053 INTEGER,
	P0020054 INTEGER,
	P0020055 INTEGER,
	P0020056 INTEGER,
	P0020057 INTEGER,
	P0020058 INTEGER,
	P0020059 INTEGER,
	P0020060 INTEGER,
	P0020061 INTEGER,
	P0020062 INTEGER,
	P0020063 INTEGER,
	P0020064 INTEGER,
	P0020065 INTEGER,
	P0020066 INTEGER,
	P0020067 INTEGER,
	P0020068 INTEGER,
	P0020069 INTEGER,
	P0020070 INTEGER,
	P0020071 INTEGER,
	P0020072 INTEGER,
	P0020073 INTEGER
)
WITH (autovacuum_enabled = FALSE, toast.autovacuum_enabled = FALSE);

COMMENT ON COLUMN tmp_seq0001.FILEID IS 'File Identification';
COMMENT ON COLUMN tmp_seq0001.STUSAB IS 'State/US-Abbreviation (USPS)';
COMMENT ON COLUMN tmp_seq0001.CHARITER IS 'Characteristic Iteration';
COMMENT ON COLUMN tmp_seq0001.CIFSN IS 'Characteristic Iteration File Sequence Number';
COMMENT ON COLUMN tmp_seq0001.LOGRECNO IS 'Logical Record Number';
COMMENT ON COLUMN tmp_seq0001.P0010001 IS 'Total:';
COMMENT ON COLUMN tmp_seq0001.P0010002 IS 'Population of one race:';
COMMENT ON COLUMN tmp_seq0001.P0010003 IS 'White alone';
COMMENT ON COLUMN tmp_seq0001.P0010004 IS 'Black or African American alone';
COMMENT ON COLUMN tmp_seq0001.P0010005 IS 'American Indian and Alaska Native alone';
COMMENT ON COLUMN tmp_seq0001.P0010006 IS 'Asian alone';
COMMENT ON COLUMN tmp_seq0001.P0010007 IS 'Native Hawaiian and Other Pacific Islander alone';
COMMENT ON COLUMN tmp_seq0001.P0010008 IS 'Some Other Race alone';
COMMENT ON COLUMN tmp_seq0001.P0010009 IS 'Population of two or more races:';
COMMENT ON COLUMN tmp_seq0001.P0010010 IS 'Population of two races:';
COMMENT ON COLUMN tmp_seq0001.P0010011 IS 'White; Black or African American';
COMMENT ON COLUMN tmp_seq0001.P0010012 IS 'White; American Indian and Alaska Native';
COMMENT ON COLUMN tmp_seq0001.P0010013 IS 'White; Asian';
COMMENT ON COLUMN tmp_seq0001.P0010014 IS 'White; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0001.P0010015 IS 'White; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0010016 IS 'Black or African American; American Indian and Alaska Native';
COMMENT ON COLUMN tmp_seq0001.P0010017 IS 'Black or African American; Asian';
COMMENT ON COLUMN tmp_seq0001.P0010018 IS 'Black or African American; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0001.P0010019 IS 'Black or African American; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0010020 IS 'American Indian and Alaska Native; Asian';
COMMENT ON COLUMN tmp_seq0001.P0010021 IS 'American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0001.P0010022 IS 'American Indian and Alaska Native; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0010023 IS 'Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0001.P0010024 IS 'Asian; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0010025 IS 'Native Hawaiian and Other Pacific Islander; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0010026 IS 'Population of three races:';
COMMENT ON COLUMN tmp_seq0001.P0010027 IS 'White; Black or African American; American Indian and Alaska Native';
COMMENT ON COLUMN tmp_seq0001.P0010028 IS 'White; Black or African American; Asian';
COMMENT ON COLUMN tmp_seq0001.P0010029 IS 'White; Black or African American; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0001.P0010030 IS 'White; Black or African American; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0010031 IS 'White; American Indian and Alaska Native; Asian';
COMMENT ON COLUMN tmp_seq0001.P0010032 IS 'White; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0001.P0010033 IS 'White; American Indian and Alaska Native; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0010034 IS 'White; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0001.P0010035 IS 'White; Asian; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0010036 IS 'White; Native Hawaiian and Other Pacific Islander; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0010037 IS 'Black or African American; American Indian and Alaska Native; Asian';
COMMENT ON COLUMN tmp_seq0001.P0010038 IS 'Black or African American; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0001.P0010039 IS 'Black or African American; American Indian and Alaska Native; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0010040 IS 'Black or African American; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0001.P0010041 IS 'Black or African American; Asian; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0010042 IS 'Black or African American; Native Hawaiian and Other Pacific Islander; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0010043 IS 'American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0001.P0010044 IS 'American Indian and Alaska Native; Asian; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0010045 IS 'American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0010046 IS 'Asian; Native Hawaiian and Other Pacific Islander; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0010047 IS 'Population of four races:';
COMMENT ON COLUMN tmp_seq0001.P0010048 IS 'White; Black or African American; American Indian and Alaska Native; Asian';
COMMENT ON COLUMN tmp_seq0001.P0010049 IS 'White; Black or African American; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0001.P0010050 IS 'White; Black or African American; American Indian and Alaska Native; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0010051 IS 'White; Black or African American; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0001.P0010052 IS 'White; Black or African American; Asian; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0010053 IS 'White; Black or African American; Native Hawaiian and Other Pacific Islander; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0010054 IS 'White; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0001.P0010055 IS 'White; American Indian and Alaska Native; Asian; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0010056 IS 'White; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0010057 IS 'White; Asian; Native Hawaiian and Other Pacific Islander; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0010058 IS 'Black or African American; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0001.P0010059 IS 'Black or African American; American Indian and Alaska Native; Asian; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0010060 IS 'Black or African American; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0010061 IS 'Black or African American; Asian; Native Hawaiian and Other Pacific Islander; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0010062 IS 'American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0010063 IS 'Population of five races:';
COMMENT ON COLUMN tmp_seq0001.P0010064 IS 'White; Black or African American; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0001.P0010065 IS 'White; Black or African American; American Indian and Alaska Native; Asian; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0010066 IS 'White; Black or African American; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0010067 IS 'White; Black or African American; Asian; Native Hawaiian and Other Pacific Islander; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0010068 IS 'White; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0010069 IS 'Black or African American; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0010070 IS 'Population of six races:';
COMMENT ON COLUMN tmp_seq0001.P0010071 IS 'White; Black or African American; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0020001 IS 'Total:';
COMMENT ON COLUMN tmp_seq0001.P0020002 IS 'Hispanic or Latino';
COMMENT ON COLUMN tmp_seq0001.P0020003 IS 'Not Hispanic or Latino:';
COMMENT ON COLUMN tmp_seq0001.P0020004 IS 'Population of one race:';
COMMENT ON COLUMN tmp_seq0001.P0020005 IS 'White alone';
COMMENT ON COLUMN tmp_seq0001.P0020006 IS 'Black or African American alone';
COMMENT ON COLUMN tmp_seq0001.P0020007 IS 'American Indian and Alaska Native alone';
COMMENT ON COLUMN tmp_seq0001.P0020008 IS 'Asian alone';
COMMENT ON COLUMN tmp_seq0001.P0020009 IS 'Native Hawaiian and Other Pacific Islander alone';
COMMENT ON COLUMN tmp_seq0001.P0020010 IS 'Some Other Race alone';
COMMENT ON COLUMN tmp_seq0001.P0020011 IS 'Population of two or more races:';
COMMENT ON COLUMN tmp_seq0001.P0020012 IS 'Population of two races:';
COMMENT ON COLUMN tmp_seq0001.P0020013 IS 'White; Black or African American';
COMMENT ON COLUMN tmp_seq0001.P0020014 IS 'White; American Indian and Alaska Native';
COMMENT ON COLUMN tmp_seq0001.P0020015 IS 'White; Asian';
COMMENT ON COLUMN tmp_seq0001.P0020016 IS 'White; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0001.P0020017 IS 'White; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0020018 IS 'Black or African American; American Indian and Alaska Native';
COMMENT ON COLUMN tmp_seq0001.P0020019 IS 'Black or African American; Asian';
COMMENT ON COLUMN tmp_seq0001.P0020020 IS 'Black or African American; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0001.P0020021 IS 'Black or African American; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0020022 IS 'American Indian and Alaska Native; Asian';
COMMENT ON COLUMN tmp_seq0001.P0020023 IS 'American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0001.P0020024 IS 'American Indian and Alaska Native; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0020025 IS 'Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0001.P0020026 IS 'Asian; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0020027 IS 'Native Hawaiian and Other Pacific Islander; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0020028 IS 'Population of three races:';
COMMENT ON COLUMN tmp_seq0001.P0020029 IS 'White; Black or African American; American Indian and Alaska Native';
COMMENT ON COLUMN tmp_seq0001.P0020030 IS 'White; Black or African American; Asian';
COMMENT ON COLUMN tmp_seq0001.P0020031 IS 'White; Black or African American; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0001.P0020032 IS 'White; Black or African American; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0020033 IS 'White; American Indian and Alaska Native; Asian';
COMMENT ON COLUMN tmp_seq0001.P0020034 IS 'White; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0001.P0020035 IS 'White; American Indian and Alaska Native; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0020036 IS 'White; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0001.P0020037 IS 'White; Asian; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0020038 IS 'White; Native Hawaiian and Other Pacific Islander; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0020039 IS 'Black or African American; American Indian and Alaska Native; Asian';
COMMENT ON COLUMN tmp_seq0001.P0020040 IS 'Black or African American; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0001.P0020041 IS 'Black or African American; American Indian and Alaska Native; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0020042 IS 'Black or African American; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0001.P0020043 IS 'Black or African American; Asian; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0020044 IS 'Black or African American; Native Hawaiian and Other Pacific Islander; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0020045 IS 'American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0001.P0020046 IS 'American Indian and Alaska Native; Asian; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0020047 IS 'American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0020048 IS 'Asian; Native Hawaiian and Other Pacific Islander; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0020049 IS 'Population of four races:';
COMMENT ON COLUMN tmp_seq0001.P0020050 IS 'White; Black or African American; American Indian and Alaska Native; Asian';
COMMENT ON COLUMN tmp_seq0001.P0020051 IS 'White; Black or African American; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0001.P0020052 IS 'White; Black or African American; American Indian and Alaska Native; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0020053 IS 'White; Black or African American; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0001.P0020054 IS 'White; Black or African American; Asian; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0020055 IS 'White; Black or African American; Native Hawaiian and Other Pacific Islander; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0020056 IS 'White; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0001.P0020057 IS 'White; American Indian and Alaska Native; Asian; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0020058 IS 'White; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0020059 IS 'White; Asian; Native Hawaiian and Other Pacific Islander; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0020060 IS 'Black or African American; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0001.P0020061 IS 'Black or African American; American Indian and Alaska Native; Asian; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0020062 IS 'Black or African American; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0020063 IS 'Black or African American; Asian; Native Hawaiian and Other Pacific Islander; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0020064 IS 'American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0020065 IS 'Population of five races:';
COMMENT ON COLUMN tmp_seq0001.P0020066 IS 'White; Black or African American; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0001.P0020067 IS 'White; Black or African American; American Indian and Alaska Native; Asian; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0020068 IS 'White; Black or African American; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0020069 IS 'White; Black or African American; Asian; Native Hawaiian and Other Pacific Islander; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0020070 IS 'White; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0020071 IS 'Black or African American; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander; Some Other Race';
COMMENT ON COLUMN tmp_seq0001.P0020072 IS 'Population of six races:';
COMMENT ON COLUMN tmp_seq0001.P0020073 IS 'White; Black or African American; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander; Some Other Race';


-- pl_part2_2020_notab_dar.sas
DROP TABLE IF EXISTS tmp_seq0002 CASCADE;
CREATE TABLE tmp_seq0002 (
	FILEID VARCHAR(6),
	STUSAB VARCHAR(2),
	CHARITER VARCHAR(3),
	CIFSN VARCHAR(2),
	LOGRECNO VARCHAR(7),
	P0030001 INTEGER,
	P0030002 INTEGER,
	P0030003 INTEGER,
	P0030004 INTEGER,
	P0030005 INTEGER,
	P0030006 INTEGER,
	P0030007 INTEGER,
	P0030008 INTEGER,
	P0030009 INTEGER,
	P0030010 INTEGER,
	P0030011 INTEGER,
	P0030012 INTEGER,
	P0030013 INTEGER,
	P0030014 INTEGER,
	P0030015 INTEGER,
	P0030016 INTEGER,
	P0030017 INTEGER,
	P0030018 INTEGER,
	P0030019 INTEGER,
	P0030020 INTEGER,
	P0030021 INTEGER,
	P0030022 INTEGER,
	P0030023 INTEGER,
	P0030024 INTEGER,
	P0030025 INTEGER,
	P0030026 INTEGER,
	P0030027 INTEGER,
	P0030028 INTEGER,
	P0030029 INTEGER,
	P0030030 INTEGER,
	P0030031 INTEGER,
	P0030032 INTEGER,
	P0030033 INTEGER,
	P0030034 INTEGER,
	P0030035 INTEGER,
	P0030036 INTEGER,
	P0030037 INTEGER,
	P0030038 INTEGER,
	P0030039 INTEGER,
	P0030040 INTEGER,
	P0030041 INTEGER,
	P0030042 INTEGER,
	P0030043 INTEGER,
	P0030044 INTEGER,
	P0030045 INTEGER,
	P0030046 INTEGER,
	P0030047 INTEGER,
	P0030048 INTEGER,
	P0030049 INTEGER,
	P0030050 INTEGER,
	P0030051 INTEGER,
	P0030052 INTEGER,
	P0030053 INTEGER,
	P0030054 INTEGER,
	P0030055 INTEGER,
	P0030056 INTEGER,
	P0030057 INTEGER,
	P0030058 INTEGER,
	P0030059 INTEGER,
	P0030060 INTEGER,
	P0030061 INTEGER,
	P0030062 INTEGER,
	P0030063 INTEGER,
	P0030064 INTEGER,
	P0030065 INTEGER,
	P0030066 INTEGER,
	P0030067 INTEGER,
	P0030068 INTEGER,
	P0030069 INTEGER,
	P0030070 INTEGER,
	P0030071 INTEGER,
	P0040001 INTEGER,
	P0040002 INTEGER,
	P0040003 INTEGER,
	P0040004 INTEGER,
	P0040005 INTEGER,
	P0040006 INTEGER,
	P0040007 INTEGER,
	P0040008 INTEGER,
	P0040009 INTEGER,
	P0040010 INTEGER,
	P0040011 INTEGER,
	P0040012 INTEGER,
	P0040013 INTEGER,
	P0040014 INTEGER,
	P0040015 INTEGER,
	P0040016 INTEGER,
	P0040017 INTEGER,
	P0040018 INTEGER,
	P0040019 INTEGER,
	P0040020 INTEGER,
	P0040021 INTEGER,
	P0040022 INTEGER,
	P0040023 INTEGER,
	P0040024 INTEGER,
	P0040025 INTEGER,
	P0040026 INTEGER,
	P0040027 INTEGER,
	P0040028 INTEGER,
	P0040029 INTEGER,
	P0040030 INTEGER,
	P0040031 INTEGER,
	P0040032 INTEGER,
	P0040033 INTEGER,
	P0040034 INTEGER,
	P0040035 INTEGER,
	P0040036 INTEGER,
	P0040037 INTEGER,
	P0040038 INTEGER,
	P0040039 INTEGER,
	P0040040 INTEGER,
	P0040041 INTEGER,
	P0040042 INTEGER,
	P0040043 INTEGER,
	P0040044 INTEGER,
	P0040045 INTEGER,
	P0040046 INTEGER,
	P0040047 INTEGER,
	P0040048 INTEGER,
	P0040049 INTEGER,
	P0040050 INTEGER,
	P0040051 INTEGER,
	P0040052 INTEGER,
	P0040053 INTEGER,
	P0040054 INTEGER,
	P0040055 INTEGER,
	P0040056 INTEGER,
	P0040057 INTEGER,
	P0040058 INTEGER,
	P0040059 INTEGER,
	P0040060 INTEGER,
	P0040061 INTEGER,
	P0040062 INTEGER,
	P0040063 INTEGER,
	P0040064 INTEGER,
	P0040065 INTEGER,
	P0040066 INTEGER,
	P0040067 INTEGER,
	P0040068 INTEGER,
	P0040069 INTEGER,
	P0040070 INTEGER,
	P0040071 INTEGER,
	P0040072 INTEGER,
	P0040073 INTEGER,
	H0010001 INTEGER,
	H0010002 INTEGER,
	H0010003 INTEGER
)
WITH (autovacuum_enabled = FALSE, toast.autovacuum_enabled = FALSE);

COMMENT ON COLUMN tmp_seq0002.FILEID IS 'File Identification';
COMMENT ON COLUMN tmp_seq0002.STUSAB IS 'State/US-Abbreviation (USPS)';
COMMENT ON COLUMN tmp_seq0002.CHARITER IS 'Characteristic Iteration';
COMMENT ON COLUMN tmp_seq0002.CIFSN IS 'Characteristic Iteration File Sequence Number';
COMMENT ON COLUMN tmp_seq0002.LOGRECNO IS 'Logical Record Number';
COMMENT ON COLUMN tmp_seq0002.P0030001 IS 'P3-1: Total';
COMMENT ON COLUMN tmp_seq0002.P0030002 IS 'P3-2: Population of one race';
COMMENT ON COLUMN tmp_seq0002.P0030003 IS 'P3-3: White alone';
COMMENT ON COLUMN tmp_seq0002.P0030004 IS 'P3-4: Black or African American alone';
COMMENT ON COLUMN tmp_seq0002.P0030005 IS 'P3-5: American Indian and Alaska Native alone';
COMMENT ON COLUMN tmp_seq0002.P0030006 IS 'P3-6: Asian alone';
COMMENT ON COLUMN tmp_seq0002.P0030007 IS 'P3-7: Native Hawaiian and Other Pacific Islander alone';
COMMENT ON COLUMN tmp_seq0002.P0030008 IS 'P3-8: Some other race alone';
COMMENT ON COLUMN tmp_seq0002.P0030009 IS 'P3-9: Population of two or more races';
COMMENT ON COLUMN tmp_seq0002.P0030010 IS 'P3-10: Population of two races';
COMMENT ON COLUMN tmp_seq0002.P0030011 IS 'P3-11: White; Black or African American';
COMMENT ON COLUMN tmp_seq0002.P0030012 IS 'P3-12: White; American Indian and Alaska Native';
COMMENT ON COLUMN tmp_seq0002.P0030013 IS 'P3-13: White; Asian';
COMMENT ON COLUMN tmp_seq0002.P0030014 IS 'P3-14: White; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0002.P0030015 IS 'P3-15: White; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0030016 IS 'P3-16: Black or African American; American Indian and Alaska Native';
COMMENT ON COLUMN tmp_seq0002.P0030017 IS 'P3-17: Black or African American; Asian';
COMMENT ON COLUMN tmp_seq0002.P0030018 IS 'P3-18: Black or African American; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0002.P0030019 IS 'P3-19: Black or African American; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0030020 IS 'P3-20: American Indian and Alaska Native; Asian';
COMMENT ON COLUMN tmp_seq0002.P0030021 IS 'P3-21: American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0002.P0030022 IS 'P3-22: American Indian and Alaska Native; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0030023 IS 'P3-23: Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0002.P0030024 IS 'P3-24: Asian; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0030025 IS 'P3-25: Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0030026 IS 'P3-26: Population of three races';
COMMENT ON COLUMN tmp_seq0002.P0030027 IS 'P3-27: White; Black or African American; American Indian and Alaska Native';
COMMENT ON COLUMN tmp_seq0002.P0030028 IS 'P3-28: White; Black or African American; Asian';
COMMENT ON COLUMN tmp_seq0002.P0030029 IS 'P3-29: White; Black or African American; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0002.P0030030 IS 'P3-30: White; Black or African American; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0030031 IS 'P3-31: White; American Indian and Alaska Native; Asian';
COMMENT ON COLUMN tmp_seq0002.P0030032 IS 'P3-32: White; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0002.P0030033 IS 'P3-33: White; American Indian and Alaska Native; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0030034 IS 'P3-34: White; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0002.P0030035 IS 'P3-35: White; Asian; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0030036 IS 'P3-36: White; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0030037 IS 'P3-37: Black or African American; American Indian and Alaska Native; Asian';
COMMENT ON COLUMN tmp_seq0002.P0030038 IS 'P3-38: Black or African American; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0002.P0030039 IS 'P3-39: Black or African American; American Indian and Alaska Native; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0030040 IS 'P3-40: Black or African American; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0002.P0030041 IS 'P3-41: Black or African American; Asian; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0030042 IS 'P3-42: Black or African American; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0030043 IS 'P3-43: American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0002.P0030044 IS 'P3-44: American Indian and Alaska Native; Asian; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0030045 IS 'P3-45: American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0030046 IS 'P3-46: Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0030047 IS 'P3-47: Population of four races';
COMMENT ON COLUMN tmp_seq0002.P0030048 IS 'P3-48: White; Black or African American; American Indian and Alaska Native; Asian';
COMMENT ON COLUMN tmp_seq0002.P0030049 IS 'P3-49: White; Black or African American; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0002.P0030050 IS 'P3-50: White; Black or African American; American Indian and Alaska Native; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0030051 IS 'P3-51: White; Black or African American; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0002.P0030052 IS 'P3-52: White; Black or African American; Asian; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0030053 IS 'P3-53: White; Black or African American; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0030054 IS 'P3-54: White; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0002.P0030055 IS 'P3-55: White; American Indian and Alaska Native; Asian; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0030056 IS 'P3-56: White; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0030057 IS 'P3-57: White; Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0030058 IS 'P3-58: Black or African American; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0002.P0030059 IS 'P3-59: Black or African American; American Indian and Alaska Native; Asian; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0030060 IS 'P3-60: Black or African American; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0030061 IS 'P3-61: Black or African American; Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0030062 IS 'P3-62: American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0030063 IS 'P3-63: Population of five races';
COMMENT ON COLUMN tmp_seq0002.P0030064 IS 'P3-64: White; Black or African American; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0002.P0030065 IS 'P3-65: White; Black or African American; American Indian and Alaska Native; Asian; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0030066 IS 'P3-66: White; Black or African American; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0030067 IS 'P3-67: White; Black or African American; Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0030068 IS 'P3-68: White; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0030069 IS 'P3-69: Black or African American; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0030070 IS 'P3-70: Population of six races';
COMMENT ON COLUMN tmp_seq0002.P0030071 IS 'P3-71: White; Black or African American; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0040001 IS 'P4-1: Total';
COMMENT ON COLUMN tmp_seq0002.P0040002 IS 'P4-2: Hispanic or Latino';
COMMENT ON COLUMN tmp_seq0002.P0040003 IS 'P4-3: Not Hispanic or Latino';
COMMENT ON COLUMN tmp_seq0002.P0040004 IS 'P4-4: Population of one race';
COMMENT ON COLUMN tmp_seq0002.P0040005 IS 'P4-5: White alone';
COMMENT ON COLUMN tmp_seq0002.P0040006 IS 'P4-6: Black or African American alone';
COMMENT ON COLUMN tmp_seq0002.P0040007 IS 'P4-7: American Indian and Alaska Native alone';
COMMENT ON COLUMN tmp_seq0002.P0040008 IS 'P4-8: Asian alone';
COMMENT ON COLUMN tmp_seq0002.P0040009 IS 'P4-9: Native Hawaiian and Other Pacific Islander alone';
COMMENT ON COLUMN tmp_seq0002.P0040010 IS 'P4-10: Some other race alone';
COMMENT ON COLUMN tmp_seq0002.P0040011 IS 'P4-11: Population of two or more races';
COMMENT ON COLUMN tmp_seq0002.P0040012 IS 'P4-12: Population of two races';
COMMENT ON COLUMN tmp_seq0002.P0040013 IS 'P4-13: White; Black or African American';
COMMENT ON COLUMN tmp_seq0002.P0040014 IS 'P4-14: White; American Indian and Alaska Native';
COMMENT ON COLUMN tmp_seq0002.P0040015 IS 'P4-15: White; Asian';
COMMENT ON COLUMN tmp_seq0002.P0040016 IS 'P4-16: White; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0002.P0040017 IS 'P4-17: White; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0040018 IS 'P4-18: Black or African American; American Indian and Alaska Native';
COMMENT ON COLUMN tmp_seq0002.P0040019 IS 'P4-19: Black or African American; Asian';
COMMENT ON COLUMN tmp_seq0002.P0040020 IS 'P4-20: Black or African American; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0002.P0040021 IS 'P4-21: Black or African American; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0040022 IS 'P4-22: American Indian and Alaska Native; Asian';
COMMENT ON COLUMN tmp_seq0002.P0040023 IS 'P4-23: American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0002.P0040024 IS 'P4-24: American Indian and Alaska Native; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0040025 IS 'P4-25: Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0002.P0040026 IS 'P4-26: Asian; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0040027 IS 'P4-27: Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0040028 IS 'P4-28: Population of three races';
COMMENT ON COLUMN tmp_seq0002.P0040029 IS 'P4-29: White; Black or African American; American Indian and Alaska Native';
COMMENT ON COLUMN tmp_seq0002.P0040030 IS 'P4-30: White; Black or African American; Asian';
COMMENT ON COLUMN tmp_seq0002.P0040031 IS 'P4-31: White; Black or African American; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0002.P0040032 IS 'P4-32: White; Black or African American; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0040033 IS 'P4-33: White; American Indian and Alaska Native; Asian';
COMMENT ON COLUMN tmp_seq0002.P0040034 IS 'P4-34: White; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0002.P0040035 IS 'P4-35: White; American Indian and Alaska Native; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0040036 IS 'P4-36: White; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0002.P0040037 IS 'P4-37: White; Asian; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0040038 IS 'P4-38: White; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0040039 IS 'P4-39: Black or African American; American Indian and Alaska Native; Asian';
COMMENT ON COLUMN tmp_seq0002.P0040040 IS 'P4-40: Black or African American; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0002.P0040041 IS 'P4-41: Black or African American; American Indian and Alaska Native; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0040042 IS 'P4-42: Black or African American; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0002.P0040043 IS 'P4-43: Black or African American; Asian; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0040044 IS 'P4-44: Black or African American; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0040045 IS 'P4-45: American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0002.P0040046 IS 'P4-46: American Indian and Alaska Native; Asian; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0040047 IS 'P4-47: American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0040048 IS 'P4-48: Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0040049 IS 'P4-49: Population of four races';
COMMENT ON COLUMN tmp_seq0002.P0040050 IS 'P4-50: White; Black or African American; American Indian and Alaska Native; Asian';
COMMENT ON COLUMN tmp_seq0002.P0040051 IS 'P4-51: White; Black or African American; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0002.P0040052 IS 'P4-52: White; Black or African American; American Indian and Alaska Native; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0040053 IS 'P4-53: White; Black or African American; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0002.P0040054 IS 'P4-54: White; Black or African American; Asian; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0040055 IS 'P4-55: White; Black or African American; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0040056 IS 'P4-56: White; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0002.P0040057 IS 'P4-57: White; American Indian and Alaska Native; Asian; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0040058 IS 'P4-58: White; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0040059 IS 'P4-59: White; Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0040060 IS 'P4-60: Black or African American; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0002.P0040061 IS 'P4-61: Black or African American; American Indian and Alaska Native; Asian; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0040062 IS 'P4-62: Black or African American; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0040063 IS 'P4-63: Black or African American; Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0040064 IS 'P4-64: American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0040065 IS 'P4-65: Population of five races';
COMMENT ON COLUMN tmp_seq0002.P0040066 IS 'P4-66: White; Black or African American; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN tmp_seq0002.P0040067 IS 'P4-67: White; Black or African American; American Indian and Alaska Native; Asian; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0040068 IS 'P4-68: White; Black or African American; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0040069 IS 'P4-69: White; Black or African American; Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0040070 IS 'P4-70: White; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0040071 IS 'P4-71: Black or African American; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN tmp_seq0002.P0040072 IS 'P4-72: Population of six races';
COMMENT ON COLUMN tmp_seq0002.P0040073 IS 'P4-73: White; Black or African American; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN tmp_seq0002.H0010001 IS 'H1-1: Total';
COMMENT ON COLUMN tmp_seq0002.H0010002 IS 'H1-2: Occupied';
COMMENT ON COLUMN tmp_seq0002.H0010003 IS 'H1-3: Vacant';


-- pl_part3_2020_notab_dar.sas
DROP TABLE IF EXISTS tmp_seq0003 CASCADE;
CREATE TABLE tmp_seq0003 (
	FILEID VARCHAR(6),
	STUSAB VARCHAR(2),
	CHARITER VARCHAR(3),
	CIFSN VARCHAR(2),
	LOGRECNO VARCHAR(7),
	P0050001 INTEGER,
	P0050002 INTEGER,
	P0050003 INTEGER,
	P0050004 INTEGER,
	P0050005 INTEGER,
	P0050006 INTEGER,
	P0050007 INTEGER,
	P0050008 INTEGER,
	P0050009 INTEGER,
	P0050010 INTEGER
)
WITH (autovacuum_enabled = FALSE, toast.autovacuum_enabled = FALSE);

COMMENT ON COLUMN tmp_seq0003.FILEID IS 'File Identification';
COMMENT ON COLUMN tmp_seq0003.STUSAB IS 'State/US-Abbreviation (USPS)';
COMMENT ON COLUMN tmp_seq0003.CHARITER IS 'Characteristic Iteration';
COMMENT ON COLUMN tmp_seq0003.CIFSN IS 'Characteristic Iteration File Sequence Number';
COMMENT ON COLUMN tmp_seq0003.LOGRECNO IS 'Logical Record Number';
COMMENT ON COLUMN tmp_seq0003.P0050001 IS 'Total:';
COMMENT ON COLUMN tmp_seq0003.P0050002 IS 'Institutionalized population:';
COMMENT ON COLUMN tmp_seq0003.P0050003 IS 'Correctional facilities for adults';
COMMENT ON COLUMN tmp_seq0003.P0050004 IS 'Juvenile facilities';
COMMENT ON COLUMN tmp_seq0003.P0050005 IS 'Nursing facilities/Skilled-nursing facilities';
COMMENT ON COLUMN tmp_seq0003.P0050006 IS 'Other institutional facilities';
COMMENT ON COLUMN tmp_seq0003.P0050007 IS 'Noninstitutionalized population:';
COMMENT ON COLUMN tmp_seq0003.P0050008 IS 'College/University student housing';
COMMENT ON COLUMN tmp_seq0003.P0050009 IS 'Military quarters';
COMMENT ON COLUMN tmp_seq0003.P0050010 IS 'Other noninstitutional facilities';
