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
	0.1575 0.1621 0.24 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	2.8746 1.9103 0.9517 1.6791 1.7766 166.5558 20.8195 13.0381 78.6225 15.3485 22.7126 27.7963;
	16.7307 11.685 9.696 4.3002 3.0165 375.8981 46.9873 11.269 114.3527 32.4114 28.251 58.6972;
	22.2791 16.2256 13.756 6.3244 3.2541 388.0885 48.5111 12.6798 132.0717 70.0272 45.6289 126.8196;
	14.0141 8.2307 10.9514 5.3141 2.1345 253.8487 31.7311 8.7284 135.3626 155.0151 105.1137 280.7333;
	16.1082 9.0684 11.4337 5.8789 2.0873 260.0168 32.5021 8.562 141.2365 175.6861 161.2115 318.1686;
	22.2506 15.7604 13.5111 6.4754 2.494 282.6116 35.3265 11.3693 126.0084 150.8652 176.0427 273.2177;
	25.9026 16.7466 13.7855 9.9323 8.7565 409.0532 51.1316 53.6457 166.9681 304.0699 244.6977 550.6725;
	23.6022 16.8254 13.7008 9.5328 8.7228 409.3358 51.167 58.7043 163.3991 313.8589 220.2081 568.4004;
	18.8761 16.5761 11.9241 7.2538 8.192 377.1531 47.1441 56.2259 167.9466 259.0312 184.1932 469.1071;
	9.5223 9.7987 6.717 5.5445 11.4436 305.4391 38.1799 45.3095 174.4635 205.9665 162.2995 373.0067;
	1.421 1.2687 1.0199 1.5857 3.7308 73.8349 9.2294 10.1676 39.7932 65.9202 39.7294 119.3819;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
