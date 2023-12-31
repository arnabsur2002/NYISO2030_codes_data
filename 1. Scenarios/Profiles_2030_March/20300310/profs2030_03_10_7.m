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
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	1.3463 0.0623 0.3264 0.2059 2.2457 0.0 0.0 0.0 0.0 11.1308 4.543 20.158;
	0.6872 0.4328 0.2147 0.7747 2.5345 0.0 0.0 0.0 5.3078 31.8142 14.7741 57.6157;
	0.5759 0.6945 0.0582 1.5594 2.5904 0.0 0.0 0.0 16.8463 66.5987 33.8475 120.6106;
	1.1704 1.5134 0.5707 2.1027 1.9997 42.7988 5.3498 6.7062 124.5989 82.6763 43.6557 149.7272;
	2.1044 1.761 1.0365 2.0266 2.5158 67.2496 8.4062 12.8269 168.814 59.2524 42.5764 107.3064;
	2.6304 2.0466 1.7686 2.1703 2.8383 51.9461 6.4933 9.5688 160.5881 38.1723 43.8965 69.1304;
	3.9642 4.2493 3.397 3.5494 3.2728 45.083 5.6354 9.7461 103.1237 83.2752 58.9033 150.8118;
	3.2775 3.51 2.794 3.2342 2.7645 40.6943 5.0868 7.2488 83.3714 99.2424 53.089 179.7286;
	2.5103 2.4887 1.9774 2.1913 2.2838 61.1415 7.6427 8.1655 98.0791 155.0223 36.4119 280.7463;
	2.2321 1.6073 1.7143 0.7679 1.2386 156.2046 19.5256 10.4856 138.1248 102.4345 17.2449 185.5095;
	0.3961 0.3011 0.1882 0.4566 1.2095 38.7755 4.8469 6.4933 36.2918 21.2426 10.7677 38.4705;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
