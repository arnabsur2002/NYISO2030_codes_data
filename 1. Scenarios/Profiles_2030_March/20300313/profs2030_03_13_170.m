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
	0.4784 0.408 0.4307 0.0 0.0 0.0 0.0 0.2 0.0 0.0 0.0 0.0;
	5.1602 4.1557 3.0734 2.1521 7.8222 165.2575 20.6572 41.981 75.2746 10.1397 0.0 18.3631;
	11.7114 10.4169 9.9254 4.2248 6.9349 424.718 53.0898 64.2106 207.3302 17.5719 3.9022 31.8229;
	18.068 16.1352 13.8 7.8138 5.758 447.7037 55.963 67.7106 243.6002 39.6499 12.3603 71.8061;
	19.9444 14.7266 13.6157 6.6554 1.4385 385.799 48.2249 56.2722 181.6716 86.2534 13.6621 156.2054;
	23.6088 16.3612 13.7627 6.6599 2.5323 405.6667 50.7083 61.7863 223.8416 147.6659 14.4687 267.4239;
	25.0771 16.3954 13.769 6.0355 3.0955 396.3324 49.5416 64.0535 239.2841 147.3275 12.069 266.8109;
	13.7221 11.4113 9.5477 2.9463 1.8875 149.1888 18.6486 28.1417 68.5746 41.2252 0.0 74.6592;
	11.0153 8.844 7.6516 2.1237 0.9387 98.1681 12.271 17.036 28.3504 17.812 0.0 32.2576;
	6.954 5.4548 5.2265 2.0723 1.088 74.5763 9.322 9.9687 11.4279 13.7046 0.0 24.819;
	2.5298 1.6651 2.377 1.2193 0.5934 26.2453 3.2807 1.2236 0.0 14.5219 0.0 26.2993;
	0.7847 0.8093 0.8331 0.4408 0.8394 15.3477 1.9185 1.0695 2.6557 23.1093 3.4626 41.851;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
