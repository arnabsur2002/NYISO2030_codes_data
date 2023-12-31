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
	0.1575 0.1621 0.24 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	10.213 8.4175 5.7536 1.1987 0.4615 103.2448 12.9056 23.6948 96.5926 121.7615 22.7544 220.5109;
	17.1845 13.6523 9.6268 3.8134 2.083 291.9389 36.4924 49.4728 141.5461 223.7381 31.697 405.191;
	22.2952 16.5979 13.5265 6.716 3.774 335.4536 41.9317 60.1513 132.0253 243.7614 52.9822 441.4534;
	25.6879 16.474 13.7624 5.7038 6.4722 260.4708 32.5589 61.386 41.1725 239.4772 73.8706 433.6946;
	25.9933 16.5326 13.7859 4.9088 7.5464 263.1261 32.8908 58.1168 28.9721 248.8474 136.4248 450.6642;
	26.1303 16.5331 13.7863 5.0175 8.3447 252.8119 31.6015 52.7166 37.9871 260.208 164.5596 471.2383;
	25.8987 16.5546 13.7855 9.5785 12.281 306.871 38.3589 59.6473 152.9845 350.3873 236.7546 634.5535;
	23.0141 16.3881 13.7008 9.062 12.2381 297.7347 37.2168 57.5163 136.9587 350.4629 204.7756 634.6904;
	17.2174 13.8267 10.9746 6.7664 12.1257 233.3225 29.1653 50.6824 76.8564 350.2973 131.5532 634.3904;
	8.3319 7.5603 6.1047 4.2391 13.1467 81.853 10.2316 23.7902 26.3459 263.7557 77.2408 477.6631;
	0.9371 0.8101 0.575 1.5524 4.1914 58.226 7.2783 9.923 34.9853 65.457 38.8455 118.543;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
