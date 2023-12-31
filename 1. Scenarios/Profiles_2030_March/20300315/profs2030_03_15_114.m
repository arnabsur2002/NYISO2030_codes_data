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
	0.4252 0.371 0.3203 0.0 0.0 0.1765 0.0221 0.1431 0.0956 0.0 0.0 0.0;
	2.7567 2.193 2.1023 2.8484 3.7945 41.0948 5.1368 11.9296 32.5614 75.5399 83.1535 136.8031;
	6.978 6.3212 5.0014 4.8052 4.1307 158.261 19.7826 40.5726 163.7489 131.6934 101.4876 238.4976;
	11.9354 10.2764 7.0959 6.5107 4.1846 238.9748 29.8718 50.058 211.3393 201.1578 132.4511 364.2979;
	15.9839 12.0396 10.5901 10.4158 12.2242 228.7925 28.5991 25.7799 160.1486 290.4349 151.695 525.9794;
	15.8742 10.9244 9.0083 7.0413 10.1747 195.1136 24.3892 24.3809 131.5761 282.5059 183.5722 511.6198;
	11.7662 8.0074 6.6243 2.5248 8.5338 170.6804 21.3351 24.1368 124.4138 273.002 182.2969 494.4083;
	8.4017 7.8544 5.9568 4.8636 3.1681 253.8331 31.7291 28.5 202.8271 227.967 127.6378 412.8496;
	8.7117 7.43 6.2037 5.8647 5.5335 255.623 31.9529 24.3387 201.9974 232.3007 108.6704 420.6979;
	6.9922 6.8724 5.1872 5.0844 6.5956 213.8475 26.7309 19.1124 167.8592 223.5015 81.5368 404.7625;
	2.0406 1.765 1.8327 2.1769 4.1139 134.7385 16.8423 11.152 89.5024 27.4236 9.3876 49.6643;
	0.2871 0.2614 0.2722 1.0444 1.1733 53.0998 6.6375 4.1326 45.5349 0.0 2.6085 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
