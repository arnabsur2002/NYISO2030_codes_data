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
	1.0111 0.8207 0.6966 0.0 0.0 10.1727 1.2716 4.314 0.7946 0.0 0.0 0.0;
	9.0804 7.4793 8.5328 2.1054 2.692 251.0013 31.3752 20.221 103.684 69.9411 33.6131 126.6638;
	8.5483 9.8998 9.4326 1.3692 4.3216 347.1368 43.3921 38.272 178.5399 171.4935 96.5843 310.5757;
	2.9482 7.6547 9.4389 2.0275 6.1332 364.9218 45.6152 41.1499 198.2567 269.8013 135.4021 488.6119;
	6.5279 2.0126 7.0139 2.901 5.7642 160.1115 20.0139 28.3526 135.2529 257.9141 132.1918 467.0839;
	11.086 2.1898 10.376 2.6182 2.9034 152.1511 19.0189 23.8803 85.9298 262.3039 135.4081 475.034;
	17.8168 6.1396 11.974 1.3859 1.0671 231.1424 28.8928 36.2571 67.6874 243.2487 125.6074 440.5248;
	23.7958 15.1489 13.1738 0.5946 1.1135 299.7688 37.4711 63.445 104.3058 107.4027 85.8723 194.5069;
	21.8359 14.6287 12.7523 0.2925 2.1955 301.4271 37.6784 66.7454 116.9814 75.409 72.8947 136.5661;
	19.856 12.3095 10.5147 0.4061 2.9382 281.7565 35.2196 66.225 114.0815 63.8996 63.2867 115.7226;
	13.1232 7.2916 6.6678 0.5136 2.5893 228.1678 28.521 44.8987 138.0737 34.5129 42.9766 62.5031;
	1.459 1.2104 0.8871 0.0834 0.0 89.6369 11.2046 14.7204 38.9086 10.147 12.4625 18.3762;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];