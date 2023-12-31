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
	3.9906 4.5728 4.3927 1.0794 2.8263 227.1977 28.3997 21.6447 68.7431 70.5146 42.9786 127.7024;
	12.9677 13.515 11.2836 3.6562 9.0989 332.4367 41.5546 69.5513 105.9049 208.1759 131.6677 377.0078;
	22.7347 16.6029 13.8 5.9523 11.5664 369.4541 46.1818 73.8357 156.6075 321.4474 202.1552 582.1433;
	26.3982 16.6319 13.8 4.136 9.3005 363.0867 45.3858 68.1846 219.8421 314.7701 249.5178 570.0506;
	26.3079 16.6083 13.7423 3.1802 7.8695 359.3044 44.9131 65.032 238.7171 300.8072 249.0243 544.7636;
	23.8403 16.3516 12.4496 3.6514 6.5909 348.5176 43.5647 61.8517 229.6353 279.9006 229.1339 506.9017;
	24.92 14.2418 10.9886 10.847 9.4718 392.763 49.0954 68.5488 188.7753 130.9564 149.8458 237.1628;
	22.9928 15.7324 12.5957 11.4662 11.2344 408.0663 51.0083 72.9154 158.2938 124.2511 72.8124 225.0196;
	17.8247 12.5867 8.9986 9.3481 11.0341 400.3779 50.0472 72.3744 123.1958 122.1334 66.336 221.1844;
	7.8709 7.1451 4.9749 6.8854 6.45 258.2376 32.2797 49.505 53.2532 115.0066 24.7094 208.2777;
	0.6973 0.5902 0.3794 1.6333 2.4345 44.3943 5.5493 8.4521 20.3512 22.6 14.2053 40.9287;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
