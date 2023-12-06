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
	0.4174 0.3543 0.308 0.0 0.0 0.1765 0.0221 0.473 0.0956 0.0 0.0 0.0;
	1.7319 1.5303 1.5578 0.8313 1.0091 204.6384 25.5798 36.5548 180.4217 56.7388 31.2139 102.7544;
	4.1075 5.5109 4.6479 0.9657 3.1227 278.4078 34.801 48.9905 213.1875 102.4993 63.6261 185.6268;
	7.0234 7.8407 6.8065 2.0699 4.2115 252.8969 31.6121 43.7706 193.1486 100.3397 94.377 181.7158;
	9.0987 10.2147 11.1352 10.8127 12.3959 189.5228 23.6904 20.1923 145.8851 73.1605 82.3191 132.4941;
	12.9262 13.0209 12.653 11.3565 12.0362 227.0945 28.3868 31.3003 178.69 60.0121 83.4349 108.6822;
	16.2742 14.3112 13.0721 11.5558 12.0217 241.0891 30.1361 43.3895 189.444 70.0216 81.4725 126.8095;
	14.4575 12.3755 11.4813 11.7251 10.2628 257.1467 32.1433 42.7156 205.4411 125.1162 61.7132 226.5862;
	10.799 9.4457 9.3379 11.5429 10.2052 230.9794 28.8724 27.229 188.3032 133.4323 73.4056 241.6467;
	7.639 6.9266 6.1649 10.6626 9.7895 201.9543 25.2443 19.9789 166.1868 114.9012 56.4547 208.0867;
	2.0066 1.8663 1.8957 6.4454 6.5655 260.8928 32.6116 26.0253 170.08 18.1315 8.9456 32.8362;
	0.4488 0.5653 0.4531 1.4179 2.2489 75.2669 9.4084 9.9386 53.1973 4.0033 3.983 7.25;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];