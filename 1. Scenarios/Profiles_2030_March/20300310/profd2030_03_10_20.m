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
	1545.3493 956.4235 1636.9 602.3002 878.549 1240.9884 917.5812 239.2156 556.2033 4756.7509 1908.4195;
	1501.5058 934.4 1603.2225 581.1488 841.6568 1223.3397 896.3747 206.5014 549.5046 4522.1344 1828.08;
	1504.1977 936.8638 1598.9 588.448 863.3743 1229.2265 887.3877 232.795 527.0081 4557.3979 1845.2;
	1499.4036 948.1916 1605.2171 590.2 872.9161 1224.9 906.8792 238.6456 542.1 4515.5062 1835.0836;
	1522.9059 976.7984 1645.5665 601.3 929.4687 1258.061 936.7 260.3728 569.1936 4668.8839 1874.7562;
	1534.0767 1026.6485 1724.4952 624.9344 1000.7261 1309.7 992.4 297.5 598.0008 4828.571 1956.2199;
	1582.2342 1063.2551 1795.2936 629.0979 1040.1638 1384.4341 1059.6417 323.4 613.9215 5029.5 2008.4681;
	1638.5774 1126.7093 1857.2 640.2 1092.6156 1417.2805 1091.6539 341.8 661.4264 5233.4663 2098.8858;
	1696.6 1151.4121 1893.085 633.8996 1084.806 1437.0813 1095.5628 356.0 674.2 5421.3701 2076.7214;
	1742.5075 1187.5374 1899.2075 637.4822 1091.7803 1438.9756 1111.2599 351.1 662.8867 5416.1206 2029.2422;
	1685.116 1164.2793 1883.5616 623.9424 1056.2499 1411.973 1082.4876 346.0 667.0788 5543.0009 2020.033;
	1659.3177 1149.9087 1871.1494 612.7532 1028.5792 1327.1932 1029.4 321.9 642.2983 5392.8062 1941.6718;
	1658.8881 1135.3411 1833.5235 586.0508 992.2334 1310.1104 1018.8621 311.7 617.9201 5475.8122 1994.9167;
	1700.0972 1137.7583 1802.3169 580.2725 1002.6367 1318.4248 989.0822 309.7618 615.1 5423.8395 1913.0744;
	1754.5373 1162.7084 1815.0078 598.4 980.1589 1364.0102 1039.2162 315.1042 621.4165 5394.3819 1887.5293;
	1789.1941 1181.0789 1871.6759 597.3 1030.1307 1440.2344 1073.7 322.226 587.9725 5414.3497 1846.7458;
	1819.8999 1191.0504 1932.1334 604.3 1041.0 1476.8 1092.5869 339.2 631.6741 5414.8815 2001.7023;
	1856.8874 1213.2709 1973.3229 612.5998 1085.4769 1537.2801 1137.0 336.3511 681.2 5463.2507 2162.5067;
	1914.9358 1252.2 1983.6443 617.3691 1082.4595 1508.9801 1115.8093 335.6015 698.0 5442.6 2250.6003;
	1859.4117 1157.1593 1897.225 594.9711 1048.3127 1440.9117 1069.0334 323.2933 673.5608 5395.0658 2169.2078;
	1765.9997 1086.9081 1792.8171 556.5482 975.1721 1356.0189 994.6671 288.7111 626.6508 5224.8208 2043.6253;
	1675.7075 1036.1645 1715.5687 542.3 916.349 1294.9212 952.7112 284.6982 584.4 5006.5159 1933.5181;
	1620.6102 965.7466 1693.2385 526.8248 883.5791 1209.1972 877.769 267.1 528.3 4608.4557 1759.3733;
	1591.4037 938.5 1691.3973 537.0246 837.1622 1171.6723 856.2172 255.3851 529.9976 4517.8349 1745.0534;
];
