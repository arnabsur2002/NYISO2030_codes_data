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
	0.9828 0.7722 0.4284 0.9716 1.041 28.1203 3.515 15.3029 15.8251 13.7317 5.8769 24.8682;
	1.7874 0.9474 0.9771 2.3589 2.6181 18.6618 2.3327 22.9576 24.0524 94.1536 14.9434 170.5127;
	1.6627 0.9631 1.2472 3.3346 3.4191 22.3292 2.7912 19.5902 40.2313 127.8595 27.1055 231.5543;
	2.2335 1.7554 2.306 2.1171 2.6126 47.0758 5.8845 14.8656 101.3392 58.765 18.6123 106.4237;
	2.3215 2.2448 2.8055 1.4399 2.2342 55.18 6.8975 14.8183 105.6495 51.4044 15.0759 93.0936;
	2.3752 2.3899 2.8413 0.97 2.3759 44.8748 5.6094 16.9564 79.5891 41.5718 10.5766 75.2868;
	3.2284 2.8228 2.5607 1.0922 3.6913 65.0957 8.137 44.3787 29.4152 66.904 5.562 121.1636;
	2.7403 2.1406 2.0385 1.1792 3.2207 52.4894 6.5612 43.9091 17.5512 71.0712 5.1029 128.7104;
	2.0672 1.4526 1.6054 1.1935 2.0775 51.7301 6.4663 38.6349 12.3321 56.5072 2.8353 102.3349;
	2.0229 1.5241 2.2073 0.825 0.0864 44.5068 5.5633 20.8778 6.5011 33.2015 4.3784 60.1282;
	0.6494 0.5896 0.6182 0.4504 0.5238 28.7058 3.5882 8.1562 22.1103 19.4243 9.0315 35.1775;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
