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
	5.7021 6.7111 6.0421 1.7286 5.599 182.9908 22.8739 40.1645 64.0725 70.1664 38.5671 127.0717;
	9.8465 9.1696 10.8285 5.136 9.2677 389.722 48.7152 73.7951 163.832 204.2041 20.9874 369.8149;
	17.5343 14.5812 13.6657 8.5559 10.1019 431.4571 53.9321 76.4844 192.5331 317.3137 98.573 574.657;
	26.096 16.6083 13.8 10.7309 7.4959 427.9669 53.4959 69.5307 241.2515 285.484 200.1349 517.0132;
	26.334 16.6083 13.8 9.9993 8.4408 431.9475 53.9934 68.3809 244.4991 291.3088 225.7675 527.5621;
	26.3088 16.6083 13.8 7.3592 9.3232 424.4325 53.0541 69.708 251.2915 292.3308 229.426 529.4129;
	22.418 16.226 13.7907 3.7305 11.5493 420.6643 52.583 73.2234 264.6672 194.3571 194.3109 351.9818;
	16.2514 15.3241 13.7458 4.4583 12.0677 419.7862 52.4733 74.7435 262.4453 170.0346 162.6643 307.9337;
	10.7488 10.0847 11.164 3.9709 12.0939 403.9286 50.4911 72.4188 260.9492 109.8807 128.028 198.9946;
	6.2019 7.1582 6.9534 4.3352 10.6019 281.1095 35.1387 42.1658 222.717 15.3163 46.4758 27.7379;
	0.7345 0.6623 0.4918 1.3245 3.3427 51.8434 6.4804 8.9163 32.6496 13.0944 16.3278 23.714;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];