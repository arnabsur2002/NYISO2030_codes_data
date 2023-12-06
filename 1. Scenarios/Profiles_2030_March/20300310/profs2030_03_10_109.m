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
	0.0 0.0 0.0 0.2473 0.0 30.2964 3.7871 1.0632 8.3587 9.1059 0.0 16.4909;
	0.0 0.0 0.0 0.9904 0.7795 41.3245 5.1656 1.424 22.0703 2.4448 0.0 4.4275;
	0.0 0.0 0.0 1.8931 2.8081 68.7515 8.5939 3.0252 67.686 15.5633 0.0 28.1852;
	0.9156 0.1339 0.3024 2.4725 4.011 183.4295 22.9287 16.6757 214.8747 47.6116 17.0159 86.2248;
	1.1076 0.3088 0.2733 2.5058 4.5958 212.2509 26.5314 22.8497 223.3609 84.2272 23.2366 152.536;
	1.56 0.7176 0.6447 2.5988 4.3561 174.3954 21.7994 27.6607 187.3033 121.2049 27.2489 219.5028;
	4.3661 3.1051 3.2035 3.535 1.6341 121.6757 15.2095 53.7567 107.6189 92.7679 45.0958 168.0033;
	5.4187 3.4504 4.755 2.9839 0.9709 62.7659 7.8457 46.2093 81.1027 57.2372 42.7978 103.6568;
	5.1274 3.0058 5.2498 2.1162 0.5858 37.9588 4.7449 35.331 62.1817 26.9468 31.5503 48.8007;
	3.1567 2.0415 3.8591 0.7445 0.2431 23.0901 2.8863 9.2638 23.1367 13.6899 16.544 24.7926;
	0.3518 0.4402 0.2099 0.4393 1.1396 28.9061 3.6133 6.4519 22.1728 20.5909 10.9107 37.2903;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
