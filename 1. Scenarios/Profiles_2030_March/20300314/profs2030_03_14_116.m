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
	0.007 0.7176 0.0 4.356 8.3574 107.1912 13.3989 7.1707 34.7261 103.6796 32.0132 187.7643;
	3.4999 5.417 0.9779 7.2528 12.4887 229.7531 28.7191 8.5759 88.7817 231.5164 67.4081 419.2775;
	6.998 8.7742 1.789 9.5625 12.8835 248.0205 31.0026 7.4832 120.7784 306.8745 128.8906 555.7515;
	5.0516 9.0707 1.4907 10.4944 11.7202 375.5108 46.9389 13.4675 240.6649 338.0347 161.1878 612.1829;
	2.1854 5.4092 1.4426 9.431 9.562 344.3538 43.0442 19.3561 233.0366 324.205 176.482 587.1372;
	8.3381 7.3045 2.9522 6.4093 8.5679 321.5578 40.1947 26.2513 236.8054 307.1388 170.4235 556.2303;
	23.6786 16.5792 12.8244 2.764 6.4093 238.0127 29.7516 20.0441 233.197 278.6376 61.3104 504.6144;
	20.7333 15.8918 12.139 2.9222 6.4581 208.4596 26.0574 9.7924 220.7539 279.2361 46.4772 505.6983;
	14.6646 11.705 8.5376 1.7148 5.1891 117.1318 14.6415 4.1542 126.734 281.0588 62.0343 508.9993;
	4.9498 4.7994 3.2677 0.1929 1.47 10.4858 1.3107 0.0 0.0 99.2794 24.6824 179.7955;
	1.3239 0.9229 0.7372 0.3554 1.2579 32.1378 4.0172 6.2471 20.2353 15.9719 10.0827 28.9252;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
