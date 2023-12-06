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
	0.0 0.0 0.0092 1.2144 0.2241 0.0 0.0 0.1207 25.881 23.2775 4.9154 42.1557;
	0.0 0.047 0.3309 2.9764 1.3414 5.3142 0.6643 0.931 28.9526 112.355 12.0605 203.4756;
	0.0 0.2968 0.5217 3.6041 2.7733 16.1951 2.0244 1.5782 29.1257 100.1228 19.2105 181.3229;
	1.0019 1.1959 0.9887 3.4767 3.6139 24.5517 3.069 4.4823 69.8563 77.3168 23.9878 140.0212;
	1.7703 1.9303 1.4005 3.6532 4.3525 8.0318 1.004 5.6415 83.5103 121.6313 34.0438 220.2751;
	2.4582 2.2203 2.0051 3.6037 3.6051 0.0 0.0 7.0146 83.3918 126.8245 41.4563 229.6799;
	4.0107 3.0239 2.7771 3.5105 0.5263 14.9298 1.8662 35.846 58.8 107.0163 51.2283 193.8071;
	3.6547 2.6624 2.4528 2.7386 0.018 44.5189 5.5649 41.5587 42.2971 79.0873 40.3814 143.2276;
	3.5366 2.1591 1.9623 2.0237 0.0 91.7741 11.4718 45.3053 36.2044 57.914 22.9627 104.8826;
	6.5496 2.8792 2.4455 0.7794 0.1621 183.9308 22.9914 36.2806 34.6109 42.7013 12.0316 77.3323;
	0.6957 0.7005 0.4115 0.4436 0.6765 40.1487 5.0186 9.835 27.6986 21.4306 10.4474 38.811;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
