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
	5.2786 4.5541 2.4381 0.7182 0.9172 120.3538 15.0442 22.2815 25.1113 71.6949 44.4478 129.8399;
	16.7888 14.8657 10.4622 6.2383 10.1349 295.4917 36.9365 69.5305 112.9418 208.6138 131.8069 377.8008;
	23.2269 16.8033 13.8 10.105 12.4364 362.3549 45.2944 73.5505 167.992 309.0839 184.1718 559.7529;
	26.4985 16.9132 13.8582 10.3779 10.7994 328.2162 41.027 67.6147 180.5899 148.3637 147.673 268.6876;
	26.6208 16.7177 13.8486 8.2765 10.6405 267.8805 33.4851 63.0005 172.9733 199.7112 203.9006 361.6782;
	26.6191 16.6244 13.8031 7.4516 10.4807 165.1724 20.6466 57.4686 156.7068 232.3087 216.6022 420.7124;
	26.3192 16.6289 13.8 8.8921 11.1913 248.9142 31.1143 67.8635 68.597 131.418 134.672 237.9989;
	22.9945 16.6426 13.8 9.5191 11.3664 343.2982 42.9123 73.2369 62.0394 95.7092 54.5077 173.33;
	13.7971 15.2506 9.2305 5.004 10.4727 393.9383 49.2423 73.7504 80.2682 67.5084 48.3052 122.2581;
	3.1352 6.957 2.0289 2.5433 6.4771 382.546 47.8182 66.8222 96.1993 66.319 55.4816 120.1041;
	0.7157 0.695 0.3907 1.3495 3.1579 55.5155 6.9394 9.5406 30.0743 25.8485 27.4778 46.8117;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];