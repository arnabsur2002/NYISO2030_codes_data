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
	1639.3364 942.7057 1629.021 619.2713 867.5437 1201.0 907.2 264.1028 582.2943 4683.567 1823.866;
	1615.8879 949.5116 1662.6489 611.918 875.3386 1218.2228 905.6054 269.0299 572.2806 4688.7726 1865.013;
	1632.5834 963.8805 1674.8941 637.9051 871.3 1227.1598 908.0979 266.6 564.8641 4652.9418 1855.565;
	1663.1023 1026.4299 1767.8 637.6805 925.673 1306.3826 964.4882 287.8 600.2594 4855.6855 1940.0674;
	1818.4149 1146.1358 1953.8641 658.5609 1062.6761 1479.3061 1059.8769 326.0731 692.8837 5404.7548 2156.6467;
	1924.0 1235.2232 2047.6731 660.6214 1097.7651 1544.3 1127.1241 354.0166 724.2266 5923.7334 2309.5137;
	1914.4338 1259.6 2064.1092 654.4748 1088.7738 1541.5371 1133.8 361.2 730.741 6261.5663 2313.3;
	1896.5277 1257.6901 2079.2394 651.0878 1085.7801 1511.0427 1107.9 357.354 725.64 6385.8723 2304.4012;
	1911.0 1280.5296 2048.2353 643.66 1046.629 1477.3444 1103.2766 328.7932 729.4042 6394.9438 2318.6648;
	1936.9743 1273.2126 2058.4933 630.958 1036.4 1468.246 1102.7267 323.1183 735.7655 6437.9088 2336.2913;
	1859.0709 1238.0708 2020.0561 629.6971 1035.1387 1368.3738 1040.8995 321.7089 707.8 6397.4671 2207.8312;
	1883.5431 1264.2558 2036.5309 630.8602 1032.3415 1364.1993 1086.3304 317.8323 743.2224 6433.4166 2312.162;
	1822.1357 1250.7817 2038.7308 636.092 1023.7 1340.3859 1058.3 330.2667 730.7557 6444.4084 2297.2;
	1805.3315 1211.8835 1995.1398 641.786 990.3786 1319.2693 1028.7 321.8 709.9021 6341.4179 2200.8444;
	1768.7172 1185.7 2026.9108 619.6129 1001.0071 1349.6231 1011.4379 326.0566 691.007 6225.6117 2209.8461;
	1736.4485 1201.716 2025.676 628.4 1010.3145 1386.3339 973.8083 328.5276 687.023 6226.6307 2245.3458;
	1726.1046 1194.9392 2049.4114 634.6748 1034.0937 1405.7424 949.3098 330.2195 679.5635 5888.9193 2287.1416;
	1809.3209 1241.4788 2070.2 645.1638 1059.5386 1457.7363 1070.6404 364.4112 734.6 6133.923 2509.9917;
	1803.4 1225.4133 2069.1551 647.7795 1090.8681 1462.8 1090.1191 367.4156 724.3 6006.554 2517.9749;
	1784.7846 1194.1475 2026.623 624.3523 1038.8064 1374.5 1068.9 361.2757 689.0 5839.183 2442.1393;
	1692.7515 1115.589 1916.11 613.148 962.1702 1284.3897 1016.3 323.3535 645.1 5592.1913 2250.8047;
	1617.3 1035.3394 1803.226 616.4525 903.1062 1215.1461 960.3883 297.0 580.6116 5176.0587 2070.8798;
	1538.1028 968.6 1689.8339 635.508 828.8436 1166.5286 898.3756 276.5 542.7 4928.9515 1878.2679;
	1523.9428 951.8296 1658.4 617.1309 818.425 1118.0232 863.2 260.5418 496.6047 4760.3565 1774.4398;
];