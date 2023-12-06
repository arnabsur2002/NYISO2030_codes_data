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
	1459.2836 943.1124 1591.575 538.955 753.3 1046.1162 798.7533 256.7 483.0435 4303.8103 1448.1966;
	1462.4474 940.8785 1581.0554 530.471 764.2412 1049.9947 789.6535 243.8756 481.1 4204.5261 1434.7491;
	1460.9 957.44 1614.7316 543.6716 788.7463 1056.9 814.2303 247.9049 491.7171 4302.5789 1507.5732;
	1541.3487 1039.9 1731.7514 550.7668 843.5673 1125.3468 863.3 274.3 535.7799 4517.618 1634.8588;
	1677.8917 1161.8615 1989.6408 585.0289 944.7 1272.4863 944.5821 312.0293 609.9 5066.2721 1841.0199;
	1816.3392 1290.7044 2119.498 605.2017 981.4399 1340.5462 1011.9019 326.0302 672.0482 5692.034 1953.866;
	1888.5936 1306.477 2153.7657 587.6765 1014.1201 1402.5336 1071.4152 321.7529 702.6308 6130.9328 2076.1897;
	1934.9455 1308.0 2193.7312 590.5 1042.1069 1432.6067 1084.2389 340.8 700.915 6408.8268 2132.9022;
	1952.2004 1315.9974 2133.3003 577.2705 1001.2 1434.8662 1081.8582 336.0873 722.4443 6495.0225 2139.3508;
	1942.9005 1286.2 2116.8448 569.4323 1028.8 1410.5468 1110.8395 330.6597 693.5008 6506.5851 2131.2722;
	1945.6989 1293.0721 2118.5847 580.1 998.9579 1441.3624 1121.342 352.4479 690.5819 6708.8707 2111.5091;
	1930.648 1289.4914 2103.3111 560.0648 983.7 1411.651 1133.1354 342.5501 669.7875 6585.9997 2002.5613;
	1889.6481 1282.491 2069.7156 568.3825 990.0546 1415.8426 1119.6812 324.1719 661.9 6542.3389 1995.2451;
	1824.2307 1240.3523 2036.6655 562.5 932.9136 1367.1483 1057.8338 333.2927 641.1877 6321.1904 2013.5414;
	1845.2245 1234.3074 2037.5058 580.8596 962.1584 1413.9061 1075.6359 354.0898 622.6528 6284.2799 2115.9329;
	1844.2133 1233.0777 2025.2742 599.6 990.301 1433.5813 1081.0012 358.7 636.8617 6279.1798 2176.8048;
	1860.7121 1232.7554 2061.134 599.988 989.9891 1481.0401 1058.8014 364.8326 618.3553 6080.3491 1995.5717;
	1890.6099 1280.1129 2119.3185 601.6654 1013.7191 1543.5 1152.8017 375.5 683.0367 6083.3814 2171.4486;
	1965.1 1302.6806 2109.3 612.1 1025.9633 1493.0271 1133.5302 397.6762 670.3909 6114.2957 2227.0798;
	1859.3188 1236.0823 2019.93 584.2 949.1777 1434.9967 1090.2438 365.6102 644.5988 5917.2144 2085.0675;
	1757.6287 1159.3496 1866.4 554.9891 928.7623 1338.9441 1004.2645 344.2232 580.1248 5574.6 1937.6195;
	1670.1276 1082.6749 1729.3 549.0816 869.5185 1244.501 925.1737 305.3348 536.5901 5145.2 1888.5087;
	1598.5 984.2723 1655.5262 549.7539 833.5874 1143.7683 878.1023 288.1 510.5582 4802.656 1792.1954;
	1594.1773 983.0717 1661.3572 564.8 823.5 1094.1793 847.7711 272.1 479.7002 4430.0478 1679.3144;
];