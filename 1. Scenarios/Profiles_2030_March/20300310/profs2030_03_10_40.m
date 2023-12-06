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
	0.3727 0.1484 0.1387 0.496 1.3162 13.3482 1.6685 0.0788 0.0 20.1484 5.5294 36.4889;
	0.4852 0.1585 0.38 1.2 4.7595 14.8469 1.8559 2.2556 0.0 37.0645 9.5173 67.124;
	0.7861 0.399 0.6947 2.1821 6.8266 18.602 2.3252 3.8038 6.9027 54.9458 12.4952 99.5071;
	2.115 1.8101 1.4765 6.6799 6.8587 36.4291 4.5536 4.7411 41.654 56.5983 11.8957 102.4998;
	2.2468 2.4088 1.2545 7.882 6.3543 75.8136 9.4767 7.8716 66.4969 72.2059 13.0988 130.7653;
	2.183 2.944 1.1514 7.8604 5.2899 91.2911 11.4114 8.2385 73.9551 74.1369 11.7694 134.2623;
	3.3366 4.3581 1.779 5.6698 3.1187 64.8321 8.104 6.7556 29.0152 85.3348 16.8941 154.5418;
	2.3909 2.593 1.5018 4.5581 2.8946 19.5193 2.4399 2.3547 11.3775 64.6131 15.8456 117.0147;
	1.1223 1.2476 0.7793 3.5924 3.3212 0.0531 0.0066 0.0 0.381 50.2476 12.8043 90.9986;
	0.0 0.0322 0.0118 2.7317 3.8082 0.0 0.0 0.0 0.0 40.5662 11.8914 73.4657;
	0.2415 0.2168 0.1471 0.9179 1.3152 28.6439 3.5805 6.6681 22.1103 21.1528 9.1948 38.3079;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
