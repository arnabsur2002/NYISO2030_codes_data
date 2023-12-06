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
	0.7742 0.3809 0.5935 2.0191 1.6554 4.0154 0.5019 15.0324 6.916 12.4079 5.3276 22.4708;
	0.6519 0.3494 0.5399 1.0345 0.869 11.3016 1.4127 7.8959 20.592 34.2497 10.7959 62.0265;
	0.9618 0.5338 0.8259 0.7033 0.7119 21.8854 2.7357 6.5045 28.8151 68.1934 16.6943 123.4987;
	3.5136 2.0963 5.2232 1.0811 1.5365 138.397 17.2996 21.1604 94.7915 133.6571 24.9865 242.0539;
	6.6034 2.9697 10.032 2.6483 3.4492 188.0656 23.5082 37.1177 122.2095 134.7316 24.7474 243.9997;
	4.9655 2.6956 7.1291 5.1891 5.1979 197.0899 24.6362 44.2486 146.9796 125.5197 19.3444 227.317;
	3.0319 1.4776 1.5103 7.0082 5.8215 220.2447 27.5306 55.1941 159.829 179.1695 21.9351 324.4771;
	1.7577 0.7566 0.7933 5.5571 4.8154 177.4197 22.1775 42.6197 122.3318 150.9171 22.2124 273.3119;
	1.3443 0.4466 0.6598 3.8355 3.76 156.5709 19.5714 28.89 71.4162 100.4628 20.7594 181.9388;
	1.4015 0.8565 1.4525 2.221 1.41 62.6751 7.8344 12.3868 11.8266 34.9798 17.0397 63.3485;
	0.2467 0.2272 0.1583 0.5481 0.8359 28.4907 3.5613 6.268 22.1207 17.7433 9.7494 32.1332;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];