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
	0.1575 0.1683 0.24 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	3.7063 4.5954 2.2879 1.3404 0.7087 32.6124 4.0765 6.9173 44.7338 24.1108 21.7808 43.6649;
	12.3246 11.666 8.8711 4.955 2.1121 196.5968 24.5746 36.3744 192.2996 89.8345 30.7716 162.6909;
	21.3468 16.6018 13.7468 8.4293 3.4544 289.5862 36.1983 45.7127 215.2363 156.3527 67.6624 283.1556;
	25.5955 16.474 13.4862 6.5546 3.1426 214.3828 26.7979 35.8428 150.1114 156.2161 64.4993 282.9083;
	25.6683 16.5326 12.5172 5.6308 3.2268 224.8693 28.1087 41.082 145.2806 180.3052 112.9567 326.5337;
	25.8906 16.5331 13.0201 5.1915 4.2634 255.1699 31.8962 49.79 158.9977 228.9438 153.8011 414.6185;
	25.8349 16.5546 13.7855 9.2703 9.8886 387.829 48.4786 72.1308 207.9092 343.7281 223.2668 622.4937;
	23.0576 16.3881 13.7008 8.7879 9.2273 384.8929 48.1116 71.5496 200.2255 341.6232 183.9404 618.6816;
	16.4522 13.3347 10.9764 7.0218 7.311 337.876 42.2345 62.5246 160.555 321.1623 67.4268 581.6268;
	2.011 2.5174 1.0875 6.5006 7.5495 112.9678 14.121 20.8459 88.5166 206.5183 24.5231 374.0058;
	0.8962 0.7589 0.5133 1.9977 3.5148 58.2517 7.2815 10.076 37.2067 66.6526 38.0361 120.7082;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];