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
	1.019 0.829 0.7066 0.0 0.0 9.4835 1.1854 4.2659 0.4191 0.0 0.0 0.0;
	23.1243 16.9667 9.8207 4.7513 0.7344 168.799 21.0999 29.768 89.5086 79.3181 28.1231 143.6455;
	23.1094 17.3682 13.7056 11.1423 3.8349 325.0839 40.6355 50.6712 220.2086 215.7871 155.2014 390.7918;
	23.569 16.9091 13.8729 11.2819 5.8583 364.8214 45.6027 58.0002 256.4047 316.5374 208.1088 573.2512;
	24.993 16.3661 13.8 3.2118 2.7066 351.1031 43.8879 58.8133 247.946 328.6095 182.122 595.1138;
	25.6144 16.5136 13.8 1.2595 2.5691 372.8434 46.6054 58.1666 246.9159 345.9028 175.5407 626.4321;
	25.6262 16.5214 13.8 1.2029 2.9211 404.5831 50.5729 61.921 250.9111 338.7406 161.7133 613.4613;
	23.2354 15.9262 13.1876 2.8592 3.2393 422.6568 52.8321 76.7298 250.9886 179.497 85.9033 325.0702;
	17.7322 14.0785 11.3535 3.5593 3.7358 420.5862 52.5733 77.6414 266.0386 146.7998 67.0075 265.8553;
	13.5471 10.0019 7.0777 2.8689 3.4918 401.9431 50.2429 77.7467 264.7138 111.431 59.733 201.8021;
	8.3024 6.2712 4.7524 2.9632 4.5964 317.2309 39.6539 68.292 289.1914 55.9131 45.1114 101.259;
	1.2417 1.003 0.8161 1.0662 2.1513 87.6566 10.9571 16.426 53.2323 13.5126 14.6794 24.4713;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
