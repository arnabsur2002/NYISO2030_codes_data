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
	4.6167 5.3339 4.1688 2.4412 9.5562 100.1122 12.514 10.2004 12.1973 61.0705 38.9304 110.599;
	9.4023 9.3771 3.0514 6.8323 12.7833 363.2836 45.4105 71.5142 131.1368 38.3725 100.9567 69.4928;
	16.6647 15.1685 9.4904 10.1392 13.1187 411.3056 51.4132 76.2019 212.0723 243.9968 187.0508 441.8797;
	26.334 16.6083 13.8 11.2835 12.6599 394.7545 49.3443 74.1443 252.3501 326.5979 201.0487 591.4708;
	26.7476 16.8097 13.9128 11.5463 12.7488 384.2337 48.0292 71.576 242.8448 330.8335 217.4646 599.1415;
	26.9805 16.9554 13.9934 11.5636 11.3124 376.165 47.0206 66.5255 222.8857 303.1715 218.6702 549.0453;
	26.3994 16.6083 13.6495 11.4464 7.7166 410.4698 51.3087 62.0506 183.6574 109.1831 108.4858 197.7312;
	23.3374 16.3017 11.9335 10.2721 6.4318 419.7692 52.4712 65.0432 165.3316 83.5236 56.6892 151.2618;
	17.4261 10.199 6.3368 3.6015 6.0861 406.6365 50.8296 65.1936 131.9016 85.4637 56.6901 154.7753;
	9.2612 6.3654 5.0693 1.7649 5.3529 252.2387 31.5298 46.0436 53.7159 70.7024 35.4211 128.0424;
	0.9366 0.6819 0.435 1.2762 2.5806 51.5715 6.4464 9.8946 22.3711 19.1711 17.9384 34.7189;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
