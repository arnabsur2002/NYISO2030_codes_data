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
	0.4095 0.3502 0.302 0.0 0.0 0.1765 0.0221 0.1431 0.0956 0.0 0.0 0.0;
	1.7778 3.0738 1.5008 4.0628 1.1948 27.4734 3.4342 5.8449 34.3279 15.7811 8.7918 28.5796;
	4.5839 6.5913 3.0645 4.785 4.1036 169.5511 21.1939 52.4194 69.893 43.8115 61.9396 79.343;
	8.0773 10.2657 4.0909 5.5894 5.8922 279.2832 34.9104 66.503 80.7935 132.5084 115.1609 239.9735;
	9.7726 11.6148 7.2734 10.9855 12.9953 253.9834 31.7479 53.6453 56.9991 249.0884 58.0524 451.1006;
	10.7125 13.505 8.9754 11.2368 13.4161 284.217 35.5271 44.5826 68.1342 274.1441 60.0201 496.4766;
	10.1954 12.8438 8.0499 11.2087 13.3843 321.8374 40.2297 38.9951 85.0098 269.9181 73.887 488.8233;
	4.6843 3.7207 2.3893 10.0985 9.2942 350.2853 43.7857 39.5488 182.8904 71.2229 64.0204 128.9852;
	3.7128 2.8094 1.4036 8.444 8.1369 294.7805 36.8476 35.1682 188.6914 47.0218 79.9883 85.1568;
	2.1621 2.2217 1.682 7.1474 6.4639 206.3143 25.7893 26.9308 183.1175 32.7131 43.9919 59.2436;
	0.9723 1.7106 1.4834 4.3238 2.9198 143.8968 17.9871 21.6764 177.7852 9.8225 4.6376 17.7886;
	0.2397 0.4569 0.2855 1.1398 1.4687 73.5342 9.1918 7.7307 53.5398 1.0878 3.4493 1.97;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
