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
	1432.0508 870.3788 1409.8294 589.2513 744.8391 1081.7982 769.7341 248.5237 461.521 4067.3124 1466.366;
	1438.747 872.7 1426.6124 582.5921 745.9806 1083.476 783.8835 252.6 459.3046 4014.3944 1435.7806;
	1454.4332 889.4305 1461.751 609.8554 754.284 1086.3333 798.0107 257.5 484.6602 4033.6475 1440.3911;
	1538.9688 986.8454 1605.9895 624.9758 813.6 1166.4528 859.1 275.3 534.4 4454.1962 1649.403;
	1675.4996 1106.6585 1786.5785 630.0 923.7361 1312.977 984.2861 318.5 613.0258 5062.0777 1891.1529;
	1780.5932 1177.7048 1914.2439 643.0852 980.4753 1381.0857 1036.2986 330.3608 681.8662 5620.06 2064.753;
	1832.9457 1180.7403 1948.0807 642.7535 992.1488 1418.6383 1078.3014 352.777 718.9881 6095.6061 2191.5767;
	1882.1904 1209.0162 1932.6666 631.3828 986.5252 1368.2146 1068.676 350.4515 716.7661 6263.5101 2164.6386;
	1922.1166 1226.4388 1975.2494 610.2741 974.2214 1377.986 1068.0693 345.2211 720.0815 6388.0986 2198.8734;
	1910.5 1199.9298 1941.5324 624.4416 950.5918 1335.9121 1020.9876 316.5482 698.3756 6376.4365 2136.5636;
	1906.6218 1195.8867 1948.8509 617.6098 929.2681 1282.8216 991.3708 335.1 679.5385 6322.5479 2123.1657;
	1903.9 1162.3575 1940.5 601.4 925.6679 1310.2198 1010.2361 324.7204 681.5765 6405.4884 2145.3561;
	1914.8 1146.4713 1922.4446 615.0944 917.8096 1301.5001 995.1134 332.2597 665.6 6282.6946 2139.17;
	1837.8898 1091.2951 1837.9 626.8018 921.4662 1359.2517 1006.3227 338.5999 674.1131 6352.932 2148.2;
	1851.1905 1138.2066 1829.6719 611.6508 972.8 1425.8854 1042.5 344.3 690.3067 6427.5254 2218.7103;
	1808.4246 1140.2953 1820.5088 629.5176 991.4597 1447.1 1053.6388 334.1526 683.7 6263.2926 2262.9765;
	1856.0 1205.0 1866.4348 631.9958 1002.5763 1426.5479 1061.0621 357.2 703.4 6090.297 2355.8;
	1926.137 1250.8031 1973.3919 629.2095 1039.9827 1511.3481 1126.9321 379.1826 730.0448 6104.3611 2443.7211;
	1884.1684 1248.1325 1903.9626 625.0 1042.3675 1484.5 1096.4348 363.6615 720.8961 5971.9921 2366.7552;
	1833.6038 1184.1994 1837.5271 589.5512 984.1905 1393.8465 1088.6577 381.3567 674.9 5825.5 2337.1;
	1734.1902 1109.1 1752.7742 574.003 911.8 1293.2881 1004.3606 349.6425 623.7382 5427.7232 2144.0215;
	1579.7954 1032.0 1629.2 568.9 856.9946 1217.5 950.0773 299.6506 574.9864 5068.0512 1916.5072;
	1578.8109 996.8735 1633.7998 590.9766 844.7 1174.7789 911.0 310.9321 561.1678 4975.8453 1847.4011;
	1544.7403 973.8468 1602.9441 577.9492 834.8636 1149.3999 886.6594 294.3379 557.2921 4681.2082 1780.4;
];
