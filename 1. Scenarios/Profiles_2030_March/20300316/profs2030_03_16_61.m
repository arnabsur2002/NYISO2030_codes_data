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
	1.0689 0.8642 0.7806 0.0 0.0 12.6421 1.5803 4.2174 3.0518 0.0 0.0 0.0;
	18.4877 14.895 10.3666 2.3087 2.0076 321.6978 40.2122 49.6727 174.0292 57.5648 24.2782 104.2502;
	22.2232 15.8673 13.1202 4.6762 2.9953 307.7372 38.4671 48.4541 169.1153 120.9602 26.9479 219.0596;
	23.8932 16.6083 13.8 6.9779 4.6462 321.6884 40.211 51.9984 185.0995 192.8995 38.4861 349.3422;
	25.4886 16.3661 13.6568 6.7137 7.6228 372.1523 46.519 58.8081 233.8602 212.5176 106.0592 384.8706;
	25.8055 16.5136 13.7212 8.0128 10.1518 405.8303 50.7288 69.8805 255.5943 255.7567 155.2292 463.1769;
	25.7481 16.5214 13.8 7.2489 10.5921 411.8839 51.4855 71.7462 253.0545 280.2525 176.4205 507.539;
	24.9047 15.9262 13.4455 2.6959 6.9057 363.2311 45.4039 61.8676 199.179 237.429 124.589 429.9853;
	22.0263 15.1003 12.8117 1.3387 5.1692 335.9379 41.9922 54.5248 178.6507 261.2619 115.6285 473.1469;
	15.6816 10.0903 5.8121 0.9899 4.5514 309.4042 38.6755 50.4165 183.685 257.0254 146.6696 465.4746;
	3.6552 2.5433 0.6272 1.8701 6.1903 228.1801 28.5225 42.6388 234.0566 247.8773 226.9919 448.9072;
	1.1859 0.9594 0.7439 0.9357 2.2385 68.7892 8.5986 14.9624 50.6517 94.5906 97.5458 171.3041;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
