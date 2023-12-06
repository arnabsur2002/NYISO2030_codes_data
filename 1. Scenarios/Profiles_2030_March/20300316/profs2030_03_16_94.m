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
	1.0111 0.8269 0.7066 0.0 0.0 9.5411 1.1926 4.3953 1.2588 0.0 0.0 0.0;
	2.491 2.3983 1.9768 2.2569 3.5832 140.8583 17.6073 17.504 37.1089 95.5557 22.0577 173.052;
	12.9931 13.2705 8.8899 2.2435 3.1407 306.4246 38.3031 52.0259 58.128 224.8358 81.6792 407.179;
	22.6549 16.6083 13.8 3.0779 3.1969 362.1006 45.2626 61.8705 87.7282 306.8404 128.662 555.6898;
	23.2077 16.0304 13.8 2.9199 2.9678 363.2666 45.4083 56.1573 88.7562 274.9147 125.6602 497.8722;
	24.7094 16.1279 13.8 5.3347 5.505 353.4389 44.1799 53.4106 68.2293 329.3988 143.3139 596.5432;
	25.173 16.2873 13.8 6.7108 6.0629 361.8394 45.2299 57.4466 56.4334 350.6279 159.0676 634.9893;
	18.3455 15.0427 13.1429 6.2784 2.3342 384.5545 48.0693 75.7422 77.119 326.8757 162.9726 591.974;
	13.0312 11.8134 11.8231 4.1286 1.2567 383.1429 47.8929 77.0167 83.2395 266.8252 120.7359 483.2221;
	8.0879 8.1686 8.4847 2.2743 0.6984 336.7185 42.0898 73.7288 77.1907 131.54 58.4591 238.2198;
	5.6418 6.1019 5.707 1.5283 1.1169 139.4964 17.4371 47.7053 60.7782 29.6184 3.1752 53.6392;
	1.6794 1.6025 1.249 0.8747 1.1294 64.7753 8.0969 16.4349 33.553 16.165 5.1641 29.275;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
