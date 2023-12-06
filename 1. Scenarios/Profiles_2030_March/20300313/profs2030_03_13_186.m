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
	0.4731 0.4018 0.4224 0.0 0.0 0.0 0.0 0.2 0.0 0.0 0.0 0.0;
	8.929 6.8425 3.7051 1.6679 1.2268 150.8143 18.8518 43.6484 140.8116 4.1034 4.93 7.4313;
	19.9746 14.8994 11.2886 4.5174 5.0559 301.8329 37.7291 68.9125 262.0087 19.9722 11.1684 36.1698;
	22.9499 16.6083 13.8 7.4626 7.9346 316.7096 39.5887 72.2633 272.3385 42.8597 20.691 77.6191;
	23.6437 16.1547 12.9194 4.7442 5.7583 187.5453 23.4432 59.7675 211.965 73.6746 46.7051 133.4252;
	25.0507 16.371 13.5382 4.1093 5.1614 156.3275 19.5409 64.3492 208.3648 85.8696 56.0204 155.5103;
	25.1679 16.3954 13.769 3.6602 4.9517 153.3406 19.1676 65.2474 208.4967 95.4115 63.9954 172.7908;
	14.2198 9.7705 8.7716 4.4685 5.0571 128.1139 16.0142 39.2483 175.659 127.2369 52.7315 230.4268;
	11.7339 7.482 6.334 4.5458 4.9896 157.3905 19.6738 32.9442 175.3373 112.4545 44.2843 203.6558;
	7.9128 6.0831 4.3135 3.8257 4.5136 163.8691 20.4836 27.8734 175.3066 67.0269 31.9356 121.3861;
	2.7071 2.0232 1.4412 1.3602 0.8228 69.7968 8.7246 11.7554 82.4471 12.5659 7.2502 22.7569;
	0.6765 0.5097 0.5621 0.3908 0.9414 5.6911 0.7114 1.5521 10.4295 6.6019 3.8667 11.956;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];