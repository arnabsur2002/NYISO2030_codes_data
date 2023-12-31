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
	0.4449 0.4535 0.4184 4.3066 3.737 36.2159 4.527 1.2804 9.7017 12.876 6.2768 23.3185;
	0.967 1.5476 0.6071 8.2992 3.045 40.7028 5.0879 1.1645 16.8537 26.9576 14.7532 48.8203;
	1.1466 1.7994 0.7818 7.8147 2.6315 35.1215 4.3902 1.3792 22.2799 38.7761 26.7365 70.2237;
	1.9773 2.276 2.2392 3.47 2.586 34.0492 4.2562 3.8656 76.8305 53.8817 57.9762 97.58;
	2.6325 2.4433 4.5595 2.8106 4.3376 37.3871 4.6734 5.8758 109.9949 70.3576 105.8558 127.4181;
	3.0914 2.5198 7.508 2.3827 4.68 28.0915 3.5114 6.821 120.9997 72.8456 134.266 131.9239;
	4.6369 3.3667 9.0809 2.092 1.7813 11.1469 1.3934 15.9826 91.254 87.8353 150.5953 159.0703;
	3.2269 2.5967 4.248 1.7965 0.9597 1.1957 0.1495 12.4785 56.9765 76.5425 98.598 138.6188;
	1.8967 1.8674 2.5664 1.9153 0.9007 1.5316 0.1914 8.2097 32.8578 64.3114 55.8962 116.4684;
	1.0271 1.5288 2.3833 2.933 1.6855 13.9952 1.7494 2.4852 17.7285 126.7426 23.6664 229.5316;
	0.3203 0.4949 0.367 1.2212 1.1975 35.2312 4.4039 6.2165 27.3873 28.4287 11.2223 51.4846;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
