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
	0.4784 0.408 0.4224 0.0 0.0 0.0 0.0 0.6557 0.6988 0.0 0.0 0.0;
	7.0442 4.6605 4.336 1.8958 1.5 292.7995 36.5999 57.8616 143.4129 123.6043 64.7341 223.8481;
	16.9993 12.7799 10.0298 4.1706 5.4891 438.4937 54.8117 75.3558 256.8424 266.088 101.4852 481.887;
	22.2817 16.6083 13.6869 6.6086 7.6975 448.2086 56.0261 77.9518 268.1705 264.7286 90.8995 479.4251;
	22.8005 16.1176 11.0429 2.497 2.737 314.5849 39.3231 73.3534 174.82 187.0898 78.6642 338.8207;
	22.9541 13.7213 9.4245 2.3786 2.3528 329.7559 41.2195 74.9959 191.2722 121.1216 80.6119 219.3519;
	23.68 9.8596 9.3577 2.6872 2.8462 362.2811 45.2851 76.7975 222.7381 94.5767 81.138 171.279;
	11.5184 3.8549 4.52 2.8676 5.0304 317.673 39.7091 72.2817 227.8728 90.1582 90.4763 163.277;
	8.6847 3.0348 3.3401 2.0989 4.9179 269.2477 33.656 55.5266 201.103 106.6434 94.078 193.1319;
	5.34 2.7383 2.2784 1.6073 3.8241 153.2387 19.1548 28.7054 133.3092 140.5233 87.3326 254.4885;
	1.2953 0.4 0.563 0.9152 0.457 17.5351 2.1919 1.5976 20.2273 98.0854 41.7388 177.6333;
	0.402 0.3047 0.3003 0.4487 0.9113 10.8274 1.3534 1.1164 11.618 8.4052 9.8226 15.2219;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];