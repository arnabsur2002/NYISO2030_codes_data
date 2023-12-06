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
	1552.7313 969.1033 1670.8822 617.8266 948.3959 1256.5291 939.4569 292.9 594.0637 4934.1466 1776.2081;
	1592.1 981.7818 1676.3762 613.3728 956.6316 1255.8832 931.0001 296.6827 569.3943 4797.9373 1755.7806;
	1610.3 1011.6644 1750.1401 615.8853 973.0102 1302.4 939.9082 307.7976 572.4687 4737.4271 1798.4736;
	1654.0979 1078.3994 1840.5604 620.0768 1045.2979 1356.8335 975.9976 327.4553 604.1976 4950.8385 1899.845;
	1796.3285 1190.4072 2007.2326 642.5224 1138.7931 1523.6749 1092.465 367.4424 689.0662 5498.1266 2155.3531;
	1903.2914 1261.1 2093.8302 657.0237 1182.3909 1588.1383 1139.4 392.2 729.3296 6058.389 2309.2092;
	1898.6266 1239.9581 2053.9041 640.8 1150.5135 1560.3618 1133.8 373.0 731.5941 6367.2749 2345.7888;
	1900.58 1229.7841 2017.7967 640.3226 1109.9466 1523.7035 1123.7231 373.4 744.0178 6791.3855 2377.1322;
	1874.8359 1183.6525 1970.5309 619.9 1075.5801 1539.1437 1126.3 360.2 747.595 6673.9266 2349.9963;
	1824.4085 1170.7079 1952.6666 622.9209 1065.3 1529.1 1137.1739 355.1 717.0669 6640.1532 2251.1193;
	1795.7857 1153.1724 1906.7765 619.2 1031.0316 1501.9641 1096.4581 348.9 702.0417 6601.3499 2247.9211;
	1811.4965 1162.1794 1937.2228 610.7281 1049.9565 1467.0381 1108.8534 324.8862 715.0183 6765.1987 2271.8111;
	1790.0704 1139.7117 1891.8398 619.774 1021.4438 1447.8997 1111.1167 323.2163 718.8701 6669.8653 2297.8389;
	1754.5504 1124.6718 1895.7 613.9867 1014.9078 1414.2028 1066.2372 331.1646 683.2 6537.9269 2227.2974;
	1742.1889 1155.3 1919.4653 619.517 1011.3426 1452.5942 1104.4258 323.9417 684.1 6771.9638 2294.3956;
	1777.116 1146.2331 1957.1397 612.261 1054.286 1469.342 1098.2578 330.9284 690.846 6723.4719 2316.2912;
	1787.9036 1165.1 1931.7373 641.0923 1058.7872 1470.5908 1125.2313 340.2118 715.8849 6606.3414 2452.4957;
	1821.6858 1211.329 2011.7666 645.1013 1086.0072 1535.0656 1192.3559 374.7447 746.1685 6590.6704 2543.1997;
	1847.31 1222.125 2010.612 616.7732 1051.7087 1502.7007 1163.6595 373.5329 737.7758 6277.9 2497.0717;
	1810.9744 1163.2309 1912.3013 612.1411 1001.4 1408.5648 1121.8695 364.7626 709.7956 6075.9141 2413.131;
	1705.7231 1080.2599 1776.6923 609.4475 920.8681 1315.5127 1034.6309 328.5 654.5 5751.5185 2231.2;
	1599.1504 1009.6 1672.2814 592.6 869.5478 1235.0463 960.4 294.836 594.0 5323.4366 2040.5762;
	1469.8354 941.7685 1624.7245 594.2716 855.8156 1208.0539 885.2398 279.521 536.9449 4980.6101 1853.0911;
	1475.6109 929.9198 1578.9928 591.1952 801.0093 1191.0041 850.0421 268.1903 547.3734 4888.6543 1784.7168;
];
