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
	1.0111 0.8207 0.6983 0.0 0.0 9.95 1.2437 5.1005 2.0124 0.0 0.0 0.0;
	3.1035 2.5887 4.5839 1.4041 3.2602 378.524 47.3155 59.7994 233.8144 42.844 13.1218 77.5908;
	11.2692 9.4091 10.229 3.6406 7.0625 378.6375 47.3297 68.0038 238.1286 173.4549 58.1932 314.1279;
	19.8551 15.9819 13.7878 6.136 8.1507 378.9754 47.3719 68.2557 214.6197 266.0512 115.5888 481.8202;
	24.6618 15.9664 13.8 2.2574 4.6607 333.1214 41.6402 58.5424 152.7047 121.8964 37.4594 220.7552;
	25.1948 15.8949 13.8 2.9924 4.8894 350.9601 43.87 55.4419 138.9825 92.2893 8.946 167.1365;
	25.071 16.1008 13.8 3.9138 4.8106 365.855 45.7319 55.2085 133.9076 124.3394 0.0 225.1794;
	20.892 15.9262 13.4455 2.858 1.9565 370.8473 46.3559 65.2494 130.4525 172.2854 21.8046 312.0099;
	17.4751 15.536 13.1119 1.5825 1.6783 368.7138 46.0892 67.62 133.9978 150.4635 28.7749 272.4902;
	13.4137 12.4589 10.4262 0.8415 1.3403 361.1471 45.1434 67.7946 157.9986 93.3479 25.2009 169.0537;
	7.2499 6.4828 5.7994 1.0741 2.6523 303.2487 37.9061 57.7817 239.788 19.3265 13.9312 35.0004;
	1.3056 1.0362 0.8384 1.1246 1.8059 80.4552 10.0569 16.4187 50.6743 10.157 1.3043 18.3945;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
