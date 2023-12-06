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
	0.4103 0.36 0.5054 3.7869 4.1637 1.4956 0.187 3.0936 0.0 17.3912 6.2743 31.4956;
	0.038 0.0925 0.147 3.2342 4.8121 10.7841 1.348 2.6577 0.0 115.0506 12.7707 208.3573;
	0.125 0.0 0.0 3.3918 4.3016 15.6105 1.9513 2.5241 2.4117 152.1429 17.6477 275.5318;
	1.7547 0.2045 0.5042 4.1599 3.8263 15.8652 1.9831 3.8087 23.2503 151.2634 21.0701 273.9389;
	2.8419 0.9336 1.2525 3.6945 5.0466 28.0305 3.5038 5.8265 38.1906 132.9341 30.9859 240.7445;
	2.5882 0.8776 1.0664 2.8303 5.896 30.4174 3.8022 6.9932 48.8786 109.8395 40.0918 198.9201;
	0.1604 0.0 0.0 2.8529 3.9459 9.4685 1.1836 14.3412 56.6239 140.8756 53.5454 255.1266;
	0.0 0.0 0.0 2.4371 2.8492 0.0 0.0 10.4596 40.4442 120.6831 44.3916 218.5578;
	0.0 0.0 0.0 2.1674 1.9556 0.0 0.0 7.5264 25.0964 103.3531 26.9795 187.173;
	1.837 0.8086 1.1738 1.0466 0.8049 5.73 0.7163 3.1673 13.9841 58.6861 11.351 106.2809;
	0.451 0.3061 0.2074 0.4212 1.0769 35.4286 4.4286 6.5765 24.5774 21.1218 10.299 38.2518;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];