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
	1.0111 0.8207 0.6949 0.0 0.0 9.5347 1.1918 4.1882 0.4191 0.0 0.0 0.0;
	6.0651 6.2385 1.6687 5.4959 8.6446 246.3994 30.7999 52.4212 126.1811 73.2543 51.6881 132.664;
	7.2066 7.8119 1.226 9.1953 11.0407 386.6338 48.3292 49.6973 246.1881 154.9665 169.6149 280.6453;
	7.7988 9.5713 1.8944 10.0658 11.0207 429.9011 53.7376 49.8018 264.7742 188.9915 166.6275 342.2648;
	12.9953 8.6808 5.1282 6.7564 7.0976 414.3821 51.7978 47.9641 205.3844 92.6856 102.2241 167.8542;
	21.407 15.2038 10.935 6.3512 8.0293 399.4927 49.9366 55.8473 179.462 66.8688 53.2143 121.0998;
	25.6262 16.5214 13.5295 5.5043 8.032 371.9599 46.495 58.1151 161.6239 60.9224 32.6758 110.3309;
	24.2576 15.9235 13.4455 2.8811 3.5495 198.8827 24.8603 62.268 104.3508 84.5253 15.5054 153.0757;
	19.5033 12.362 12.0961 2.2513 1.8146 155.1134 19.3892 61.7451 95.7556 120.1084 13.1803 217.517;
	8.0187 6.284 5.529 1.9672 0.9533 190.0308 23.7539 59.7462 92.0151 109.853 3.9451 198.9445;
	1.0492 1.1926 0.7752 2.4827 1.5127 244.1333 30.5167 52.6337 117.5722 46.2052 0.0 83.6779;
	1.1859 0.9594 0.7439 0.8732 1.2741 84.8454 10.6057 16.4875 42.2996 9.7185 0.0 17.6002;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];