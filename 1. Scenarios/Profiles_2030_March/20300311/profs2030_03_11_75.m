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
	3.6769 3.2538 1.9756 4.7919 4.5443 140.692 17.5865 27.2908 54.5154 71.4352 41.9515 129.3697;
	7.6816 6.7618 4.4728 6.9116 10.8821 364.5971 45.5746 71.9147 92.9618 196.1569 142.0845 355.2413;
	18.7927 13.3862 12.8565 10.078 12.5753 392.2059 49.0257 74.5693 120.1214 279.342 192.5664 505.8901;
	26.5642 16.5815 13.8 11.4873 12.1542 308.4722 38.559 66.6903 173.2695 88.481 137.175 160.2396;
	26.7568 16.6083 13.8313 11.5281 10.7231 295.942 36.9928 65.3957 156.2256 79.5215 134.6145 144.0139;
	26.7218 16.6083 13.8282 11.4717 9.6708 350.3251 43.7906 66.9125 176.6871 83.2965 108.1637 150.8504;
	26.69 16.6083 13.9114 11.632 9.5448 444.4895 55.5612 74.5125 251.4471 42.5792 50.6651 77.1112;
	24.6315 16.6884 14.0244 11.6553 10.6534 451.7155 56.4644 76.2205 260.9107 72.9048 33.0394 132.031;
	22.0321 16.3892 13.7095 11.1767 10.5079 435.7543 54.4693 73.0369 252.6033 106.5362 36.2284 192.9377;
	12.9508 10.6154 8.336 9.9259 7.5424 210.7533 26.3442 26.3337 97.0523 142.7106 35.3042 258.4498;
	0.7873 0.6669 0.4349 1.3829 2.8268 51.1061 6.3883 8.5448 19.6507 44.1538 20.6356 79.9627;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];