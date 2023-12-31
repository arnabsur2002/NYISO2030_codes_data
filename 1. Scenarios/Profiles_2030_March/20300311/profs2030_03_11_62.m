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
	0.0 0.0 0.0096 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	8.7546 7.1526 6.2757 0.2764 2.6416 0.0 0.0 24.9299 2.9359 68.8122 38.9393 124.6193;
	22.1127 15.8505 13.5555 2.1708 7.9654 136.5591 17.0699 68.2851 22.909 194.42 104.897 352.0958;
	25.0475 16.6615 14.0468 6.6347 9.5106 269.6499 33.7062 72.5397 62.8939 309.0262 178.9014 559.6483;
	26.367 16.6083 13.8126 11.197 4.1656 86.131 10.7664 65.1463 37.828 260.4074 177.1632 471.5993;
	26.3729 16.6083 13.8 11.4504 6.5809 108.8568 13.6071 66.2768 46.3587 286.0483 184.3701 518.0353;
	26.4255 16.6093 13.8 11.5072 7.4043 130.3581 16.2948 66.1805 85.919 308.4237 198.966 558.5571;
	26.3192 16.6083 13.8 11.4578 7.0375 184.6781 23.0848 62.024 135.2354 267.6732 201.7559 484.7578;
	22.7783 16.3607 13.7782 10.7985 7.2335 160.2161 20.027 50.2471 124.2774 272.9485 202.9007 494.3114;
	11.6503 8.1061 8.5104 5.2464 7.3071 127.4317 15.929 47.6623 75.9894 223.7994 226.4992 405.302;
	1.5033 1.7279 1.477 3.3653 6.1308 42.7426 5.3428 33.2338 23.4902 170.8553 159.4336 309.42;
	0.7082 0.6484 0.3838 1.8834 3.317 51.5831 6.4479 10.426 24.8612 47.2514 29.6983 85.5725;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
