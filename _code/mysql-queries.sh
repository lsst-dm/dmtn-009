# SQL queries used for vertical paritioning tests

# 1 table/200 columns = no joins
time mysql -u ubuntu mysqltest200 -e 'SELECT MYSQL_COLUMNS_1.* FROM MYSQL_COLUMNS_1' > /dev/null
time mysql -u ubuntu mysqltest200 -e 'SELECT T1.SEC_COL_1,T1.SEC_COL_2,T1.SEC_COL_3,T1.SEC_COL_4,T1.SEC_COL_5,T1.SEC_COL_6\
,T1.SEC_COL_7,T1.SEC_COL_8,T1.SEC_COL_9,T1.SEC_COL_10 FROM MYSQL_COLUMNS_1 AS T1' > /dev/null
time mysql -u ubuntu mysqltest200 -e 'SELECT T1.SEC_COL_1,T1.SEC_COL_2,T1.SEC_COL_3,T1.SEC_COL_4,T1.SEC_COL_5,T1.SEC_COL_6\
,T1.SEC_COL_7,T1.SEC_COL_8,T1.SEC_COL_9,T1.SEC_COL_10,T1.SEC_COL_11,T1.SEC_COL_12,T1.SEC_COL_13,T1.SEC_COL_14,T1.SEC_COL_15\
,T1.SEC_COL_16,T1.SEC_COL_17,T1.SEC_COL_18,T1.SEC_COL_19,T1.SEC_COL_20 FROM MYSQL_COLUMNS_1 AS T1' > /dev/null
time mysql -u ubuntu mysqltest200 -e 'SELECT T1.SEC_COL_1,T1.SEC_COL_2,T1.SEC_COL_3,T1.SEC_COL_4,T1.SEC_COL_5,T1.SEC_COL_6\
,T1.SEC_COL_7,T1.SEC_COL_8,T1.SEC_COL_9,T1.SEC_COL_10,T1.SEC_COL_11,T1.SEC_COL_12,T1.SEC_COL_13,T1.SEC_COL_14,T1.SEC_COL_15\
,T1.SEC_COL_16,T1.SEC_COL_17,T1.SEC_COL_18,T1.SEC_COL_19,T1.SEC_COL_20,T1.SEC_COL_21,T1.SEC_COL_22,T1.SEC_COL_23,T1.SEC_COL_24\
,T1.SEC_COL_25,T1.SEC_COL_26,T1.SEC_COL_27,T1.SEC_COL_28,T1.SEC_COL_29,T1.SEC_COL_30,T1.SEC_COL_31,T1.SEC_COL_32,T1.SEC_COL_33\
,T1.SEC_COL_34,T1.SEC_COL_35,T1.SEC_COL_36,T1.SEC_COL_37,T1.SEC_COL_38,T1.SEC_COL_39,T1.SEC_COL_40,T1.SEC_COL_41,T1.SEC_COL_42\
,T1.SEC_COL_43,T1.SEC_COL_44,T1.SEC_COL_45,T1.SEC_COL_46,T1.SEC_COL_47,T1.SEC_COL_48,T1.SEC_COL_49,T1.SEC_COL_50\
 FROM MYSQL_COLUMNS_1 AS T1' > /dev/null

# 10 tables/20 columns = 10 joins
time mysql -u ubuntu mysqltest10_20 -e 'SELECT T1.*,T2.*,T3.*,T4.*,T5.*,T6.*,T7.*,T8.*,T9.*,T10.* FROM MYSQL_COLUMNS_1 AS T1\
JOIN MYSQL_COLUMNS_2 AS T2 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_3 AS T3 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_4 AS T4 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_5 AS T5 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_6 AS T6 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_7 AS T7 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_8 AS T8 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_9 AS T9 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_10 AS T10 USING (PRIM_IDX)' > /dev/null
time mysql -u ubuntu mysqltest10_20 -e 'SELECT T1.SEC_COL_1,T2.SEC_COL_1,T3.SEC_COL_1,T4.SEC_COL_1,T5.SEC_COL_1,T6.SEC_COL_1\
,T7.SEC_COL_1,T8.SEC_COL_1,T9.SEC_COL_1,T10.SEC_COL_1 FROM MYSQL_COLUMNS_1 AS T1\
JOIN MYSQL_COLUMNS_2 AS T2 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_3 AS T3 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_4 AS T4 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_5 AS T5 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_6 AS T6 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_7 AS T7 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_8 AS T8 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_9 AS T9 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_10 AS T10 USING (PRIM_IDX)' > /dev/null

# 20 tables/10 columns = 20 joins
time mysql -u ubuntu mysqltest20_10 -e 'SELECT T1.*,T2.*,T3.*,T4.*,T5.*,T6.*,T7.*,T8.*,T9.*,T10.*,T11.*,T12.*,T13.*,T14.*,T15.*\
,T16.*,T17.*,T18.*,T19.*,T20.* FROM MYSQL_COLUMNS_1 AS T1\
JOIN MYSQL_COLUMNS_2 AS T2 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_3 AS T3 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_4 AS T4 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_5 AS T5 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_6 AS T6 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_7 AS T7 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_8 AS T8 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_9 AS T9 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_10 AS T10 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_11 AS T11 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_12 AS T12 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_13 AS T13 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_14 AS T14 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_15 AS T15 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_16 AS T16 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_17 AS T17 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_18 AS T18 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_19 AS T19 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_20 AS T20 USING (PRIM_IDX)' > /dev/null
time mysql -u ubuntu mysqltest20_10 -e 'SELECT T1.SEC_COL_1,T2.SEC_COL_1,T3.SEC_COL_1,T4.SEC_COL_1,T5.SEC_COL_1,T6.SEC_COL_1\
,T7.SEC_COL_1,T8.SEC_COL_1,T9.SEC_COL_1,T10.SEC_COL_1,T11.SEC_COL_1,T12.SEC_COL_1,T13.SEC_COL_1,T14.SEC_COL_1,T15.SEC_COL_1\
,T16.SEC_COL_1,T17.SEC_COL_1,T18.SEC_COL_1,T19.SEC_COL_1,T20.SEC_COL_1 FROM MYSQL_COLUMNS_1 AS T1\
JOIN MYSQL_COLUMNS_2 AS T2 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_3 AS T3 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_4 AS T4 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_5 AS T5 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_6 AS T6 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_7 AS T7 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_8 AS T8 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_9 AS T9 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_10 AS T10 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_11 AS T11 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_12 AS T12 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_13 AS T13 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_14 AS T14 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_15 AS T15 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_16 AS T16 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_17 AS T17 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_18 AS T18 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_19 AS T19 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_20 AS T20 USING (PRIM_IDX)' > /dev/null

# 50 tables/4 columns = 50 joins
time mysql -u ubuntu mysqltest50_4 -e 'SELECT T1.*,T2.*,T3.*,T4.*,T5.*,T6.*,T7.*,T8.*,T9.*,T10.*,T11.*,T12.*,T13.*,T14.*,T15.*\
,T16.*,T17.*,T18.*,T19.*,T20.*,T21.*,T22.*,T23.*,T24.*,T25.*,T26.*,T27.*,T28.*,T29.*,T30.*,T31.*,T32.*,T33.*,T34.*,T35.*,T36.*\
,T37.*,T38.*,T39.*,T40.*,T41.*,T42.*,T43.*,T44.*,T45.*,T46.*,T47.*,T48.*,T49.*,T50.* FROM MYSQL_COLUMNS_1 AS T1\
JOIN MYSQL_COLUMNS_2 AS T2 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_3 AS T3 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_4 AS T4 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_5 AS T5 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_6 AS T6 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_7 AS T7 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_8 AS T8 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_9 AS T9 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_10 AS T10 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_11 AS T11 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_12 AS T12 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_13 AS T13 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_14 AS T14 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_15 AS T15 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_16 AS T16 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_17 AS T17 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_18 AS T18 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_19 AS T19 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_20 AS T20 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_21 AS T21 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_22 AS T22 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_23 AS T23 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_24 AS T24 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_25 AS T25 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_26 AS T26 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_27 AS T27 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_28 AS T28 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_29 AS T29 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_30 AS T30 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_31 AS T31 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_32 AS T32 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_33 AS T33 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_34 AS T34 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_35 AS T35 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_36 AS T36 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_37 AS T37 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_38 AS T38 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_39 AS T39 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_40 AS T40 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_41 AS T41 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_42 AS T42 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_43 AS T43 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_44 AS T44 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_45 AS T45 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_46 AS T46 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_47 AS T47 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_48 AS T48 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_49 AS T49 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_50 AS T50 USING (PRIM_IDX)' > /dev/null
time mysql -u ubuntu mysqltest50_4 -e 'SELECT T1.SEC_COL_1,T2.SEC_COL_1,T3.SEC_COL_1,T4.SEC_COL_1,T5.SEC_COL_1,T6.SEC_COL_1\
,T7.SEC_COL_1,T8.SEC_COL_1,T9.SEC_COL_1,T10.SEC_COL_1,T11.SEC_COL_1,T12.SEC_COL_1,T13.SEC_COL_1,T14.SEC_COL_1,T15.SEC_COL_1\
,T16.SEC_COL_1,T17.SEC_COL_1,T18.SEC_COL_1,T19.SEC_COL_1,T20.SEC_COL_1,T21.SEC_COL_1,T22.SEC_COL_1,T23.SEC_COL_1\
,T24.SEC_COL_1,T25.SEC_COL_1,T26.SEC_COL_1,T27.SEC_COL_1,T28.SEC_COL_1,T29.SEC_COL_1,T30.SEC_COL_1,T31.SEC_COL_1\
,T32.SEC_COL_1,T33.SEC_COL_1,T34.SEC_COL_1,T35.SEC_COL_1,T36.SEC_COL_1,T37.SEC_COL_1,T38.SEC_COL_1,T39.SEC_COL_1\
,T40.SEC_COL_1,T41.SEC_COL_1,T42.SEC_COL_1,T43.SEC_COL_1,T44.SEC_COL_1,T45.SEC_COL_1,T46.SEC_COL_1,T47.SEC_COL_1\
,T48.SEC_COL_1,T49.SEC_COL_1,T50.SEC_COL_1 FROM MYSQL_COLUMNS_1 AS T1\
JOIN MYSQL_COLUMNS_2 AS T2 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_3 AS T3 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_4 AS T4 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_5 AS T5 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_6 AS T6 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_7 AS T7 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_8 AS T8 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_9 AS T9 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_10 AS T10 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_11 AS T11 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_12 AS T12 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_13 AS T13 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_14 AS T14 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_15 AS T15 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_16 AS T16 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_17 AS T17 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_18 AS T18 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_19 AS T19 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_20 AS T20 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_21 AS T21 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_22 AS T22 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_23 AS T23 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_24 AS T24 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_25 AS T25 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_26 AS T26 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_27 AS T27 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_28 AS T28 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_29 AS T29 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_30 AS T30 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_31 AS T31 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_32 AS T32 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_33 AS T33 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_34 AS T34 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_35 AS T35 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_36 AS T36 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_37 AS T37 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_38 AS T38 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_39 AS T39 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_40 AS T40 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_41 AS T41 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_42 AS T42 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_43 AS T43 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_44 AS T44 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_45 AS T45 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_46 AS T46 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_47 AS T47 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_48 AS T48 USING (PRIM_IDX) JOIN MYSQL_COLUMNS_49 AS T49 USING (PRIM_IDX)\
JOIN MYSQL_COLUMNS_50 AS T50 USING (PRIM_IDX)' > /dev/null
