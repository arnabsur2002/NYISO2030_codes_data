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
	0.1787 0.1681 0.24 0.0 0.0 0.0 0.0 0.0 0.4473 0.0 0.0 0.0;
	5.3463 4.3221 3.1628 9.4151 1.2635 291.8393 36.4799 24.2845 229.5354 13.7095 22.9019 24.8281;
	9.2333 4.7409 2.6113 6.7187 1.3385 284.5884 35.5735 28.5734 239.6569 110.3736 102.0401 199.8873;
	17.3852 12.4722 9.5102 6.4237 1.605 277.5221 34.6903 30.707 221.9676 180.119 152.2808 326.1967;
	25.5913 16.474 13.7624 4.6416 3.1101 175.5737 21.9467 27.7474 163.5392 56.2248 157.5124 101.8234;
	25.925 16.5326 13.7859 6.1685 5.6114 255.5389 31.9424 44.7112 168.1073 63.8086 182.4993 115.5577;
	25.964 16.5331 13.7863 5.8707 7.0186 276.83 34.6037 49.4181 148.3865 80.2593 191.4871 145.35;
	26.1193 16.5546 13.7855 2.3116 10.2381 358.0462 44.7558 62.6221 96.9648 324.1683 234.9516 587.0707;
	23.861 16.3881 13.7008 1.0305 9.4006 333.6248 41.7031 60.4802 47.2375 333.151 191.7352 603.3385;
	19.4992 15.3879 12.036 1.0517 8.4547 288.8441 36.1055 53.1123 33.1905 246.8888 108.2697 447.117;
	8.2911 8.6165 6.4904 1.8058 11.8088 283.9478 35.4935 39.7372 74.188 117.4724 93.1697 212.7433;
	0.9382 0.8437 0.5752 1.5633 4.2153 69.5377 8.6922 11.9072 36.6118 65.97 39.9485 119.4721;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
