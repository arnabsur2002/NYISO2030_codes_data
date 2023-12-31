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
	1.2563 0.6816 0.5927 2.3192 1.8337 0.0 0.0 6.7667 0.7583 16.6861 0.0 30.2186;
	3.1273 1.8877 3.9006 3.6317 5.7639 0.0 0.0 2.3054 0.0 25.1839 18.4352 45.6083;
	3.8109 2.3527 5.3653 5.6076 8.6534 0.0 0.0 1.2187 0.0 53.4733 46.7822 96.8404;
	5.0296 2.1445 6.3363 10.6987 9.9268 70.2048 8.7756 7.7322 33.3762 73.3979 90.584 132.9241;
	11.0947 9.4094 11.312 11.1946 10.6857 61.8055 7.7257 19.1703 76.714 92.4432 117.1424 167.4152;
	19.5392 15.5167 13.2624 11.3181 10.9608 82.4758 10.3095 24.0296 139.4435 139.5773 115.4363 252.7753;
	23.9008 16.5824 13.7384 8.0294 7.1743 216.8576 27.1072 12.4121 89.2225 162.6479 68.3913 294.5564;
	20.4605 15.4702 13.2163 6.9148 7.0344 292.9481 36.6185 10.4764 96.643 174.4178 64.8735 315.8717;
	14.7724 9.8924 9.417 4.4987 7.0045 304.4042 38.0505 15.9914 133.4807 120.2368 51.3955 217.7496;
	8.5226 5.762 4.9347 2.378 7.4021 128.6034 16.0754 7.8035 69.4363 20.4664 9.0441 37.0648;
	1.8627 1.5028 1.1111 0.7543 2.3463 50.1034 6.2629 6.6943 29.3544 11.3089 7.5105 20.4805;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
