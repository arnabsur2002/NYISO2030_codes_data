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
	1.019 0.8418 0.7132 0.0 0.0 9.5565 1.1946 4.1882 1.0585 0.0 0.0 0.0;
	8.7805 7.4606 6.0072 1.6946 5.4077 352.5532 44.0692 37.1734 160.4872 291.2059 33.4658 527.3757;
	19.838 14.3842 11.134 2.2971 7.918 330.9532 41.3691 48.0953 176.419 340.3088 75.7249 616.3014;
	24.1574 16.6083 13.7776 4.7234 8.7309 364.914 45.6142 54.9625 204.8619 349.4018 125.2857 632.7688;
	25.3873 16.3661 13.7212 4.7098 6.5904 416.815 52.1019 64.8052 259.7929 304.8307 172.4491 552.0503;
	25.6248 16.5136 13.8 4.322 6.1991 414.4984 51.8123 69.0829 245.6097 263.289 165.4325 476.8179;
	25.6262 16.5214 13.8 3.7815 5.3297 390.25 48.7813 67.3568 195.552 228.7893 156.2783 414.3388;
	24.3172 15.9262 13.4455 4.7859 2.3368 329.016 41.127 58.5412 96.1463 121.9745 104.7794 220.8966;
	21.6223 14.8674 13.0329 4.3707 1.5502 318.7016 39.8377 52.7907 95.7369 128.0306 78.9954 231.8643;
	15.4593 9.5242 7.0837 3.7587 0.7244 298.3869 37.2984 50.8137 111.2839 112.0648 51.0943 202.95;
	3.7563 3.3649 0.8853 2.5764 0.4349 159.9406 19.9926 37.1245 150.7599 59.4184 20.7381 107.6072;
	1.2325 1.0396 0.7497 0.8106 0.0 62.0487 7.7561 11.7065 33.4353 7.3313 0.0 13.277;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
