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
	1.0347 0.8426 0.7693 0.0 0.0 9.4835 1.1854 4.1882 0.4191 0.0 0.0 0.0;
	8.1682 7.503 6.4116 0.1889 0.27 388.5186 48.5648 28.3253 148.1242 36.3332 28.1353 65.7997;
	14.6753 13.7051 11.4216 0.4329 1.2444 385.9254 48.2407 49.6573 198.1308 160.6914 120.2662 291.0131;
	20.2076 16.4981 13.8 1.8349 3.3754 390.6859 48.8357 57.8136 214.2816 268.3262 180.7372 485.9404;
	22.3863 13.6862 13.5136 2.7249 6.9889 363.084 45.3855 60.0955 224.0504 244.8519 212.2903 443.4282;
	25.5389 15.8107 13.6966 5.2673 9.6752 384.0505 48.0063 67.1092 265.8333 294.7607 224.4622 533.8135;
	25.6262 16.0982 13.5109 6.0029 10.1507 389.805 48.7256 68.6916 264.4093 331.2331 233.5012 599.8652;
	21.4608 8.1822 6.2072 1.2 5.268 314.3241 39.2905 62.8544 95.2061 310.5004 227.4948 562.318;
	14.0157 2.1045 1.7548 0.1775 3.4504 254.6412 31.8302 59.5364 42.8124 270.9352 183.6942 490.6653;
	6.6972 2.1411 0.9726 0.0 2.2992 216.3137 27.0392 53.0177 36.1076 160.7225 100.7176 291.0694;
	5.138 3.9583 3.2473 0.2742 2.8055 184.6841 23.0855 35.9262 87.1511 39.5429 34.7825 71.6124;
	1.5085 1.2029 0.8718 0.8533 1.2878 70.9484 8.8685 13.4168 38.8412 12.7221 9.9461 23.0397;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];