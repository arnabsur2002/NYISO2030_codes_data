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
	1.019 0.8311 0.7132 0.0 0.0 9.4835 1.1854 4.1882 2.0795 0.0 0.0 0.0;
	3.7158 4.6474 3.0373 1.7962 6.6214 246.3392 30.7924 21.6599 272.3381 263.082 103.3987 476.4432;
	13.0732 11.7041 8.7189 4.2067 9.704 333.6499 41.7062 46.3007 275.6051 337.8725 133.5024 611.8891;
	22.9094 16.6083 13.8 6.6052 9.9489 377.7637 47.2205 55.6343 251.0228 346.0864 126.0643 626.7646;
	25.2718 16.3676 13.8 4.5006 6.0171 376.7385 47.0923 60.4855 172.3806 246.2645 67.2785 445.9865;
	25.3236 16.5136 13.8 4.4074 5.9791 370.3615 46.2952 62.4847 179.4287 199.1586 39.9648 360.6774;
	21.8136 16.322 13.6385 4.5382 6.1535 354.4379 44.3047 61.0127 182.9333 160.1933 40.2728 290.111;
	22.4395 15.6209 13.3113 5.1342 5.3256 216.1552 27.0194 60.6202 130.196 202.2058 107.7355 366.1959;
	21.3859 15.1612 13.1042 4.6903 4.58 158.2088 19.7761 59.6724 82.3341 266.4107 101.0469 482.4714;
	17.925 12.6823 10.5673 5.198 4.1669 117.3981 14.6748 56.1636 53.3751 249.0353 69.7818 451.0045;
	9.6712 7.1742 5.6022 6.9913 5.8692 65.9204 8.24 34.3343 52.3977 73.976 18.3351 133.9709;
	1.4613 1.0822 0.8291 1.7737 2.2865 62.0487 7.7561 11.4372 32.8925 10.154 0.0 18.3889;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
