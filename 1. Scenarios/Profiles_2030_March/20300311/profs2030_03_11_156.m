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
	0.0 0.0 0.002 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	9.9708 8.4487 6.9112 2.0016 0.6527 91.8938 11.4867 54.1872 39.3293 69.5362 44.6176 125.9304;
	17.238 14.6977 11.1723 5.0387 7.001 234.9552 29.3694 73.5347 107.5816 186.5337 178.2239 337.8137;
	22.1883 16.6029 13.6803 9.5803 10.6303 343.3126 42.9141 76.294 167.1234 306.9796 226.8667 555.9418;
	25.4396 16.6083 13.5646 11.5334 9.2754 334.5958 41.8245 77.1441 210.6653 273.2082 245.0648 494.7818;
	26.0196 16.6083 13.7817 11.7157 7.8148 343.6907 42.9613 76.1163 190.5656 307.9722 240.6014 557.7395;
	26.1231 16.6083 13.7908 11.568 5.5476 295.8326 36.9791 73.5471 152.8745 320.6577 228.6419 580.713;
	26.0539 16.6042 13.2338 11.632 6.5005 110.6842 13.8355 69.2511 139.98 237.9649 168.903 430.9558;
	22.3802 16.4812 13.0594 11.5984 9.4134 110.3685 13.7961 70.4756 162.7423 191.7399 104.6959 347.2421;
	17.1947 12.0444 9.0682 10.528 10.5069 105.1204 13.1401 68.9489 166.1354 124.8633 79.1032 226.1282;
	9.5105 6.6258 5.9154 10.1149 8.4565 46.3478 5.7935 45.2009 90.5738 57.9635 30.3353 104.9722;
	0.8702 0.6526 0.4645 1.9485 2.5079 44.3341 5.5418 8.5407 19.912 21.8566 17.2583 39.5824;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];