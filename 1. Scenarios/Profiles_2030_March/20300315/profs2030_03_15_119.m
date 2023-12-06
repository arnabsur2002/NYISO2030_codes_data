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
	0.4331 0.3502 0.3103 0.0 0.0 0.2425 0.0303 0.1431 0.0956 0.0 0.0 0.0;
	14.553 13.4613 9.1324 2.3496 4.6427 150.6025 18.8253 20.2308 70.6651 50.9472 34.7829 92.2656;
	12.786 11.3584 12.0402 2.8401 5.844 166.8688 20.8586 26.1299 175.4769 178.658 109.7064 323.5508;
	14.7666 12.3775 12.6309 3.784 6.2054 189.7299 23.7162 28.2999 208.1073 284.2839 141.9925 514.8399;
	15.1568 11.3019 12.0297 9.9535 12.6554 213.9348 26.7419 20.5689 194.4407 326.0322 130.4878 590.4463;
	16.3015 10.3878 11.3967 9.9446 11.7941 217.0457 27.1307 24.4449 200.9831 290.9079 113.3037 526.8359;
	16.3996 9.6006 11.3182 7.1882 9.9352 202.1666 25.2708 25.8573 201.59 274.3548 92.3052 496.8583;
	16.6793 8.7567 11.979 5.6349 5.1434 232.0445 29.0056 26.3435 231.0115 209.3116 105.1998 379.0645;
	14.1738 7.7923 12.722 5.7674 6.5146 190.43 23.8038 18.5611 217.4122 191.0099 113.6741 345.9201;
	9.8671 6.82 8.9091 5.101 7.4332 134.9627 16.8703 11.5516 187.3678 176.8953 97.235 320.3584;
	1.7336 1.7069 1.6728 3.4718 4.8423 71.7039 8.963 5.0865 111.2891 38.5075 11.1434 69.7373;
	0.2069 0.1937 0.2026 1.0929 1.3673 50.645 6.3306 3.6712 41.6143 21.3882 6.4551 38.7341;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
