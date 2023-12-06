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
	1526.2119 982.2 1796.3608 580.9 900.8489 1231.9446 905.0093 279.1106 530.2 4600.0362 1751.6319;
	1511.1533 972.6 1780.5745 563.6819 883.2787 1224.6053 903.3814 273.8 528.3439 4529.0537 1733.3288;
	1552.6911 994.9745 1818.7335 569.1069 879.8636 1238.3 907.4509 282.1 536.9 4565.1388 1752.7512;
	1649.9061 1049.565 1908.9938 586.3089 946.8 1334.0861 975.9793 296.9 569.7 4761.063 1863.3853;
	1743.8193 1186.9414 2092.363 628.4 1047.1264 1516.0274 1086.5 336.2072 647.1 5261.5011 2099.1425;
	1918.5888 1273.0834 2198.0 654.1497 1075.1257 1584.9179 1150.1 365.0842 716.4075 5779.4462 2272.6241;
	1931.5561 1287.5786 2227.0242 651.4 1096.2275 1620.5739 1194.2618 375.3832 770.8709 6220.6142 2344.3025;
	1915.3427 1272.2651 2196.3232 649.4677 1038.6761 1579.6463 1178.8986 369.5 771.6 6423.4406 2303.0261;
	1910.9099 1257.7397 2163.0834 649.8126 1064.9877 1560.6282 1166.6239 379.8159 772.5741 6484.156 2362.4418;
	1906.5213 1258.0497 2182.4208 639.218 1019.0066 1555.3538 1134.2874 361.2573 730.5 6401.9022 2222.3033;
	1849.4637 1254.0 2168.5886 629.8243 1045.6358 1570.4072 1140.591 362.1 739.2747 6437.548 2226.2872;
	1842.6871 1260.8823 2088.9786 632.8289 1005.7 1506.8958 1111.2 355.8 689.8523 6389.8757 2151.2765;
	1795.9984 1214.6971 2045.1849 628.0892 992.8896 1504.7597 1114.1715 329.9946 678.5579 6290.4471 2041.3614;
	1757.9526 1183.2554 2016.4161 621.7968 969.0 1434.7261 1074.7694 350.5225 672.5 6279.9079 2014.4067;
	1782.2265 1204.8 2069.4273 618.188 1005.0247 1484.8564 1112.0412 358.908 700.4132 6362.9866 2113.8883;
	1763.1411 1196.9792 2067.2436 633.3115 987.143 1481.1 1111.1908 377.1608 705.3603 6315.5488 2210.7806;
	1755.3068 1210.3462 2104.8162 639.419 1036.7532 1545.4 1170.6845 431.417 721.3018 6289.942 2323.7103;
	1825.5051 1298.2296 2187.9775 648.8583 1077.6168 1629.7889 1249.7122 429.3755 768.4931 6330.2429 2468.3189;
	1830.4935 1302.9307 2154.0691 646.6788 1050.6205 1639.7876 1262.2669 427.1521 756.1173 6277.8318 2476.2462;
	1802.2005 1201.7 2071.403 621.1281 983.4063 1541.1341 1155.1086 382.1 704.4697 5980.6293 2309.1;
	1658.8194 1104.8399 1905.7611 612.1662 936.8109 1436.8556 1075.906 353.746 642.3267 5604.775 2169.2373;
	1597.1 1012.1358 1803.6518 594.1367 887.2979 1350.0134 983.4 323.2317 587.8383 5214.6415 1984.0438;
	1587.5026 948.1 1722.7808 546.1607 849.9624 1259.8 900.9498 282.7922 496.8841 4785.054 1745.22;
	1591.5276 953.9185 1722.3458 568.7557 838.2 1242.7148 911.8695 280.0594 529.1 4776.3701 1785.9364;
];