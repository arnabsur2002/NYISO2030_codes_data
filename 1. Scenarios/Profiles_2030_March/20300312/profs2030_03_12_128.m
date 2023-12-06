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
	0.1575 0.1621 0.24 0.0 0.0 0.0 0.0 0.1765 0.0 0.0 0.0 0.0;
	8.5023 10.3252 6.5883 2.9374 8.4251 420.1335 52.5167 47.565 135.1071 36.9784 26.6174 66.9682;
	4.6873 9.1011 3.4559 6.8693 12.0686 428.6766 53.5846 58.6306 156.6135 89.7997 99.2458 162.6278;
	1.9856 6.928 3.5847 9.4249 11.7042 410.3334 51.2917 52.6529 153.8195 165.2942 134.876 299.3487;
	17.225 11.1903 10.791 7.3364 8.3287 407.8857 50.9857 42.5089 148.9186 222.656 159.2514 403.2314;
	24.41 16.1046 13.6721 7.1366 7.6837 433.2721 54.159 48.3621 189.3676 242.19 181.4813 438.6075;
	25.964 16.5331 13.7863 6.6185 6.5988 422.9146 52.8643 52.5175 199.0433 232.1894 187.02 420.4965;
	25.8371 16.5546 13.7659 9.1381 8.4976 416.3775 52.0472 68.7018 198.671 337.1419 228.2427 610.5659;
	22.9122 16.3881 13.5467 7.9082 6.2624 402.9809 50.3726 66.7276 160.0929 332.5022 185.8988 602.1634;
	17.1653 13.6977 10.5088 4.7829 4.3406 397.1358 49.642 62.584 137.5787 237.4218 103.8456 429.9724;
	8.4119 7.3224 5.8185 3.4755 9.245 408.7695 51.0962 58.8827 169.1048 78.6288 83.7208 142.3972;
	0.9093 0.7396 0.5249 1.5468 3.4798 66.4595 8.3074 15.2543 40.9472 59.263 39.2927 107.3257;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];