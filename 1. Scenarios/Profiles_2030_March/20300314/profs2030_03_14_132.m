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
	0.1004 0.1034 0.1068 0.0 0.0 0.3746 0.0468 0.1784 0.0 0.0 0.0 0.0;
	3.7805 3.3841 1.7418 6.5268 3.9093 140.4068 17.5508 19.4349 130.286 60.0089 16.6454 108.6764;
	7.8929 8.6765 5.6336 10.9844 11.0557 224.8083 28.101 27.243 152.1251 161.82 76.1981 293.057;
	11.1417 12.0588 8.8826 11.3251 12.4662 292.759 36.5949 31.0719 153.8108 247.9075 132.4081 448.9619;
	19.9307 15.8867 11.659 11.8356 11.8345 442.9348 55.3669 60.2956 264.5581 263.0505 112.3677 476.386;
	19.3191 15.9896 8.3074 11.4924 10.4423 425.2777 53.1597 59.4705 261.1337 268.8861 60.7931 486.9543;
	17.9489 15.734 5.4154 11.42 9.4182 393.5115 49.1889 54.9838 250.6913 228.1873 58.6394 413.2485;
	21.5899 16.5824 12.2562 8.9537 5.7946 296.787 37.0984 15.6766 228.26 239.4831 154.6249 433.7054;
	19.4655 16.0277 12.0648 8.49 6.539 266.4806 33.3101 7.7367 228.1653 249.3385 155.9415 451.5535;
	14.0949 13.65 9.1691 6.3903 6.6466 216.5807 27.0726 6.2809 220.501 280.901 148.337 508.7134;
	6.3331 6.6754 4.1255 4.5985 4.3263 63.8841 7.9855 2.5204 107.4469 173.3216 24.9187 313.8865;
	0.9958 0.9585 0.6131 0.8809 1.4454 35.0486 4.3811 6.3875 27.7508 18.4904 8.044 33.4863;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
