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
	0.4277 0.3585 0.3101 0.0 0.0 0.1765 0.0221 0.1431 0.0956 0.0 0.0 0.0;
	0.8903 1.1387 0.5239 4.7621 3.83 65.4246 8.1781 9.7579 114.1985 69.9544 21.6693 126.6878;
	4.762 6.1598 3.8267 7.844 6.7308 79.7864 9.9733 11.95 184.29 143.0609 75.4969 259.0842;
	9.8079 9.3274 6.3116 8.4507 8.4986 100.3969 12.5496 16.3797 208.5665 215.9535 118.829 391.0931;
	8.5027 3.7441 6.0292 10.8415 13.8869 178.0924 22.2615 31.2619 258.3669 304.9093 120.0593 552.1927;
	10.9901 6.4111 8.8406 11.1451 13.4571 208.9214 26.1152 49.9456 266.1264 318.0357 129.3775 575.9646;
	14.8008 9.2802 11.2126 11.241 13.0141 234.6044 29.3256 55.6016 262.3026 306.5925 103.2317 555.2408;
	8.5167 4.8056 8.0291 11.1468 10.1864 325.8614 40.7327 56.3395 270.2509 220.9786 60.8431 400.1936;
	4.9477 2.2613 3.986 10.656 10.0064 306.4444 38.3056 46.8046 269.805 200.3484 90.1263 362.8321;
	0.9227 0.5203 1.1912 8.8069 9.791 232.4939 29.0617 33.1086 263.8525 198.4985 75.928 359.4819;
	0.0 0.0 0.0 4.8333 6.8303 78.4077 9.801 13.0641 219.5336 55.0255 8.9521 99.6514;
	0.2351 0.2679 0.2449 1.6514 1.9019 50.6424 6.3303 3.7936 42.876 8.3185 2.2072 15.0648;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
