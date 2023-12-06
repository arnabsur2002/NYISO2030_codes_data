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
	0.1608 0.1749 0.25 0.0 0.0 0.1283 0.016 0.0 0.4005 0.0 0.0 0.0;
	8.2692 7.3174 5.7447 1.5269 2.1966 255.8814 31.9852 20.9709 133.7836 56.6915 22.6254 102.6687;
	16.8772 15.1082 11.4435 3.3413 5.833 312.8794 39.1099 36.4724 187.3936 249.8836 62.6622 452.5407;
	22.9218 16.6083 13.8 5.6356 8.0852 331.1302 41.3913 45.4601 192.9669 328.3308 118.0365 594.6091;
	25.7137 16.476 13.9284 5.4599 6.1502 271.5484 33.9436 46.3451 208.2447 315.0681 173.4722 570.5902;
	26.0444 16.6339 14.1142 4.7984 5.8277 274.0009 34.2501 46.7437 239.0668 271.4775 184.6761 491.6473;
	26.1155 16.7534 14.0882 3.856 4.4112 263.9833 32.9979 44.6184 252.7135 256.6758 173.5505 464.8414;
	25.9653 16.8162 13.8324 5.5763 3.4129 373.0152 46.6269 61.6949 278.2664 341.4098 214.9491 618.2951;
	23.3631 16.5607 13.7008 6.3516 2.1386 375.3841 46.923 62.6211 268.8928 336.3715 212.736 609.1709;
	19.1696 16.0466 12.2001 5.0734 2.3365 357.2223 44.6528 61.702 262.7866 307.3214 177.7358 556.561;
	11.809 11.0811 7.0316 5.6024 9.873 317.2903 39.6613 60.0794 261.586 238.3495 187.9882 431.6523;
	1.3215 1.2479 0.7774 1.5728 4.1334 66.6642 8.333 13.6876 52.55 67.3675 45.3519 122.003;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
