function loadprofile = ex_load_profilesh1
%EX_LOAD_PROFILE  Example load profile data file for stochastic unit commitment.
% 2022.03.12
% Andres F. Ramirez

%% define constants
[CT_LABEL, CT_PROB, CT_TABLE, CT_TBUS, CT_TGEN, CT_TBRCH, CT_TAREABUS, ...
    CT_TAREAGEN, CT_TAREABRCH, CT_ROW, CT_COL, CT_CHGTYPE, CT_REP, ...
    CT_REL, CT_ADD, CT_NEWVAL, CT_TLOAD, CT_TAREALOAD, CT_LOAD_ALL_PQ, ...
    CT_LOAD_FIX_PQ, CT_LOAD_DIS_PQ, CT_LOAD_ALL_P, CT_LOAD_FIX_P, ...
    CT_LOAD_DIS_P, CT_TGENCOST, CT_TAREAGENCOST, CT_MODCOST_F, ...
    CT_MODCOST_X] = idx_ct;

loadprofile = struct( ...
    'type', 'mpcData', ...
    'table', CT_TAREALOAD, ...
    'rows', [1:11], ...
    'col', CT_LOAD_ALL_P, ...
    'chgtype', 1, ...
    'values', [] );
loadprofile.values(:,1,:) = [
	1522.5428 912.2549 1587.7 507.4547 794.9175 1144.1447 891.7593 259.5381 520.0 4490.7858 1705.571;
	1515.5678 916.4661 1592.2803 477.3295 805.0469 1165.7847 903.3538 267.1211 531.2908 4445.7 1720.5568;
	1503.0781 933.7442 1611.0106 487.7701 796.8961 1152.1625 898.1 267.5 528.8554 4418.8745 1723.4337;
	1569.4055 1002.5433 1730.6503 506.1635 865.0934 1250.0413 959.1 289.5216 561.8 4708.3543 1865.1682;
	1728.2263 1143.0016 1910.8956 566.6441 929.4126 1422.5 1056.7681 324.8152 625.2541 5277.0454 2112.8307;
	1859.8615 1221.7233 2033.0627 560.3674 990.0436 1509.6177 1090.4141 337.0267 674.8764 5830.5996 2225.8286;
	1844.6 1222.4955 2013.8387 536.6846 994.2453 1503.7783 1064.8912 310.802 668.903 6019.3482 2210.8685;
	1882.9 1203.5079 1961.3238 545.9813 1004.8973 1530.627 1113.3736 331.2 693.7 6076.2109 2127.8681;
	1888.2629 1193.2379 1991.4453 572.8617 1018.5313 1533.4363 1103.5484 358.7 695.2 6325.8951 2050.4345;
	1890.7633 1186.2183 1985.3007 562.4053 1009.389 1494.9366 1043.8228 357.1 669.1474 6268.1553 2004.3768;
	1881.5216 1178.8214 1953.3719 554.132 961.3907 1468.1501 1018.4927 358.8625 662.1504 6397.8805 1968.7901;
	1872.0495 1129.3196 1947.8243 562.4815 947.8484 1452.2577 1005.1771 362.2 652.2601 6381.9489 1823.9043;
	1863.1217 1131.1231 1906.0407 555.203 934.6339 1441.3839 1042.09 353.6862 653.1266 6306.5102 1857.2068;
	1848.5007 1134.0 1924.4262 556.3913 932.7 1437.3189 1055.6198 344.3 658.7574 6180.7952 1866.1568;
	1819.5626 1075.3392 1872.3 525.2785 935.165 1456.7738 1066.7307 332.4858 664.8429 5956.3154 1964.9531;
	1852.2 1149.151 1879.0816 568.6212 978.2335 1505.0 1100.5103 357.5181 682.1661 6343.7253 2126.024;
	1824.4204 1109.0205 1854.3261 594.1 963.3441 1535.5234 1115.7175 363.6994 671.9258 6191.9519 2035.8554;
	1891.0715 1203.2409 1999.8727 615.631 1032.6 1600.1081 1151.3147 380.6574 703.1347 6225.2688 2390.1682;
	1909.6 1205.7607 1996.9989 609.1669 1010.192 1560.0148 1154.2593 378.4295 698.1018 6129.5801 2392.2153;
	1851.7 1135.1313 1870.5409 600.0 948.4089 1446.9381 1045.9181 359.3807 657.4525 5747.0642 2137.5292;
	1740.1715 1011.0453 1767.2269 566.6964 869.9523 1343.6079 985.374 331.5189 595.2927 5237.4763 1915.353;
	1670.283 1002.0383 1662.2064 547.6955 808.096 1263.5939 946.8355 298.4 565.5 4986.0983 1784.1215;
	1619.347 959.536 1637.4303 553.1218 798.4388 1232.8261 928.5839 293.2 512.3597 4839.3604 1785.6781;
	1585.5166 948.4483 1601.0543 546.0693 803.5817 1228.3835 922.1254 289.5329 528.754 4768.6018 1758.8727;
];
