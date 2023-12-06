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
	0.4731 0.4018 0.4224 0.0 0.0 0.0 0.0 0.2 0.0 0.0 0.0 0.0;
	14.6322 11.8775 6.4858 2.8983 6.1031 275.7304 34.4663 46.0186 214.3562 6.3735 2.1006 11.5424;
	20.2357 16.3929 13.2109 6.0432 9.3714 447.3521 55.919 69.7648 263.9821 36.5782 19.1411 66.2433;
	22.469 16.6471 13.8211 8.5578 9.9318 456.0737 57.0092 70.4927 268.4268 80.5752 43.5767 145.9221;
	22.2295 16.1547 13.6408 6.3472 6.6251 318.9118 39.864 35.963 185.071 95.5814 77.3003 173.0984;
	24.9468 16.371 13.7627 5.1467 4.4041 323.7704 40.4713 42.9233 193.5714 67.1414 36.0353 121.5935;
	25.0286 16.1474 13.769 3.0801 2.7258 334.6086 41.8261 46.6891 185.034 38.5626 15.0032 69.8371;
	6.0557 4.1162 4.8794 3.0182 3.9777 171.9662 21.4958 12.2572 37.2577 36.2656 32.8041 65.6773;
	3.0914 2.0071 2.5658 3.6059 5.9076 142.2181 17.7773 9.6798 28.5192 64.6078 46.3167 117.0052;
	2.6718 2.0393 1.9501 3.5381 8.694 108.3612 13.5451 9.2399 32.9238 61.8205 60.4549 111.9573;
	2.4643 1.3712 1.5925 1.8676 7.5098 38.7994 4.8499 4.7758 32.5308 16.2388 9.6352 29.4085;
	0.4471 0.3109 0.3621 0.4182 1.4193 26.8392 3.3549 1.6651 8.5933 5.6226 1.944 10.1825;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
