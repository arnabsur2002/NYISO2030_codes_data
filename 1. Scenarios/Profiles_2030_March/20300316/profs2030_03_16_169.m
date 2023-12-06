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
	1.0313 0.8411 0.7412 0.0 0.0 9.4835 1.1854 4.2664 0.4191 0.0 0.0 0.0;
	8.163 6.7293 5.0006 1.2618 0.2234 100.0424 12.5053 12.3251 30.2262 74.6584 9.4151 135.2067;
	7.8061 9.9441 7.7491 4.674 2.0725 254.3814 31.7977 19.8768 55.51 226.0825 60.3823 409.4368;
	12.4636 15.977 13.2766 7.5772 3.8457 358.0413 44.7552 35.3316 98.4407 326.8099 132.6297 591.8547;
	24.9202 16.3661 13.8 4.784 1.865 396.0752 49.5094 55.8584 165.3754 281.4766 155.4414 509.7558;
	25.6144 16.5136 13.8 5.0762 2.6963 425.5358 53.192 58.0059 191.9214 315.1737 141.0905 570.7815;
	25.6262 16.5214 13.8 5.5311 4.2932 424.9461 53.1183 57.4182 203.0408 316.8072 84.2201 573.7397;
	23.7186 15.9262 13.4455 4.13 3.4708 331.6014 41.4502 57.862 153.7462 179.4408 45.4013 324.9684;
	19.5673 15.8337 13.1058 3.0023 2.6649 271.2479 33.906 56.8071 115.3329 135.4673 44.388 245.3321;
	13.7535 12.5277 9.8544 1.9012 1.5573 206.6602 25.8325 55.0802 82.4479 75.1285 33.3801 136.0581;
	5.4647 4.5527 4.1902 2.4459 1.9101 139.871 17.4839 36.165 63.3523 21.0379 6.8427 38.0998;
	1.1859 0.9594 0.769 1.6062 2.2275 68.8172 8.6021 12.1379 33.4607 13.221 0.0 23.9434;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
