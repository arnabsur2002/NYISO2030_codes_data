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
	1505.5481 966.4664 1754.4283 576.7558 875.9969 1186.1138 896.2522 290.5776 504.3711 4411.2477 1681.9705;
	1504.1473 965.0509 1725.2737 564.2155 862.0 1169.1 883.5793 274.6504 501.9872 4294.3386 1676.8801;
	1516.4485 978.6 1750.5405 564.5768 888.8556 1193.2 895.3984 294.4855 515.2841 4381.8965 1716.5904;
	1613.9208 1060.9804 1908.4931 588.2921 950.3253 1258.6217 952.1283 312.4 542.7643 4544.0291 1825.3327;
	1766.4392 1164.9 2042.6513 612.9511 1047.3394 1400.9011 1054.4 355.6012 617.6 5149.1851 2103.3724;
	1879.6 1226.1 2122.4 623.7253 1088.896 1480.8275 1102.6267 379.5872 688.6233 5722.5319 2244.2104;
	1931.1269 1233.066 2136.1303 615.7446 1082.3 1469.7311 1124.7164 378.6002 701.7547 6032.4867 2250.4897;
	1895.6319 1235.1879 2115.0954 606.691 1051.3936 1437.8802 1143.7548 377.1858 704.712 6302.6217 2267.1194;
	1911.1 1232.7801 2112.6473 592.5618 1049.3019 1424.2 1146.9 349.6098 711.1923 6375.5033 2150.7433;
	1917.6348 1226.6 2112.7 584.3 1048.6207 1440.3632 1133.0733 348.9463 701.7565 6392.2 2132.6;
	1921.9483 1210.7018 2119.7416 577.1147 1069.6134 1380.7506 1118.1796 340.5973 690.4965 6295.8052 2029.4013;
	1955.5748 1187.2947 2078.1044 572.4936 1081.2292 1366.0552 1092.7054 338.1 703.4675 6314.2667 2132.9;
	1919.3954 1196.4258 2063.5 571.5713 1050.8319 1322.7205 1022.7537 349.0 669.3995 6171.6031 2153.4;
	1885.1365 1195.9035 2052.5314 580.7778 1019.8776 1356.7464 1035.3909 335.4285 674.5039 6254.1148 2183.6555;
	1861.427 1153.9802 2002.4464 590.1843 1009.983 1396.6317 1048.1377 325.1614 675.0619 6294.6628 2230.9656;
	1892.2809 1190.4358 2079.7256 599.5634 1040.7101 1470.6385 1102.0399 357.0935 705.5539 6431.2458 2349.026;
	1880.4456 1218.3201 2095.6597 623.6 1069.1 1525.2558 1136.5741 386.938 716.5 6317.0158 2390.287;
	1954.8659 1259.5548 2192.971 646.3936 1125.3 1635.3838 1203.5659 390.3 755.3784 6394.7177 2580.3811;
	1976.3583 1266.5122 2229.7474 646.3 1148.6263 1600.02 1204.4 386.0 737.3439 6297.4297 2554.8367;
	1906.8538 1179.3 2102.9738 632.9237 1032.0 1512.2416 1173.082 357.9452 712.7 6108.1732 2410.8;
	1788.3711 1105.7 1951.6029 606.4066 951.2029 1412.2276 1087.2878 338.9998 648.081 5869.3375 2244.2;
	1702.4092 1038.0837 1831.965 598.8777 919.5604 1336.4543 1030.5611 303.5 599.6602 5345.274 2012.3352;
	1636.9 993.4329 1833.1173 602.1081 895.1 1270.3371 978.9115 296.5 540.9 5023.6277 1894.4771;
	1582.8124 970.8394 1794.1473 594.1868 900.6499 1250.5912 945.8646 299.4059 523.5 4840.8 1853.3224;
];