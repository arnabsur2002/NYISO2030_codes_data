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
	1497.1033 949.8 1595.7657 546.2781 765.0448 1163.6 839.9107 278.4446 504.9622 4583.5735 1731.7818;
	1496.1172 949.808 1591.7442 540.094 777.0 1160.2289 828.6 299.4643 499.6 4526.3113 1733.9184;
	1516.3607 971.2903 1635.5378 553.2974 783.7545 1181.5108 855.6615 302.7169 515.9713 4589.2604 1782.5717;
	1585.4557 1043.87 1732.0 552.7 852.0362 1247.2886 906.5531 324.4691 548.3947 4799.7187 1861.0396;
	1717.1287 1177.9 1977.5602 561.5837 973.3504 1419.0075 1001.5 355.4462 638.8224 5278.6132 2089.1;
	1829.3523 1278.2482 2053.7743 585.4884 1028.5277 1477.783 1041.8269 376.4298 689.1 5864.8843 2275.682;
	1862.6849 1274.0481 2047.6819 567.3 1040.4098 1444.4814 1076.3834 400.6443 726.5623 6273.3317 2334.6344;
	1874.3764 1256.3 2020.3602 568.552 1017.8081 1442.3738 1096.2564 375.2138 736.8588 6356.1056 2369.547;
	1896.0996 1300.5682 2043.8624 561.5896 1037.267 1433.525 1080.3383 363.7552 717.7355 6383.0844 2334.0008;
	1911.0917 1322.0389 2070.8643 554.4 1046.3793 1417.6763 1120.7 350.2821 730.8 6430.8288 2328.9914;
	1857.4952 1279.4342 2054.5706 546.6119 1009.8 1368.6314 1071.0 357.6242 709.2055 6386.2416 2255.2645;
	1873.0822 1307.8937 2060.9542 556.7 986.5 1343.7 1064.1776 362.7509 711.4508 6451.8676 2199.2856;
	1787.8016 1248.7756 2023.0689 543.0592 961.8824 1364.859 1060.9571 344.2134 694.7759 6287.8855 2115.7738;
	1754.8548 1217.313 1951.7295 539.3072 933.5631 1303.6753 1026.5714 337.535 672.0811 6277.9288 2106.2788;
	1724.811 1207.2994 1915.6942 545.4 917.7 1307.2052 1019.8524 323.0993 693.8584 6289.5074 2176.9205;
	1724.766 1237.6592 1970.002 561.6796 954.3856 1344.0 1069.4 338.8328 706.436 6434.4275 2356.0706;
	1706.7601 1240.9665 1999.232 559.9791 944.4427 1360.1806 1079.1405 347.1131 719.0355 6234.2528 2361.5997;
	1713.6047 1264.3797 1954.4 574.556 979.5529 1432.8992 1145.6065 353.0207 773.3157 6141.0679 2484.5025;
	1745.6982 1239.98 1913.0879 561.3996 996.6002 1400.1 1105.8554 352.8563 724.2995 5911.6968 2377.1094;
	1691.7055 1161.7903 1801.446 547.1379 907.2136 1306.7754 1040.0609 324.6159 689.8 5613.3181 2235.9938;
	1617.3 1086.8747 1699.8 537.5 850.639 1223.761 944.7063 297.2839 620.0903 5354.5524 2040.1712;
	1520.0387 996.7 1573.1 532.7447 812.5259 1167.1811 900.477 280.7914 588.3173 5024.2123 1903.3091;
	1467.3504 957.0306 1599.5341 504.1384 815.1047 1162.9342 865.3 284.393 533.4 4648.1405 1803.9401;
	1463.9 988.24 1626.4243 481.4098 803.21 1198.2 852.8043 286.5373 520.84 4484.6523 1756.5232;
];
