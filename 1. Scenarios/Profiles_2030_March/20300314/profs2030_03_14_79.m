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
	0.0951 0.0972 0.1051 0.0 0.0 0.1251 0.0156 0.1784 0.0 0.0 0.0 0.0;
	2.6867 1.6064 1.7336 1.6847 0.8322 153.9598 19.245 42.0702 63.3198 25.6201 16.0965 46.3981;
	6.8564 5.8467 4.8542 4.2626 9.2272 155.5063 19.4383 26.0043 56.8906 85.4696 24.2533 154.786;
	9.3996 8.6191 5.6684 6.2562 12.0607 175.7799 21.9725 20.7518 74.8124 171.1515 36.2659 309.9564;
	14.5237 13.7933 8.206 7.1366 11.3649 403.3458 50.4182 60.0245 254.3686 205.0642 105.1579 371.3726;
	10.852 13.6465 10.7405 9.7013 9.4272 376.4519 47.0565 57.991 230.2016 271.419 167.871 491.5414;
	10.5828 12.6383 11.7771 10.5908 8.7493 332.3954 41.5494 47.8199 200.6023 287.4862 194.3621 520.6393;
	20.0667 14.4691 13.1304 5.0457 4.7603 226.2895 28.2862 26.9556 218.6844 232.039 181.0667 420.2241;
	20.1074 13.6398 11.2882 4.122 5.1342 281.9679 35.246 36.1358 245.0429 197.9188 146.3915 358.4322;
	15.7523 10.367 7.9331 2.0932 3.7157 311.3147 38.9143 47.2279 270.2429 123.697 102.7097 224.0161;
	10.2713 6.5098 5.0324 0.7073 0.7846 137.9418 17.2427 22.9734 225.7479 21.3374 8.2412 38.6422;
	1.3742 1.1115 0.897 0.6457 0.812 36.8204 4.6025 6.4586 27.4194 15.198 7.5785 27.5237;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];