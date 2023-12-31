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
	0.0 0.0 0.0 0.536 0.6487 132.1374 16.5172 19.7762 108.926 15.3976 11.4581 27.8851;
	0.0 0.3642 0.6043 6.5928 2.4683 171.3408 21.4176 6.1998 89.9078 35.1051 75.3931 63.5756;
	0.8269 1.027 1.1283 10.3759 3.9756 221.1456 27.6432 8.1336 97.3069 61.8969 94.3192 112.0957;
	2.5401 2.6738 1.9 11.1481 3.9871 341.6284 42.7036 32.7357 198.6588 184.7136 81.8532 334.5174;
	2.164 2.2622 1.0142 10.9078 4.3385 264.7858 33.0982 41.0427 155.2184 263.2426 79.2855 476.734;
	1.9584 2.0458 1.0308 10.1913 3.4583 188.7218 23.5902 40.79 107.4498 273.9105 80.8413 496.0535;
	3.7258 3.1121 3.4973 7.4095 0.7394 199.6056 24.9507 50.5885 97.6604 278.2905 106.1282 503.9859;
	3.4658 2.8832 4.144 7.0817 0.2301 146.3734 18.2967 36.8948 93.1407 218.0318 78.5367 394.857;
	2.3352 2.0467 1.9772 6.8459 0.0851 110.7062 13.8383 24.3115 104.3155 190.4785 39.222 344.9576;
	0.5793 0.5926 0.4115 2.8427 0.2293 31.1478 3.8935 6.246 54.9759 92.6916 15.6653 167.865;
	0.2415 0.2189 0.1471 0.475 0.8483 28.5811 3.5726 6.1615 22.1103 22.1646 9.1019 40.1403;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
