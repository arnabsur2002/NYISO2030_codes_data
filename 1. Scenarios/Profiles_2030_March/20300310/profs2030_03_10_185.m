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
	0.0 0.0056 0.1239 0.1656 0.3247 18.8953 2.3619 2.6479 21.1683 9.9256 3.849 17.9754;
	0.0 0.109 0.1183 0.6137 0.4827 47.1563 5.8945 7.1274 48.6487 17.4917 0.691 31.6775;
	0.1186 0.1593 0.0823 1.2955 0.8209 44.2139 5.5267 9.1342 45.1945 33.1453 2.7359 60.0263;
	0.6742 0.6566 0.674 1.8978 1.4184 51.4241 6.428 18.029 67.1336 47.9405 1.1777 86.8205;
	1.2064 1.3948 1.3999 1.8455 2.4958 56.2659 7.0332 22.4253 72.7657 58.0933 6.9289 105.2072;
	2.1104 2.2592 2.189 1.4702 3.4839 79.9674 9.9959 31.9689 97.2955 59.048 11.9095 106.9363;
	5.271 5.568 3.5926 0.6474 3.0148 264.8106 33.1013 61.6989 153.6075 68.7059 16.9721 124.4268;
	4.313 3.7689 2.5402 0.4093 2.0349 261.2421 32.6553 62.2705 140.5297 61.4301 13.7762 111.2503;
	2.7014 2.2375 1.8628 0.5419 1.1743 215.5114 26.9389 61.0288 103.4667 44.6448 5.6089 80.8519;
	1.6602 1.617 1.7088 0.5029 0.2938 81.513 10.1891 35.2134 33.6921 25.4787 0.2527 46.142;
	0.4374 0.583 0.3575 0.4343 0.6758 37.0635 4.6329 9.6486 27.704 18.5655 9.0059 33.6222;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
