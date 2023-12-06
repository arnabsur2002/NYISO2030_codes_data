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
	1.0111 0.8207 0.6949 0.0 0.0 9.4835 1.1854 4.7066 0.8254 0.0 0.0 0.0;
	2.1399 2.8359 1.297 2.154 2.101 195.0354 24.3794 42.3656 155.6048 202.131 41.8602 366.0605;
	13.7523 11.1429 7.1366 4.3584 5.3336 400.5015 50.0627 64.7163 217.9962 250.6857 120.9534 453.9934;
	22.6898 16.5751 13.4864 6.9122 7.666 429.5897 53.6987 70.7466 232.4135 306.8766 150.9682 555.7553;
	24.253 16.3661 13.7541 6.6086 7.5063 339.3333 42.4167 68.7769 194.2326 244.5728 142.1626 442.9228;
	24.6124 16.5136 13.8 7.0376 6.8884 344.0518 43.0065 68.3912 205.5894 279.207 155.5083 505.6455;
	25.1246 16.5214 13.8 6.232 6.0222 353.4412 44.1801 67.0876 197.3784 271.8155 161.3053 492.2594;
	22.6029 15.9262 13.4455 2.6597 3.7251 203.6636 25.4579 65.7557 54.6517 165.2039 121.1414 299.1853;
	20.8841 15.5227 13.0001 1.4438 3.8197 103.1692 12.8961 64.5094 34.5819 109.0397 99.1544 197.4716;
	15.8011 12.6811 10.0949 0.9971 3.6464 59.3645 7.4206 63.1261 33.5617 75.3137 68.7441 136.3936;
	9.0376 7.1437 5.5765 1.3217 4.3176 75.0067 9.3758 54.1061 89.314 48.3574 44.4149 87.5755;
	1.681 1.3025 1.0773 0.8832 1.8168 89.0295 11.1287 16.7847 45.7337 17.0017 14.2495 30.7901;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];