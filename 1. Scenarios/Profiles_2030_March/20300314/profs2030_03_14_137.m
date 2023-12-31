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
	1.5077 1.7374 2.3648 2.1995 3.1071 8.8886 1.1111 12.3723 26.7913 58.7713 47.4307 106.4352;
	3.3759 4.4497 4.372 7.2298 8.365 48.9814 6.1227 49.3106 65.1791 130.8632 109.2747 236.9941;
	5.2841 6.7729 4.7599 10.4993 10.2517 71.7939 8.9742 59.6486 73.0441 203.4733 147.5951 368.4914;
	9.5459 14.1051 9.8421 11.4508 10.8581 230.5642 28.8205 64.4146 195.103 250.3793 133.3063 453.4384;
	14.0161 15.9998 13.1854 11.1561 9.3251 181.8382 22.7298 60.6554 174.2038 277.7963 163.1068 503.0908;
	17.3331 16.0609 13.2624 11.0166 6.4578 250.5461 31.3183 59.5446 198.9826 273.7667 170.3866 495.7931;
	14.7612 15.636 11.948 2.0534 0.2786 322.7589 40.3449 61.6024 237.7217 186.1788 148.2014 337.1709;
	7.5293 11.0459 4.8439 2.255 0.9646 344.2945 43.0368 63.132 256.2969 187.4152 106.2574 339.41;
	3.4627 6.7737 2.1971 2.5359 2.8212 308.0982 38.5123 60.0641 261.1286 159.6879 79.5831 289.1957;
	3.0574 5.9451 2.3544 3.6311 6.2085 102.0248 12.7531 23.9768 160.0318 43.815 16.4319 79.3492;
	1.2104 1.1972 0.787 1.3538 1.6344 59.1846 7.3981 10.4408 36.7097 15.0064 9.6502 27.1767;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
