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
	8.7708 6.5062 5.6269 1.129 3.6371 195.5531 24.4441 18.5999 189.7222 125.0303 29.7881 226.4306;
	13.7831 9.431 8.7517 1.5943 6.1613 168.3751 21.0469 14.1098 190.0546 275.6523 243.7669 499.208;
	17.3904 14.3245 12.8888 2.9118 6.9706 79.9827 9.9978 13.0325 166.2024 281.8423 234.0029 510.4181;
	22.829 16.474 13.563 4.4825 5.0531 79.2128 9.9016 22.4624 167.9265 250.2175 201.0472 453.1454;
	25.9535 16.5539 13.7859 5.1834 5.5948 144.1549 18.0194 41.735 219.3573 292.3968 214.1997 529.5324;
	26.1366 16.7363 13.7863 5.4934 5.9374 200.8998 25.1125 49.3679 243.9806 331.6549 229.1418 600.629;
	25.8938 16.6908 13.7855 9.6212 10.087 358.9086 44.8636 69.7853 249.9479 348.2258 263.0213 630.639;
	22.9586 16.4668 13.7008 9.3502 9.5347 371.026 46.3782 71.1714 225.7491 341.8338 251.0586 619.0631;
	17.2918 16.082 11.6209 7.9867 8.6892 367.5988 45.9499 71.5462 204.0968 312.0143 223.7949 565.0597;
	9.5163 13.1802 6.1816 7.1336 12.1285 357.3563 44.6695 65.8834 179.4947 194.8259 140.802 352.831;
	1.3215 1.272 0.6931 1.6174 4.4153 65.1701 8.1463 12.5435 40.7135 66.5966 39.5963 120.6068;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];