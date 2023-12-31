function solarprofile = ex_solar_profilesh1
%EX_WIND_PROFILE_D  Example wind_load_nyiso profile data for deterministic unit commitment.
% 2022.03.12
% Andres F. Ramirez


%% define constants
[GEN_BUS, PG, QG, QMAX, QMIN, VG, MBASE, GEN_STATUS, PMAX, PMIN, ...
    MU_PMAX, MU_PMIN, MU_QMAX, MU_QMIN, PC1, PC2, QC1MIN, QC1MAX, ...
    QC2MIN, QC2MAX, RAMP_AGC, RAMP_10, RAMP_30, RAMP_Q, APF] = idx_gen;
[CT_LABEL, CT_PROB, CT_TABLE, CT_TBUS, CT_TGEN, CT_TBRCH, CT_TAREABUS, ...
    CT_TAREAGEN, CT_TAREABRCH, CT_ROW, CT_COL, CT_CHGTYPE, CT_REP, ...
    CT_REL, CT_ADD, CT_NEWVAL, CT_TLOAD, CT_TAREALOAD, CT_LOAD_ALL_PQ, ...
    CT_LOAD_FIX_PQ, CT_LOAD_DIS_PQ, CT_LOAD_ALL_P, CT_LOAD_FIX_P, ...
    CT_LOAD_DIS_P, CT_TGENCOST, CT_TAREAGENCOST, CT_MODCOST_F, ...
    CT_MODCOST_X] = idx_ct;

solarprofile = struct( ...
    'type', 'mpcData', ...
    'table', CT_TGEN, ...
    'rows', [1:12], ...
    'col', PMAX, ...
    'chgtype', 1, ...
    'values', [] );
solarprofile.values(:,1,:) = [
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	1.019 0.8311 0.7032 0.0 0.0 9.547 1.1934 4.5892 0.4191 0.0 0.0 0.0;
	7.718 2.7323 1.5975 7.1335 2.1855 121.5412 15.1927 17.5568 101.1626 51.1442 71.8161 92.6225;
	10.7996 9.4095 7.1401 4.4655 1.9241 115.3884 14.4235 47.6215 113.6615 90.9743 174.0567 164.7549;
	15.9764 16.2911 13.4839 4.4859 1.8496 172.2359 21.5295 57.7723 114.2075 169.2519 159.7965 306.5162;
	21.3571 16.31 12.9246 1.352 0.3799 248.0577 31.0072 59.4562 93.6574 188.836 131.9165 341.9831;
	23.7548 16.5136 12.4721 1.2684 0.7412 318.0454 39.7557 60.9279 137.0161 197.5347 142.8999 357.7365;
	23.1235 16.4786 12.1864 1.1455 0.6676 342.1789 42.7724 58.8791 159.7585 168.9976 149.34 306.0557;
	12.4559 10.6371 10.3744 0.4961 0.0 283.9391 35.4924 52.6231 114.7737 70.4927 123.2032 127.6627;
	5.9769 5.1338 7.4777 0.0293 0.0 247.7764 30.972 45.2569 87.909 59.3972 123.8258 107.5687;
	3.6077 3.7639 3.0696 0.0 0.0 219.2815 27.4102 42.5265 82.2113 63.4819 104.2598 114.966;
	2.3626 2.2375 1.6701 0.0 0.0158 165.5943 20.6993 35.2617 116.2042 43.0117 74.7056 77.8945;
	1.1894 1.059 0.8271 0.0 0.0 70.9284 8.8661 15.3701 39.9104 14.5279 15.6007 26.3102;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
