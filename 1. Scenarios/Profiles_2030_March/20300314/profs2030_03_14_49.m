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
	0.0951 0.0972 0.1051 0.0 0.0 0.1251 0.0156 0.1784 0.0 0.0 0.0 0.0;
	3.2545 1.9514 2.3432 7.3741 5.2792 83.7329 10.4666 8.7823 35.9465 49.9739 52.6002 90.5031;
	8.1378 5.8515 5.6942 7.5599 10.7614 186.4232 23.3029 25.8018 85.7956 128.1137 89.7328 232.0146;
	12.925 8.949 8.5458 8.6833 11.2658 188.0791 23.5099 28.6275 96.7191 215.2057 127.545 389.7388;
	21.4568 15.8003 12.2542 9.2449 7.3805 372.066 46.5082 50.3711 183.7779 253.6093 146.58 459.2879;
	23.2223 16.0537 13.0493 10.9005 8.485 337.8491 42.2311 56.2454 110.2389 261.7514 147.2815 474.0333;
	23.3059 16.071 13.0806 11.1779 10.5034 357.3434 44.6679 60.4159 138.7125 273.2189 151.7695 494.801;
	22.516 16.5622 13.5705 7.4431 9.775 411.3657 51.4207 62.0591 197.0722 335.5891 197.7684 607.7539;
	17.7606 15.4763 12.1076 6.775 9.5485 435.3111 54.4139 60.7584 216.4721 336.0487 208.9767 608.5862;
	12.3246 11.4313 8.8658 4.7697 7.1721 434.5534 54.3192 54.111 209.7625 323.6299 195.5446 586.0957;
	6.3864 6.2249 5.0187 4.1811 3.9314 309.1624 38.6453 13.5002 71.5963 54.7286 26.5869 99.1139;
	1.1302 0.9937 0.8132 0.9407 2.1162 63.0047 7.8756 9.6537 33.6361 15.0226 7.2984 27.206;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];