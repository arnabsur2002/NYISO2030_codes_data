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
	0.0 0.0 0.002 0.0 0.0 0.0 0.0 0.0038 0.0 0.0 0.0 0.0;
	9.9548 9.0242 9.1174 4.3156 7.1792 402.6115 50.3264 59.8657 78.4919 67.1866 38.8896 121.6753;
	18.978 15.1286 13.2721 6.9771 10.3722 378.7364 47.3421 71.4894 69.9613 57.8644 57.5231 104.7928;
	23.3797 16.6029 13.8836 9.1885 11.4189 365.3372 45.6672 73.0088 72.7078 188.0836 136.5098 340.6206;
	26.3667 16.645 14.0573 8.7867 8.0927 243.077 30.3846 66.9244 69.2071 237.6209 104.1033 430.3329;
	26.3977 16.6135 14.0882 4.3495 8.9885 313.4407 39.1801 66.4906 125.4134 281.4129 149.5931 509.6405;
	26.334 16.6083 13.8593 3.0415 9.2963 349.078 43.6348 65.0645 162.1815 277.9128 155.7434 503.3017;
	23.2885 16.4169 13.5312 4.2559 9.6578 403.603 50.4504 65.9611 196.2468 92.9924 90.2137 168.4099;
	16.1387 16.3273 12.8434 8.0627 9.6036 411.8542 51.4818 66.7374 189.7233 59.4269 61.3729 107.6226;
	8.6874 12.6061 8.7352 7.5118 8.952 407.906 50.9883 65.6189 181.6626 34.8122 67.5824 63.0452;
	4.0286 7.2432 5.9311 5.1757 5.8781 387.7017 48.4627 45.4822 173.4335 32.8156 37.5941 59.4292;
	0.7104 0.63 0.4457 1.29 2.7069 70.6028 8.8253 8.5407 33.4386 21.7041 19.4427 39.3062;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
