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
	1.0111 0.8228 0.6969 0.0 0.0 9.4835 1.1854 4.1882 0.4191 0.0 0.0 0.0;
	7.5254 3.8644 1.6572 1.1461 3.1484 177.7175 22.2147 12.6894 35.668 123.0579 34.7044 222.8586;
	17.9024 13.9724 8.1513 1.5351 3.8337 344.1874 43.0234 46.2815 154.8286 247.8332 76.9903 448.8275;
	23.773 16.6985 13.8 3.5343 5.6009 397.191 49.6489 57.5321 204.9892 306.2064 96.3131 554.5416;
	25.7414 17.1743 13.8907 4.4852 6.8094 419.7128 52.4641 62.3047 186.2272 229.9458 42.5964 416.4333;
	26.1457 17.0369 13.9138 4.6166 6.5016 438.6959 54.837 61.1339 184.8427 274.8941 125.7458 497.8349;
	25.9902 16.6125 13.8171 3.8976 5.0799 446.5374 55.8172 61.21 186.4333 272.6296 152.6736 493.7338;
	23.5221 15.9262 13.4305 2.9459 2.0104 391.105 48.8881 67.8544 133.9852 97.1825 30.3727 175.9981;
	19.52 15.3548 12.5731 2.8903 1.7632 358.1081 44.7635 69.8098 105.1252 47.1816 13.1798 85.4461;
	14.8961 13.116 9.521 2.4116 1.4803 327.4443 40.9305 69.6189 78.4356 43.0266 5.0078 77.9213;
	8.5259 8.3231 5.3321 2.408 1.8407 279.39 34.9238 60.5184 76.0643 42.3438 14.7101 76.6849;
	1.6198 1.3352 0.9639 0.8088 0.9975 90.3439 11.293 16.4124 38.8361 14.9768 12.2966 27.123;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
