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
	8.811 7.2006 6.6573 6.4152 5.2747 293.0144 36.6268 30.4918 223.6187 12.4378 6.2239 22.5248;
	18.6411 15.9187 13.0473 6.8419 7.774 427.9731 53.4966 70.7195 257.4131 8.5832 9.3712 15.5442;
	22.6252 16.6645 13.8 8.3638 8.1588 438.9178 54.8647 74.1894 255.8621 15.2181 11.1769 27.56;
	23.712 16.1547 13.4961 6.9743 4.8845 334.3594 41.7949 63.0039 177.689 49.1595 9.375 89.0281;
	24.9016 16.371 13.7367 8.0915 5.5778 339.754 42.4693 59.6019 201.4069 71.8014 13.2752 130.0329;
	25.0771 16.3954 13.769 7.8684 5.5673 347.8969 43.4871 59.7719 221.81 69.3275 16.919 125.5525;
	16.3553 12.9722 12.5349 5.7686 4.1849 311.2712 38.9089 52.486 203.7136 26.6925 15.8894 48.3403;
	16.048 12.4313 11.7889 4.3808 3.1143 326.0329 40.7541 55.677 202.9892 15.1711 10.7219 27.475;
	13.116 9.9796 8.7515 3.1379 2.5894 284.7733 35.5967 52.5845 194.4327 7.2356 3.6254 13.1036;
	13.3203 6.2477 4.9088 1.2799 0.3666 107.5715 13.4464 8.8492 87.5482 0.0 0.0 0.0;
	0.8673 1.0124 0.7149 0.3904 0.2006 12.3209 1.5401 1.1909 8.0 0.0 1.672 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
