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
	0.0 0.0 0.0 0.5393 1.1842 43.2557 5.407 1.4421 6.9993 15.01 4.392 27.1832;
	0.3429 0.4942 0.4316 1.3186 1.8684 78.275 9.7844 2.6956 0.8604 34.1807 9.2737 61.9014;
	1.0912 0.8657 0.9114 1.9604 2.0311 64.9208 8.1151 4.089 2.4839 44.3476 16.694 80.3138;
	2.7052 1.8577 2.1549 1.7813 1.6222 33.6433 4.2054 11.096 25.3019 12.2662 20.3961 22.2141;
	3.2988 2.1767 2.561 2.0835 2.6589 42.8735 5.3592 17.0754 62.6155 6.6626 17.3103 12.066;
	3.537 2.2705 2.5984 2.5434 3.7894 58.0586 7.2573 19.5349 95.4932 9.5499 20.1718 17.2948;
	3.3951 2.7977 2.3309 3.4682 3.8581 97.8745 12.2343 30.6731 76.5669 71.6672 54.1673 129.7897;
	1.931 2.1964 1.3234 2.5275 2.5214 39.5514 4.9439 21.7001 38.9678 79.5685 55.9206 144.099;
	0.9983 1.3795 0.6987 1.3878 1.0073 15.4052 1.9256 15.5665 18.1381 59.9006 35.9376 108.4803;
	1.1587 1.2535 0.8769 0.3183 0.0 4.8616 0.6077 9.4481 13.161 15.0204 11.3798 27.2021;
	0.5236 0.4325 0.3279 0.3832 0.5694 37.5655 4.6957 8.0763 27.4159 16.5004 9.0143 29.8824;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
