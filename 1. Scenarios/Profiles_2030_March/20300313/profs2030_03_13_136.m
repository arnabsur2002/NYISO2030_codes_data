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
	0.4917 0.4101 0.4307 0.0 0.0 0.0 0.0 0.2 1.353 0.0 0.0 0.0;
	6.1069 6.9122 3.5966 0.0 0.5966 338.8401 42.355 21.9611 238.9703 0.5047 8.3346 0.9141;
	17.7327 14.4155 10.7889 0.4898 3.4303 433.1399 54.1425 58.6271 255.8278 15.4152 17.9092 27.917;
	22.9727 16.6083 13.8 4.2243 7.4267 438.5655 54.8207 65.0253 263.2374 43.2832 21.6522 78.3861;
	23.9018 15.3051 12.272 5.6678 7.6665 283.5453 35.4432 52.6192 222.0036 86.3504 13.9269 156.3812;
	24.5581 15.8899 12.3265 6.9924 8.1501 320.9052 40.1131 55.3658 233.6664 101.0287 13.0639 182.9636;
	24.9177 16.3954 13.4975 6.8474 7.5158 343.0598 42.8825 57.2636 209.9671 94.4115 15.2976 170.9799;
	14.1042 13.039 9.6052 1.9149 6.0705 239.8543 29.9818 45.0042 117.2665 39.7104 26.6423 71.9158;
	12.163 11.1329 8.2066 0.8266 5.9133 185.1622 23.1453 45.4916 104.2224 26.8665 23.0589 48.6554;
	7.5139 6.6716 4.4793 0.6301 6.329 137.1312 17.1414 40.7202 98.0614 15.9746 14.1732 28.9301;
	1.5255 1.4499 0.5669 0.6795 3.6608 39.8479 4.981 10.6985 48.5618 0.0 0.0 0.0;
	0.4491 0.4189 0.3305 0.6075 1.3022 11.7956 1.4744 1.5557 2.763 0.202 0.0 0.3658;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];