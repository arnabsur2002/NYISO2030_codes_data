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
	0.0 0.0 0.002 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	13.245 10.0329 9.3505 5.2212 4.6844 329.0596 41.1325 43.6148 83.8886 70.3263 39.9469 127.3614;
	19.4291 15.1144 12.7575 7.5244 7.3391 406.2461 50.7808 71.448 144.3976 239.7562 124.4475 434.1999;
	23.506 16.6029 13.8 10.0195 9.4936 421.0586 52.6323 74.3538 172.4249 321.6823 191.8301 582.5685;
	26.7914 16.6083 13.8 11.0821 9.7411 367.1696 45.8962 71.3157 194.7574 260.4741 199.6135 471.7203;
	26.9966 16.6135 13.8 11.4504 11.048 290.5967 36.3246 67.8264 145.1064 282.2891 219.1077 511.2272;
	26.8037 16.6083 13.809 11.4912 11.4413 167.1872 20.8984 64.3006 71.3091 293.7322 224.9535 531.9509;
	26.3934 16.6083 13.8008 11.6371 11.5469 304.1466 38.0183 64.004 61.3573 202.9516 199.2219 367.5465;
	23.6016 16.6083 13.8 11.5984 11.5303 374.6558 46.832 69.7416 90.4067 180.8237 175.9873 327.4728;
	20.0467 14.9271 11.7844 9.622 11.0939 390.3543 48.7943 71.1248 106.7336 122.211 152.585 221.3249;
	16.5663 11.0083 6.1665 8.29 8.8638 262.1903 32.7738 52.6809 42.1028 36.5045 67.5878 66.1099;
	0.9872 0.8469 0.4793 2.1574 3.0815 44.3341 5.5418 8.5444 19.5882 17.6124 18.1607 31.8962;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
