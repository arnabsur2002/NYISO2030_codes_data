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
	0.5103 0.4751 0.4328 0.0 0.0 0.0 0.0 0.2 0.0 0.0 0.0 0.0;
	9.0929 6.3401 5.0164 2.8612 8.3375 206.6698 25.8337 49.1247 124.3033 17.0435 47.2523 30.8659;
	17.0528 9.4826 6.5593 5.4931 4.4247 421.7901 52.7238 74.1608 231.5009 50.1412 92.487 90.8059;
	21.5318 14.9271 11.276 7.941 2.9101 443.0423 55.3803 76.213 246.9339 74.8165 119.4631 135.4931;
	20.1426 14.3524 9.461 5.6087 2.3604 345.0703 43.1338 62.6881 178.9356 77.6483 120.3809 140.6215;
	20.3561 11.4071 6.1781 6.5645 4.2627 317.069 39.6336 55.5393 201.3316 64.1025 146.2061 116.09;
	20.2544 9.4841 5.1145 6.845 4.6622 257.3949 32.1744 48.559 206.8076 46.5988 127.2615 84.3906;
	7.4859 5.2461 3.6092 6.1016 3.1222 123.032 15.379 22.9002 95.5341 32.3264 65.5411 58.5433;
	6.5285 6.1349 3.7856 4.3938 1.6473 149.7489 18.7186 28.8662 72.8493 29.2185 43.2563 52.9149;
	5.3428 6.5545 4.5237 2.3344 1.0543 140.9729 17.6216 33.8831 50.448 23.4694 23.8433 42.5031;
	2.927 2.728 2.3131 0.3482 0.0 37.9655 4.7457 15.9616 10.3878 6.9784 3.4879 12.638;
	0.6822 0.5204 0.3551 0.3009 0.0 3.1821 0.3978 1.414 2.5386 5.0565 2.0881 9.1574;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
