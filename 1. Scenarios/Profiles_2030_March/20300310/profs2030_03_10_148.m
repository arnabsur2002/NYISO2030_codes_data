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
	0.3787 0.0 0.2668 0.3831 0.0 6.743 0.8429 9.1934 0.0 9.1777 3.5568 16.6208;
	0.1973 0.0 0.4068 0.7761 0.0457 7.4524 0.9315 0.8059 0.0 32.2593 11.8497 58.4218;
	0.0988 0.1003 0.5938 0.8644 0.7361 19.0591 2.3824 0.5671 2.4867 82.5965 27.5736 149.5828;
	1.1072 1.1411 1.6566 0.2639 1.9666 80.5527 10.0691 11.0481 28.6154 74.8972 52.8306 135.6392;
	1.835 1.3052 2.0411 0.324 3.9017 97.5908 12.1989 25.1058 48.7079 66.1473 43.113 119.7932;
	2.114 1.1605 1.9963 0.4048 4.4924 74.9757 9.372 34.8663 65.3966 54.808 41.5838 99.2575;
	2.7009 1.211 1.5638 0.2728 1.4629 36.7434 4.5929 39.9714 61.4574 58.697 52.1559 106.3006;
	2.3514 1.2853 1.4709 0.1933 0.7659 20.1122 2.514 23.1326 42.0098 59.1979 52.4625 107.2078;
	2.0965 1.2773 1.4624 0.3278 0.5822 21.9129 2.7391 17.0108 30.1209 51.3173 57.9207 92.9359;
	2.2955 1.3559 1.7859 0.3554 0.8567 30.6852 3.8357 7.5467 24.0466 34.1147 47.7484 61.782;
	0.4214 0.2562 0.2175 0.446 1.3099 31.8572 3.9822 7.0318 29.8152 21.3041 20.9399 38.5819;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
