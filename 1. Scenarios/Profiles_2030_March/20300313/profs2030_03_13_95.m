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
	0.4784 0.4018 0.429 0.0 0.0 0.0 0.0 0.2 0.0 0.0 0.0 0.0;
	8.1157 4.6351 5.5929 3.5415 0.8425 155.5779 19.4472 62.1713 147.9131 13.4264 6.9362 24.3152;
	17.0525 12.3081 13.0618 6.7497 0.4051 330.2908 41.2863 72.3177 252.9584 31.1475 15.531 56.4082;
	22.499 16.6083 14.0431 8.8975 1.1833 368.047 46.0059 73.8582 266.604 54.6871 19.8205 99.0387;
	24.9806 16.2527 13.9128 8.7222 5.8944 311.2632 38.9079 56.7305 233.7931 105.4994 22.6048 191.0601;
	25.5904 16.371 13.7627 10.4111 7.5308 317.9244 39.7405 56.5018 241.9616 201.3138 40.1272 364.5805;
	25.4671 16.3954 13.769 11.179 7.0128 314.4019 39.3002 55.2079 237.0144 195.2603 48.616 353.6177;
	15.9377 10.5214 10.976 10.2444 5.4403 181.9579 22.7447 18.281 181.9906 54.8127 25.7316 99.2662;
	14.4282 10.3775 9.9891 8.3555 5.0696 187.0716 23.384 17.2506 175.9673 27.4161 16.7461 49.6508;
	9.3625 7.2191 6.7359 5.3727 5.2391 183.715 22.9644 15.6991 183.0218 24.7854 12.1956 44.8865;
	3.4494 2.2963 2.3153 1.3982 2.0223 52.1075 6.5134 3.8688 88.2645 16.4068 6.8918 29.7128;
	0.5526 0.3284 0.3396 0.4321 0.3194 5.418 0.6773 1.1127 7.8438 8.1337 5.2315 14.7302;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];