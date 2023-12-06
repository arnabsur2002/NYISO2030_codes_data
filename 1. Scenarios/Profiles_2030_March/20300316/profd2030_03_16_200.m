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
	1408.3077 925.68 1496.4756 482.4997 760.755 1055.2248 796.1838 236.3 364.6982 4319.7952 1464.3326;
	1439.7941 925.2519 1475.8072 508.8104 756.5807 1051.8506 804.4608 236.3 396.6783 4285.2409 1590.0794;
	1448.1456 925.7027 1478.8 514.9574 769.9 1048.2202 805.4 234.7249 373.0835 4220.4485 1516.6551;
	1484.9115 971.4211 1542.7058 503.5695 784.9556 1106.7944 832.2623 244.389 369.5403 4186.6137 1535.4488;
	1565.9535 1011.2099 1641.8951 513.6482 835.4948 1172.7976 866.442 253.1 381.5194 4236.8473 1617.2923;
	1624.8934 1061.3822 1754.8466 556.9936 890.0098 1270.8659 929.5186 288.8196 401.53 4584.3049 1744.3254;
	1739.8 1113.7793 1820.8109 567.2465 939.302 1353.5521 1023.1418 319.1929 536.0 4968.3551 1954.6979;
	1797.0761 1149.4885 1898.547 592.5714 966.7787 1392.6605 1073.6102 325.5 552.4733 5228.1695 2037.2494;
	1776.7255 1127.3643 1905.4926 567.3 985.7183 1405.7012 1101.9375 343.9266 544.5453 5371.4546 2059.8;
	1794.9615 1115.6307 1876.8259 550.19 962.492 1335.8672 1061.1471 360.4303 554.2667 5576.1637 1950.3149;
	1744.6715 1081.7569 1846.5156 541.5659 931.8882 1293.3223 1000.9894 343.396 514.9511 5348.1155 1804.9144;
	1748.0584 1062.3139 1852.1759 542.6613 942.344 1246.5097 989.2635 336.5 555.0108 5416.8033 1841.6269;
	1700.4878 1027.6841 1740.8468 538.9 900.6 1226.0737 963.1396 322.487 532.1156 5350.9578 1867.2325;
	1688.0685 1019.7889 1684.4532 522.8631 865.6 1215.3887 972.9812 311.6594 514.1 5280.4957 1889.1538;
	1745.56 1027.0696 1743.9536 500.8411 850.2072 1227.2598 976.1378 313.1373 533.0257 5316.2483 1944.1165;
	1763.5021 1063.0038 1773.6345 508.6687 857.043 1293.2676 1008.0768 326.6349 573.0807 5365.7708 2059.2003;
	1766.7144 1098.2 1802.248 528.8095 865.6348 1347.4903 1040.6792 332.9702 588.5731 5426.5041 2121.6171;
	1783.2226 1144.0645 1870.2302 541.2955 902.3564 1405.3 1089.1884 341.2578 644.2553 5527.4651 2295.2931;
	1821.2162 1161.5388 1880.3775 572.5197 924.4566 1389.1057 1102.225 339.1 632.0551 5504.1 2267.5661;
	1830.4924 1134.9975 1840.849 570.5375 882.4 1326.4473 1067.7818 330.0207 604.7102 5361.9359 2181.2189;
	1771.2848 1056.214 1710.748 555.1 822.52 1248.9939 998.1937 307.8 556.9148 5157.3542 2060.8;
	1647.4631 995.6655 1633.9587 537.6279 809.8 1201.8533 936.9748 281.1911 534.7983 4905.9089 1902.2705;
	1500.8362 966.7199 1574.8088 558.7149 836.0 1153.5102 914.8576 280.5 500.2957 4756.2526 1799.8501;
	1429.0226 938.6668 1531.9415 567.6989 807.3921 1104.5991 871.8769 266.9071 442.9891 4616.3582 1734.3891;
];