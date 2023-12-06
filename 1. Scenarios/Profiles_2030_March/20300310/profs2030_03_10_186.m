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
	0.3208 0.2952 0.1927 0.5379 3.0629 29.4238 3.678 5.5205 11.8622 2.5826 0.0 4.6771;
	4.3354 1.4606 1.2488 1.3837 5.4686 19.1554 2.3944 5.8392 17.0789 24.4615 1.8046 44.3;
	12.1355 3.7077 4.6432 2.1246 6.7074 25.4052 3.1757 8.0931 24.5485 60.4438 15.5095 109.4641;
	16.3977 12.2292 10.0735 3.0297 5.1476 62.9281 7.866 12.5739 65.6077 70.4709 35.6574 127.6233;
	6.9292 4.2595 2.9546 3.769 4.3492 120.3514 15.0439 11.8662 35.9494 67.9256 41.5945 123.0137;
	2.8914 2.3393 1.5219 3.9066 3.2424 129.4434 16.1804 8.5226 14.1068 71.8038 43.7327 130.0372;
	3.4617 2.7584 1.2971 3.3563 2.1277 64.8308 8.1039 13.3753 8.5133 218.1608 53.0785 395.0904;
	3.3604 2.6367 2.0384 2.58 2.1247 17.5063 2.1883 10.4827 14.3562 261.4578 45.8842 473.5016;
	2.6978 2.2212 1.8684 1.7663 2.2957 0.7338 0.0917 9.6137 26.6289 202.048 32.0165 365.9101;
	1.7051 1.6617 1.5892 0.6378 1.4507 2.8633 0.3579 5.819 33.6277 35.1335 10.8367 63.627;
	0.2467 0.2272 0.1471 0.4086 0.6167 31.6122 3.9515 6.302 23.9262 20.2122 9.1411 36.6043;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];