-- pl_geohd_2020_notab_dar.sas
DROP TABLE IF EXISTS tmp_geoheader CASCADE;
CREATE TABLE tmp_geoheader (
	FILEID varchar(6),
	STUSAB varchar(2),
	SUMLEV varchar(3),
	GEOVAR varchar(2),
	GEOCOMP varchar(2),
	CHARITER varchar(3),
	CIFSN varchar(2),
	LOGRECNO varchar(7),
	GEOID varchar(60),
	GEOCODE varchar(51),
	REGION varchar(1),
	DIVISION varchar(1),
	STATE varchar(2),
	STATENS varchar(8),
	COUNTY varchar(3),
	COUNTYCC varchar(2),
	COUNTYNS varchar(8),
	COUSUB varchar(5),
	COUSUBCC varchar(2),
	COUSUBNS varchar(8),
	SUBMCD varchar(5),
	SUBMCDCC varchar(2),
	SUBMCDNS varchar(8),
	ESTATE varchar(5),
	ESTATECC varchar(2),
	ESTATENS varchar(8),
	CONCIT varchar(5),
	CONCITCC varchar(2),
	CONCITNS varchar(8),
	PLACE varchar(5),
	PLACECC varchar(2),
	PLACENS varchar(8),
	TRACT varchar(6),
	BLKGRP varchar(1),
	BLOCK varchar(4),
	AIANHH varchar(4),
	AIHHTLI varchar(1),
	AIANHHFP varchar(5),
	AIANHHCC varchar(2),
	AIANHHNS varchar(8),
	AITS varchar(3),
	AITSFP varchar(5),
	AITSCC varchar(2),
	AITSNS varchar(8),
	TTRACT varchar(6),
	TBLKGRP varchar(1),
	ANRC varchar(5),
	ANRCCC varchar(2),
	ANRCNS varchar(8),
	CBSA varchar(5),
	MEMI varchar(1),
	CSA varchar(3),
	METDIV varchar(5),
	NECTA varchar(5),
	NMEMI varchar(1),
	CNECTA varchar(3),
	NECTADIV varchar(5),
	CBSAPCI varchar(1),
	NECTAPCI varchar(1),
	UA varchar(5),
	UATYPE varchar(1),
	UR varchar(1),
	CD116 varchar(2),
	CD118 varchar(2),
	CD119 varchar(2),
	CD120 varchar(2),
	CD121 varchar(2),
	SLDU18 varchar(3),
	SLDU22 varchar(3),
	SLDU24 varchar(3),
	SLDU26 varchar(3),
	SLDU28 varchar(3),
	SLDL18 varchar(3),
	SLDL22 varchar(3),
	SLDL24 varchar(3),
	SLDL26 varchar(3),
	SLDL28 varchar(3),
	VTD varchar(6),
	VTDI varchar(1),
	ZCTA varchar(5),
	SDELM varchar(5),
	SDSEC varchar(5),
	SDUNI varchar(5),
	PUMA varchar(5),
	AREALAND varchar(14),
	AREAWATR varchar(14),
	BASENAME varchar(100),
	NAME varchar(125),
	FUNCSTAT varchar(1),
	GCUNI varchar(1),
	POP100 varchar(9),
	HU100 varchar(9),
	INTPTLAT varchar(11),
	INTPTLON varchar(12),
	LSADC varchar(2),
	PARTFLAG varchar(1),
	UGA varchar(5)
)
WITH (autovacuum_enabled = FALSE, toast.autovacuum_enabled = FALSE);

COMMENT ON COLUMN tmp_geoheader.FILEID IS ' File Identification ';
COMMENT ON COLUMN tmp_geoheader.STUSAB IS ' State/US-Abbreviation (USPS) ';
COMMENT ON COLUMN tmp_geoheader.SUMLEV IS ' Summary Level ';
COMMENT ON COLUMN tmp_geoheader.GEOVAR IS ' Geographic Variant ';
COMMENT ON COLUMN tmp_geoheader.GEOCOMP IS ' Geographic Component ';
COMMENT ON COLUMN tmp_geoheader.CHARITER IS ' Characteristic Iteration ';
COMMENT ON COLUMN tmp_geoheader.CIFSN IS ' Characteristic Iteration File Sequence Number ';
COMMENT ON COLUMN tmp_geoheader.LOGRECNO IS ' Logical Record Number ';
COMMENT ON COLUMN tmp_geoheader.GEOID IS ' Geographic Record Identifier ';
COMMENT ON COLUMN tmp_geoheader.GEOCODE IS ' Geographic Code Identifier ';
COMMENT ON COLUMN tmp_geoheader.REGION IS ' Region ';
COMMENT ON COLUMN tmp_geoheader.DIVISION IS ' Division ';
COMMENT ON COLUMN tmp_geoheader.STATE IS ' State (FIPS) ';
COMMENT ON COLUMN tmp_geoheader.STATENS IS ' State (NS) ';
COMMENT ON COLUMN tmp_geoheader.COUNTY IS ' County (FIPS) ';
COMMENT ON COLUMN tmp_geoheader.COUNTYCC IS ' FIPS County Class Code ';
COMMENT ON COLUMN tmp_geoheader.COUNTYNS IS ' County (NS) ';
COMMENT ON COLUMN tmp_geoheader.COUSUB IS ' County Subdivision (FIPS) ';
COMMENT ON COLUMN tmp_geoheader.COUSUBCC IS ' FIPS County Subdivision Class Code ';
COMMENT ON COLUMN tmp_geoheader.COUSUBNS IS ' County Subdivision (NS) ';
COMMENT ON COLUMN tmp_geoheader.SUBMCD IS ' Subminor Civil Division (FIPS) ';
COMMENT ON COLUMN tmp_geoheader.SUBMCDCC IS ' FIPS Subminor Civil Division Class Code ';
COMMENT ON COLUMN tmp_geoheader.SUBMCDNS IS ' Subminor Civil Division (NS) ';
COMMENT ON COLUMN tmp_geoheader.ESTATE IS ' Estate (FIPS) ';
COMMENT ON COLUMN tmp_geoheader.ESTATECC IS ' FIPS Estate Class Code ';
COMMENT ON COLUMN tmp_geoheader.ESTATENS IS ' Estate (NS) ';
COMMENT ON COLUMN tmp_geoheader.CONCIT IS ' Consolidated City (FIPS) ';
COMMENT ON COLUMN tmp_geoheader.CONCITCC IS ' FIPS Consolidated City Class Code ';
COMMENT ON COLUMN tmp_geoheader.CONCITNS IS ' Consolidated City (NS) ';
COMMENT ON COLUMN tmp_geoheader.PLACE IS ' Place (FIPS) ';
COMMENT ON COLUMN tmp_geoheader.PLACECC IS ' FIPS Place Class Code ';
COMMENT ON COLUMN tmp_geoheader.PLACENS IS ' Place (NS) ';
COMMENT ON COLUMN tmp_geoheader.TRACT IS ' Census Tract ';
COMMENT ON COLUMN tmp_geoheader.BLKGRP IS ' Block Group ';
COMMENT ON COLUMN tmp_geoheader.BLOCK IS ' Block ';
COMMENT ON COLUMN tmp_geoheader.AIANHH IS ' American Indian Area/Alaska Native Area/Hawaiian Home Land (Census) ';
COMMENT ON COLUMN tmp_geoheader.AIHHTLI IS ' American Indian Trust Land/Hawaiian Home Land Indicator ';
COMMENT ON COLUMN tmp_geoheader.AIANHHFP IS ' American Indian Area/Alaska Native Area/Hawaiian Home Land (FIPS) ';
COMMENT ON COLUMN tmp_geoheader.AIANHHCC IS ' FIPS American Indian Area/Alaska Native Area/Hawaiian Home Land Class Code ';
COMMENT ON COLUMN tmp_geoheader.AIANHHNS IS ' American Indian Area/Alaska Native Area/Hawaiian Home Land (NS) ';
COMMENT ON COLUMN tmp_geoheader.AITS IS ' American Indian Tribal Subdivision (Census) ';
COMMENT ON COLUMN tmp_geoheader.AITSFP IS ' American Indian Tribal Subdivision (FIPS) ';
COMMENT ON COLUMN tmp_geoheader.AITSCC IS ' FIPS American Indian Tribal Subdivision Class Code ';
COMMENT ON COLUMN tmp_geoheader.AITSNS IS ' American Indian Tribal Subdivision (NS) ';
COMMENT ON COLUMN tmp_geoheader.TTRACT IS ' Tribal Census Tract ';
COMMENT ON COLUMN tmp_geoheader.TBLKGRP IS ' Tribal Block Group ';
COMMENT ON COLUMN tmp_geoheader.ANRC IS ' Alaska Native Regional Corporation (FIPS) ';
COMMENT ON COLUMN tmp_geoheader.ANRCCC IS ' FIPS Alaska Native Regional Corporation Class Code ';
COMMENT ON COLUMN tmp_geoheader.ANRCNS IS ' Alaska Native Regional Corporation (NS) ';
COMMENT ON COLUMN tmp_geoheader.CBSA IS ' Metropolitan Statistical Area/Micropolitan Statistical Area ';
COMMENT ON COLUMN tmp_geoheader.MEMI IS ' Metropolitan/Micropolitan Indicator ';
COMMENT ON COLUMN tmp_geoheader.CSA IS ' Combined Statistical Area ';
COMMENT ON COLUMN tmp_geoheader.METDIV IS ' Metropolitan Division ';
COMMENT ON COLUMN tmp_geoheader.NECTA IS ' New England City and Town Area ';
COMMENT ON COLUMN tmp_geoheader.NMEMI IS ' NECTA Metropolitan/Micropolitan Indicator ';
COMMENT ON COLUMN tmp_geoheader.CNECTA IS ' Combined New England City and Town Area ';
COMMENT ON COLUMN tmp_geoheader.NECTADIV IS ' New England City and Town Area Division ';
COMMENT ON COLUMN tmp_geoheader.CBSAPCI IS ' Metropolitan Statistical Area/Micropolitan Statistical Area Principal City Indicator ';
COMMENT ON COLUMN tmp_geoheader.NECTAPCI IS ' New England City and Town Area Principal City Indicator ';
COMMENT ON COLUMN tmp_geoheader.UA IS ' Urban Area ';
COMMENT ON COLUMN tmp_geoheader.UATYPE IS ' Urban Area Type ';
COMMENT ON COLUMN tmp_geoheader.UR IS ' Urban/Rural ';
COMMENT ON COLUMN tmp_geoheader.CD116 IS ' Congressional District (116th) ';
COMMENT ON COLUMN tmp_geoheader.CD118 IS ' Congressional District (118th) ';
COMMENT ON COLUMN tmp_geoheader.CD119 IS ' Congressional District (119th) ';
COMMENT ON COLUMN tmp_geoheader.CD120 IS ' Congressional District (120th) ';
COMMENT ON COLUMN tmp_geoheader.CD121 IS ' Congressional District (121st) ';
COMMENT ON COLUMN tmp_geoheader.SLDU18 IS ' State Legislative District (Upper Chamber) (2018) ';
COMMENT ON COLUMN tmp_geoheader.SLDU22 IS ' State Legislative District (Upper Chamber) (2022) ';
COMMENT ON COLUMN tmp_geoheader.SLDU24 IS ' State Legislative District (Upper Chamber) (2024) ';
COMMENT ON COLUMN tmp_geoheader.SLDU26 IS ' State Legislative District (Upper Chamber) (2026) ';
COMMENT ON COLUMN tmp_geoheader.SLDU28 IS ' State Legislative District (Upper Chamber) (2028) ';
COMMENT ON COLUMN tmp_geoheader.SLDL18 IS ' State Legislative District (Lower Chamber) (2018) ';
COMMENT ON COLUMN tmp_geoheader.SLDL22 IS ' State Legislative District (Lower Chamber) (2022) ';
COMMENT ON COLUMN tmp_geoheader.SLDL24 IS ' State Legislative District (Lower Chamber) (2024) ';
COMMENT ON COLUMN tmp_geoheader.SLDL26 IS ' State Legislative District (Lower Chamber) (2026) ';
COMMENT ON COLUMN tmp_geoheader.SLDL28 IS ' State Legislative District (Lower Chamber) (2028) ';
COMMENT ON COLUMN tmp_geoheader.VTD IS ' Voting District ';
COMMENT ON COLUMN tmp_geoheader.VTDI IS ' Voting District Indicator ';
COMMENT ON COLUMN tmp_geoheader.ZCTA IS ' ZIP Code Tabulation Area (5-Digit) ';
COMMENT ON COLUMN tmp_geoheader.SDELM IS ' School District (Elementary) ';
COMMENT ON COLUMN tmp_geoheader.SDSEC IS ' School District (Secondary) ';
COMMENT ON COLUMN tmp_geoheader.SDUNI IS ' School District (Unified) ';
COMMENT ON COLUMN tmp_geoheader.PUMA IS ' Public Use Microdata Area ';
COMMENT ON COLUMN tmp_geoheader.AREALAND IS ' Area (Land) ';
COMMENT ON COLUMN tmp_geoheader.AREAWATR IS ' Area (Water) ';
COMMENT ON COLUMN tmp_geoheader.BASENAME IS ' Area Base Name ';
COMMENT ON COLUMN tmp_geoheader.NAME IS ' Area Name-Legal/Statistical Area Description (LSAD) Term-Part Indicator ';
COMMENT ON COLUMN tmp_geoheader.FUNCSTAT IS ' Functional Status Code ';
COMMENT ON COLUMN tmp_geoheader.GCUNI IS ' Geographic Change User Note Indicator ';
COMMENT ON COLUMN tmp_geoheader.POP100 IS ' Population Count (100%) ';
COMMENT ON COLUMN tmp_geoheader.HU100 IS ' Housing Unit Count (100%) ';
COMMENT ON COLUMN tmp_geoheader.INTPTLAT IS ' Internal Point (Latitude) ';
COMMENT ON COLUMN tmp_geoheader.INTPTLON IS ' Internal Point (Longitude) ';
COMMENT ON COLUMN tmp_geoheader.LSADC IS ' Legal/Statistical Area Description Code ';
COMMENT ON COLUMN tmp_geoheader.PARTFLAG IS ' Part Flag ';
COMMENT ON COLUMN tmp_geoheader.UGA IS ' Urban Growth Area ';


-- pl_part1_2020_notab_dar.sas
DROP TABLE IF EXISTS tmp_seq0001 CASCADE;
CREATE TABLE tmp_seq0001 (
	FILEID varchar(6),
	STUSAB varchar(2),
	CHARITER varchar(3),
	CIFSN varchar(2),
	LOGRECNO varchar(7),
	P0010001 varchar(9),
	P0010002 varchar(9),
	P0010003 varchar(9),
	P0010004 varchar(9),
	P0010005 varchar(9),
	P0010006 varchar(9),
	P0010007 varchar(9),
	P0010008 varchar(9),
	P0010009 varchar(9),
	P0010010 varchar(9),
	P0010011 varchar(9),
	P0010012 varchar(9),
	P0010013 varchar(9),
	P0010014 varchar(9),
	P0010015 varchar(9),
	P0010016 varchar(9),
	P0010017 varchar(9),
	P0010018 varchar(9),
	P0010019 varchar(9),
	P0010020 varchar(9),
	P0010021 varchar(9),
	P0010022 varchar(9),
	P0010023 varchar(9),
	P0010024 varchar(9),
	P0010025 varchar(9),
	P0010026 varchar(9),
	P0010027 varchar(9),
	P0010028 varchar(9),
	P0010029 varchar(9),
	P0010030 varchar(9),
	P0010031 varchar(9),
	P0010032 varchar(9),
	P0010033 varchar(9),
	P0010034 varchar(9),
	P0010035 varchar(9),
	P0010036 varchar(9),
	P0010037 varchar(9),
	P0010038 varchar(9),
	P0010039 varchar(9),
	P0010040 varchar(9),
	P0010041 varchar(9),
	P0010042 varchar(9),
	P0010043 varchar(9),
	P0010044 varchar(9),
	P0010045 varchar(9),
	P0010046 varchar(9),
	P0010047 varchar(9),
	P0010048 varchar(9),
	P0010049 varchar(9),
	P0010050 varchar(9),
	P0010051 varchar(9),
	P0010052 varchar(9),
	P0010053 varchar(9),
	P0010054 varchar(9),
	P0010055 varchar(9),
	P0010056 varchar(9),
	P0010057 varchar(9),
	P0010058 varchar(9),
	P0010059 varchar(9),
	P0010060 varchar(9),
	P0010061 varchar(9),
	P0010062 varchar(9),
	P0010063 varchar(9),
	P0010064 varchar(9),
	P0010065 varchar(9),
	P0010066 varchar(9),
	P0010067 varchar(9),
	P0010068 varchar(9),
	P0010069 varchar(9),
	P0010070 varchar(9),
	P0010071 varchar(9),
	P0020001 varchar(9),
	P0020002 varchar(9),
	P0020003 varchar(9),
	P0020004 varchar(9),
	P0020005 varchar(9),
	P0020006 varchar(9),
	P0020007 varchar(9),
	P0020008 varchar(9),
	P0020009 varchar(9),
	P0020010 varchar(9),
	P0020011 varchar(9),
	P0020012 varchar(9),
	P0020013 varchar(9),
	P0020014 varchar(9),
	P0020015 varchar(9),
	P0020016 varchar(9),
	P0020017 varchar(9),
	P0020018 varchar(9),
	P0020019 varchar(9),
	P0020020 varchar(9),
	P0020021 varchar(9),
	P0020022 varchar(9),
	P0020023 varchar(9),
	P0020024 varchar(9),
	P0020025 varchar(9),
	P0020026 varchar(9),
	P0020027 varchar(9),
	P0020028 varchar(9),
	P0020029 varchar(9),
	P0020030 varchar(9),
	P0020031 varchar(9),
	P0020032 varchar(9),
	P0020033 varchar(9),
	P0020034 varchar(9),
	P0020035 varchar(9),
	P0020036 varchar(9),
	P0020037 varchar(9),
	P0020038 varchar(9),
	P0020039 varchar(9),
	P0020040 varchar(9),
	P0020041 varchar(9),
	P0020042 varchar(9),
	P0020043 varchar(9),
	P0020044 varchar(9),
	P0020045 varchar(9),
	P0020046 varchar(9),
	P0020047 varchar(9),
	P0020048 varchar(9),
	P0020049 varchar(9),
	P0020050 varchar(9),
	P0020051 varchar(9),
	P0020052 varchar(9),
	P0020053 varchar(9),
	P0020054 varchar(9),
	P0020055 varchar(9),
	P0020056 varchar(9),
	P0020057 varchar(9),
	P0020058 varchar(9),
	P0020059 varchar(9),
	P0020060 varchar(9),
	P0020061 varchar(9),
	P0020062 varchar(9),
	P0020063 varchar(9),
	P0020064 varchar(9),
	P0020065 varchar(9),
	P0020066 varchar(9),
	P0020067 varchar(9),
	P0020068 varchar(9),
	P0020069 varchar(9),
	P0020070 varchar(9),
	P0020071 varchar(9),
	P0020072 varchar(9),
	P0020073 varchar(9)
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
	FILEID varchar(6),
	STUSAB varchar(2),
	CHARITER varchar(3),
	CIFSN varchar(2),
	LOGRECNO varchar(7),
	P0030001 varchar(9),
	P0030002 varchar(9),
	P0030003 varchar(9),
	P0030004 varchar(9),
	P0030005 varchar(9),
	P0030006 varchar(9),
	P0030007 varchar(9),
	P0030008 varchar(9),
	P0030009 varchar(9),
	P0030010 varchar(9),
	P0030011 varchar(9),
	P0030012 varchar(9),
	P0030013 varchar(9),
	P0030014 varchar(9),
	P0030015 varchar(9),
	P0030016 varchar(9),
	P0030017 varchar(9),
	P0030018 varchar(9),
	P0030019 varchar(9),
	P0030020 varchar(9),
	P0030021 varchar(9),
	P0030022 varchar(9),
	P0030023 varchar(9),
	P0030024 varchar(9),
	P0030025 varchar(9),
	P0030026 varchar(9),
	P0030027 varchar(9),
	P0030028 varchar(9),
	P0030029 varchar(9),
	P0030030 varchar(9),
	P0030031 varchar(9),
	P0030032 varchar(9),
	P0030033 varchar(9),
	P0030034 varchar(9),
	P0030035 varchar(9),
	P0030036 varchar(9),
	P0030037 varchar(9),
	P0030038 varchar(9),
	P0030039 varchar(9),
	P0030040 varchar(9),
	P0030041 varchar(9),
	P0030042 varchar(9),
	P0030043 varchar(9),
	P0030044 varchar(9),
	P0030045 varchar(9),
	P0030046 varchar(9),
	P0030047 varchar(9),
	P0030048 varchar(9),
	P0030049 varchar(9),
	P0030050 varchar(9),
	P0030051 varchar(9),
	P0030052 varchar(9),
	P0030053 varchar(9),
	P0030054 varchar(9),
	P0030055 varchar(9),
	P0030056 varchar(9),
	P0030057 varchar(9),
	P0030058 varchar(9),
	P0030059 varchar(9),
	P0030060 varchar(9),
	P0030061 varchar(9),
	P0030062 varchar(9),
	P0030063 varchar(9),
	P0030064 varchar(9),
	P0030065 varchar(9),
	P0030066 varchar(9),
	P0030067 varchar(9),
	P0030068 varchar(9),
	P0030069 varchar(9),
	P0030070 varchar(9),
	P0030071 varchar(9),
	P0040001 varchar(9),
	P0040002 varchar(9),
	P0040003 varchar(9),
	P0040004 varchar(9),
	P0040005 varchar(9),
	P0040006 varchar(9),
	P0040007 varchar(9),
	P0040008 varchar(9),
	P0040009 varchar(9),
	P0040010 varchar(9),
	P0040011 varchar(9),
	P0040012 varchar(9),
	P0040013 varchar(9),
	P0040014 varchar(9),
	P0040015 varchar(9),
	P0040016 varchar(9),
	P0040017 varchar(9),
	P0040018 varchar(9),
	P0040019 varchar(9),
	P0040020 varchar(9),
	P0040021 varchar(9),
	P0040022 varchar(9),
	P0040023 varchar(9),
	P0040024 varchar(9),
	P0040025 varchar(9),
	P0040026 varchar(9),
	P0040027 varchar(9),
	P0040028 varchar(9),
	P0040029 varchar(9),
	P0040030 varchar(9),
	P0040031 varchar(9),
	P0040032 varchar(9),
	P0040033 varchar(9),
	P0040034 varchar(9),
	P0040035 varchar(9),
	P0040036 varchar(9),
	P0040037 varchar(9),
	P0040038 varchar(9),
	P0040039 varchar(9),
	P0040040 varchar(9),
	P0040041 varchar(9),
	P0040042 varchar(9),
	P0040043 varchar(9),
	P0040044 varchar(9),
	P0040045 varchar(9),
	P0040046 varchar(9),
	P0040047 varchar(9),
	P0040048 varchar(9),
	P0040049 varchar(9),
	P0040050 varchar(9),
	P0040051 varchar(9),
	P0040052 varchar(9),
	P0040053 varchar(9),
	P0040054 varchar(9),
	P0040055 varchar(9),
	P0040056 varchar(9),
	P0040057 varchar(9),
	P0040058 varchar(9),
	P0040059 varchar(9),
	P0040060 varchar(9),
	P0040061 varchar(9),
	P0040062 varchar(9),
	P0040063 varchar(9),
	P0040064 varchar(9),
	P0040065 varchar(9),
	P0040066 varchar(9),
	P0040067 varchar(9),
	P0040068 varchar(9),
	P0040069 varchar(9),
	P0040070 varchar(9),
	P0040071 varchar(9),
	P0040072 varchar(9),
	P0040073 varchar(9),
	H0010001 varchar(9),
	H0010002 varchar(9),
	H0010003 varchar(9)
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
	FILEID varchar(6),
	STUSAB varchar(2),
	CHARITER varchar(3),
	CIFSN varchar(2),
	LOGRECNO varchar(7),
	P0050001 varchar(9),
	P0050002 varchar(9),
	P0050003 varchar(9),
	P0050004 varchar(9),
	P0050005 varchar(9),
	P0050006 varchar(9),
	P0050007 varchar(9),
	P0050008 varchar(9),
	P0050009 varchar(9),
	P0050010 varchar(9)
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


