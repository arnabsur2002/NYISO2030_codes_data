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
	0.2034 0.2435 0.2253 0.3414 1.8123 64.3841 8.048 11.0947 88.3365 4.4238 4.2475 8.0116;
	1.1781 0.8997 1.2484 0.1204 1.7943 36.9676 4.6209 24.2678 60.1841 17.5455 11.7749 31.775;
	2.0366 1.2577 2.643 0.2118 1.7804 35.5808 4.4476 25.2867 57.5734 34.7542 19.165 62.9402;
	5.1434 2.1366 4.2549 0.0 1.7972 115.7768 14.4721 22.5242 146.382 28.4268 22.7865 51.4811;
	3.6964 2.1093 2.6404 0.2558 2.2959 92.1035 11.5129 19.0287 134.2291 29.4211 19.2367 53.2817;
	2.8997 1.949 2.1562 0.5596 2.6282 70.1845 8.7731 17.365 110.8176 42.3334 20.0123 76.666;
	2.9475 1.8422 1.9394 1.9155 3.2453 167.0426 20.8803 39.5016 101.7185 116.0461 47.4284 210.1602;
	2.8168 1.6549 2.0654 1.8235 2.8523 200.4427 25.0553 40.6566 98.7033 122.192 45.8013 221.2905;
	2.4483 1.439 1.8231 1.5972 2.3228 293.9772 36.7471 39.0166 123.0645 71.3698 35.0337 129.2512;
	2.6299 1.5751 2.3492 0.7691 0.7765 228.6429 28.5804 25.1298 98.4994 19.741 12.452 35.7512;
	0.4448 0.4878 0.3671 0.438 0.5544 32.3548 4.0443 7.3992 23.954 17.2421 7.5824 31.2255;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];