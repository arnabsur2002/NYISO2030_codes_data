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
	0.006 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.9382 0.3126 0.3428 0.5334 0.412 98.9711 12.3714 11.9571 40.7094 12.9743 6.3893 23.4965;
	2.5197 1.0571 1.2865 0.8404 0.9575 49.1025 6.1378 5.1781 26.6646 0.0 12.8672 0.0;
	3.3254 1.8711 2.4407 0.9607 1.01 35.0488 4.3811 5.6109 24.7998 0.0 15.1139 0.0;
	3.4826 3.48 4.3595 1.2104 0.4906 42.8994 5.3624 20.7222 68.643 0.0 8.2951 0.0;
	2.4578 2.2729 2.7328 1.3868 0.5902 70.0298 8.7537 40.8178 101.9458 0.0 19.5215 0.0;
	1.4818 1.5374 2.2626 1.6577 1.6371 75.1249 9.3906 43.614 115.0391 0.0 33.3224 0.0;
	2.2939 2.5788 2.4973 3.5485 3.3525 67.7598 8.47 31.4765 99.4566 2.0523 36.2642 3.7168;
	2.3743 2.5177 1.9766 4.1173 2.9365 25.4038 3.1755 16.8013 58.7612 2.4575 17.932 4.4505;
	1.7533 2.0747 1.063 4.5055 1.8366 13.6843 1.7105 10.5936 27.9562 7.5857 4.3818 13.7378;
	0.654 1.3047 0.3376 4.1487 0.3367 14.3022 1.7878 7.9576 11.8685 28.8663 2.3942 52.277;
	0.2415 0.2189 0.1471 1.1643 0.79 35.5729 4.4466 7.1484 24.6948 20.1729 11.0927 36.5332;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
