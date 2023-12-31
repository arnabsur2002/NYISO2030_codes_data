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
	1.0681 0.9254 0.7241 0.0 0.0 10.5312 1.3164 4.1961 1.0161 0.0 0.0 0.0;
	18.749 17.1052 11.1597 1.3732 1.7944 281.5565 35.1946 34.7714 168.2658 67.0472 34.3749 121.4229;
	21.6598 17.3221 12.9929 2.4701 5.0598 316.0561 39.507 49.7562 194.1865 180.5557 106.3579 326.9874;
	23.3066 16.7158 13.8 5.7485 6.3011 335.2756 41.9094 56.648 211.8981 286.9867 149.7384 519.7347;
	24.9666 16.3661 12.6891 5.065 2.2115 337.2761 42.1595 57.7262 207.4563 275.9108 147.282 499.6761;
	25.3636 16.5136 13.8 5.5953 2.7718 336.225 42.0281 55.4476 198.1343 320.546 157.3549 580.5107;
	25.5398 16.5214 13.8 5.1949 3.5652 338.0145 42.2518 54.8325 179.5465 332.1945 157.714 601.6062;
	24.245 15.9294 13.4455 2.8095 2.2701 326.2253 40.7782 64.6315 106.4027 313.3372 98.3789 567.4556;
	21.4552 15.5273 11.7945 2.1717 1.9319 316.9781 39.6223 67.4776 78.3433 302.9154 53.7554 548.5816;
	15.8192 11.9898 5.4478 2.2952 1.7899 287.7357 35.967 66.4667 52.9183 213.085 29.1599 385.8982;
	7.5702 6.4713 2.4695 4.8573 3.7264 148.2291 18.5286 41.199 25.8219 60.2591 8.9952 109.1296;
	1.2988 1.3035 0.8565 1.606 2.062 63.6496 7.9562 11.3146 32.0809 16.0223 0.0 29.0164;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
