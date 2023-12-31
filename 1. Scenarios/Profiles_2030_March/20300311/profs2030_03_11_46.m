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
	0.9513 0.0523 0.2302 1.7266 4.0259 96.2212 12.0276 43.0179 31.3826 70.4674 40.0353 127.6168;
	4.5514 1.3402 1.1417 4.0697 9.3507 345.5009 43.1876 73.6556 44.6206 208.7726 120.3199 378.0884;
	16.1776 12.4869 10.4092 6.5064 11.2913 397.0114 49.6264 76.9454 89.338 317.6512 184.6174 575.2682;
	25.0518 12.9457 13.7516 6.7333 8.9285 328.2234 41.0279 73.209 157.5405 227.3529 75.3577 411.7375;
	22.4489 8.3453 13.0956 3.5526 9.1396 286.6194 35.8274 67.9617 174.5313 224.8209 70.9608 407.1521;
	20.8951 5.0429 10.6026 3.0484 9.2623 224.4313 28.0539 64.1219 159.2979 205.3373 54.9073 371.8671;
	20.3837 7.3033 6.8473 8.4897 11.083 125.099 15.6374 62.5431 68.065 85.8209 35.5439 155.4222;
	16.5752 10.7498 9.4545 11.0394 11.5111 140.7731 17.5966 66.303 46.0349 61.331 17.0336 111.0708;
	12.4308 7.2441 5.5093 8.7967 11.1224 158.7769 19.8471 64.5905 31.0425 30.0626 22.6162 54.4436;
	8.0987 2.2083 2.7769 5.3328 8.4619 54.4152 6.8019 25.7052 14.5579 19.3191 25.9386 34.9871;
	0.7819 0.5902 0.3718 1.3256 3.1214 44.3341 5.5418 8.4157 19.5882 21.6442 19.6914 39.1977;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
