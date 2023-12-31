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
	0.0 0.0 0.1556 1.4861 5.1919 0.0 0.0 19.0272 4.0799 12.9992 4.9804 23.5417;
	0.0 0.0 0.2061 7.1285 5.9424 15.6849 1.9606 10.9806 34.6371 47.6488 12.5533 86.2923;
	0.0842 0.0606 0.4199 8.7843 6.334 23.4614 2.9327 5.1715 60.6165 73.5779 21.2338 133.25;
	1.7538 0.9564 1.621 5.1171 6.1426 9.5719 1.1965 3.2489 91.9509 52.0773 26.1732 94.3123;
	1.5239 1.3366 1.713 4.4045 7.3353 2.9984 0.3748 3.9988 82.5145 42.938 25.4426 77.761;
	1.133 1.5243 1.4727 3.46 7.7553 5.1894 0.6487 4.956 76.7871 39.4049 29.7362 71.3625;
	1.6487 2.0202 1.9345 1.8892 6.4653 24.9897 3.1237 12.7161 82.4339 75.4147 67.3434 136.5764;
	1.962 1.8796 2.074 1.215 4.7129 18.2462 2.2808 8.9274 78.4184 71.6093 80.7371 129.6848;
	1.9537 1.5847 1.7849 0.9307 3.447 6.0399 0.755 5.4748 65.3713 49.2754 57.4951 89.2381;
	1.448 1.304 1.6413 0.8065 1.0736 0.0 0.0 1.7044 33.2109 17.3734 19.2754 31.4634;
	0.2415 0.2424 0.1513 0.7949 0.6267 28.8955 3.6119 6.3347 25.5993 17.6647 10.2723 31.9908;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
