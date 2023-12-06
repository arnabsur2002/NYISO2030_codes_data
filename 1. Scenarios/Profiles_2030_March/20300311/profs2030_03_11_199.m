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
	4.8366 5.7015 4.0599 0.6958 1.9869 221.9217 27.7402 61.2958 90.3361 68.8667 39.5739 124.718;
	15.2143 9.1846 6.8643 3.6885 6.4836 372.8508 46.6064 72.5683 180.4348 175.5825 102.5594 317.981;
	22.8748 15.2467 12.3723 8.063 9.4272 392.1111 49.0139 72.8866 194.8077 312.154 173.8108 565.3127;
	26.334 16.6083 12.7937 11.133 8.703 315.7936 39.4742 57.2537 209.0721 327.8795 188.4937 593.7917;
	26.4222 16.6745 13.8 11.4341 9.7736 308.8643 38.608 60.1291 203.6725 331.8515 211.9506 600.9851;
	26.4839 16.8697 13.8 11.4717 10.0966 330.4476 41.306 64.9602 214.317 316.412 216.5145 573.024;
	26.3192 16.6447 13.8 11.632 11.6666 420.6606 52.5826 74.766 268.829 178.2974 164.6747 322.8977;
	22.6463 16.6083 13.5947 11.5984 11.9238 431.0642 53.883 76.2526 270.6419 133.1509 135.8688 241.1372;
	13.8632 13.2744 7.3082 9.3839 11.313 422.5744 52.8218 73.4471 254.367 76.5987 107.4521 138.7206;
	5.7477 5.0009 2.8425 5.3707 6.6998 271.1759 33.897 36.3066 110.1362 23.5646 32.0338 42.6756;
	0.7577 0.6151 0.4202 1.5985 2.4451 46.4917 5.8115 8.4324 20.9614 14.2877 17.2104 25.8751;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
