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
	1503.8 925.2 1564.1 533.4 821.9223 1182.287 922.4524 264.2 518.639 4492.1 1876.6932;
	1505.5924 930.8 1568.8277 521.7999 811.2117 1151.3139 933.2824 264.7 518.5985 4416.3912 1801.7033;
	1527.8148 956.9591 1606.4005 541.9913 836.8 1183.6766 935.7062 276.7936 526.3 4520.2584 1880.3571;
	1574.8017 1005.4722 1698.3117 552.76 894.052 1252.7261 981.1659 292.1 554.8438 4682.4 1961.7678;
	1725.3677 1138.2439 1944.3399 584.6998 1048.9028 1403.55 1072.2192 352.8808 619.2231 5205.4745 2165.4375;
	1838.8975 1242.3899 2100.292 608.8198 1122.3312 1480.818 1130.7785 380.556 684.1186 5785.2679 2274.3687;
	1855.7318 1271.9783 2143.4469 610.8582 1130.6617 1482.1616 1160.2 364.2 698.9722 6159.2545 2316.6479;
	1876.9096 1310.6123 2120.6002 581.8 1116.3154 1488.6604 1181.2362 358.9443 733.045 6393.7122 2348.8097;
	1915.69 1326.942 2197.4373 603.5 1113.942 1547.5095 1211.6184 359.5177 745.3689 6420.9968 2263.0451;
	1937.4075 1342.3269 2194.856 619.8469 1114.8258 1569.2146 1217.5834 340.6425 736.8456 6447.5058 2314.4938;
	1940.6205 1367.3514 2189.6569 600.924 1110.2791 1562.5726 1196.2892 336.2488 723.2718 6355.0271 2292.8454;
	1953.4623 1379.8438 2214.8951 613.0336 1086.8054 1586.2018 1213.9975 352.6309 739.2993 6634.4247 2351.1067;
	1890.5621 1333.6188 2145.1787 610.6739 1056.961 1563.2 1219.7242 362.5194 743.926 6453.6432 2310.8547;
	1882.5626 1283.9472 2126.5445 628.4849 1046.439 1512.5744 1201.7741 363.0235 759.5738 6560.2643 2298.0195;
	1878.6303 1261.1394 2113.8286 627.5429 1054.5957 1528.6851 1147.8 369.3461 739.8578 6682.4963 2245.4736;
	1887.8458 1276.6366 2119.3002 644.2627 1081.0673 1548.1515 1194.2087 373.2945 764.8404 6736.5564 2425.0212;
	1880.1071 1280.6014 2107.3155 635.4 1078.2 1561.2935 1173.7 398.6 786.1059 6519.9736 2453.1254;
	1928.5546 1329.3935 2213.1535 651.3 1120.7817 1649.1665 1247.1 433.3324 812.8193 6594.9129 2625.6521;
	1936.0516 1339.9662 2151.2475 646.1142 1088.7346 1624.108 1211.3794 423.6128 760.031 6538.2353 2526.8171;
	1889.8397 1254.0514 2028.3009 627.3275 1042.9549 1496.2322 1132.6331 388.3895 716.0352 6263.4626 2406.3;
	1816.817 1180.801 1935.0971 613.7549 986.3142 1434.0426 1088.9525 344.1794 671.7 6147.5918 2243.3471;
	1715.9625 1101.1856 1837.7976 587.3019 895.2 1344.3018 1007.9032 314.1 616.5 5391.1184 1989.4025;
	1647.8398 1034.4189 1712.6372 588.158 892.6099 1322.4692 969.4498 311.5202 579.5539 5249.5977 1930.9525;
	1640.2536 1021.9995 1672.0113 571.368 842.2606 1270.5001 930.4212 293.9618 571.0377 5092.022 2031.0328;
];