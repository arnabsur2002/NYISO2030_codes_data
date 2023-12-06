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
	0.1234 0.1176 0.1222 0.0 0.0 0.1251 0.0156 0.1784 0.9943 0.0 0.0 0.0;
	3.7452 2.6689 2.1188 1.2326 4.1424 65.3106 8.1638 3.5539 32.2349 67.9466 32.0254 123.0517;
	4.9294 4.3977 2.8063 1.4941 8.7519 135.8555 16.9819 4.6304 69.4598 138.6408 88.7468 251.0794;
	7.1538 6.9159 4.213 0.7885 9.5895 179.4925 22.4366 7.1874 99.617 205.095 141.7592 371.4284;
	21.0076 15.7084 13.2056 1.0915 7.3344 400.8201 50.1025 46.7021 238.5924 295.2922 155.9328 534.776;
	23.7079 16.0537 13.2548 3.3331 7.4734 401.149 50.1436 54.8137 231.9233 351.1282 192.2324 635.8953;
	23.8142 16.0751 13.2624 7.2023 8.1524 397.4253 49.6782 55.7031 231.9131 355.1791 205.1775 643.2315;
	19.7132 15.6253 10.6904 4.4841 2.8223 360.9564 45.1196 44.7358 220.2202 339.4617 161.0107 614.7672;
	7.1184 7.5847 4.2096 4.0068 2.1187 339.2501 42.4063 45.5495 190.2843 273.9775 131.5538 496.175;
	2.1286 3.2939 2.109 2.2002 1.2618 279.2751 34.9094 46.9565 104.5845 186.8762 99.971 338.434;
	1.3073 1.7699 1.3469 0.729 0.5951 81.5938 10.1992 20.8946 8.3468 39.2112 20.8613 71.0117;
	0.9094 0.7774 0.5485 0.677 1.3486 45.41 5.6762 10.514 22.8082 15.5557 9.6359 28.1715;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];