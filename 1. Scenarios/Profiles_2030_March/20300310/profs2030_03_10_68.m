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
	0.215 0.1989 0.0806 0.1541 2.1624 57.7316 7.2165 2.1101 15.7694 15.4434 5.6621 27.9681;
	1.5075 0.7696 0.6395 0.7308 5.8567 111.3935 13.9242 7.869 14.9694 56.4641 16.5361 102.2569;
	2.5223 1.1744 1.0896 1.2822 8.2597 120.9913 15.1239 12.3968 20.1946 69.8804 43.7997 126.5538;
	4.0794 2.1029 2.0271 1.3078 6.3776 104.1026 13.0128 10.5399 85.2275 51.7256 45.0094 93.6754;
	3.264 1.8534 1.494 1.3765 5.9449 91.0718 11.384 6.303 98.8631 39.8843 41.7378 72.2308;
	3.0711 1.7819 1.338 1.6538 4.9009 62.5091 7.8136 3.8666 98.8281 36.6523 41.1824 66.3776;
	5.218 3.4662 2.6594 3.172 1.8167 31.8345 3.9793 7.666 97.6608 88.875 51.2902 160.9531;
	4.1539 3.0658 2.4982 2.7941 1.0751 16.4817 2.0602 7.896 78.7996 96.8801 44.0883 175.4505;
	2.6397 2.1599 1.8234 2.165 0.7394 7.4926 0.9366 7.9165 63.3668 117.6067 30.318 212.9864;
	1.3354 1.1216 0.6393 0.9157 0.3331 7.918 0.9897 4.8205 28.7825 127.3231 17.2833 230.583;
	0.2477 0.2272 0.1471 0.7691 0.612 28.612 3.5765 6.3373 24.6905 23.6436 11.0732 42.8188;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
