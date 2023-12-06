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
	1518.4517 894.1328 1488.3395 531.2334 720.9003 1067.2648 812.3825 244.108 494.9 4327.6166 1736.715;
	1542.5 886.3236 1467.0777 526.0842 724.8249 1086.0397 816.0249 238.6727 481.0 4277.3201 1705.1803;
	1536.4465 896.2523 1484.8252 524.4373 732.8817 1086.8634 797.4596 241.186 482.7 4243.6023 1689.1515;
	1593.8417 913.5358 1501.2566 539.0208 762.4593 1080.7604 805.613 249.7196 491.4652 4314.3768 1739.1325;
	1633.4788 969.1013 1625.1 553.1587 791.841 1179.1815 873.5 273.1749 513.0 4590.5979 1853.9686;
	1724.8774 1043.2 1742.6 565.0174 860.8 1233.6114 927.4945 301.847 573.1074 4871.8222 1969.29;
	1754.5884 1088.9161 1800.5446 581.2 921.0 1308.5052 1000.4069 322.6079 600.2921 5161.4194 2066.7781;
	1791.9102 1102.0871 1830.9139 579.2499 941.9998 1332.599 987.4075 345.2011 632.3987 5297.416 2145.085;
	1807.0918 1091.8 1805.1957 575.0 914.7819 1337.8622 983.9884 324.6329 639.3045 5413.2151 2198.9878;
	1809.506 1067.8184 1799.3028 580.0 881.4357 1356.3271 977.9521 326.1 638.1538 5416.9534 2219.768;
	1800.2658 1086.7 1807.9459 570.6186 898.9468 1348.6815 982.1057 365.9434 634.8609 5471.3503 2286.6326;
	1843.0727 1045.753 1766.5472 563.882 881.7509 1319.2333 979.8024 357.2591 620.7 5413.3158 2229.932;
	1811.4593 1025.3354 1722.8849 565.5151 863.2693 1287.1087 942.8929 333.9729 633.8516 5350.7 2174.8153;
	1760.75 1001.4 1724.3807 566.8 822.5723 1269.3048 950.376 335.9579 594.0 5311.4447 2235.8881;
	1775.9 1034.2 1750.6278 563.265 869.406 1303.833 972.4876 356.1249 591.5961 5300.7196 2267.1497;
	1777.6388 1065.4059 1843.352 583.3 934.604 1375.1551 1029.1134 386.2646 620.2196 5458.0663 2416.5749;
	1794.139 1099.6494 1917.2591 582.4 992.9649 1443.131 1073.335 425.8746 625.9901 5647.1589 2669.2552;
	1774.9705 1096.1925 1966.017 601.7824 1027.7 1423.3049 1107.9864 416.6265 661.1101 5711.5668 2606.8656;
	1828.2182 1116.2041 2019.3083 603.8 1038.846 1422.553 1115.9763 419.3207 664.0433 5707.1551 2546.5706;
	1859.5561 1130.7757 2008.7727 596.9495 992.6032 1394.5917 1085.9 385.6862 652.53 5629.4621 2510.2044;
	1794.5212 1064.5905 1871.5788 571.4 960.1827 1328.5729 1049.0 411.8022 634.0876 5395.1852 2387.7536;
	1702.5782 988.9618 1757.2278 551.8 889.2521 1252.2325 979.7 373.7419 588.7726 5117.0654 2167.6056;
	1653.9 925.9 1632.2161 548.1403 838.514 1233.4016 945.2628 311.4012 528.3548 4937.2197 2004.2198;
	1606.3225 923.0232 1613.7399 562.5347 831.5246 1232.0174 919.991 338.9934 534.6 4865.7221 2014.3403;
];
