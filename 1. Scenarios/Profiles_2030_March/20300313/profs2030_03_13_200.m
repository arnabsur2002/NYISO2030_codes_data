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
	0.4731 0.4018 0.4224 0.0 0.0 0.0 0.0 0.2 0.0 0.0 0.0 0.0;
	6.6781 6.9895 2.8929 1.1798 4.5838 202.0792 25.2599 55.5687 97.3593 11.5895 12.1725 20.9886;
	16.2848 13.0636 10.0173 6.1953 7.5405 427.7637 53.4705 75.3735 244.7869 33.0279 39.3192 59.8138;
	22.2476 16.6023 13.8 10.7846 9.1397 442.8645 55.3581 76.3337 261.4473 59.9427 52.558 108.5566;
	25.0551 16.2792 13.6408 11.5334 8.5771 229.0875 28.6359 59.8339 143.9132 83.6993 42.4274 151.5799;
	25.72 16.9144 13.7911 10.6891 8.2495 84.564 10.5705 57.864 98.0265 92.7743 43.9049 168.0149;
	25.5773 17.1702 13.8946 8.3862 7.0469 71.4849 8.9356 58.9165 87.8091 98.1039 47.3565 177.6667;
	18.4277 16.2817 13.4859 6.635 6.0615 93.9072 11.7384 50.6099 79.7812 88.8033 49.2977 160.8233;
	16.8761 15.5914 13.362 6.3544 5.222 154.8045 19.3506 53.1729 101.9943 76.3446 39.8705 138.2606;
	11.052 11.0813 10.1137 6.1774 4.5923 182.4867 22.8108 50.4463 109.849 54.8896 23.3645 99.4054;
	3.3451 3.2852 2.5902 3.2971 0.9075 111.6536 13.9567 23.8886 68.9928 13.1411 2.8437 23.7986;
	0.3545 0.3877 0.318 0.4209 0.2085 29.4382 3.6798 4.8745 15.7099 7.2426 2.686 13.1164;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
