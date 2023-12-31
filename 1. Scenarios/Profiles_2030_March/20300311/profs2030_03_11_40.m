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
	4.8373 3.3259 2.4813 6.6384 5.1152 196.2781 24.5348 41.7245 32.9375 72.8627 41.5469 131.9547;
	12.1419 10.0189 6.2103 10.9834 10.8063 435.2867 54.4108 71.7702 161.9626 251.7165 120.0237 455.8602;
	16.9405 15.6615 10.7964 11.6734 12.1732 464.8923 58.1115 74.3697 217.0377 330.8929 187.0709 599.2491;
	12.6853 10.9724 5.3383 11.4122 9.6583 427.1832 53.3979 69.3058 237.6421 292.5193 192.2095 529.7542;
	14.1429 12.4415 9.358 11.4504 10.1038 405.9599 50.745 71.8592 216.2059 304.6445 215.5831 551.7131;
	20.6626 15.6752 13.164 11.4717 11.0079 416.386 52.0483 73.4425 213.3394 296.3991 217.5116 536.7806;
	26.0616 16.6083 13.8 11.6386 13.4533 460.5873 57.5734 73.2236 228.0094 138.7369 71.2725 251.2534;
	21.8006 16.6083 13.8 11.5984 13.5103 457.9393 57.2424 74.0358 221.4609 84.1936 25.9706 152.4751;
	11.6747 11.9376 8.3812 9.4486 12.379 426.9458 53.3682 71.0951 185.1669 45.5494 30.3803 82.4903;
	1.5081 1.3853 0.8299 4.7595 7.2292 114.0142 14.2518 26.1336 44.0287 25.6768 48.7853 46.5008;
	0.6982 0.586 0.3775 1.3607 3.4099 44.7013 5.5877 8.7244 19.8695 21.2277 21.2893 38.4434;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
