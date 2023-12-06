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
	0.4731 0.408 0.4338 0.0 0.0 0.0 0.0 0.3395 0.0 0.0 0.0 0.0;
	7.4495 7.1915 5.8944 2.4298 2.6854 329.5484 41.1936 60.2794 157.6934 185.8313 66.3815 336.5417;
	14.2352 13.4298 9.732 6.6356 5.8652 436.8334 54.6042 72.8188 254.2771 123.5407 29.3827 223.7329;
	19.7078 16.6083 13.5265 8.8935 6.9936 444.9738 55.6217 75.0734 263.2756 77.9978 33.2158 141.2544;
	21.5221 16.1547 13.6408 4.812 1.98 305.5645 38.1956 64.1406 166.3685 91.3951 45.0717 165.5171;
	25.0562 16.371 13.7635 5.9227 2.2494 296.2868 37.0358 59.5287 141.926 174.4744 65.9906 315.9742;
	25.1865 16.4044 13.8325 6.3875 2.7802 280.4342 35.0543 54.9209 129.2401 225.7605 91.98 408.8536;
	12.0582 10.5614 9.5442 3.1869 4.0695 88.0013 11.0002 8.5226 80.531 138.4697 65.4609 250.7695;
	6.2178 6.4333 6.2547 1.6436 3.801 78.5172 9.8146 7.2173 94.9135 78.2206 43.3214 141.658;
	2.6034 3.2864 3.5299 0.8689 3.5005 82.4453 10.3057 7.9788 92.3762 54.376 27.7888 98.4752;
	0.9052 0.4371 1.2632 0.6214 0.9289 35.5337 4.4417 3.561 46.7723 15.8491 7.1074 28.7028;
	0.4505 0.3057 0.3704 0.608 0.9448 12.3838 1.548 1.1179 7.8511 7.8737 3.8575 14.2593;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];