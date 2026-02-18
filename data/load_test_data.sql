CREATE TABLE IF NOT EXISTS test_special.`100columns_strikereport_raw` (
  _c0  STRING, _c1  STRING, _c2  STRING, _c3  STRING, _c4  STRING, _c5  STRING, _c6  STRING, _c7  STRING, _c8  STRING, _c9  STRING,
  _c10 STRING, _c11 STRING, _c12 STRING, _c13 STRING, _c14 STRING, _c15 STRING, _c16 STRING, _c17 STRING, _c18 STRING, _c19 STRING,
  _c20 STRING, _c21 STRING, _c22 STRING, _c23 STRING, _c24 STRING, _c25 STRING, _c26 STRING, _c27 STRING, _c28 STRING, _c29 STRING,
  _c30 STRING, _c31 STRING, _c32 STRING, _c33 STRING, _c34 STRING, _c35 STRING, _c36 STRING, _c37 STRING, _c38 STRING, _c39 STRING,
  _c40 STRING, _c41 STRING, _c42 STRING, _c43 STRING, _c44 STRING, _c45 STRING, _c46 STRING, _c47 STRING, _c48 STRING, _c49 STRING,
  _c50 STRING, _c51 STRING, _c52 STRING, _c53 STRING, _c54 STRING, _c55 STRING, _c56 STRING, _c57 STRING, _c58 STRING, _c59 STRING,
  _c60 STRING, _c61 STRING, _c62 STRING, _c63 STRING, _c64 STRING, _c65 STRING, _c66 STRING, _c67 STRING, _c68 STRING, _c69 STRING,
  _c70 STRING, _c71 STRING, _c72 STRING, _c73 STRING, _c74 STRING, _c75 STRING, _c76 STRING, _c77 STRING, _c78 STRING, _c79 STRING,
  _c80 STRING, _c81 STRING, _c82 STRING, _c83 STRING, _c84 STRING, _c85 STRING, _c86 STRING, _c87 STRING, _c88 STRING, _c89 STRING,
  _c90 STRING, _c91 STRING, _c92 STRING, _c93 STRING, _c94 STRING, _c95 STRING, _c96 STRING, _c97 STRING, _c98 STRING, _c99 STRING,
  _c100 STRING, _c101 STRING, _c102 STRING, _c103 STRING
) USING DELTA;

COPY INTO test_special.`100columns_strikereport_raw`
FROM '/Volumes/tableau_testing/test_special/tableau_test_data/test_special/100COLUMNS_STRIKEREPORT.csv'
FILEFORMAT = CSV
FORMAT_OPTIONS ('sep'=',','header'='false','quote'='"','escape'='"','multiLine'='true');

INSERT INTO test_special.`100columns_strikereport`
SELECT
  CAST(_c0  AS INT)       AS index_nr,
  _c1                    AS opid,
  _c2                    AS `operator`,
  _c3                    AS atype,
  _c4                    AS ama,
  _c5                    AS amo,
  _c6                    AS ema,
  _c7                    AS emo,
  _c8                    AS ac_class,
  _c9                    AS ac_mass,
  _c10                   AS num_engs,
  _c11                   AS type_eng,
  _c12                   AS eng_1_pos,
  _c13                   AS eng_2_pos,
  _c14                   AS eng_3_pos,
  _c15                   AS eng_4_pos,
  _c16                   AS reg,
  _c17                   AS flt,
  CAST(_c18 AS TINYINT)  AS remains_collected,
  CAST(_c19 AS TINYINT)  AS remains_sent,
  _c20                   AS incident_date,
  CAST(_c21 AS INT)      AS incident_month,
  CAST(_c22 AS INT)      AS incident_year,
  _c23                   AS time_of_day,
  CAST(_c24 AS SMALLINT) AS `time`,
  _c25                   AS airport_id,
  _c26                   AS airport,
  _c27                   AS state,
  _c28                   AS faaregion,
  _c29                   AS enroute,
  _c30                   AS runway,
  _c31                   AS location,
  CAST(_c32 AS SMALLINT) AS height,
  CAST(_c33 AS SMALLINT) AS speed,
  CAST(_c34 AS FLOAT)    AS distance,
  _c35                   AS phase_of_flt,
  _c36                   AS damage,
  CAST(_c37 AS TINYINT)  AS str_rad,
  CAST(_c38 AS TINYINT)  AS dam_rad,
  CAST(_c39 AS TINYINT)  AS str_windshld,
  CAST(_c40 AS TINYINT)  AS dam_windshld,
  CAST(_c41 AS TINYINT)  AS str_nose,
  CAST(_c42 AS TINYINT)  AS dam_nose,
  CAST(_c43 AS TINYINT)  AS str_eng1,
  CAST(_c44 AS TINYINT)  AS dam_eng1,
  CAST(_c45 AS TINYINT)  AS str_eng2,
  CAST(_c46 AS TINYINT)  AS dam_eng2,
  CAST(_c47 AS TINYINT)  AS str_eng3,
  CAST(_c48 AS TINYINT)  AS dam_eng3,
  CAST(_c49 AS TINYINT)  AS str_eng4,
  CAST(_c50 AS TINYINT)  AS dam_eng4,
  CAST(_c51 AS TINYINT)  AS ingested,
  CAST(_c52 AS TINYINT)  AS str_prop,
  CAST(_c53 AS TINYINT)  AS dam_prop,
  CAST(_c54 AS TINYINT)  AS str_wing_rot,
  CAST(_c55 AS TINYINT)  AS dam_wing_rot,
  CAST(_c56 AS TINYINT)  AS str_fuse,
  CAST(_c57 AS TINYINT)  AS dam_fuse,
  CAST(_c58 AS TINYINT)  AS str_lg,
  CAST(_c59 AS TINYINT)  AS dam_lg,
  CAST(_c60 AS TINYINT)  AS str_tail,
  CAST(_c61 AS TINYINT)  AS dam_tail,
  CAST(_c62 AS TINYINT)  AS str_lghts,
  CAST(_c63 AS TINYINT)  AS dam_lghts,
  CAST(_c64 AS TINYINT)  AS str_other,
  CAST(_c65 AS TINYINT)  AS dam_other,
  _c66                   AS other_specify,
  _c67                   AS effect,
  _c68                   AS effect_other,
  _c69                   AS sky,
  _c70                   AS precip,
  _c71                   AS species_id,
  _c72                   AS species,
  _c73                   AS birds_seen,
  _c74                   AS birds_struck,
  _c75                   AS size,
  _c76                   AS warned,
  _c77                   AS comments,
  _c78                   AS remarks,
  CAST(_c79 AS FLOAT)    AS aos,
  CAST(_c80 AS INT)      AS cost_repairs,
  CAST(_c81 AS INT)      AS cost_other,
  CAST(_c82 AS INT)      AS cost_repairs_infl_adj,
  CAST(_c83 AS INT)      AS cost_other_infl_adj,
  _c84                   AS reported_name,
  _c85                   AS reported_title,
  _c86                   AS reported_date,
  _c87                   AS `source`,
  _c88                   AS person,
  CAST(_c89 AS SMALLINT) AS nr_injuries,
  CAST(_c90 AS SMALLINT) AS nr_fatalities,
  _c91                   AS lupdate,
  CAST(_c92 AS TINYINT)  AS transfer,
  CAST(_c93 AS TINYINT)  AS indicated_damage,
  _c94                   AS test1,
  _c95                   AS test2,
  _c96                   AS test3,
  _c97                   AS test4,
  _c98                   AS test5,
  _c99                   AS test6,
  _c100                  AS test7,
  _c101                  AS test8,
  _c102                  AS test9,
  _c103                  AS test10
FROM test_special.`100columns_strikereport_raw`;

DROP TABLE IF EXISTS test_special.fk_dimcity_raw;
CREATE TABLE IF NOT EXISTS test_special.fk_dimcity_raw (_c0 STRING,_c1 STRING,_c2 STRING) USING DELTA;
COPY INTO test_special.fk_DimCity_raw
FROM '/Volumes/tableau_testing/test_special/tableau_test_data/test_special/fk_DimCity.csv'
FILEFORMAT = CSV FORMAT_OPTIONS ('sep'=',','header'='false','quote'='"','escape'='"','multiLine'='true');
-- TRUNCATE TABLE test_special.fk_dimcity;
INSERT INTO test_special.fk_dimcity
SELECT CAST(_c0 AS INT), _c1, CAST(_c2 AS INT) FROM test_special.fk_dimcity_raw;

-- fk_dimcolors (2)
DROP TABLE IF EXISTS test_special.fk_dimcolors_raw;
CREATE TABLE IF NOT EXISTS test_special.fk_dimcolors_raw (_c0 STRING,_c1 STRING) USING DELTA;
COPY INTO test_special.fk_dimcolors_raw
FROM '/Volumes/tableau_testing/test_special/tableau_test_data/test_special/fk_DimColors.csv'
FILEFORMAT = CSV FORMAT_OPTIONS ('sep'=',','header'='false','quote'='"','escape'='"','multiLine'='true');
-- TRUNCATE TABLE test_special.fk_dimcolors;
INSERT INTO test_special.fk_dimcolors
SELECT CAST(_c0 AS INT), _c1 FROM test_special.fk_dimcolors_raw;

-- fk_dimcolorshades (2)
DROP TABLE IF EXISTS test_special.fk_dimcolorshades_raw;
CREATE TABLE IF NOT EXISTS test_special.fk_dimcolorshades_raw (_c0 STRING,_c1 STRING) USING DELTA;
COPY INTO test_special.fk_dimcolorshades_raw
FROM '/Volumes/tableau_testing/test_special/tableau_test_data/test_special/fk_DimColorShades.csv'
FILEFORMAT = CSV FORMAT_OPTIONS ('sep'=',','header'='false','quote'='"','escape'='"','multiLine'='true');
-- TRUNCATE TABLE test_special.fk_dimcolorshades;
INSERT INTO test_special.fk_dimcolorshades
SELECT _c0, _c1 FROM test_special.fk_dimcolorshades_raw;

-- fk_dimcustomer (5)
DROP TABLE IF EXISTS test_special.fk_dimcustomer_raw;
CREATE TABLE IF NOT EXISTS test_special.fk_dimcustomer_raw (_c0 STRING,_c1 STRING,_c2 STRING,_c3 STRING,_c4 STRING) USING DELTA;
COPY INTO test_special.fk_dimcustomer_raw
FROM '/Volumes/tableau_testing/test_special/tableau_test_data/test_special/fk_DimCustomer.csv'
FILEFORMAT = CSV FORMAT_OPTIONS ('sep'=',','header'='false','quote'='"','escape'='"','multiLine'='true');
-- TRUNCATE TABLE test_special.fk_dimcustomer;
INSERT INTO test_special.fk_dimcustomer
SELECT CAST(_c0 AS INT), _c1, CAST(_c2 AS INT), _c3, CAST(_c4 AS INT) FROM test_special.fk_dimcustomer_raw;

-- fk_dimcustomersegment (2)
DROP TABLE IF EXISTS test_special.fk_dimcustomersegment_raw;
CREATE TABLE IF NOT EXISTS test_special.fk_dimcustomersegment_raw (_c0 STRING,_c1 STRING) USING DELTA;
COPY INTO test_special.fk_dimcustomersegment_raw
FROM '/Volumes/tableau_testing/test_special/tableau_test_data/test_special/fk_DimCustomerSegment.csv'
FILEFORMAT = CSV FORMAT_OPTIONS ('sep'=',','header'='false','quote'='"','escape'='"','multiLine'='true');
-- TRUNCATE TABLE test_special.fk_dimcustomersegment;
INSERT INTO test_special.fk_dimcustomersegment
SELECT CAST(_c0 AS INT), _c1 FROM test_special.fk_dimcustomersegment_raw;

-- fk_dimday (3)
DROP TABLE IF EXISTS test_special.fk_dimday_raw;
CREATE TABLE IF NOT EXISTS test_special.fk_dimday_raw (_c0 STRING,_c1 STRING,_c2 STRING) USING DELTA;
COPY INTO test_special.fk_dimday_raw
FROM '/Volumes/tableau_testing/test_special/tableau_test_data/test_special/fk_DimDay.csv'
FILEFORMAT = CSV FORMAT_OPTIONS ('sep'=',','header'='false','quote'='"','escape'='"','multiLine'='true');
-- TRUNCATE TABLE test_special.fk_dimday;
INSERT INTO test_special.fk_dimday
SELECT CAST(_c0 AS INT), CAST(_c1 AS INT), CAST(_c2 AS INT) FROM test_special.fk_dimday_raw;

-- fk_dimmonth (3)
DROP TABLE IF EXISTS test_special.fk_dimmonth_raw;
CREATE TABLE IF NOT EXISTS test_special.fk_dimmonth_raw (_c0 STRING,_c1 STRING,_c2 STRING) USING DELTA;
COPY INTO test_special.fk_dimmonth_raw
FROM '/Volumes/tableau_testing/test_special/tableau_test_data/test_special/fk_DimMonth.csv'
FILEFORMAT = CSV FORMAT_OPTIONS ('sep'=',','header'='false','quote'='"','escape'='"','multiLine'='true');
-- TRUNCATE TABLE test_special.fk_dimmonth;
INSERT INTO test_special.fk_dimmonth
SELECT CAST(_c0 AS INT), CAST(_c1 AS INT), CAST(_c2 AS INT) FROM test_special.fk_dimmonth_raw;

-- fk_dimproduct (3)
DROP TABLE IF EXISTS test_special.fk_dimproduct_raw;
CREATE TABLE IF NOT EXISTS test_special.fk_dimproduct_raw (_c0 STRING,_c1 STRING,_c2 STRING) USING DELTA;
COPY INTO test_special.fk_dimproduct_raw
FROM '/Volumes/tableau_testing/test_special/tableau_test_data/test_special/FK_DimProduct.csv'
FILEFORMAT = CSV FORMAT_OPTIONS ('sep'=',','header'='false','quote'='"','escape'='"','multiLine'='true');
-- TRUNCATE TABLE test_special.fk_dimproduct;
INSERT INTO test_special.fk_dimproduct
SELECT CAST(_c0 AS INT), _c1, CAST(_c2 AS INT) FROM test_special.fk_dimproduct_raw;

-- fk_dimproductcategory (2)
DROP TABLE IF EXISTS test_special.fk_dimproductcategory_raw;
CREATE TABLE IF NOT EXISTS test_special.fk_dimproductcategory_raw (_c0 STRING,_c1 STRING) USING DELTA;
COPY INTO test_special.fk_dimproductcategory_raw
FROM '/Volumes/tableau_testing/test_special/tableau_test_data/test_special/fk_DimProductCategory.csv'
FILEFORMAT = CSV FORMAT_OPTIONS ('sep'=',','header'='false','quote'='"','escape'='"','multiLine'='true');
-- TRUNCATE TABLE test_special.fk_dimproductcategory;
INSERT INTO test_special.fk_dimproductcategory
SELECT CAST(_c0 AS INT), _c1 FROM test_special.fk_dimproductcategory_raw;

-- unique_dimproductcolors (2)
DROP TABLE IF EXISTS test_special.unique_dimproductcolors_raw;
CREATE TABLE IF NOT EXISTS test_special.unique_dimproductcolors_raw (_c0 STRING,_c1 STRING) USING DELTA;
COPY INTO test_special.unique_dimproductcolors_raw
FROM '/Volumes/tableau_testing/test_special/tableau_test_data/test_special/UNIQUE_DIMPRODUCTCOLORS.csv'
FILEFORMAT = CSV FORMAT_OPTIONS ('sep'=',','header'='false','quote'='"','escape'='"','multiLine'='true');
-- TRUNCATE TABLE test_special.unique_dimproductcolors;
INSERT INTO test_special.unique_dimproductcolors
SELECT CAST(_c0 AS INT), CAST(_c1 AS INT) FROM test_special.unique_dimproductcolors_raw;

-- fk_dimproductsubcategory (3)
DROP TABLE IF EXISTS test_special.fk_dimproductsubcategory_raw;
CREATE TABLE IF NOT EXISTS test_special.fk_dimproductsubcategory_raw (_c0 STRING,_c1 STRING,_c2 STRING) USING DELTA;
COPY INTO test_special.fk_dimproductsubcategory_raw
FROM '/Volumes/tableau_testing/test_special/tableau_test_data/test_special/fk_DimProductSubCategory.csv'
FILEFORMAT = CSV FORMAT_OPTIONS ('sep'=',','header'='false','quote'='"','escape'='"','multiLine'='true');
-- TRUNCATE TABLE test_special.fk_dimproductsubcategory;
INSERT INTO test_special.fk_dimproductsubcategory
SELECT CAST(_c0 AS INT), _c1, CAST(_c2 AS INT) FROM test_special.fk_dimproductsubcategory_raw;

-- fk_dimregion (2)
DROP TABLE IF EXISTS test_special.fk_dimregion_raw;
CREATE TABLE IF NOT EXISTS test_special.fk_dimregion_raw (_c0 STRING,_c1 STRING) USING DELTA;
COPY INTO test_special.fk_dimregion_raw
FROM '/Volumes/tableau_testing/test_special/tableau_test_data/test_special/fk_DimRegion.csv'
FILEFORMAT = CSV FORMAT_OPTIONS ('sep'=',','header'='false','quote'='"','escape'='"','multiLine'='true');
-- TRUNCATE TABLE test_special.fk_dimregion;
INSERT INTO test_special.fk_dimregion
SELECT CAST(_c0 AS INT), _c1 FROM test_special.fk_dimregion_raw;

-- fk_dimsalesperson (3)
DROP TABLE IF EXISTS test_special.fk_dimsalesperson_raw;
CREATE TABLE IF NOT EXISTS test_special.fk_dimsalesperson_raw (_c0 STRING,_c1 STRING,_c2 STRING) USING DELTA;
COPY INTO test_special.fk_dimsalesperson_raw
FROM '/Volumes/tableau_testing/test_special/tableau_test_data/test_special/fk_DimSalesPerson.csv'
FILEFORMAT = CSV FORMAT_OPTIONS ('sep'=',','header'='false','quote'='"','escape'='"','multiLine'='true');
-- TRUNCATE TABLE test_special.fk_dimsalesperson;
INSERT INTO test_special.fk_dimsalesperson
SELECT CAST(_c0 AS INT), _c1, CAST(_c2 AS INT) FROM test_special.fk_dimsalesperson_raw;

-- fk_dimstate (3)
DROP TABLE IF EXISTS test_special.fk_dimstate_raw;
CREATE TABLE IF NOT EXISTS test_special.fk_dimstate_raw (_c0 STRING,_c1 STRING,_c2 STRING) USING DELTA;
COPY INTO test_special.fk_dimstate_raw
FROM '/Volumes/tableau_testing/test_special/tableau_test_data/test_special/fk_DimState.csv'
FILEFORMAT = CSV FORMAT_OPTIONS ('sep'=',','header'='false','quote'='"','escape'='"','multiLine'='true');
-- TRUNCATE TABLE test_special.fk_dimstate;
INSERT INTO test_special.fk_dimstate
SELECT CAST(_c0 AS INT), _c1, CAST(_c2 AS INT) FROM test_special.fk_dimstate_raw;

-- fk_dimyear (1)
DROP TABLE IF EXISTS test_special.fk_dimyear_raw;
CREATE TABLE IF NOT EXISTS test_special.fk_dimyear_raw (_c0 STRING) USING DELTA;
COPY INTO test_special.fk_dimyear_raw
FROM '/Volumes/tableau_testing/test_special/tableau_test_data/test_special/fk_DimYear.csv'
FILEFORMAT = CSV FORMAT_OPTIONS ('sep'=',','header'='false','quote'='"','escape'='"','multiLine'='true');
-- TRUNCATE TABLE test_special.fk_dimyear;
INSERT INTO test_special.fk_dimyear
SELECT CAST(_c0 AS INT) FROM test_special.fk_dimyear_raw;

-- fk_orderfact (9)
DROP TABLE IF EXISTS test_special.fk_orderfact_raw;
CREATE TABLE IF NOT EXISTS test_special.fk_orderfact_raw (_c0 STRING,_c1 STRING,_c2 STRING,_c3 STRING,_c4 STRING,_c5 STRING,_c6 STRING,_c7 STRING,_c8 STRING) USING DELTA;
COPY INTO test_special.fk_orderfact_raw
FROM '/Volumes/tableau_testing/test_special/tableau_test_data/test_special/fk_OrderFact.csv'
FILEFORMAT = CSV FORMAT_OPTIONS ('sep'=',','header'='false','quote'='"','escape'='"','multiLine'='true');
-- TRUNCATE TABLE test_special.fk_orderfact;
INSERT INTO test_special.fk_orderfact
SELECT CAST(_c0 AS INT),CAST(_c1 AS INT),CAST(_c2 AS INT),CAST(_c3 AS INT),CAST(_c4 AS INT),
       CAST(_c5 AS FLOAT),CAST(_c6 AS FLOAT),CAST(_c7 AS FLOAT),CAST(_c8 AS FLOAT)
FROM test_special.fk_orderfact_raw;

-- fk_orderfactnew (10)
DROP TABLE IF EXISTS test_special.fk_orderfactnew_raw;
CREATE TABLE IF NOT EXISTS test_special.fk_orderfactnew_raw (_c0 STRING,_c1 STRING,_c2 STRING,_c3 STRING,_c4 STRING,_c5 STRING,_c6 STRING,_c7 STRING,_c8 STRING,_c9 STRING) USING DELTA;
COPY INTO test_special.fk_orderfactnew_raw
FROM '/Volumes/tableau_testing/test_special/tableau_test_data/test_special/fk_OrderFactNew.csv'
FILEFORMAT = CSV FORMAT_OPTIONS ('sep'=',','header'='false','quote'='"','escape'='"','multiLine'='true');
-- TRUNCATE TABLE test_special.fk_orderfactnew;
INSERT INTO test_special.fk_orderfactnew
SELECT CAST(_c0 AS INT),CAST(_c1 AS INT),CAST(_c2 AS INT),CAST(_c3 AS INT),CAST(_c4 AS INT),
       _c5, CAST(_c6 AS FLOAT), CAST(_c7 AS FLOAT), _c8, _c9
FROM test_special.fk_orderfactnew_raw;

-- fk_orderfactnewextended (9)
DROP TABLE IF EXISTS test_special.fk_orderfactnewextended_raw;
CREATE TABLE IF NOT EXISTS test_special.fk_orderfactnewextended_raw (_c0 STRING,_c1 STRING,_c2 STRING,_c3 STRING,_c4 STRING,_c5 STRING,_c6 STRING,_c7 STRING,_c8 STRING) USING DELTA;
COPY INTO test_special.fk_orderfactnewextended_raw
FROM '/Volumes/tableau_testing/test_special/tableau_test_data/test_special/fk_OrderFactNewExtended.csv'
FILEFORMAT = CSV FORMAT_OPTIONS ('sep'=',','header'='false','quote'='"','escape'='"','multiLine'='true');
-- TRUNCATE TABLE test_special.fk_orderfactnewextended;
INSERT INTO test_special.fk_orderfactnewextended
SELECT CAST(_c0 AS INT),CAST(_c1 AS INT),CAST(_c2 AS INT),CAST(_c3 AS INT),CAST(_c4 AS INT),
       CAST(_c5 AS INT), _c6, _c7, CAST(_c8 AS TINYINT)
FROM test_special.fk_orderfactnewextended_raw;

-- permissions_earthquakereport (6)
DROP TABLE IF EXISTS test_special.permissions_earthquakereport_raw;
CREATE TABLE IF NOT EXISTS test_special.permissions_earthquakereport_raw (_c0 STRING,_c1 STRING,_c2 STRING,_c3 STRING,_c4 STRING,_c5 STRING) USING DELTA;
COPY INTO test_special.permissions_earthquakereport_raw
FROM '/Volumes/tableau_testing/test_special/tableau_test_data/test_special/Permissions_Earthquakereport.csv'
FILEFORMAT = CSV FORMAT_OPTIONS ('sep'=',','header'='false','quote'='"','escape'='"','multiLine'='true');
-- TRUNCATE TABLE test_special.permissions_earthquakereport;
INSERT INTO test_special.permissions_earthquakereport
SELECT CAST(_c0 AS FLOAT),CAST(_c1 AS FLOAT),CAST(_c2 AS FLOAT),CAST(_c3 AS INT),_c4,_c5
FROM test_special.permissions_earthquakereport_raw;

-- tableau_tweets (17)
DROP TABLE IF EXISTS test_special.tableau_tweets_raw;
CREATE TABLE IF NOT EXISTS test_special.tableau_tweets_raw (
  _c0 STRING,_c1 STRING,_c2 STRING,_c3 STRING,_c4 STRING,_c5 STRING,_c6 STRING,_c7 STRING,_c8 STRING,
  _c9 STRING,_c10 STRING,_c11 STRING,_c12 STRING,_c13 STRING,_c14 STRING,_c15 STRING,_c16 STRING
) USING DELTA;
COPY INTO test_special.tableau_tweets_raw
FROM '/Volumes/tableau_testing/test_special/tableau_test_data/test_special/tableau_tweets.csv'
FILEFORMAT = CSV FORMAT_OPTIONS ('sep'=',','header'='false','quote'='"','escape'='"','multiLine'='true');
-- TRUNCATE TABLE test_special.tableau_tweets;
INSERT INTO test_special.tableau_tweets
SELECT
  _c0,
  CAST(_c1 AS FLOAT),
  CAST(_c2 AS FLOAT),
  CAST(_c3 AS BIGINT),
  _c4,
  _c5,
  _c6,
  _c7,
  _c8 AS `source`,
  CAST(_c9 AS BIGINT),
  _c10,
  CAST(_c11 AS FLOAT),
  _c12,
  CAST(_c13 AS BIGINT),
  CAST(_c14 AS BIGINT),
  CAST(_c15 AS INT),
  CAST(_c16 AS BIGINT)
FROM test_special.tableau_tweets_raw;

-- partition_fecexpenditure_temp (17)
DROP TABLE IF EXISTS test_special.partition_fecexpenditure_raw;
CREATE TABLE IF NOT EXISTS test_special.partition_fecexpenditure_raw (
  _c0 STRING,_c1 STRING,_c2 STRING,_c3 STRING,_c4 STRING,_c5 STRING,_c6 STRING,_c7 STRING,_c8 STRING,
  _c9 STRING,_c10 STRING,_c11 STRING,_c12 STRING,_c13 STRING,_c14 STRING,_c15 STRING,_c16 STRING
) USING DELTA;
COPY INTO test_special.partition_fecexpenditure_raw
FROM '/Volumes/tableau_testing/test_special/tableau_test_data/test_special/Partition_FECExpenditure.csv'
FILEFORMAT = CSV FORMAT_OPTIONS ('sep'=',','header'='false','quote'='"','escape'='"','multiLine'='true');
-- TRUNCATE TABLE test_special.partition_fecexpenditure;
INSERT INTO test_special.partition_fecexpenditure
SELECT
  _c0, _c1, _c2, _c3, _c4, _c5, _c6,
  CAST(_c7 AS FLOAT),
  _c8, _c9, _c10, _c11, _c12,
  CAST(_c13 AS INT),
  _c14, _c15,
  CAST(_c16 AS INT)
FROM test_special.partition_fecexpenditure_raw;

-- ============================================================
-- CLEANUP: drop all _raw staging tables
-- ============================================================

DROP TABLE IF EXISTS test_special.`100columns_strikereport_raw`;
DROP TABLE IF EXISTS test_special.fk_dimcity_raw;
DROP TABLE IF EXISTS test_special.fk_dimcolors_raw;
DROP TABLE IF EXISTS test_special.fk_dimcolorshades_raw;
DROP TABLE IF EXISTS test_special.fk_dimcustomer_raw;
DROP TABLE IF EXISTS test_special.fk_dimcustomersegment_raw;
DROP TABLE IF EXISTS test_special.fk_dimday_raw;
DROP TABLE IF EXISTS test_special.fk_dimmonth_raw;
DROP TABLE IF EXISTS test_special.fk_dimproduct_raw;
DROP TABLE IF EXISTS test_special.fk_dimproductcategory_raw;
DROP TABLE IF EXISTS test_special.unique_dimproductcolors_raw;
DROP TABLE IF EXISTS test_special.fk_dimproductsubcategory_raw;
DROP TABLE IF EXISTS test_special.fk_dimregion_raw;
DROP TABLE IF EXISTS test_special.fk_dimsalesperson_raw;
DROP TABLE IF EXISTS test_special.fk_dimstate_raw;
DROP TABLE IF EXISTS test_special.fk_dimyear_raw;
DROP TABLE IF EXISTS test_special.fk_orderfact_raw;
DROP TABLE IF EXISTS test_special.fk_orderfactnew_raw;
DROP TABLE IF EXISTS test_special.fk_orderfactnewextended_raw;
DROP TABLE IF EXISTS test_special.permissions_earthquakereport_raw;
DROP TABLE IF EXISTS test_special.tableau_tweets_raw;
DROP TABLE IF EXISTS test_special.partition_fecexpenditure_temp_raw;
