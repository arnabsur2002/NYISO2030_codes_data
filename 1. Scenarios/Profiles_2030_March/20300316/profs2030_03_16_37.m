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
	1.0265 0.8394 0.7016 0.0 0.0 9.4835 1.1854 4.1882 0.4191 0.0 0.0 0.0;
	5.8706 3.0242 4.5339 1.236 6.2223 46.0503 5.7563 18.7331 56.3703 76.7374 17.803 138.9719;
	10.2713 6.3976 4.791 1.8912 6.9372 322.4038 40.3005 61.6503 177.9366 43.0531 10.8638 77.9694;
	16.0923 12.7743 10.4844 4.2138 7.4817 391.5973 48.9497 70.8917 213.4364 38.5427 6.631 69.8011;
	21.1343 15.471 13.5429 4.7484 6.2121 357.8328 44.7291 66.9533 170.4112 36.0112 0.1561 65.2165;
	22.6457 16.3464 13.8 5.6688 5.2578 312.072 39.009 58.171 156.4974 127.9261 17.4241 231.675;
	25.3213 16.5214 13.8 6.0598 3.6235 302.8362 37.8545 55.2129 155.7422 203.4898 34.9691 368.5213;
	24.5726 15.9349 13.4455 5.2861 1.8967 305.0234 38.1279 61.1523 102.8853 174.8836 41.6583 316.7153;
	22.1367 15.7965 13.2857 4.3659 2.1466 311.2713 38.9089 63.7485 79.635 136.1594 26.2249 246.5855;
	15.6855 12.1365 10.2309 3.1176 2.5186 252.493 31.5616 64.165 48.2126 95.8912 17.1273 173.6596;
	3.4676 4.3915 2.1433 2.1995 3.5655 69.6238 8.703 43.5015 22.8926 40.0872 14.9112 72.5981;
	1.1859 1.0362 0.7444 0.8545 1.069 62.51 7.8137 11.6323 32.0809 13.6132 11.537 24.6536;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
