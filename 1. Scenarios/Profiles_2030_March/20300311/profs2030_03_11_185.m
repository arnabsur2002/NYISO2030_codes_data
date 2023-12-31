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
	0.0 0.0 0.002 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	6.7125 3.7955 3.0344 4.004 3.6058 164.1606 20.5201 29.9638 67.8121 89.3715 46.6128 161.8523;
	16.9085 11.094 8.5253 7.1122 7.7816 294.462 36.8078 70.2556 119.9045 268.1627 150.9764 485.6444;
	22.3624 15.7086 12.8848 10.12 8.7098 334.7768 41.8471 73.7303 157.935 310.6927 190.6965 562.6663;
	18.2482 2.4431 2.5265 11.2835 2.6499 246.071 30.7589 66.4375 170.4015 207.4087 188.448 375.6184;
	13.0856 2.2838 1.9573 11.4407 2.5397 315.3092 39.4136 66.4745 180.732 257.3864 210.2526 466.1283;
	15.9554 2.4313 2.244 11.2912 2.8046 336.0106 42.0013 66.5682 183.4125 256.9914 200.5968 465.413;
	21.8124 10.169 10.3908 9.6219 8.1768 345.4096 43.1762 69.4007 148.3775 131.3538 112.5107 237.8824;
	17.5627 11.9109 11.4582 9.58 9.6031 318.6839 39.8355 70.981 107.112 95.5043 73.5303 172.9588;
	8.6631 4.0866 4.5954 6.9748 9.2429 296.1167 37.0146 67.9053 65.1584 79.822 112.635 144.5582;
	1.2573 0.856 1.0423 5.1349 3.5674 187.5141 23.4393 46.4696 24.3089 65.5326 144.6638 118.6799;
	0.6973 0.586 0.3905 1.2973 2.4347 52.8406 6.6051 12.1983 20.3304 21.4362 29.6691 38.821;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
