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
	1.0163 0.829 0.6978 0.0 0.0 9.4835 1.1854 4.1882 0.4191 0.0 0.0 0.0;
	9.1069 7.2212 2.6872 2.3033 3.8797 64.8148 8.1019 8.9294 33.1436 41.5687 15.0534 75.2811;
	20.8854 16.6081 12.174 4.3293 8.3581 302.7067 37.8383 38.0691 112.6339 129.9341 76.6403 235.3114;
	25.6746 17.2055 14.1654 6.7857 10.5184 375.2152 46.9019 53.5103 137.7775 261.6904 134.878 473.9229;
	27.2911 17.3838 14.364 6.8073 8.2346 377.5726 47.1966 57.7537 32.5729 232.8598 132.3858 421.7105;
	27.0482 17.3528 14.2108 6.7885 4.3429 382.3246 47.7906 53.502 55.3198 254.0594 81.4133 460.103;
	26.1265 16.8632 13.8154 5.3685 1.5198 374.2438 46.7805 50.5746 116.5491 255.3583 38.2718 462.4555;
	20.7871 15.9218 12.3675 1.833 1.177 232.6392 29.0799 62.2316 61.803 179.5577 51.013 325.1801;
	16.3264 14.3242 10.7027 1.2397 1.962 192.0263 24.0033 65.7954 48.2478 147.3705 61.111 266.8889;
	11.7123 11.1299 7.0908 1.2729 2.4246 179.9689 22.4961 67.2717 35.3208 91.4182 51.6189 165.5588;
	5.4626 5.6902 4.2026 1.8838 3.1937 151.5158 18.9395 45.7359 63.0784 28.947 22.7984 52.4232;
	1.2125 1.0378 0.8396 0.8072 1.0243 76.5136 9.5642 12.929 48.7303 13.3827 3.5783 24.2362;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
