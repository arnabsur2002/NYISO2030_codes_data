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
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.1669 0.0062 0.0745 0.5006 0.622 0.0 0.0 0.0 0.0 15.0395 6.9587 27.2367;
	0.0 0.0 0.0 1.2394 2.9727 0.0 0.0 0.0 0.0 38.5084 14.0627 69.739;
	0.0 0.0 0.0 1.8817 4.6125 0.0 0.0 0.0 0.0 58.5198 18.9161 105.9798;
	1.4575 0.6569 1.0277 1.3693 4.0295 23.375 2.9219 5.8932 32.7124 41.8788 11.8931 75.8427;
	2.722 2.0098 2.0855 1.4699 3.4529 47.1 5.8875 10.8182 53.892 58.7599 15.2481 106.4146;
	2.59 2.1779 2.0956 1.5691 2.6729 50.024 6.253 9.5335 58.3136 67.8291 19.8964 122.839;
	0.468 1.0859 1.0503 1.3227 1.3869 39.3463 4.9183 8.5281 43.3689 93.9378 48.2226 170.122;
	0.0 0.6055 0.706 1.0 1.0408 19.5868 2.4484 4.2652 31.1662 78.5329 41.5193 142.2235;
	0.0649 0.5319 0.6669 0.7484 0.8124 12.3095 1.5387 3.0098 19.0101 58.6312 28.0635 106.1814;
	1.5746 1.2806 1.5258 0.5474 0.2533 8.4053 1.0507 0.3742 3.3926 48.6779 16.6879 88.156;
	0.2996 0.2562 0.2096 0.6292 0.622 28.5168 3.5646 6.1515 22.1103 29.2825 10.945 53.0308;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
