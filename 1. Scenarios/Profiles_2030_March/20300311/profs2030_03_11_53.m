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
	2.1068 4.5532 3.0038 3.1271 3.0654 70.1366 8.7671 31.8284 12.1762 73.5353 41.1106 133.1729;
	4.6282 10.0476 5.7928 9.1016 10.0941 238.2287 29.7786 69.4962 21.556 212.7885 168.6627 385.3612;
	11.2138 15.8221 12.2582 10.9864 11.8705 260.0073 32.5009 70.6459 33.0655 310.0095 237.4867 561.4291;
	22.4115 16.5261 13.7613 10.8797 8.1043 81.4971 10.1871 45.9087 50.9124 263.4688 248.4882 477.1435;
	23.154 16.6042 13.8 8.5857 7.837 82.077 10.2596 35.5487 42.6 297.9861 240.1282 539.6546;
	24.3363 16.6083 13.8 8.0565 7.8309 171.9549 21.4944 46.7143 57.5136 314.3829 229.4725 569.3493;
	26.3192 16.6083 13.8 11.3403 9.1311 401.6481 50.206 70.4113 165.3662 208.1987 198.7309 377.0491;
	23.5825 16.6083 13.8 11.45 9.3962 417.126 52.1407 73.6932 185.0089 177.3068 168.3901 321.1036;
	21.2062 15.3282 11.4166 8.1352 8.1609 394.9882 49.3735 71.5292 172.7734 134.0971 139.7091 242.8507;
	14.4535 7.8592 5.9216 1.7289 1.7205 136.0174 17.0022 25.7481 79.2353 88.6937 64.6028 160.6247;
	0.9731 0.6669 0.4251 1.2466 2.4426 51.5061 6.4383 8.7102 21.7657 23.224 19.0347 42.0587;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
