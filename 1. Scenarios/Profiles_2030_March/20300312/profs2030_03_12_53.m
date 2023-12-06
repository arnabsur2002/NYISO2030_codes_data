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
	0.1575 0.1621 0.24 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	7.2465 4.2128 3.8127 1.575 2.8433 130.0391 16.2549 16.4789 44.9082 41.4753 24.3043 75.1121;
	16.5835 12.4291 10.9479 5.5434 7.9227 301.5367 37.6921 33.6913 135.1852 78.3009 24.6902 141.8034;
	22.0072 16.6035 13.8 9.3526 10.4198 339.987 42.4984 42.4173 156.2028 144.4049 35.0213 261.5181;
	22.0984 15.5812 13.7394 8.8295 10.4433 279.2535 34.9067 44.9764 100.8498 219.7131 153.3118 397.9018;
	25.0007 15.3085 13.7859 7.8782 10.1244 285.2764 35.6596 47.2052 75.8104 248.8604 191.6428 450.6877;
	25.964 16.2958 13.7863 7.027 9.1344 278.2373 34.7797 49.9668 80.868 260.1963 207.7729 471.2171;
	25.9436 16.5546 13.7855 8.579 9.8742 383.7919 47.974 71.5638 200.4101 342.2278 247.7267 619.7767;
	23.0576 16.3881 13.7008 7.7995 8.8375 384.0051 48.0006 72.238 204.0304 336.544 216.7358 609.4832;
	15.7743 11.4043 10.1979 5.1087 7.4732 353.2039 44.1505 69.5687 186.5928 273.8383 150.8823 495.9228;
	3.0847 0.9229 1.3656 4.2365 10.2877 270.4517 33.8065 49.8052 116.3966 23.0229 50.8884 41.6946;
	0.938 0.7333 0.5414 1.5369 3.469 58.714 7.3393 10.3514 35.3163 49.6034 36.8491 89.8321;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];