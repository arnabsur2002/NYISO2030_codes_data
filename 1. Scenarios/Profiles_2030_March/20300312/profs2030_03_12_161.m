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
	0.2721 0.25 0.2808 0.0 0.0 0.0 0.0 0.0 0.0448 0.0 0.0 0.0;
	12.8288 8.6458 8.3864 4.8224 4.7076 328.7288 41.0911 25.4855 187.2279 0.4444 21.6227 0.8049;
	20.1545 15.9692 13.6567 3.011 5.2936 325.812 40.7265 39.8724 191.4071 28.1864 3.8359 51.0457;
	23.7521 16.8556 14.1074 3.4053 6.092 321.2635 40.1579 45.8759 180.5259 133.2384 14.3018 241.2955;
	25.6923 16.6354 13.7788 5.4328 7.4444 237.9559 29.7445 41.3432 143.287 241.8381 110.0452 437.9703;
	25.6816 16.5326 13.7859 6.8094 8.1644 199.6718 24.959 33.5464 144.8293 249.8469 184.1099 452.4742;
	22.7589 16.3538 13.7863 6.7081 7.2228 108.9028 13.6129 24.4799 111.8137 230.4767 195.2842 417.3946;
	21.3524 13.0595 13.2642 8.355 9.8329 186.0703 23.2588 43.898 65.5107 335.9214 231.8615 608.3557;
	15.9833 11.1263 12.4734 7.8586 9.8052 255.2139 31.9017 48.609 50.7232 335.7207 179.7639 607.9923;
	10.0904 4.8772 6.3745 6.7144 10.8858 305.4182 38.1773 50.6935 76.7016 278.6316 88.6741 504.6035;
	4.2909 1.1836 2.6789 10.5873 13.9973 332.4826 41.5603 45.4077 184.6417 160.4066 97.2018 290.4973;
	0.9325 0.7333 0.578 2.3762 4.4493 63.6954 7.9619 10.7593 45.0608 62.7657 39.4326 113.669;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
