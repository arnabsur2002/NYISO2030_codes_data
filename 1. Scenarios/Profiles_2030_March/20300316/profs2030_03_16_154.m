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
	1.0163 0.8228 0.7016 0.0 0.0 9.4835 1.1854 5.5167 0.4191 0.0 0.0 0.0;
	0.7469 1.3707 1.5809 0.4049 0.2415 173.9869 21.7484 34.172 35.4941 58.3277 13.4287 105.6319;
	11.8352 10.3435 10.8791 0.4979 0.9023 338.9671 42.3709 49.847 65.465 73.5844 57.569 133.2617;
	23.4603 16.6083 13.8012 1.718 1.381 399.4187 49.9273 61.7307 152.6895 114.1635 124.1768 206.7508;
	25.8917 16.5802 13.9697 1.2415 1.1654 413.0919 51.6365 68.728 233.8844 187.403 145.4489 339.3879;
	26.0637 16.833 13.9264 1.7697 0.931 389.027 48.6284 59.2101 251.2861 175.1526 145.9263 317.2024;
	25.9935 16.7962 13.9167 2.7763 1.0394 356.8992 44.6124 54.3067 210.0599 143.6963 136.7676 260.2349;
	25.0002 15.9262 13.6041 2.5251 0.6926 199.4469 24.9309 62.2941 20.5729 96.1478 103.2692 174.1243;
	22.1362 14.5897 13.4724 1.6144 0.917 166.6103 20.8263 63.5819 4.4273 101.6121 92.14 184.0202;
	14.725 7.1595 9.8889 0.8581 0.7597 144.569 18.0711 60.6294 6.1435 89.0247 67.5868 161.2243;
	1.4501 0.8015 0.8731 0.5642 1.1568 72.6424 9.0803 30.6809 9.7282 33.5346 30.1617 60.7313;
	1.1859 0.9594 0.7486 0.8092 1.0475 62.1572 7.7696 11.357 32.0809 0.3037 6.4162 0.5499;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];