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
	1639.4426 988.1139 1628.968 598.2 816.5407 1149.5349 894.2744 289.7004 535.6049 4778.4682 1796.8215;
	1627.9935 988.2247 1634.3945 600.2073 831.8 1158.279 891.3 281.8551 537.5594 4685.6336 1788.766;
	1661.7576 1025.2238 1666.674 607.9531 866.6 1195.1627 904.8474 288.9 549.6 4697.9891 1809.4875;
	1704.6442 1078.0832 1760.5837 606.7 934.0588 1278.7269 950.2293 313.5 573.1619 4944.6447 1909.2272;
	1863.3403 1197.9933 1949.7619 623.0078 1030.8101 1435.3185 1067.9 372.056 654.4754 5589.8527 2185.6;
	1926.6857 1251.2781 2014.5628 638.7869 1092.3 1502.945 1124.7 386.6498 714.7 6043.1178 2299.0184;
	1975.1213 1285.4974 2053.8891 631.2447 1103.5596 1500.7436 1140.4528 378.46 717.6 6477.9976 2305.468;
	2003.6827 1308.7218 2062.4957 632.8452 1060.7648 1464.9034 1122.096 367.147 718.6671 6795.374 2322.7799;
	1980.3692 1271.7254 2048.9489 616.5978 1061.282 1442.8055 1134.1018 377.271 727.2517 7031.7265 2441.1249;
	1987.1786 1258.3815 2058.4508 611.0777 1035.0381 1413.3267 1121.4 379.0342 713.0 6951.1562 2339.4844;
	1993.5477 1245.5747 2019.1 602.727 983.9864 1406.9 1134.871 385.0122 745.7609 7002.7639 2435.8835;
	1934.5285 1200.1245 1983.8873 608.7861 978.3721 1371.3006 1075.8936 352.062 747.799 6742.3484 2294.6093;
	1902.2794 1164.8235 1964.7327 589.3 975.5064 1349.3569 1108.7706 358.9 738.1979 6625.4072 2364.6466;
	1890.5214 1150.6281 1917.3705 580.5 982.8084 1330.6239 1050.8587 360.1076 719.9323 6606.3018 2315.1741;
	1893.7304 1159.6524 1930.5 600.4 1001.4643 1347.9532 1072.9024 360.514 692.2504 6594.234 2271.4472;
	1850.0646 1151.8 1951.1941 607.5582 1018.5566 1371.9949 1083.0339 392.8207 693.0474 6629.9935 2280.7112;
	1892.3419 1191.1 2015.5313 604.3348 1034.9 1429.6636 1146.1192 431.4678 712.5979 6592.9428 2487.6804;
	1893.1028 1219.3896 2089.2121 615.4 1078.2704 1510.69 1196.5396 447.265 747.4 6794.1605 2576.0731;
	1881.3742 1246.0591 2054.0841 613.5438 1050.2939 1528.2908 1250.069 430.534 743.9566 6664.4508 2697.5404;
	1792.5 1176.4 1938.1212 598.4583 997.0938 1412.1092 1138.4495 407.3291 702.3756 6128.8992 2465.9813;
	1687.0129 1086.912 1773.6637 582.3605 889.001 1306.9 1037.7865 343.7685 649.4568 5713.7666 2171.6769;
	1641.4914 1034.4528 1701.6176 574.5 871.7 1235.1 968.5599 321.3254 601.9106 5598.4827 1999.2974;
	1592.1893 988.168 1634.2559 570.8 859.5812 1169.5 903.2263 298.6362 560.63 5494.3529 1938.6324;
	1596.6571 976.4091 1609.2498 569.5 846.0457 1142.4648 878.3735 295.296 547.3016 5225.202 1909.4312;
];