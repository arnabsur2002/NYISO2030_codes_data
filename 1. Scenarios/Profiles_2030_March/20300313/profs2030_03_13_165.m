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
	0.4731 0.4018 0.4224 0.0 0.0 0.0 0.0 0.2 0.4063 0.0 0.0 0.0;
	2.6407 1.0455 0.455 4.7881 7.8967 211.6021 26.4503 51.9846 173.2413 3.9262 1.0347 7.1103;
	17.6006 12.3056 9.3914 4.291 6.7555 415.3073 51.9134 72.3621 266.2258 43.2916 10.3113 78.4013;
	23.824 16.6083 13.8 5.0195 6.2638 432.9027 54.1128 74.1107 270.6365 131.5094 14.8389 238.1644;
	24.7032 16.1547 13.6408 4.0656 3.4948 249.2634 31.1579 50.6587 121.5416 157.6056 14.5717 285.4246;
	24.6339 14.9734 13.1179 5.3648 4.6062 283.0846 35.3856 46.2952 105.3661 123.8702 21.0152 224.3296;
	22.879 13.3502 12.1495 5.1854 4.7737 311.9916 38.999 46.5531 132.5581 114.1603 26.1636 206.745;
	13.6718 8.8506 7.1786 4.1995 4.3807 176.9152 22.1144 25.4438 88.1154 159.1688 20.9177 288.2556;
	13.2211 9.0665 6.7518 4.2291 3.4491 152.3528 19.0441 26.1791 71.6958 177.8362 18.5075 322.0624;
	8.4912 6.4196 4.3036 3.8452 3.4523 123.6982 15.4623 22.405 46.3493 171.5589 15.6982 310.6942;
	1.5431 0.7737 0.3841 3.2859 1.0401 50.6619 6.3327 7.7243 14.6321 30.0924 8.0973 54.4975;
	0.3576 0.3067 0.2887 0.4618 0.3498 26.8429 3.3554 1.5473 9.0413 7.253 4.4983 13.1352;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];