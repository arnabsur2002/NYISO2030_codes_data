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
	2.0574 1.7904 0.9349 3.4918 5.4983 4.3615 0.5452 5.0945 23.9388 15.4893 6.4571 28.0512;
	6.6273 1.6524 1.4537 1.6658 7.9873 63.4243 7.928 10.5808 41.586 99.7173 16.5006 180.5887;
	4.6389 1.3268 1.423 1.8438 7.3359 121.353 15.1691 14.0629 60.6671 117.0046 26.4286 211.8961;
	3.0369 1.7012 2.1011 2.0339 3.2518 250.1962 31.2745 17.5884 157.9639 86.7841 30.2411 157.1666;
	3.4484 2.0915 2.2625 2.7468 3.0567 249.2933 31.1617 17.6996 206.6776 107.4999 39.8607 194.683;
	3.9331 2.2046 2.2627 3.3297 2.9238 216.1403 27.0175 18.3237 197.245 144.5632 57.8681 261.8049;
	4.825 1.6819 2.2488 3.8217 2.4269 154.9597 19.37 41.4437 105.7223 330.8727 222.3001 599.2125;
	2.9288 0.6871 1.1188 3.1059 1.905 111.2628 13.9079 30.6953 61.8322 287.8353 193.2343 521.2714;
	0.9281 0.0 0.3526 2.3832 1.4858 96.4215 12.0527 19.7133 29.9973 233.3412 116.2134 422.5822;
	0.0 0.0 0.0 1.8215 0.8916 78.0694 9.7587 4.0708 10.3866 49.3986 22.8688 89.4612;
	0.2415 0.2168 0.1471 0.7684 1.0316 35.1899 4.3987 6.6306 22.1103 21.8151 12.423 39.5074;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
