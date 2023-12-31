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
	1.019 0.8332 0.6969 0.0 0.0 9.571 1.1964 4.2174 0.9504 0.0 0.0 0.0;
	9.2607 7.309 5.5608 4.3081 3.5822 284.8627 35.6078 31.479 133.8213 164.7883 62.5072 298.4326;
	18.1629 14.8248 11.1686 3.0112 3.802 313.01 39.1262 45.4348 135.1382 184.7222 154.4164 334.533;
	23.0638 16.6083 13.7903 5.0225 3.9549 327.6994 40.9624 47.7364 127.1596 242.7069 162.7099 439.5436;
	20.1362 14.8227 9.8033 5.549 2.6829 270.3539 33.7942 24.3249 76.1043 86.3808 137.0123 156.4361;
	13.4619 9.9825 5.0877 6.0361 2.6421 127.8579 15.9822 23.6406 53.8116 83.9063 148.2407 151.9548;
	13.3805 10.1422 3.3737 4.2441 1.82 81.5225 10.1903 25.8919 24.6188 78.844 150.808 142.787;
	21.8049 15.7057 9.3425 0.8598 0.2914 78.5483 9.8185 41.2652 4.7437 43.1008 102.6868 78.0558;
	21.1018 14.7373 10.0965 0.5058 0.4728 125.4447 15.6806 43.2395 2.882 36.1225 70.4148 65.4181;
	15.7118 10.4033 6.716 0.8356 0.4691 220.0982 27.5123 39.6633 4.0616 27.3096 41.6133 49.4579;
	6.7803 3.0799 4.267 2.6541 1.5107 175.1579 21.8947 20.0675 9.7351 16.8432 23.925 30.5032;
	1.1925 0.9656 0.7986 0.8352 1.1695 62.0487 7.7561 11.359 32.0809 12.5589 11.7318 22.7443;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
