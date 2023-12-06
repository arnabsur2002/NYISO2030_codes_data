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
	0.4836 0.4111 0.4497 0.0 0.0 0.0 0.0 0.2361 0.0 0.0 0.0 0.0;
	8.4428 7.4422 5.0191 2.0365 3.7954 321.1588 40.1449 10.3445 174.17 8.8878 0.0 16.0959;
	11.3258 11.6334 4.1333 5.2136 3.7246 393.5078 49.1885 50.8769 238.5809 33.3419 0.1449 60.3825;
	19.2246 16.5834 12.8932 7.9938 4.6766 382.893 47.8616 69.9043 244.7669 63.6607 6.3576 115.2899;
	25.2298 16.9687 14.0999 7.2492 7.1714 320.8788 40.1098 61.9231 179.9998 97.7976 20.6157 177.1121;
	26.1764 17.3851 14.3444 8.0734 11.5445 377.0375 47.1297 67.1714 198.5394 129.6836 23.4389 234.8578;
	25.546 17.3476 14.1625 7.7759 12.8388 380.2687 47.5336 68.1924 203.8772 136.9331 24.5455 247.9867;
	11.5704 13.6623 8.5623 5.9453 8.0169 138.3491 17.2936 38.3731 113.765 92.4116 23.7685 167.3579;
	7.6344 9.4416 4.4173 4.9625 4.4669 74.116 9.2645 28.581 96.3404 77.5589 22.7817 140.4597;
	7.1432 6.6717 4.4339 4.3324 2.5525 49.1365 6.1421 23.424 82.8115 60.9957 19.7405 110.4636;
	3.6056 3.3289 3.1721 2.3357 0.0994 16.2946 2.0368 16.3441 25.8869 17.7907 4.2209 32.219;
	0.4494 0.4648 0.3778 0.6298 0.1602 3.9934 0.4992 6.2506 7.3188 8.213 2.2051 14.8738;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
