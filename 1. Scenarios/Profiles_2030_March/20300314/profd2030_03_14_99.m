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
	1414.7512 924.9 1488.1286 562.7 696.3098 1126.9566 815.4119 228.4575 469.8832 4401.2227 1572.1831;
	1428.3008 938.9494 1495.7025 564.0941 719.8259 1120.1282 817.6111 231.6036 474.6786 4387.7678 1592.6692;
	1457.6027 959.5837 1511.4452 584.7237 734.2344 1153.7202 831.4347 231.2775 489.2351 4382.0657 1577.2991;
	1532.803 1030.2 1651.926 579.8 807.1215 1238.2916 897.2415 264.3 504.9033 4597.2101 1687.6739;
	1684.9644 1177.3083 1877.4048 609.0149 918.6153 1374.0611 1014.6 296.9872 603.6 5175.7828 2014.2599;
	1817.4095 1247.2039 1959.9218 607.3 1000.7001 1466.87 1087.2747 340.0 694.1615 5744.926 2197.2;
	1880.2905 1251.2764 1959.3 586.1 981.2058 1423.5357 1101.7864 346.548 704.9 6046.8002 2238.7977;
	1867.0381 1249.4 1995.5706 565.9455 990.6 1412.3319 1120.8 346.1904 712.6 6285.8169 2269.3815;
	1820.5601 1251.0365 1956.6917 547.7889 980.1 1415.6646 1108.6928 346.0909 726.3249 6335.1388 2310.9958;
	1819.6848 1228.576 1936.4546 542.8413 930.0994 1390.4287 1078.4989 346.1037 712.285 6387.6216 2369.9333;
	1810.9481 1235.5571 1880.9192 534.6088 908.7167 1360.7462 1043.4505 337.7 699.1 6426.839 2352.7252;
	1783.6515 1217.561 1896.3039 544.4308 908.1648 1390.3478 1087.1881 323.2984 679.7779 6274.4 2304.3011;
	1766.939 1201.4218 1867.8684 511.7561 895.4059 1407.3238 1106.6785 324.6905 674.4823 6312.4594 2427.7943;
	1817.9409 1222.2109 1891.664 532.6914 879.0624 1411.4617 1114.2681 319.5649 702.6809 6412.7387 2594.0565;
	1772.6459 1189.4897 1832.6971 535.0427 852.2621 1435.1717 1084.2061 311.5354 684.9965 6292.5133 2500.2352;
	1741.5895 1187.5062 1839.9376 550.3321 868.9146 1397.0059 1084.7 331.643 659.7759 6228.2988 2471.886;
	1746.3605 1187.4653 1850.3193 536.4033 911.4114 1423.8442 1102.8444 322.897 671.5705 6079.5364 2477.6434;
	1775.3394 1227.2074 1900.4158 517.7599 945.1372 1436.3772 1158.125 339.3505 692.5106 6122.7792 2545.3135;
	1794.6912 1206.6811 1866.0366 533.0 940.0372 1406.1 1160.8488 320.2761 680.9 5995.5196 2519.9619;
	1743.3654 1158.6272 1828.8094 539.3362 890.7383 1307.2351 1063.8412 309.7 638.1073 5758.3206 2316.0957;
	1603.9747 1084.6407 1719.847 529.6097 845.4731 1242.3192 1021.9409 300.7 598.2588 5599.0573 2205.6991;
	1484.8244 971.341 1592.0111 513.7383 821.3553 1152.6532 941.9809 280.2984 571.7893 5169.762 2051.5865;
	1436.6867 914.8504 1545.667 524.9387 802.35 1116.5077 838.6763 236.1392 488.522 4771.3712 1772.3829;
	1379.9954 888.5533 1511.2378 527.2742 753.8198 1105.2 816.9 227.2021 480.0703 4552.05 1719.5256;
];