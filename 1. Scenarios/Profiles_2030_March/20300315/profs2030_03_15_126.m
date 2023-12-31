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
	0.4147 0.3502 0.302 0.0 0.0 2.6995 0.3374 0.1431 0.8219 0.0 0.0 0.0;
	1.142 0.9494 0.6854 0.3182 0.3153 63.1057 7.8882 27.1245 161.8698 19.5323 13.874 35.3731;
	1.9298 1.3986 0.5988 1.0743 0.8736 29.6663 3.7083 20.7267 137.301 34.5154 45.5889 62.5076;
	2.1123 2.0768 0.2613 1.9024 1.5869 48.0808 6.0101 20.281 146.9872 52.9974 109.0952 95.9786;
	1.6384 1.3454 0.6721 4.8131 11.8577 201.488 25.186 20.1709 178.7915 162.7878 145.3355 294.8097;
	2.8978 1.6595 2.0289 3.8371 11.2974 284.7356 35.5919 27.7364 185.7398 270.1889 164.1207 489.3138;
	4.2658 2.9837 3.5299 6.3456 11.7123 271.519 33.9399 27.2889 162.8424 313.4585 171.4325 567.6752;
	5.8347 3.0755 4.3226 9.2186 11.4712 208.585 26.0731 17.916 195.1738 282.5664 185.9693 511.7295;
	6.1344 3.3892 3.4513 8.3376 11.6211 128.8655 16.1082 14.0019 183.1416 253.7142 211.6869 459.478;
	4.5198 2.1439 2.8853 4.3819 10.3921 77.5119 9.689 15.0204 162.6961 217.9133 180.6609 394.6423;
	1.9773 1.0386 1.3147 0.2148 3.5945 71.031 8.8789 19.1568 109.3172 47.5351 10.0951 86.0863;
	0.5276 0.2705 0.2533 0.8916 1.3756 50.659 6.3324 4.2825 40.9412 18.6581 2.2095 33.79;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
