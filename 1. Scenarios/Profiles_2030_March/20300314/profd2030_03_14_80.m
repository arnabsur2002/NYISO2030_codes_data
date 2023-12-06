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
	1490.8367 988.4711 1553.8525 539.0279 771.0661 1080.7447 831.179 276.7223 510.3984 4602.9036 1706.6018;
	1494.303 1039.8366 1560.6843 545.8862 767.1096 1079.6788 834.9081 276.0 503.0 4582.8451 1709.9271;
	1507.6132 1041.7648 1622.0615 550.2835 791.738 1148.1948 858.2613 263.9832 520.0 4591.3071 1729.0;
	1570.1 1058.6222 1700.4579 558.4701 851.0985 1213.8841 912.1438 268.2262 551.9744 4754.7692 1807.9;
	1711.1631 1176.8557 1873.9205 584.0189 948.0 1336.9894 1010.3 302.3532 622.6274 5305.8052 2028.4368;
	1835.9018 1247.5546 2003.0828 593.1 1010.3611 1446.4 1090.3 338.1075 695.2336 6048.7472 2241.112;
	1854.2815 1274.6962 2023.7747 580.9168 1004.837 1459.0232 1123.6 360.368 718.4585 6402.0103 2311.2674;
	1824.9029 1269.5223 2040.4581 564.5 1027.1866 1450.6664 1144.1047 371.9644 725.982 6607.0572 2325.1546;
	1800.1 1250.2137 1999.2936 549.0002 1018.3885 1404.0958 1150.2695 371.9899 719.4361 6594.4181 2301.5549;
	1840.627 1301.3929 2019.3056 550.4628 987.7 1441.654 1175.9256 350.3 719.5 6588.3815 2286.4109;
	1785.0594 1275.0879 1993.7047 541.2426 973.2356 1418.7464 1155.886 349.4599 696.3649 6422.2775 2178.8597;
	1742.7 1224.2592 1924.6183 543.0 979.7836 1334.5 1127.1328 327.2 677.0 6296.1292 2134.7896;
	1684.8447 1214.9606 1902.7844 554.9337 983.159 1320.7 1106.4 331.2765 675.3433 6288.0 2012.9615;
	1658.2658 1185.2 1931.2656 561.8511 984.5582 1306.2795 1093.6639 327.8499 655.3676 6343.5309 2118.4503;
	1640.7599 1175.7 1914.6672 553.8117 955.9385 1296.0121 1058.9644 309.6995 661.7202 6341.2526 2094.0653;
	1664.6 1164.056 1902.2919 561.8909 975.6937 1360.5928 1066.8319 320.0 662.765 6369.1077 2189.7499;
	1678.4812 1180.5315 1932.3 584.9963 982.6 1387.6665 1074.7531 337.5 670.1331 6212.9655 2210.2264;
	1746.7247 1204.2351 1944.7715 592.4593 1024.9284 1448.1528 1143.3795 357.8 719.3906 6173.758 2388.4374;
	1742.4192 1227.438 1949.8 597.4486 1020.272 1430.9661 1138.3932 327.0 704.8406 6115.1 2369.2963;
	1682.7344 1167.7315 1875.8327 595.2717 978.9938 1359.4685 1078.669 302.2042 668.1442 5741.6519 2217.1841;
	1606.9569 1088.1297 1739.2859 576.0 906.5485 1264.0739 1009.134 281.7 619.045 5484.0974 2027.0372;
	1504.3707 985.5581 1615.2618 581.9854 823.5 1143.2 885.9245 246.966 554.5499 5064.9 1820.7066;
	1531.86 996.2135 1642.6745 551.2489 841.8218 1139.5825 873.8 249.9101 532.6984 5045.421 1813.4885;
	1522.8609 995.9338 1639.2802 549.7 809.7043 1126.7 852.1374 243.4399 507.7468 4772.0572 1756.0804;
];