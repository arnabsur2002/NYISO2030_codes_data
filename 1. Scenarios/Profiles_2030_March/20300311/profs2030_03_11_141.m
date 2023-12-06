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
	8.7422 7.2111 5.7484 5.3649 4.6721 362.613 45.3266 65.3016 192.4525 69.8221 40.0126 126.4483;
	21.7842 14.5171 12.6969 8.3423 13.5356 407.9491 50.9936 74.2696 238.3774 199.8076 115.1831 361.8527;
	25.687 16.6134 13.8961 10.1992 14.0465 411.9887 51.4986 75.8 241.5175 300.4797 181.902 544.1706;
	26.9083 17.1096 14.1933 10.8362 11.6066 352.0831 44.0104 69.2707 254.4447 99.6283 187.809 180.4274;
	26.4127 17.0741 13.8836 10.6777 9.7773 349.3833 43.6729 65.491 244.5747 87.5284 198.4014 158.5144;
	26.0601 16.7739 13.8 11.104 9.1615 341.5619 42.6952 61.8487 224.0004 108.5203 193.8088 196.531;
	20.851 16.6083 13.7407 11.6377 11.926 373.9768 46.7471 67.8845 213.5563 95.5988 165.0792 173.1301;
	16.883 16.6083 13.8 11.6947 12.8605 394.1399 49.2675 72.2838 214.2703 96.8204 151.1932 175.3423;
	13.4411 14.5289 12.7708 11.1343 12.3922 395.6677 49.4585 72.2602 218.8206 65.5231 122.4913 118.6627;
	8.9704 9.104 8.2638 9.3666 7.284 354.205 44.2756 56.8682 157.9196 27.1083 64.0511 49.0934;
	0.7314 0.6566 0.4004 1.9219 2.8309 55.0805 6.8851 9.2907 22.2681 18.1889 18.7398 32.9401;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
