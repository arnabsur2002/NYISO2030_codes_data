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
	1.0726 0.8477 0.7745 0.0 0.0 9.4876 1.1859 4.2132 0.4191 0.0 0.0 0.0;
	4.3009 5.4033 4.5939 2.1947 2.5894 305.4486 38.1811 34.7795 180.0739 24.0114 6.9863 43.4848;
	11.7039 11.9502 11.0009 2.0383 1.5352 351.2415 43.9052 45.1853 214.7227 119.0547 51.8945 215.6088;
	22.4691 16.6042 13.8 3.0912 1.4884 370.1336 46.2667 45.6597 192.8315 260.863 123.7679 472.4246;
	25.3677 16.3661 13.8 5.5088 5.519 314.5793 39.3224 44.3353 75.8341 192.0767 100.5024 347.852;
	25.6144 16.5136 13.8 8.711 9.1927 348.7833 43.5979 57.1473 86.8384 115.1099 30.1605 208.4647;
	25.1846 16.387 13.7247 10.019 10.5957 369.2661 46.1583 63.8609 121.7086 60.5136 2.8036 109.5906;
	21.0346 15.8961 13.2837 9.3283 8.7877 356.6457 44.5807 66.0297 119.7787 18.827 0.0 34.0959;
	18.0784 15.1429 12.2614 7.3255 6.2522 335.0318 41.879 62.4503 94.1513 5.7292 7.8113 10.3755;
	14.3003 12.2606 7.8362 6.4942 4.1685 293.9222 36.7403 54.9666 78.3781 9.8315 7.3737 17.8048;
	7.879 6.798 3.3282 4.2597 2.1891 157.5657 19.6957 18.652 84.6088 3.8528 4.6544 6.9774;
	1.3868 1.1739 0.8059 0.8856 0.7679 69.3267 8.6658 11.4977 41.1306 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
