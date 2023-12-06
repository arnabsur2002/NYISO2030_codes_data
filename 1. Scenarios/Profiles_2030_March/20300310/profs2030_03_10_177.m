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
	1.0606 0.4321 1.0978 0.536 4.4984 19.7893 2.4737 2.1298 21.819 11.8735 4.4931 21.503;
	0.4017 0.0042 0.6017 1.4325 5.8945 11.3819 1.4227 0.0 12.2784 23.7403 11.91 42.9938;
	0.3875 0.0 0.6273 2.2888 6.3353 16.2683 2.0335 0.0 14.9663 35.7478 22.2899 64.7395;
	2.3871 1.0248 1.6727 4.1416 5.0533 59.997 7.4996 0.7158 76.7956 50.0303 36.2169 90.6052;
	2.9025 1.5604 1.8967 2.9123 4.4264 62.0691 7.7586 0.7616 75.4019 56.3946 40.2264 102.1309;
	2.7627 1.7891 1.9733 2.5496 3.9225 44.526 5.5658 0.2076 57.126 64.0467 43.3001 115.9889;
	3.5693 2.9012 3.2119 6.0162 5.0413 89.6516 11.2064 9.6183 52.8336 190.3611 120.2408 344.7452;
	2.9906 2.6695 3.0429 8.5497 5.7361 77.1764 9.647 12.7102 48.7696 227.1746 117.2033 411.4146;
	2.2959 2.2024 2.7294 9.8751 6.0235 88.68 11.085 16.2138 43.9914 211.5063 72.5692 383.0392;
	1.6419 1.6897 1.9168 7.0342 4.6139 84.7283 10.591 11.9401 20.419 49.7345 16.862 90.0694;
	0.2415 0.2189 0.1521 0.4931 1.1391 28.5165 3.5646 6.3105 22.1103 16.7726 8.8575 30.3753;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
