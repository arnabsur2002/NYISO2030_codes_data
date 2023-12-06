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
	1532.6 941.1954 1638.3285 610.5331 876.9 1192.3163 845.5951 291.9 526.6079 4684.4612 1671.8448;
	1479.4404 936.1323 1599.7 605.1164 837.8 1145.1087 779.132 278.4195 501.5191 4521.1185 1583.7055;
	1509.3767 932.3 1596.0 604.2 833.3953 1141.5879 818.2724 263.9848 503.3712 4500.9947 1612.6998;
	1538.2999 966.873 1649.4093 609.0 866.0053 1170.4341 840.2621 285.6 507.8459 4576.1086 1701.7451;
	1575.3397 1006.8857 1726.5426 608.8899 939.6366 1220.0731 883.2 312.3 534.1607 4710.8768 1759.9454;
	1621.6265 1066.8341 1801.1 622.3 982.6849 1291.1554 919.1354 321.6234 570.8 4920.6 1857.1912;
	1641.9 1107.6706 1830.0 625.9075 1004.9795 1365.7616 975.7517 329.5 597.9 5098.4951 1961.825;
	1707.0922 1132.0484 1894.6182 629.5862 1058.4988 1347.1858 1021.0646 338.1 613.1588 5266.9533 1976.1482;
	1670.5501 1155.8015 1888.6522 609.4 1032.5842 1362.3913 1041.9162 334.7 651.2 5274.1511 1997.5294;
	1697.1 1188.3633 1923.8317 593.1903 1031.5754 1398.0605 1098.7877 353.5267 665.1689 5451.3411 2047.1105;
	1649.1924 1157.1478 1901.0732 581.3762 1008.5575 1399.3749 1082.9814 355.701 684.5049 5543.5307 2046.1474;
	1661.5141 1136.3157 1887.4388 567.3406 1021.0353 1402.3842 1100.8 376.2113 702.4611 5650.7411 2140.8432;
	1611.0713 1080.9041 1802.5629 565.1569 974.0436 1377.2 1049.9295 344.9357 666.9077 5450.5148 1993.426;
	1684.9981 1102.1415 1802.1209 572.0237 941.1 1377.8195 1076.9451 360.9711 660.9855 5428.9447 2002.0;
	1703.1953 1163.4 1850.9948 575.8 976.2945 1434.867 1125.4468 361.2197 664.2977 5517.7046 2077.549;
	1678.1179 1168.1726 1871.3302 591.9 954.3362 1409.6548 1123.8482 372.8841 657.3966 5490.488 2151.7053;
	1704.6501 1162.2 1889.6525 612.2003 939.1518 1430.2208 1159.3918 381.9276 656.6775 5517.3517 2173.428;
	1752.7066 1189.5865 1956.5088 638.6553 1018.0785 1511.2619 1230.032 405.7831 693.9915 5678.9628 2340.5085;
	1766.8138 1234.8507 1976.876 631.3 1011.1 1542.4072 1207.6225 406.3 670.561 5693.2523 2321.7326;
	1713.1571 1172.8796 1843.436 605.542 934.3368 1442.115 1132.6123 368.901 660.7216 5540.337 2212.8586;
	1638.9854 1082.5121 1748.8693 570.6174 861.3415 1340.7 1052.2328 340.0629 637.6694 5306.6269 2080.0;
	1585.5199 1024.6711 1637.1665 559.28 820.4114 1275.5958 972.0 308.4307 589.6645 5013.1575 1912.9335;
	1564.3 976.4903 1599.9977 551.0397 752.9485 1143.0077 863.361 260.6584 526.2516 4623.7134 1647.5013;
	1520.0215 937.2543 1611.693 557.4878 775.9879 1127.485 866.508 264.6 508.9486 4499.5398 1569.9475;
];
