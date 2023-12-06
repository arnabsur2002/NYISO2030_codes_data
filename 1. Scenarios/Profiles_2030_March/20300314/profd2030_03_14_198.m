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
	1534.1902 938.3 1614.963 530.7096 827.9 1072.0713 845.4607 245.2 517.6358 4584.2677 1689.0;
	1539.7502 942.4667 1619.3473 537.1001 840.5 1079.575 845.0959 248.6 511.9896 4578.3164 1688.7118;
	1542.2912 968.2327 1633.6523 555.2545 850.885 1117.5289 866.5 266.3 516.462 4578.7955 1722.71;
	1646.0529 1057.8642 1778.7628 561.4769 916.1324 1188.76 921.5 295.8645 573.9923 4893.7748 1892.4013;
	1808.0572 1179.8709 1997.8791 584.1739 1014.7691 1343.4302 1024.2109 331.4 643.6067 5322.6393 2082.9494;
	1871.2029 1256.3334 2043.5471 576.1994 1087.458 1385.2875 1096.4412 354.2987 737.1869 5913.1274 2243.9082;
	1835.0935 1252.1262 2011.6 560.3008 1073.9106 1314.619 1094.1608 362.2 737.7216 6208.7286 2260.9962;
	1878.7163 1281.9247 2004.4867 565.1956 1085.9222 1308.3883 1120.8 358.7 768.6715 6560.2961 2391.3801;
	1899.0273 1299.8684 1966.0 548.0183 1054.3515 1305.8872 1152.5733 347.8011 788.7104 6696.6698 2416.498;
	1904.3305 1286.8243 1973.4 555.7857 1053.1319 1332.768 1144.3093 353.83 769.6755 6778.4775 2468.8336;
	1868.1019 1300.7016 1922.9969 560.7925 1046.6886 1289.2684 1104.4 340.1 763.7404 6749.5842 2455.5899;
	1830.1662 1280.3349 1908.9136 556.1 1036.8929 1341.0053 1118.598 331.7065 758.6091 6649.0438 2341.4;
	1822.2201 1261.5212 1914.0708 542.3429 1006.2622 1279.1617 1086.4278 328.1 755.6914 6604.8359 2311.8998;
	1790.9785 1250.9453 1882.4804 557.8 979.4336 1339.6915 1147.3013 348.0783 797.6244 6734.8433 2379.7623;
	1750.779 1230.023 1880.5869 556.7458 991.5882 1345.2815 1143.9025 345.0 805.0613 6947.3291 2681.0983;
	1755.1479 1214.6226 1903.7243 561.1549 1055.8517 1387.4235 1164.7935 359.1965 813.9427 6919.6625 2583.117;
	1765.7076 1235.2672 1907.3714 545.3959 1052.8737 1415.5774 1201.0671 366.2 841.8848 6657.1071 2780.8885;
	1782.0961 1276.2 1972.5525 563.1538 1098.6225 1449.0256 1201.9844 385.5612 827.4795 6571.1496 2703.98;
	1824.7 1288.4499 1950.542 554.4 1062.918 1419.9246 1162.1038 383.4581 782.7501 6753.6816 2734.8209;
	1780.0161 1243.6911 1935.5299 563.7514 1031.1862 1374.9497 1165.7787 358.9444 750.6556 6480.5004 2667.2099;
	1707.9615 1147.9049 1816.2824 545.5545 949.1068 1286.7 1083.9514 335.4547 708.5957 6227.4947 2535.0694;
	1642.0417 1070.9701 1710.29 525.6289 890.7778 1219.4572 1061.6976 327.3478 647.6724 5847.5434 2313.8792;
	1639.781 1113.1635 1681.5519 497.3242 852.9005 1198.9811 943.1554 291.5 622.6406 5357.2453 2152.8666;
	1642.1535 1070.9778 1656.3897 493.1211 799.0751 1156.065 936.8673 268.898 577.1255 5074.8258 2004.3293;
];