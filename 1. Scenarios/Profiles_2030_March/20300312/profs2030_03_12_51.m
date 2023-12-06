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
	0.1575 0.1621 0.24 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	4.7827 2.0779 3.0276 1.4671 1.7134 170.1712 21.2714 39.5453 9.8726 43.5783 21.4507 78.9205;
	11.2608 8.2508 8.5047 3.1842 1.9358 225.1261 28.1408 42.9968 46.0962 117.6622 30.1144 213.0869;
	16.632 13.5599 13.182 5.4001 2.4474 231.3255 28.9157 45.9247 66.7793 180.1054 59.8277 326.1719;
	14.2759 2.1383 9.3791 6.5579 2.5681 174.7002 21.8375 46.4393 47.0874 78.6817 12.4813 142.4931;
	6.1542 2.0497 2.7454 6.3346 3.5172 196.0301 24.5038 48.0374 56.3013 108.6797 22.5379 196.8196;
	5.9072 2.0495 2.4906 6.3872 3.7484 210.5285 26.3161 48.4085 87.0707 157.1741 29.6925 284.6432;
	14.7682 4.2762 11.4467 10.0235 7.563 366.0882 45.761 63.6538 200.1882 341.4098 233.7933 618.2951;
	18.1181 10.0145 13.3986 10.6236 6.7963 369.8992 46.2374 63.7884 201.9995 336.3715 217.7254 609.1709;
	16.9515 6.9133 10.0998 9.8544 6.5943 348.4483 43.556 60.5705 186.9849 287.3267 171.3514 520.3503;
	9.374 1.6855 3.9287 7.4757 11.5177 292.2019 36.5252 49.4835 166.7355 249.086 126.8959 451.0962;
	0.9361 0.7333 0.5234 1.5681 4.0864 63.6504 7.9563 10.1326 42.0613 95.3336 50.0287 172.6497;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];