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
	0.4174 0.3512 0.302 0.0 0.0 0.1765 0.0221 0.1431 0.0956 0.0 0.0 0.0;
	4.2928 3.1128 2.0731 1.5111 2.943 121.1098 15.1387 31.6077 56.1806 118.2041 28.0652 214.0683;
	8.9086 6.985 3.7613 1.8842 2.7373 67.0407 8.3801 30.3721 55.2603 315.0233 165.7384 570.5091;
	14.7125 12.3437 5.2112 2.5206 2.7471 40.9992 5.1249 23.2454 47.0446 340.6673 198.9532 616.9506;
	18.6157 15.8771 10.624 9.1175 11.2683 77.077 9.6346 7.9494 71.2139 277.1578 174.5327 501.9345;
	18.7782 14.8882 11.7508 10.3729 8.7529 186.4844 23.3106 18.4891 127.0217 256.2759 165.4299 464.1172;
	16.8469 12.687 11.3342 10.384 7.1625 225.461 28.1826 31.6898 149.0917 240.8505 169.2116 436.1817;
	7.4269 5.1484 6.7845 10.0822 5.5597 207.6493 25.9562 39.1964 205.946 213.7099 180.7817 387.0299;
	6.0359 5.8613 4.8495 8.7637 7.0825 143.0782 17.8848 24.8983 202.4357 191.0716 203.6058 346.0318;
	3.8882 4.036 3.4319 6.3397 7.0771 85.003 10.6254 14.9423 185.0008 143.2846 139.9735 259.4892;
	1.6438 1.3602 0.9025 1.8081 2.5919 59.9995 7.4999 5.586 124.971 16.9902 4.0683 30.7694;
	0.2649 0.1937 0.1841 1.0926 0.9917 50.6424 6.3303 3.7363 41.0202 5.9706 0.0 10.8128;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
