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
	0.4731 0.4018 0.4224 0.0 0.0 0.0 0.0 0.2 0.0 0.0 0.0 0.0;
	8.1157 6.125 5.4902 1.3425 4.526 341.4802 42.685 49.1314 72.1655 8.8782 0.0 16.0784;
	10.5353 7.7151 6.9585 5.3571 6.6831 436.0202 54.5025 70.6058 245.5543 12.5903 13.5999 22.8011;
	10.2287 8.9558 10.452 7.9216 7.2547 439.2005 54.9001 72.1107 263.8534 33.2064 32.7196 60.137;
	12.098 7.2215 10.3627 3.235 3.4 231.1879 28.8985 43.0315 173.0531 80.9616 45.253 146.622;
	21.1861 14.9763 13.0439 3.7561 4.7487 327.0277 40.8785 53.6613 207.009 80.6599 44.5825 146.0756;
	25.077 16.3954 13.7303 4.1181 5.108 360.6458 45.0807 57.0054 238.0542 60.827 40.8726 110.158;
	14.2442 11.5127 9.3353 2.2356 2.5582 140.5128 17.5641 27.8358 125.1046 35.0148 26.1224 63.412;
	11.9088 10.2429 7.79 1.6687 1.616 66.4714 8.3089 17.2093 88.2217 29.2643 19.2415 52.9979;
	8.3962 6.9462 5.7361 1.6995 1.3955 27.6311 3.4539 9.8135 49.1005 20.8262 10.2657 37.7164;
	3.5384 3.0837 2.9144 1.7414 0.439 13.3663 1.6708 2.3968 11.421 2.5477 0.0 4.614;
	0.6609 0.7635 0.4383 1.2242 0.4126 19.9355 2.4919 1.4108 11.5002 2.9087 2.0146 5.2677;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
