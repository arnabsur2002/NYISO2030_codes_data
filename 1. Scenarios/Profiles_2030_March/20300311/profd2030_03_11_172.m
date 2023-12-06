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
	1468.1897 901.9 1562.5194 570.3144 789.7282 1125.1592 935.9028 288.3999 502.2164 4558.0761 1647.8;
	1444.9947 891.2517 1536.4513 568.249 755.8873 1126.1773 911.7518 290.6029 505.8034 4537.1853 1645.0;
	1474.6314 914.5622 1582.2302 565.0 791.8155 1140.4 927.8155 291.4 505.7015 4572.56 1671.3;
	1575.8 980.7839 1700.4076 570.5582 860.3095 1206.3451 981.2063 328.7813 550.0947 4867.7354 1802.087;
	1741.6 1087.7073 1896.431 594.6 976.0961 1344.2146 1084.2904 410.3543 633.1 5446.575 2034.7314;
	1897.7545 1210.8988 2070.2 600.6355 1078.5 1459.203 1223.1497 438.7286 731.7823 6313.7813 2314.1806;
	1936.1898 1244.8564 2087.2953 601.7808 1075.8537 1462.0164 1241.6582 432.9913 739.2815 6628.9286 2387.1873;
	1982.1023 1267.4105 2095.319 584.4157 1081.7713 1477.2805 1265.8351 439.9848 733.4304 6758.6786 2350.0553;
	1956.5828 1267.5181 2138.6332 573.0308 1114.3 1479.008 1269.0989 448.1784 728.3089 7102.6016 2471.8428;
	1966.7365 1257.1986 2158.3675 575.0736 1106.4483 1501.9242 1302.7484 449.2243 719.2184 7121.9812 2543.0354;
	1955.7394 1222.0984 2126.1843 590.2928 1080.0 1464.0358 1267.8721 439.1678 699.6929 6749.7092 2408.2218;
	1959.6 1233.0814 2150.3179 608.148 1081.2258 1488.5205 1302.6028 432.6374 706.7622 6891.5577 2427.6181;
	1914.3536 1224.2352 2069.4935 582.8899 1033.119 1387.1241 1185.7769 427.6247 679.1011 6487.8599 2163.0346;
	1856.6899 1192.0474 2029.01 594.3047 1035.0 1413.241 1178.0811 412.4662 677.0158 6425.6714 2148.2;
	1807.0734 1187.6 2019.2242 595.646 1023.301 1424.6161 1173.8215 426.2014 692.3692 6498.8999 2274.3445;
	1791.8449 1191.4616 2039.2304 615.8163 1000.4 1455.2086 1228.0733 426.3905 694.1099 6626.3909 2490.189;
	1836.8727 1223.9572 2108.8715 608.112 1064.949 1467.6686 1274.9364 441.7111 735.3266 6426.5474 2705.8902;
	1903.7891 1257.9334 2172.7758 610.7595 1071.7639 1524.7385 1330.0911 449.6105 749.0 6608.0391 2828.8611;
	1873.3556 1248.2 2137.5721 616.0293 1060.9089 1468.2248 1271.3788 430.5994 749.8 6440.3701 2724.2846;
	1801.0677 1171.4152 2002.8233 591.3 983.1032 1402.6984 1202.0717 403.5549 724.5421 6150.239 2540.2541;
	1735.622 1105.1201 1861.1727 556.9805 941.7444 1298.0607 1095.8942 361.729 658.4868 5707.2595 2317.6676;
	1637.8181 1035.8028 1779.9197 566.5 897.8779 1216.6329 1030.3645 337.0577 623.0515 5503.6765 2131.0308;
	1598.1659 995.8196 1797.3728 577.6 901.5 1203.7787 996.0988 307.5698 582.8244 5204.564 1904.6047;
	1534.0818 968.1066 1703.5776 579.4 845.7025 1177.1938 992.554 302.1194 597.8437 5111.3499 1872.8525;
];