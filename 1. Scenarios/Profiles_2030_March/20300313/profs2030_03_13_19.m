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
	0.4731 0.4018 0.424 0.0 0.0 0.0 0.0 0.2 0.0 0.0 0.0 0.0;
	18.266 16.4646 10.195 2.2545 10.7335 302.771 37.8464 60.0472 164.3124 10.6776 8.7242 19.3373;
	25.2056 17.1201 14.005 3.9273 10.8762 429.2396 53.655 72.0596 250.8414 18.7293 16.638 33.9189;
	25.0454 16.7836 14.0897 4.8422 9.6622 441.6165 55.2021 73.2143 258.3745 31.9385 22.8713 57.8409;
	22.847 16.1444 13.6408 0.7882 3.4247 322.9188 40.3648 50.5044 150.7215 59.8098 41.1529 108.3159;
	21.1689 16.1359 13.5575 1.4595 4.2228 322.408 40.301 59.5795 142.155 72.5114 57.7392 131.3186;
	20.6172 15.7638 11.8603 2.2061 5.1074 308.1306 38.5163 67.9158 139.9886 88.831 98.5303 160.8735;
	8.7597 6.9154 6.2156 3.031 4.9722 108.6046 13.5756 52.2973 87.0065 105.4652 152.194 190.9981;
	6.7042 4.5546 5.6778 1.7637 3.425 107.2713 13.4089 35.1285 96.1993 100.2529 91.7097 181.5586;
	5.0778 4.4377 5.0978 0.9269 2.5613 121.262 15.1577 22.0013 92.4526 75.0098 39.786 135.8433;
	2.904 2.1644 2.0694 0.3883 0.5139 85.6901 10.7113 6.7681 49.4499 17.3992 7.598 31.51;
	0.4166 0.3058 0.2871 0.477 0.6231 22.6205 2.8276 5.0309 8.0538 7.1783 4.3204 13.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
