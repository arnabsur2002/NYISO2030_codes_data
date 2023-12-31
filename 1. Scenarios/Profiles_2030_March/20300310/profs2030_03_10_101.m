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
	0.0 0.0 0.0 0.557 4.1996 10.7875 1.3484 0.0 7.0559 15.7484 4.9795 28.5204;
	0.0 0.0 0.0 0.8421 3.6459 0.0 0.0 2.291 1.5111 119.9103 16.8627 217.1583;
	0.0 0.0 0.0 0.8985 3.3677 0.0 0.0 3.3446 2.4709 172.2057 37.0619 311.8655;
	0.0 0.0 0.0 1.3076 4.6319 0.0 0.0 2.5863 24.7988 127.5056 30.95 230.9135;
	1.0376 0.2464 0.3812 2.0219 6.1245 18.8399 2.355 3.4316 49.0081 90.3585 29.287 163.6398;
	1.9303 0.884 0.8834 2.6368 6.8222 31.7178 3.9647 5.064 60.617 74.8479 31.1503 135.5501;
	1.6395 1.0269 0.5187 3.4683 7.9232 0.0 0.0 13.0087 29.7933 133.2029 50.8798 241.2312;
	0.8569 0.5972 0.136 2.9374 7.1329 0.0 0.0 8.932 18.7084 120.3628 42.8683 217.9778;
	0.1575 0.1118 0.0 2.3976 7.3391 0.0 0.0 5.1065 17.6022 83.3388 24.0165 150.927;
	0.7746 0.4711 0.4798 2.5205 6.1907 0.0 0.0 1.9378 34.6848 33.1161 9.6854 59.9735;
	0.7007 0.4875 0.3671 1.0758 1.5431 40.6893 5.0862 7.7572 31.2604 15.9401 9.6388 28.8676;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
