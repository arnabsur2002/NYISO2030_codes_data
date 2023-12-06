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
	0.0 0.2626 0.3223 0.0638 1.9341 12.0573 1.5072 5.7954 34.0438 13.174 5.1098 23.8582;
	0.0489 0.6658 0.6457 0.2282 2.3394 15.7344 1.9668 3.8246 27.212 31.8924 10.2854 57.7573;
	0.4164 0.8862 0.8072 0.8128 3.2463 19.366 2.4207 3.8508 34.2947 46.7588 16.098 84.6804;
	0.5578 1.7339 0.9101 2.4501 5.7794 43.6432 5.4554 5.443 104.8486 38.1626 35.2062 69.1128;
	0.3973 1.7571 0.6673 3.3119 7.0024 39.5573 4.9447 4.1806 94.3146 67.4667 45.1178 122.1826;
	0.6989 1.9363 0.6348 2.831 6.29 24.4485 3.0561 2.6115 51.1628 120.0039 47.9905 217.3278;
	3.2316 3.4365 1.326 1.9598 2.149 40.9916 5.1239 16.0308 34.9904 202.1399 52.1235 366.0766;
	3.2955 3.0819 1.9973 1.3353 1.3706 48.8104 6.1013 21.8117 49.0516 117.5759 44.4864 212.9306;
	2.645 2.6533 1.8636 1.0985 1.9697 69.2556 8.6569 26.6346 86.579 61.5203 34.5125 111.4137;
	1.984 2.4515 2.5432 0.6543 3.9599 100.9123 12.614 28.757 138.2351 27.8261 20.4371 50.3932;
	0.4446 0.525 0.2635 0.4086 1.3389 28.5281 3.566 7.2073 26.7356 28.9962 10.766 52.5124;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];