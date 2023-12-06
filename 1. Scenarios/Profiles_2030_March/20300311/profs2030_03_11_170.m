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
	6.2677 1.9673 4.0491 0.6418 1.6046 52.5306 6.5663 38.3314 8.017 66.8884 37.8389 121.1353;
	15.6009 8.1475 10.1542 2.6681 8.513 245.5436 30.6929 71.5799 37.9892 155.9786 52.9258 282.4782;
	22.3656 15.7071 13.7851 6.2362 10.8923 375.616 46.952 74.0705 116.7294 296.7952 132.6001 537.4979;
	25.8856 16.1639 13.7148 9.0712 6.952 383.9134 47.9892 65.6035 156.1123 253.9943 91.2625 459.9851;
	25.3075 15.4291 13.532 10.629 5.5043 359.2925 44.9116 63.9777 56.5796 275.049 167.1715 498.1155;
	24.3249 14.41 13.3562 11.1808 3.6396 319.0638 39.883 64.4059 31.5367 292.7095 201.397 530.0987;
	25.0366 14.9452 13.5458 11.4735 4.9305 376.04 47.005 71.1248 57.3068 256.5814 174.0011 464.6704;
	21.8021 16.0605 13.7132 11.2247 6.5673 406.8686 50.8586 73.6556 119.7789 256.0793 148.8826 463.7612;
	17.21 12.5868 10.7579 5.1656 6.2027 402.7382 50.3423 71.9481 135.0361 176.305 102.4442 319.2893;
	9.5355 7.0553 5.0458 0.8638 1.925 263.6379 32.9547 45.7768 44.2789 48.6717 22.8162 88.1447;
	0.8947 0.6486 0.4059 1.2449 2.4479 44.425 5.5531 9.2891 19.5882 21.2226 18.8256 38.4342;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];