INSERT INTO acs2020_5yr.geoheader  SELECT
	btrim(substring(all_fields  from  1  for  6))  AS  fileid,
	btrim(substring(all_fields  from  7  for  2))  AS  stusab,
	btrim(substring(all_fields  from  9  for  3))::int  AS  sumlevel,
	btrim(substring(all_fields  from  12  for  2))  AS  component,
	btrim(substring(all_fields  from  14  for  7))::int  AS  logrecno,
	NULLIF(btrim(substring(all_fields  from  21  for  1)),  '')  AS  us,
	NULLIF(btrim(substring(all_fields  from  22  for  1)),  '')  AS  region,
	NULLIF(btrim(substring(all_fields  from  23  for  1)),  '')  AS  division,
	NULLIF(btrim(substring(all_fields  from  24  for  2)),  '')  AS  statece,
	NULLIF(btrim(substring(all_fields  from  26  for  2)),  '')  AS  state,
	NULLIF(btrim(substring(all_fields  from  28  for  3)),  '')  AS  county,
	NULLIF(btrim(substring(all_fields  from  31  for  5)),  '')  AS  cousub,
	NULLIF(btrim(substring(all_fields  from  36  for  5)),  '')  AS  place,
	NULLIF(btrim(substring(all_fields  from  41  for  6)),  '')  AS  tract,
	NULLIF(btrim(substring(all_fields  from  47  for  1)),  '')  AS  blkgrp,
	NULLIF(btrim(substring(all_fields  from  48  for  5)),  '')  AS  concit,
	NULLIF(btrim(substring(all_fields  from  53  for  4)),  '')  AS  aianhh,
	NULLIF(btrim(substring(all_fields  from  57  for  5)),  '')  AS  aianhhfp,
	NULLIF(btrim(substring(all_fields  from  62  for  1)),  '')  AS  aihhtli,
	NULLIF(btrim(substring(all_fields  from  63  for  3)),  '')  AS  aitsce,
	NULLIF(btrim(substring(all_fields  from  66  for  5)),  '')  AS  aits,
	NULLIF(btrim(substring(all_fields  from  71  for  5)),  '')  AS  anrc,
	NULLIF(btrim(substring(all_fields  from  76  for  5)),  '')  AS  cbsa,
	NULLIF(btrim(substring(all_fields  from  81  for  3)),  '')  AS  csa,
	NULLIF(btrim(substring(all_fields  from  84  for  5)),  '')  AS  metdiv,
	NULLIF(btrim(substring(all_fields  from  89  for  1)),  '')  AS  macc,
	NULLIF(btrim(substring(all_fields  from  90  for  1)),  '')  AS  memi,
	NULLIF(btrim(substring(all_fields  from  91  for  5)),  '')  AS  necta,
	NULLIF(btrim(substring(all_fields  from  96  for  3)),  '')  AS  cnecta,
	NULLIF(btrim(substring(all_fields  from  99  for  5)),  '')  AS  nectadiv,
	NULLIF(btrim(substring(all_fields  from  104  for  5)),  '')  AS  ua,
	NULLIF(btrim(substring(all_fields  from  109  for  5)),  '')  AS  blank1,
	NULLIF(btrim(substring(all_fields  from  114  for  2)),  '')  AS  cdcurr,
	NULLIF(btrim(substring(all_fields  from  116  for  3)),  '')  AS  sldu,
	NULLIF(btrim(substring(all_fields  from  119  for  3)),  '')  AS  sldl,
	NULLIF(btrim(substring(all_fields  from  122  for  6)),  '')  AS  blank2,
	NULLIF(btrim(substring(all_fields  from  128  for  3)),  '')  AS  blank3,
	NULLIF(btrim(substring(all_fields  from  131  for  5)),  '')  AS  zcta5,
	NULLIF(btrim(substring(all_fields  from  136  for  5)),  '')  AS  submcd,
	NULLIF(btrim(substring(all_fields  from  141  for  5)),  '')  AS  sdelm,
	NULLIF(btrim(substring(all_fields  from  146  for  5)),  '')  AS  sdsec,
	NULLIF(btrim(substring(all_fields  from  151  for  5)),  '')  AS  sduni,
	NULLIF(btrim(substring(all_fields  from  156  for  1)),  '')  AS  ur,
	NULLIF(btrim(substring(all_fields  from  157  for  1)),  '')  AS  pci,
	NULLIF(btrim(substring(all_fields  from  158  for  6)),  '')  AS  blank5,
	NULLIF(btrim(substring(all_fields  from  164  for  5)),  '')  AS  blank6,
	NULLIF(btrim(substring(all_fields  from  169  for  5)),  '')  AS  puma5,
	NULLIF(btrim(substring(all_fields  from  174  for  5)),  '')  AS  blank7,
	NULLIF(btrim(substring(all_fields  from  179  for  40)),  '')  AS  geoid,
	NULLIF(btrim(substring(all_fields  from  219  for  1000)),  '')  AS  name,
	NULLIF(btrim(substring(all_fields  from  1219  for  6)),  '')  AS  bttr,
	NULLIF(btrim(substring(all_fields  from  1225  for  1)),  '')  AS  btbg,
	NULLIF(btrim(substring(all_fields  from  1226  for  44)),  '')  AS  blank8
FROM acs2020_5yr.tmp_geoheader;
