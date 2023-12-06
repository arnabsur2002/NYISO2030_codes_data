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
	0.4331 0.3585 0.3236 0.0 0.0 0.2978 0.0372 0.8098 0.2721 0.0 0.0 0.0;
	3.8028 2.3818 2.0879 1.4092 2.8004 144.8361 18.1045 28.9656 92.7697 33.3467 42.7379 60.391;
	6.6795 4.7352 4.7419 5.6582 7.288 230.2406 28.7801 19.9129 167.0627 84.7949 118.4713 153.564;
	8.2969 6.0702 5.8611 8.4594 9.5931 245.4346 30.6793 20.3413 171.2916 170.2132 147.1276 308.2571;
	7.9525 6.4769 6.6114 11.1668 14.2652 207.3761 25.922 14.3606 105.9746 249.474 148.1879 451.7989;
	10.7132 8.6117 9.0086 11.1451 13.7307 148.9881 18.6235 9.6419 120.6291 247.1598 161.9615 447.6079;
	12.612 8.8978 9.616 11.1311 13.4034 122.2992 15.2874 5.8695 134.7043 224.1142 163.3582 405.8722;
	7.2943 3.9116 4.2366 11.0529 12.5268 251.6566 31.4571 8.0876 202.8014 180.9045 134.175 327.6191;
	5.9498 4.2087 1.9083 11.0955 12.3707 266.9733 33.3717 7.8041 194.4542 173.0511 137.7186 313.3966;
	3.7265 2.8923 1.7849 10.0621 11.7406 275.4394 34.4299 7.2775 164.6541 138.9259 150.3927 251.5956;
	1.9858 1.612 1.7197 6.176 6.2508 257.8149 32.2269 5.8589 140.7358 18.1257 28.4853 32.8258;
	0.7004 0.5663 0.7478 1.771 1.7131 58.8898 7.3612 3.7186 49.7162 1.1685 5.4131 2.1162;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];