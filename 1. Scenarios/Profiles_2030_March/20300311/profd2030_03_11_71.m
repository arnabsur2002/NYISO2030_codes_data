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
	1496.5544 919.0 1660.2496 531.292 814.2121 1122.5959 884.6016 257.7998 481.3268 4630.1091 1762.7485;
	1483.3294 935.8282 1668.1047 533.8102 814.704 1124.6652 865.1044 254.7 473.6518 4449.1655 1758.499;
	1561.4 972.8154 1771.3501 532.006 836.8 1147.9387 894.245 260.892 500.2192 4656.668 1842.6919;
	1642.5522 1041.5076 1869.9157 561.1 873.6921 1228.2654 943.6292 278.1423 537.47 5087.241 2097.6593;
	1772.6831 1132.7 2038.1465 587.1524 999.6525 1400.6464 1043.6189 329.9 602.0626 5475.4023 2117.7703;
	1873.8386 1229.4749 2184.4174 624.0027 1099.243 1473.968 1107.3313 343.3652 652.4204 5868.3705 2208.6128;
	1879.8071 1243.5572 2146.4182 612.7 1038.5 1450.813 1108.4239 342.8873 671.4369 6184.048 2210.4973;
	1891.9653 1244.6557 2124.8853 608.5306 1019.6479 1443.4308 1109.4039 329.2918 663.8192 6427.2525 2210.4;
	1891.9245 1279.8559 2180.8957 607.4715 1062.8811 1474.7278 1123.9 345.3 675.3459 6487.0484 2146.5731;
	1917.9 1285.3814 2125.6249 596.2834 1015.8961 1485.1315 1140.7442 326.8166 683.2114 6498.0127 2142.3162;
	1902.9071 1269.7361 2095.3035 586.5057 1022.1178 1409.5841 1093.1 325.7388 671.7533 6568.0454 2080.7722;
	1903.5412 1278.1 2072.5992 594.9 1000.8975 1423.9809 1142.1386 322.6912 677.5 6506.219 1974.9864;
	1857.8572 1255.8458 2073.0009 599.6 1004.7658 1424.8343 1132.9301 319.3028 653.7 6441.1335 1971.4134;
	1823.5944 1248.7795 2062.8992 593.9 985.3073 1402.4 1098.7284 328.1808 651.6795 6413.2077 2000.5041;
	1821.6 1260.6173 2048.3555 601.9748 955.7391 1413.6 1078.1098 309.4419 670.074 6369.3627 1966.141;
	1798.1396 1243.4958 2090.3191 613.8 983.8058 1425.6709 1069.7955 296.129 654.9393 6303.6185 1896.7545;
	1785.8538 1280.7284 2081.2376 624.7176 987.983 1475.6855 1112.0132 345.2808 680.3658 6112.259 2251.6026;
	1846.4065 1308.9439 2157.6946 628.2063 1039.9094 1503.2 1170.0739 359.106 712.363 6125.7667 2387.0974;
	1879.2 1278.0801 2116.6685 628.3 1026.1516 1487.4665 1177.607 370.7433 712.7 6017.1678 2368.2697;
	1830.6743 1204.918 2030.469 595.0611 979.2672 1392.3 1124.1297 348.6 684.521 5752.3152 2217.0115;
	1744.577 1108.8477 1878.4553 586.4278 903.409 1239.2317 1011.1074 311.7 623.1685 5442.4975 2043.0279;
	1630.4603 1019.0317 1732.8452 565.5766 830.4871 1176.398 937.4 264.4265 547.9 5011.1302 1847.8377;
	1589.964 971.1065 1671.5755 584.9181 813.2083 1191.789 920.6533 260.7633 516.038 4812.0413 1774.4857;
	1527.5812 946.8005 1658.1226 568.6644 823.5532 1181.1303 911.0 263.9242 516.4097 4604.7089 1754.3845;
];
