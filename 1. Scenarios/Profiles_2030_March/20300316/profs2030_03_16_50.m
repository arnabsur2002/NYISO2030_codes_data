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
	1.0452 0.8518 0.7263 0.0 0.0 10.4497 1.3062 4.8549 0.4191 0.0 0.0 0.0;
	6.7598 6.1376 4.306 4.4779 3.2407 189.0061 23.6258 34.6481 104.3571 72.5611 24.4988 131.4086;
	17.8068 14.0021 10.0536 9.1393 4.4527 266.0129 33.2516 61.8931 69.0329 253.7424 96.1031 459.529;
	23.6402 16.6083 13.7597 10.0164 6.018 320.6746 40.0843 71.13 34.439 338.8119 137.2015 613.5903;
	25.2193 16.3661 13.5157 7.0796 7.7791 361.1788 45.1474 71.8431 32.6835 281.7908 127.6072 510.3249;
	25.6422 16.5136 13.7136 7.1607 8.0419 386.4609 48.3076 68.3609 118.1102 289.3419 146.9957 523.9998;
	25.6779 16.5214 13.8 6.7557 7.3802 392.7051 49.0881 63.9428 174.4028 295.483 163.2075 535.1215;
	24.1157 15.9262 13.4455 4.9089 5.1699 348.5124 43.564 62.4467 152.3974 254.7245 185.8512 461.3075;
	20.1927 14.0858 11.9711 4.0673 4.662 328.022 41.0028 61.6106 125.3892 269.0546 176.8573 487.2595;
	10.719 8.3066 5.4636 3.1092 4.2046 309.9249 38.7406 56.754 121.0571 222.0589 134.9134 402.1499;
	3.4161 3.3303 1.5041 3.006 3.4783 269.4459 33.6807 30.8785 207.035 87.7629 73.4066 158.9392;
	1.3164 1.0594 0.8073 0.8987 0.7405 83.0125 10.3766 11.5219 51.0532 18.5051 30.7032 33.5128;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
