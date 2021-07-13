CREATE TABLE dec2010_pl94.seq0001 (
    FILEID varchar(6),
    STUSAB varchar(2),
    CHARITER varchar(3),
    CIFSN varchar(2),
    LOGRECNO varchar(7),
    P0010001 integer,
    P0010002 integer,
    P0010003 integer,
    P0010004 integer,
    P0010005 integer,
    P0010006 integer,
    P0010007 integer,
    P0010008 integer,
    P0010009 integer,
    P0010010 integer,
    P0010011 integer,
    P0010012 integer,
    P0010013 integer,
    P0010014 integer,
    P0010015 integer,
    P0010016 integer,
    P0010017 integer,
    P0010018 integer,
    P0010019 integer,
    P0010020 integer,
    P0010021 integer,
    P0010022 integer,
    P0010023 integer,
    P0010024 integer,
    P0010025 integer,
    P0010026 integer,
    P0010027 integer,
    P0010028 integer,
    P0010029 integer,
    P0010030 integer,
    P0010031 integer,
    P0010032 integer,
    P0010033 integer,
    P0010034 integer,
    P0010035 integer,
    P0010036 integer,
    P0010037 integer,
    P0010038 integer,
    P0010039 integer,
    P0010040 integer,
    P0010041 integer,
    P0010042 integer,
    P0010043 integer,
    P0010044 integer,
    P0010045 integer,
    P0010046 integer,
    P0010047 integer,
    P0010048 integer,
    P0010049 integer,
    P0010050 integer,
    P0010051 integer,
    P0010052 integer,
    P0010053 integer,
    P0010054 integer,
    P0010055 integer,
    P0010056 integer,
    P0010057 integer,
    P0010058 integer,
    P0010059 integer,
    P0010060 integer,
    P0010061 integer,
    P0010062 integer,
    P0010063 integer,
    P0010064 integer,
    P0010065 integer,
    P0010066 integer,
    P0010067 integer,
    P0010068 integer,
    P0010069 integer,
    P0010070 integer,
    P0010071 integer,
    P0020001 integer,
    P0020002 integer,
    P0020003 integer,
    P0020004 integer,
    P0020005 integer,
    P0020006 integer,
    P0020007 integer,
    P0020008 integer,
    P0020009 integer,
    P0020010 integer,
    P0020011 integer,
    P0020012 integer,
    P0020013 integer,
    P0020014 integer,
    P0020015 integer,
    P0020016 integer,
    P0020017 integer,
    P0020018 integer,
    P0020019 integer,
    P0020020 integer,
    P0020021 integer,
    P0020022 integer,
    P0020023 integer,
    P0020024 integer,
    P0020025 integer,
    P0020026 integer,
    P0020027 integer,
    P0020028 integer,
    P0020029 integer,
    P0020030 integer,
    P0020031 integer,
    P0020032 integer,
    P0020033 integer,
    P0020034 integer,
    P0020035 integer,
    P0020036 integer,
    P0020037 integer,
    P0020038 integer,
    P0020039 integer,
    P0020040 integer,
    P0020041 integer,
    P0020042 integer,
    P0020043 integer,
    P0020044 integer,
    P0020045 integer,
    P0020046 integer,
    P0020047 integer,
    P0020048 integer,
    P0020049 integer,
    P0020050 integer,
    P0020051 integer,
    P0020052 integer,
    P0020053 integer,
    P0020054 integer,
    P0020055 integer,
    P0020056 integer,
    P0020057 integer,
    P0020058 integer,
    P0020059 integer,
    P0020060 integer,
    P0020061 integer,
    P0020062 integer,
    P0020063 integer,
    P0020064 integer,
    P0020065 integer,
    P0020066 integer,
    P0020067 integer,
    P0020068 integer,
    P0020069 integer,
    P0020070 integer,
    P0020071 integer,
    P0020072 integer,
    P0020073 integer
)
WITH (autovacuum_enabled = FALSE, toast.autovacuum_enabled = FALSE);

CREATE INDEX seq0001_join_idx on dec2010_pl94.seq0001 (LOGRECNO, STUSAB);


CREATE TABLE dec2010_pl94.seq0002 (
	FILEID varchar(6),
	STUSAB varchar(2),
	CHARITER varchar(3),
    CIFSN varchar(2),
	LOGRECNO varchar(7),
	P0030001 integer,
	P0030002 integer,
	P0030003 integer,
	P0030004 integer,
	P0030005 integer,
	P0030006 integer,
	P0030007 integer,
	P0030008 integer,
	P0030009 integer,
	P0030010 integer,
	P0030011 integer,
	P0030012 integer,
	P0030013 integer,
	P0030014 integer,
	P0030015 integer,
	P0030016 integer,
	P0030017 integer,
	P0030018 integer,
	P0030019 integer,
	P0030020 integer,
	P0030021 integer,
	P0030022 integer,
	P0030023 integer,
	P0030024 integer,
	P0030025 integer,
	P0030026 integer,
	P0030027 integer,
	P0030028 integer,
	P0030029 integer,
	P0030030 integer,
	P0030031 integer,
	P0030032 integer,
	P0030033 integer,
	P0030034 integer,
	P0030035 integer,
	P0030036 integer,
	P0030037 integer,
	P0030038 integer,
	P0030039 integer,
	P0030040 integer,
	P0030041 integer,
	P0030042 integer,
	P0030043 integer,
	P0030044 integer,
	P0030045 integer,
	P0030046 integer,
	P0030047 integer,
	P0030048 integer,
	P0030049 integer,
	P0030050 integer,
	P0030051 integer,
	P0030052 integer,
	P0030053 integer,
	P0030054 integer,
	P0030055 integer,
	P0030056 integer,
	P0030057 integer,
	P0030058 integer,
	P0030059 integer,
	P0030060 integer,
	P0030061 integer,
	P0030062 integer,
	P0030063 integer,
	P0030064 integer,
	P0030065 integer,
	P0030066 integer,
	P0030067 integer,
	P0030068 integer,
	P0030069 integer,
	P0030070 integer,
	P0030071 integer,
	P0040001 integer,
	P0040002 integer,
	P0040003 integer,
	P0040004 integer,
	P0040005 integer,
	P0040006 integer,
	P0040007 integer,
	P0040008 integer,
	P0040009 integer,
	P0040010 integer,
	P0040011 integer,
	P0040012 integer,
	P0040013 integer,
	P0040014 integer,
	P0040015 integer,
	P0040016 integer,
	P0040017 integer,
	P0040018 integer,
	P0040019 integer,
	P0040020 integer,
	P0040021 integer,
	P0040022 integer,
	P0040023 integer,
	P0040024 integer,
	P0040025 integer,
	P0040026 integer,
	P0040027 integer,
	P0040028 integer,
	P0040029 integer,
	P0040030 integer,
	P0040031 integer,
	P0040032 integer,
	P0040033 integer,
	P0040034 integer,
	P0040035 integer,
	P0040036 integer,
	P0040037 integer,
	P0040038 integer,
	P0040039 integer,
	P0040040 integer,
	P0040041 integer,
	P0040042 integer,
	P0040043 integer,
	P0040044 integer,
	P0040045 integer,
	P0040046 integer,
	P0040047 integer,
	P0040048 integer,
	P0040049 integer,
	P0040050 integer,
	P0040051 integer,
	P0040052 integer,
	P0040053 integer,
	P0040054 integer,
	P0040055 integer,
	P0040056 integer,
	P0040057 integer,
	P0040058 integer,
	P0040059 integer,
	P0040060 integer,
	P0040061 integer,
	P0040062 integer,
	P0040063 integer,
	P0040064 integer,
	P0040065 integer,
	P0040066 integer,
	P0040067 integer,
	P0040068 integer,
	P0040069 integer,
	P0040070 integer,
	P0040071 integer,
	P0040072 integer,
	P0040073 integer,
	H0010001 integer,
	H0010002 integer,
	H0010003 integer
)
WITH (autovacuum_enabled = FALSE, toast.autovacuum_enabled = FALSE);

CREATE INDEX seq0002_join_idx on dec2010_pl94.seq0002 (LOGRECNO, STUSAB);


COMMENT ON COLUMN dec2010_pl94.seq0001.FILEID IS 'File Identification';
COMMENT ON COLUMN dec2010_pl94.seq0001.STUSAB IS 'State/US-Abbreviation (USPS)';
COMMENT ON COLUMN dec2010_pl94.seq0001.CHARITER IS 'Characteristic Iteration';
COMMENT ON COLUMN dec2010_pl94.seq0001.CIFSN IS 'Characteristic Iteration File Sequence Number';
COMMENT ON COLUMN dec2010_pl94.seq0001.LOGRECNO IS 'Logical Record Number';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010001 IS 'P1-1: Total';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010002 IS 'P1-2: Population of one race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010003 IS 'P1-3: White alone';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010004 IS 'P1-4: Black or African American alone';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010005 IS 'P1-5: American Indian and Alaska Native alone';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010006 IS 'P1-6: Asian alone';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010007 IS 'P1-7: Native Hawaiian and Other Pacific Islander alone';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010008 IS 'P1-8: Some other race alone';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010009 IS 'P1-9: Population of two or more races';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010010 IS 'P1-10: Population of two races';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010011 IS 'P1-11: White; Black or African American';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010012 IS 'P1-12: White; American Indian and Alaska Native';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010013 IS 'P1-13: White; Asian';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010014 IS 'P1-14: White; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010015 IS 'P1-15: White; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010016 IS 'P1-16: Black or African American; American Indian and Alaska Native';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010017 IS 'P1-17: Black or African American; Asian';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010018 IS 'P1-18: Black or African American; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010019 IS 'P1-19: Black or African American; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010020 IS 'P1-20: American Indian and Alaska Native; Asian';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010021 IS 'P1-21: American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010022 IS 'P1-22: American Indian and Alaska Native; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010023 IS 'P1-23: Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010024 IS 'P1-24: Asian; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010025 IS 'P1-25: Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010026 IS 'P1-26: Population of three races';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010027 IS 'P1-27: White; Black or African American; American Indian and Alaska Native';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010028 IS 'P1-28: White; Black or African American; Asian';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010029 IS 'P1-29: White; Black or African American; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010030 IS 'P1-30: White; Black or African American; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010031 IS 'P1-31: White; American Indian and Alaska Native; Asian';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010032 IS 'P1-32: White; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010033 IS 'P1-33: White; American Indian and Alaska Native; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010034 IS 'P1-34: White; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010035 IS 'P1-35: White; Asian; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010036 IS 'P1-36: White; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010037 IS 'P1-37: Black or African American; American Indian and Alaska Native; Asian';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010038 IS 'P1-38: Black or African American; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010039 IS 'P1-39: Black or African American; American Indian and Alaska Native; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010040 IS 'P1-40: Black or African American; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010041 IS 'P1-41: Black or African American; Asian; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010042 IS 'P1-42: Black or African American; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010043 IS 'P1-43: American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010044 IS 'P1-44: American Indian and Alaska Native; Asian; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010045 IS 'P1-45: American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010046 IS 'P1-46: Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010047 IS 'P1-47: Population of four races';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010048 IS 'P1-48: White; Black or African American; American Indian and Alaska Native; Asian';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010049 IS 'P1-49: White; Black or African American; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010050 IS 'P1-50: White; Black or African American; American Indian and Alaska Native; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010051 IS 'P1-51: White; Black or African American; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010052 IS 'P1-52: White; Black or African American; Asian; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010053 IS 'P1-53: White; Black or African American; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010054 IS 'P1-54: White; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010055 IS 'P1-55: White; American Indian and Alaska Native; Asian; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010056 IS 'P1-56: White; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010057 IS 'P1-57: White; Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010058 IS 'P1-58: Black or African American; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010059 IS 'P1-59: Black or African American; American Indian and Alaska Native; Asian; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010060 IS 'P1-60: Black or African American; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010061 IS 'P1-61: Black or African American; Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010062 IS 'P1-62: American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010063 IS 'P1-63: Population of five races';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010064 IS 'P1-64: White; Black or African American; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010065 IS 'P1-65: White; Black or African American; American Indian and Alaska Native; Asian; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010066 IS 'P1-66: White; Black or African American; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010067 IS 'P1-67: White; Black or African American; Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010068 IS 'P1-68: White; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010069 IS 'P1-69: Black or African American; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010070 IS 'P1-70: Population of six races';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0010071 IS 'P1-71: White; Black or African American; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020001 IS 'P2-1: Total';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020002 IS 'P2-2: Hispanic or Latino';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020003 IS 'P2-3: Not Hispanic or Latino';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020004 IS 'P2-4: Population of one race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020005 IS 'P2-5: White alone';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020006 IS 'P2-6: Black or African American alone';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020007 IS 'P2-7: American Indian and Alaska Native alone';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020008 IS 'P2-8: Asian alone';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020009 IS 'P2-9: Native Hawaiian and Other Pacific Islander alone';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020010 IS 'P2-10: Some other race alone';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020011 IS 'P2-11: Population of two or more races';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020012 IS 'P2-12: Population of two races';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020013 IS 'P2-13: White; Black or African American';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020014 IS 'P2-14: White; American Indian and Alaska Native';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020015 IS 'P2-15: White; Asian';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020016 IS 'P2-16: White; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020017 IS 'P2-17: White; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020018 IS 'P2-18: Black or African American; American Indian and Alaska Native';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020019 IS 'P2-19: Black or African American; Asian';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020020 IS 'P2-20: Black or African American; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020021 IS 'P2-21: Black or African American; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020022 IS 'P2-22: American Indian and Alaska Native; Asian';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020023 IS 'P2-23: American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020024 IS 'P2-24: American Indian and Alaska Native; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020025 IS 'P2-25: Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020026 IS 'P2-26: Asian; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020027 IS 'P2-27: Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020028 IS 'P2-28: Population of three races';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020029 IS 'P2-29: White; Black or African American; American Indian and Alaska Native';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020030 IS 'P2-30: White; Black or African American; Asian';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020031 IS 'P2-31: White; Black or African American; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020032 IS 'P2-32: White; Black or African American; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020033 IS 'P2-33: White; American Indian and Alaska Native; Asian';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020034 IS 'P2-34: White; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020035 IS 'P2-35: White; American Indian and Alaska Native; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020036 IS 'P2-36: White; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020037 IS 'P2-37: White; Asian; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020038 IS 'P2-38: White; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020039 IS 'P2-39: Black or African American; American Indian and Alaska Native; Asian';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020040 IS 'P2-40: Black or African American; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020041 IS 'P2-41: Black or African American; American Indian and Alaska Native; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020042 IS 'P2-42: Black or African American; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020043 IS 'P2-43: Black or African American; Asian; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020044 IS 'P2-44: Black or African American; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020045 IS 'P2-45: American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020046 IS 'P2-46: American Indian and Alaska Native; Asian; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020047 IS 'P2-47: American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020048 IS 'P2-48: Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020049 IS 'P2-49: Population of four races';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020050 IS 'P2-50: White; Black or African American; American Indian and Alaska Native; Asian';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020051 IS 'P2-51: White; Black or African American; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020052 IS 'P2-52: White; Black or African American; American Indian and Alaska Native; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020053 IS 'P2-53: White; Black or African American; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020054 IS 'P2-54: White; Black or African American; Asian; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020055 IS 'P2-55: White; Black or African American; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020056 IS 'P2-56: White; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020057 IS 'P2-57: White; American Indian and Alaska Native; Asian; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020058 IS 'P2-58: White; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020059 IS 'P2-59: White; Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020060 IS 'P2-60: Black or African American; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020061 IS 'P2-61: Black or African American; American Indian and Alaska Native; Asian; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020062 IS 'P2-62: Black or African American; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020063 IS 'P2-63: Black or African American; Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020064 IS 'P2-64: American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020065 IS 'P2-65: Population of five races';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020066 IS 'P2-66: White; Black or African American; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020067 IS 'P2-67: White; Black or African American; American Indian and Alaska Native; Asian; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020068 IS 'P2-68: White; Black or African American; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020069 IS 'P2-69: White; Black or African American; Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020070 IS 'P2-70: White; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020071 IS 'P2-71: Black or African American; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020072 IS 'P2-72: Population of six races';
COMMENT ON COLUMN dec2010_pl94.seq0001.P0020073 IS 'P2-73: White; Black or African American; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander; Some other race';;

COMMENT ON COLUMN dec2010_pl94.seq0002.FILEID IS 'File Identification';
COMMENT ON COLUMN dec2010_pl94.seq0002.STUSAB IS 'State/US-Abbreviation (USPS)';
COMMENT ON COLUMN dec2010_pl94.seq0002.CHARITER IS 'Characteristic Iteration';
COMMENT ON COLUMN dec2010_pl94.seq0002.CIFSN IS 'Characteristic Iteration File Sequence Number';
COMMENT ON COLUMN dec2010_pl94.seq0002.LOGRECNO IS 'Logical Record Number';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030001 IS 'P3-1: Total';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030002 IS 'P3-2: Population of one race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030003 IS 'P3-3: White alone';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030004 IS 'P3-4: Black or African American alone';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030005 IS 'P3-5: American Indian and Alaska Native alone';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030006 IS 'P3-6: Asian alone';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030007 IS 'P3-7: Native Hawaiian and Other Pacific Islander alone';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030008 IS 'P3-8: Some other race alone';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030009 IS 'P3-9: Population of two or more races';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030010 IS 'P3-10: Population of two races';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030011 IS 'P3-11: White; Black or African American';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030012 IS 'P3-12: White; American Indian and Alaska Native';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030013 IS 'P3-13: White; Asian';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030014 IS 'P3-14: White; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030015 IS 'P3-15: White; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030016 IS 'P3-16: Black or African American; American Indian and Alaska Native';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030017 IS 'P3-17: Black or African American; Asian';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030018 IS 'P3-18: Black or African American; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030019 IS 'P3-19: Black or African American; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030020 IS 'P3-20: American Indian and Alaska Native; Asian';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030021 IS 'P3-21: American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030022 IS 'P3-22: American Indian and Alaska Native; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030023 IS 'P3-23: Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030024 IS 'P3-24: Asian; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030025 IS 'P3-25: Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030026 IS 'P3-26: Population of three races';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030027 IS 'P3-27: White; Black or African American; American Indian and Alaska Native';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030028 IS 'P3-28: White; Black or African American; Asian';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030029 IS 'P3-29: White; Black or African American; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030030 IS 'P3-30: White; Black or African American; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030031 IS 'P3-31: White; American Indian and Alaska Native; Asian';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030032 IS 'P3-32: White; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030033 IS 'P3-33: White; American Indian and Alaska Native; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030034 IS 'P3-34: White; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030035 IS 'P3-35: White; Asian; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030036 IS 'P3-36: White; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030037 IS 'P3-37: Black or African American; American Indian and Alaska Native; Asian';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030038 IS 'P3-38: Black or African American; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030039 IS 'P3-39: Black or African American; American Indian and Alaska Native; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030040 IS 'P3-40: Black or African American; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030041 IS 'P3-41: Black or African American; Asian; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030042 IS 'P3-42: Black or African American; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030043 IS 'P3-43: American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030044 IS 'P3-44: American Indian and Alaska Native; Asian; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030045 IS 'P3-45: American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030046 IS 'P3-46: Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030047 IS 'P3-47: Population of four races';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030048 IS 'P3-48: White; Black or African American; American Indian and Alaska Native; Asian';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030049 IS 'P3-49: White; Black or African American; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030050 IS 'P3-50: White; Black or African American; American Indian and Alaska Native; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030051 IS 'P3-51: White; Black or African American; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030052 IS 'P3-52: White; Black or African American; Asian; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030053 IS 'P3-53: White; Black or African American; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030054 IS 'P3-54: White; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030055 IS 'P3-55: White; American Indian and Alaska Native; Asian; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030056 IS 'P3-56: White; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030057 IS 'P3-57: White; Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030058 IS 'P3-58: Black or African American; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030059 IS 'P3-59: Black or African American; American Indian and Alaska Native; Asian; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030060 IS 'P3-60: Black or African American; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030061 IS 'P3-61: Black or African American; Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030062 IS 'P3-62: American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030063 IS 'P3-63: Population of five races';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030064 IS 'P3-64: White; Black or African American; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030065 IS 'P3-65: White; Black or African American; American Indian and Alaska Native; Asian; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030066 IS 'P3-66: White; Black or African American; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030067 IS 'P3-67: White; Black or African American; Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030068 IS 'P3-68: White; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030069 IS 'P3-69: Black or African American; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030070 IS 'P3-70: Population of six races';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0030071 IS 'P3-71: White; Black or African American; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040001 IS 'P4-1: Total';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040002 IS 'P4-2: Hispanic or Latino';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040003 IS 'P4-3: Not Hispanic or Latino';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040004 IS 'P4-4: Population of one race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040005 IS 'P4-5: White alone';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040006 IS 'P4-6: Black or African American alone';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040007 IS 'P4-7: American Indian and Alaska Native alone';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040008 IS 'P4-8: Asian alone';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040009 IS 'P4-9: Native Hawaiian and Other Pacific Islander alone';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040010 IS 'P4-10: Some other race alone';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040011 IS 'P4-11: Population of two or more races';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040012 IS 'P4-12: Population of two races';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040013 IS 'P4-13: White; Black or African American';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040014 IS 'P4-14: White; American Indian and Alaska Native';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040015 IS 'P4-15: White; Asian';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040016 IS 'P4-16: White; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040017 IS 'P4-17: White; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040018 IS 'P4-18: Black or African American; American Indian and Alaska Native';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040019 IS 'P4-19: Black or African American; Asian';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040020 IS 'P4-20: Black or African American; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040021 IS 'P4-21: Black or African American; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040022 IS 'P4-22: American Indian and Alaska Native; Asian';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040023 IS 'P4-23: American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040024 IS 'P4-24: American Indian and Alaska Native; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040025 IS 'P4-25: Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040026 IS 'P4-26: Asian; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040027 IS 'P4-27: Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040028 IS 'P4-28: Population of three races';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040029 IS 'P4-29: White; Black or African American; American Indian and Alaska Native';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040030 IS 'P4-30: White; Black or African American; Asian';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040031 IS 'P4-31: White; Black or African American; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040032 IS 'P4-32: White; Black or African American; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040033 IS 'P4-33: White; American Indian and Alaska Native; Asian';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040034 IS 'P4-34: White; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040035 IS 'P4-35: White; American Indian and Alaska Native; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040036 IS 'P4-36: White; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040037 IS 'P4-37: White; Asian; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040038 IS 'P4-38: White; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040039 IS 'P4-39: Black or African American; American Indian and Alaska Native; Asian';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040040 IS 'P4-40: Black or African American; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040041 IS 'P4-41: Black or African American; American Indian and Alaska Native; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040042 IS 'P4-42: Black or African American; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040043 IS 'P4-43: Black or African American; Asian; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040044 IS 'P4-44: Black or African American; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040045 IS 'P4-45: American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040046 IS 'P4-46: American Indian and Alaska Native; Asian; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040047 IS 'P4-47: American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040048 IS 'P4-48: Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040049 IS 'P4-49: Population of four races';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040050 IS 'P4-50: White; Black or African American; American Indian and Alaska Native; Asian';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040051 IS 'P4-51: White; Black or African American; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040052 IS 'P4-52: White; Black or African American; American Indian and Alaska Native; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040053 IS 'P4-53: White; Black or African American; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040054 IS 'P4-54: White; Black or African American; Asian; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040055 IS 'P4-55: White; Black or African American; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040056 IS 'P4-56: White; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040057 IS 'P4-57: White; American Indian and Alaska Native; Asian; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040058 IS 'P4-58: White; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040059 IS 'P4-59: White; Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040060 IS 'P4-60: Black or African American; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040061 IS 'P4-61: Black or African American; American Indian and Alaska Native; Asian; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040062 IS 'P4-62: Black or African American; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040063 IS 'P4-63: Black or African American; Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040064 IS 'P4-64: American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040065 IS 'P4-65: Population of five races';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040066 IS 'P4-66: White; Black or African American; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040067 IS 'P4-67: White; Black or African American; American Indian and Alaska Native; Asian; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040068 IS 'P4-68: White; Black or African American; American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040069 IS 'P4-69: White; Black or African American; Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040070 IS 'P4-70: White; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040071 IS 'P4-71: Black or African American; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040072 IS 'P4-72: Population of six races';
COMMENT ON COLUMN dec2010_pl94.seq0002.P0040073 IS 'P4-73: White; Black or African American; American Indian and Alaska Native; Asian; Native Hawaiian and Other Pacific Islander; Some other race';
COMMENT ON COLUMN dec2010_pl94.seq0002.H0010001 IS 'H1-1: Total';
COMMENT ON COLUMN dec2010_pl94.seq0002.H0010002 IS 'H1-2: Occupied';
COMMENT ON COLUMN dec2010_pl94.seq0002.H0010003 IS 'H1-3: Vacant';
