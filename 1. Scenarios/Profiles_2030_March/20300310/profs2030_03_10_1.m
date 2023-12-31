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
	0.0 0.245 0.1827 0.3949 3.5382 0.6565 0.0821 3.317 10.2515 27.8449 11.912 50.4272;
	0.0 0.044 0.0 1.1668 4.3258 0.0 0.0 2.3254 14.0747 189.1894 33.8708 342.6232;
	0.0 0.153 0.0131 2.038 3.642 0.0 0.0 2.8292 21.4473 182.215 28.3976 329.9925;
	1.0933 1.278 0.7802 2.4554 2.7293 33.3565 4.1696 8.2414 122.2391 63.094 15.8752 114.2635;
	1.358 1.9464 1.016 2.8442 4.5392 72.1008 9.0126 14.4291 174.9255 67.3685 16.2113 122.0048;
	1.297 1.934 1.1012 3.6295 5.6061 97.788 12.2235 18.3767 198.057 68.0346 16.2498 123.211;
	1.7596 1.6545 1.6091 4.5814 3.4428 173.9013 21.7377 38.513 224.3172 92.3901 27.0554 167.319;
	1.4457 1.1749 1.3994 3.5228 1.6464 124.8662 15.6083 28.5365 205.2234 79.7044 23.2128 144.3451;
	0.9807 0.8408 1.056 1.7653 0.612 97.8163 12.227 22.8388 208.3525 64.258 18.4652 116.3717;
	0.6459 0.6817 0.6903 0.0399 0.0 63.5953 7.9494 13.4121 136.9975 73.2358 16.7933 132.6304;
	0.2415 0.2235 0.1471 0.3793 0.5184 35.7207 4.4651 7.7514 35.6022 29.8638 10.3692 54.0835;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
