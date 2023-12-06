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
	1575.6314 920.0 1543.806 562.0732 744.6011 1126.1751 873.4374 244.7537 500.1412 4625.5326 1680.6;
	1546.5 908.4646 1516.1833 545.7344 714.3914 1114.8397 858.8885 234.1621 500.6458 4477.4456 1653.6407;
	1529.1557 905.4 1518.007 534.8726 717.3 1119.6491 873.689 236.5633 494.6491 4350.9136 1657.1333;
	1572.5412 920.8501 1567.0381 550.7 746.8715 1120.5 889.1068 263.9196 513.6506 4485.6909 1709.5387;
	1613.2462 970.3872 1693.894 558.5193 839.9037 1218.8 956.9166 295.549 562.9627 4691.5793 1824.3647;
	1660.5 1029.6469 1773.4 576.4 897.1549 1275.1965 985.1582 303.8 572.2722 4872.9222 1901.0342;
	1705.1 1031.9963 1793.3 592.9781 903.5681 1309.4545 1033.1453 301.198 601.0285 5149.2755 1998.9228;
	1764.0374 1075.6272 1854.055 582.0995 925.5233 1369.3757 1099.5172 302.0 643.5514 5458.9122 2075.8476;
	1749.1843 1081.8 1856.6636 591.5395 937.1122 1408.9311 1135.7828 288.3 661.1943 5639.2305 2109.9813;
	1783.4232 1078.1058 1896.1608 592.6655 977.4116 1408.2698 1153.646 277.7433 685.3331 5610.1326 2128.6392;
	1781.6999 1072.7338 1856.9514 576.5 957.0158 1434.6051 1156.9425 289.4309 705.2794 5666.4955 2178.3953;
	1767.5844 1028.7187 1791.3938 578.9189 897.9285 1377.8876 1115.9793 278.966 693.5696 5553.7873 2134.9526;
	1707.41 1037.6262 1790.2831 574.0 892.1 1328.236 1073.7514 257.601 699.8327 5479.2472 2052.2685;
	1706.9797 1054.7753 1756.0483 581.6582 897.3 1304.5802 1105.2944 264.643 719.6577 5361.6782 2004.0146;
	1688.5765 1091.4526 1847.114 574.7 927.851 1356.4718 1145.5037 281.7667 686.3 5396.1792 2101.3825;
	1719.665 1124.9519 1848.0937 593.0 957.3425 1385.2172 1148.399 281.7724 682.0527 5353.7219 2188.347;
	1673.6877 1109.0954 1846.1 606.7 927.8138 1389.7331 1132.3671 249.2157 635.0811 5283.1462 2141.8369;
	1748.7741 1179.5284 1931.4366 610.4384 983.0771 1460.3066 1244.628 291.8423 706.1128 5488.547 2428.88;
	1785.2586 1190.1101 1979.443 623.2501 1032.4314 1468.4942 1245.0158 316.3746 740.9404 5559.6752 2578.1393;
	1743.6037 1111.873 1854.4392 594.3 985.2 1384.0456 1154.7823 294.9803 709.6272 5355.2158 2412.3081;
	1659.3992 1062.3572 1784.8 585.5162 901.8913 1313.6 1109.7084 293.911 682.1391 5226.1365 2198.3484;
	1620.2008 1000.3113 1656.7307 575.5335 850.2819 1197.1766 1028.5996 280.927 639.958 4906.4839 2029.7231;
	1563.19 946.7714 1660.6 576.1 815.4193 1156.0 996.617 277.6 567.9099 4822.391 1948.6895;
	1529.9937 940.3 1619.4552 577.4275 794.613 1148.9139 965.709 267.7033 553.608 4612.792 1838.5024;
];
