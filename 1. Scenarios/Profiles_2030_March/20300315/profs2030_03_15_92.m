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
	0.4174 0.3585 0.3203 0.0 0.0 0.1765 0.0221 0.1431 0.0956 0.0 0.0 0.0;
	4.1065 3.372 2.7172 0.7536 1.8694 43.133 5.3916 14.5958 18.846 62.1476 34.5042 112.5496;
	10.8066 7.7135 6.0833 5.7509 6.0942 146.9332 18.3666 12.5922 90.3205 147.2704 138.8736 266.7075;
	15.1484 11.5613 9.1895 9.7026 7.8292 191.8353 23.9794 9.3044 122.9532 216.5582 162.7597 392.1881;
	8.4341 7.5427 10.4267 11.8251 12.8136 147.4841 18.4355 6.4271 45.1422 231.7247 145.5331 419.6548;
	9.1941 7.732 10.5384 11.4243 12.0755 141.3029 17.6629 14.218 51.4941 184.8692 161.2252 334.7993;
	11.2688 7.8281 9.0422 11.4254 11.8377 138.278 17.2848 24.8536 70.7749 119.2549 165.2735 215.9713;
	6.2342 3.3174 3.697 11.6352 10.2319 167.5642 20.9455 24.255 157.2451 91.3911 131.6837 165.5099;
	3.938 2.9326 1.8669 11.5076 11.1914 145.8929 18.2366 15.5263 150.0515 107.4968 118.3144 194.6773;
	1.5433 2.016 1.6505 10.1636 11.0366 98.1878 12.2735 11.5756 100.6494 106.8733 93.5243 193.5482;
	0.4141 1.284 1.1883 4.4265 6.4944 83.5542 10.4443 11.9997 73.0949 19.5175 9.585 35.3464;
	0.432 0.625 0.4854 1.3533 2.0222 52.8921 6.6115 6.453 42.7849 6.0168 4.1732 10.8964;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];