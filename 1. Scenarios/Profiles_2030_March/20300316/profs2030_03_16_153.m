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
	1.0486 0.8527 0.7588 0.0 0.0 9.4835 1.1854 4.1882 0.5085 0.0 0.0 0.0;
	5.3168 6.7232 4.9674 5.1909 1.8546 294.7347 36.8418 17.802 172.1311 19.9188 12.9447 36.073;
	11.5687 10.959 10.9112 4.4031 4.0235 416.1647 52.0206 48.0566 216.6187 37.0157 40.2157 67.0356;
	19.35 16.4675 13.8 5.9815 5.7031 438.3254 54.7907 58.3341 205.4848 79.8722 109.1596 144.649;
	24.5269 16.3811 13.8 5.0588 4.3019 444.4735 55.5592 61.8863 146.5182 125.1338 139.1767 226.6181;
	22.5912 16.5509 13.8 6.7659 4.1558 422.9738 52.8717 58.2188 158.2616 180.3326 148.8389 326.5834;
	23.2157 16.527 13.7117 6.7107 3.4963 399.0665 49.8833 56.0955 179.6135 193.1448 148.4353 349.7865;
	24.4291 16.02 13.4455 3.0524 1.6191 363.435 45.4294 57.0333 175.7387 94.8543 109.7175 171.7817;
	22.7318 16.1047 13.1855 1.5023 1.6729 363.2447 45.4056 57.6509 154.1094 66.6133 111.0359 120.6371;
	18.2722 13.6436 10.1097 1.2119 1.3778 350.6272 43.8284 54.9985 125.504 54.0007 97.9807 97.7956;
	8.6133 6.7276 2.7335 2.5078 1.5456 249.6626 31.2078 30.6681 138.5813 28.0045 43.9693 50.7163;
	1.3422 1.0303 0.7701 1.0574 1.0242 64.9212 8.1152 11.4914 45.008 9.6843 3.3371 17.5384;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
