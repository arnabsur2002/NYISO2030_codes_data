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
	1.0288 0.0 0.8755 1.2742 4.3898 0.0 0.0 0.0 0.0 10.1932 0.8418 0.7151;
	7.8628 135.7382 99.4812 22.8914 28.2526 74.9518 30.3444 2.4771 3.4537 183.1308 6.4261 4.9031;
	16.0343 301.2017 149.0982 36.5693 45.3269 166.3173 78.6282 4.2698 5.5871 292.5544 12.8374 10.0795;
	21.3 432.4243 171.6425 43.0994 53.371 238.7757 113.9638 6.4209 6.6807 344.795 15.9147 13.1518;
	23.619 348.9239 158.9794 41.8461 54.7788 192.6685 114.7461 5.2881 5.8572 334.7691 15.6358 13.1389;
	24.0174 373.7552 166.3185 41.6876 55.0842 206.3799 124.6282 5.6954 6.3985 333.5006 15.7498 13.1232;
	24.0163 384.2572 167.1673 41.8069 55.1348 212.1789 130.3605 5.7271 6.4642 334.4554 15.756 13.1045;
	22.0152 296.6782 126.9263 37.6545 59.0387 163.8196 103.2325 4.8568 4.7292 301.2361 14.9908 12.6671;
	18.992 271.7435 111.8113 36.5642 59.1167 150.0511 88.091 3.9125 4.1295 292.5137 13.6874 11.9664;
	14.1005 209.8408 98.8833 34.0444 56.1104 115.8697 69.2079 3.2446 3.5667 272.355 10.9809 9.094;
	7.1611 104.0796 111.8864 25.2752 37.7334 57.4706 42.2152 3.1056 3.8299 202.2017 6.0231 4.7638;
	1.4226 43.1061 39.8752 9.3112 13.4019 23.8023 13.9284 1.0592 1.4144 74.4896 1.1881 0.9186;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
