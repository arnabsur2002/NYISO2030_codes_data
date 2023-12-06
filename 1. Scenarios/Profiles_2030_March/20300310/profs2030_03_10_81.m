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
	4.6403 2.8971 2.993 0.8257 0.7155 64.226 8.0283 1.4035 8.879 10.3933 5.1884 18.8223;
	5.8632 1.9507 2.8654 1.5229 1.8951 23.3895 2.9237 2.0352 11.803 51.1285 14.8952 92.594;
	2.5826 1.251 1.2575 1.4015 1.9358 17.3932 2.1741 2.8464 13.429 121.156 25.2514 219.4143;
	2.5576 1.1448 1.0157 0.0 1.0987 29.0147 3.6268 5.6214 49.2332 64.7245 14.6102 117.2165;
	2.0703 0.9848 0.9025 0.0 0.973 76.6133 9.5767 10.3218 95.2349 70.4489 16.7298 127.5834;
	1.5128 0.8724 0.9866 0.2297 1.6401 114.4203 14.3025 12.7072 118.3888 74.0147 19.8938 134.041;
	2.0533 1.345 1.9492 1.077 3.8642 120.1607 15.0201 15.7355 105.6337 94.6403 21.8388 171.3941;
	2.2479 1.447 2.0628 1.0285 4.411 55.9486 6.9936 9.7785 74.3211 76.7373 16.727 138.9716;
	2.1001 1.3429 1.7017 0.7 4.046 33.0889 4.1361 7.9689 51.5525 36.4629 7.4351 66.0345;
	1.908 1.4462 1.7508 0.2821 1.3237 30.7885 3.8486 8.6977 45.9185 5.1011 0.2885 9.2381;
	0.2928 0.3164 0.27 0.4566 1.1159 41.7343 5.2168 10.6765 35.5791 19.196 9.8549 34.764;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
