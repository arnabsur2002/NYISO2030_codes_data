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
	0.0 0.0 0.002 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	9.7725 10.8458 10.8666 2.0415 0.0014 168.9426 21.1178 38.5147 33.5959 66.7207 34.9477 120.8317;
	18.462 14.8703 13.6321 3.6666 1.1808 384.2338 48.0292 73.93 95.4662 48.9675 18.8005 88.6805;
	23.1322 16.6029 13.8562 5.7448 7.813 422.3114 52.7889 77.6749 150.3346 154.1908 95.514 279.2404;
	26.334 16.6083 13.8 7.8026 6.6929 399.1221 49.8903 74.6352 196.0547 193.6392 188.6532 350.6817;
	26.334 16.6083 13.8033 10.5606 6.4232 371.5679 46.446 72.5345 203.8566 273.4955 221.39 495.302;
	26.3488 16.6083 13.8 11.1751 6.5122 346.24 43.28 70.0264 193.7133 286.3389 231.4364 518.5615;
	26.291 16.6083 13.8 11.4524 9.4032 378.0522 47.2565 71.2765 90.5055 154.5171 175.8319 279.8314;
	21.9871 16.6083 13.8 11.3405 11.116 407.8067 50.9758 73.8801 80.7754 112.4173 115.4931 203.5884;
	15.9699 14.6237 11.7768 8.0077 11.0573 411.4046 51.4256 73.1321 113.6229 78.2475 66.9469 141.7068;
	9.2829 10.7258 7.8226 4.3989 8.4907 383.295 47.9119 66.7289 134.0498 56.0395 23.6265 101.4879;
	0.9801 0.9608 0.5809 1.6305 3.17 63.4582 7.9323 13.5273 27.2493 21.686 18.95 39.2735;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
