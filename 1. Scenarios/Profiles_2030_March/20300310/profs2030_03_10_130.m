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
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.8112 0.8878 0.3394 0.1841 0.0 6.2958 0.787 2.8633 6.5571 11.1546 4.5445 20.201;
	1.2154 1.0458 0.4859 0.6532 0.39 3.9752 0.4969 0.3078 3.6127 30.594 10.0998 55.4059;
	1.2888 1.1093 0.5929 1.3516 1.3956 0.0 0.0 0.0 2.5165 66.8582 22.1109 121.0805;
	1.9165 1.8433 1.0966 1.8663 2.5284 10.2265 1.2783 0.2207 18.5801 126.2779 35.6907 228.6901;
	1.6344 1.8766 1.5189 1.9125 2.112 27.7562 3.4695 3.8778 33.988 108.6572 31.0009 196.7788;
	1.3695 1.8092 1.7977 1.5641 1.0174 68.4855 8.5607 6.7009 46.7545 82.929 20.4718 150.185;
	1.4941 2.608 1.8065 0.7837 0.0 191.7481 23.9685 19.8804 60.2103 99.7792 31.3473 180.7008;
	1.4891 2.3496 1.5325 0.5339 0.0119 154.73 19.3413 15.1002 57.294 80.9944 36.8171 146.6813;
	1.5971 1.9867 1.3901 0.658 0.508 129.1467 16.1433 11.3668 52.0972 62.1936 34.7597 112.633;
	1.8419 1.7202 1.6611 0.6928 1.5482 100.6718 12.584 5.7198 45.1463 34.2415 28.0053 62.0116;
	0.4486 0.4315 0.3427 0.4511 1.2353 49.6561 6.207 7.7865 28.4804 21.2514 11.3439 38.4865;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
