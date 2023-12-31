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
	1.0111 0.8311 0.6989 0.0 0.0 9.4875 1.1859 4.1882 0.8709 0.0 0.0 0.0;
	3.746 6.0771 4.4214 0.9593 1.1279 14.7502 1.8438 4.5494 25.1808 125.5069 4.9344 227.2937;
	19.0802 15.2651 13.735 0.8876 3.6811 74.8342 9.3543 17.02 65.1702 247.7978 26.6189 448.7633;
	24.9794 16.7716 14.3113 1.3304 4.1486 214.7619 26.8452 24.9221 97.3483 302.9743 84.1087 548.6883;
	25.7497 16.5397 13.9278 0.0923 0.5996 290.1052 36.2632 23.3569 80.6889 230.1488 87.987 416.8008;
	25.8952 16.5146 13.8031 0.4419 0.9044 314.6571 39.3321 35.0184 156.8784 286.1634 122.419 518.2437;
	25.8907 16.5214 13.8328 0.655 1.9153 349.1204 43.64 46.4951 207.6065 310.8465 136.6953 562.9449;
	25.3703 15.9754 13.905 1.5638 6.322 350.2613 43.7827 60.2633 235.4771 192.6327 52.7415 348.8589;
	24.1 16.1241 14.0585 1.3344 6.9082 342.7545 42.8443 61.1782 203.0096 158.1505 30.8802 286.4115;
	17.9792 13.2211 11.2309 1.0986 6.3574 310.4877 38.811 57.7829 136.0197 128.3616 23.5871 232.4635;
	4.9795 5.0724 1.9333 1.5338 5.7326 207.9975 25.9997 41.3209 136.7798 124.4565 27.2897 225.3915;
	1.2855 1.0039 0.7956 0.8854 2.2562 82.4565 10.3071 16.4144 52.9143 99.74 18.3212 180.6298;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
