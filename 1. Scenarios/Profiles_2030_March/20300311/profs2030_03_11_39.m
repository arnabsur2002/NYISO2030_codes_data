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
	8.6313 7.5756 7.24 2.1129 3.5917 189.664 23.708 46.4735 34.0908 68.7344 38.5618 124.4784;
	15.2028 13.2215 11.166 6.7118 9.6848 308.4861 38.5608 70.2006 59.9939 121.4219 9.2461 219.8957;
	19.0953 16.3296 13.3968 10.0559 11.8545 319.1181 39.8898 71.4711 77.2619 248.3746 52.216 449.8079;
	25.0511 16.4289 12.6183 11.2835 9.289 155.6887 19.4611 64.022 55.6585 249.6996 153.3843 452.2076;
	26.334 16.5068 13.1431 11.4153 9.0962 214.3036 26.788 62.3176 71.5444 284.4727 213.3847 515.1817;
	26.4971 16.6083 13.8 11.2897 8.748 296.0141 37.0018 60.069 105.0296 290.5085 220.8973 526.1126;
	27.0972 16.6623 13.9955 11.4991 9.8224 406.5704 50.8213 68.1294 158.1254 183.653 155.3497 332.5966;
	25.4662 16.7523 14.089 11.5722 10.2275 416.1173 52.0147 72.5224 160.6913 165.94 84.1575 300.5184;
	21.1705 16.2755 13.4512 9.2476 9.4997 390.535 48.8169 72.4183 137.1975 124.3793 63.3059 225.2517;
	8.8379 7.4529 5.756 4.0189 4.9183 127.0869 15.8859 56.4318 68.3219 77.7862 26.8517 140.8713;
	0.7687 0.593 0.395 1.2473 2.5319 44.846 5.6057 8.6364 22.5904 22.0645 18.3209 39.959;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
