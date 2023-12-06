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
	1528.4516 874.2113 1565.4356 550.2 795.0962 1082.8 815.8936 252.6959 481.7979 4283.8867 1620.0167;
	1524.0057 871.551 1572.7391 544.1553 795.1206 1057.3738 816.22 237.3377 480.2 4256.4401 1607.7174;
	1541.2813 900.5916 1617.735 556.91 817.0 1131.4809 838.3504 239.6846 507.8515 4358.4094 1669.9871;
	1610.6052 960.4487 1708.9074 565.6379 865.5806 1196.7858 876.2639 244.3751 534.5733 4536.0614 1766.203;
	1760.6 1084.3512 1948.5402 597.1062 1001.2409 1367.4 986.7264 279.696 620.6098 5136.0039 2042.5717;
	1862.8027 1148.8086 2065.3753 618.4412 1090.741 1457.0 1070.7881 324.4838 698.0 5623.8703 2196.288;
	1859.9957 1135.7314 2047.1424 611.2895 1095.191 1464.5596 1095.7684 328.2511 720.7414 6003.9329 2252.9231;
	1867.6105 1130.9743 2080.9221 590.0322 1102.2711 1492.5429 1121.7187 319.5655 717.6261 6133.8959 2226.0872;
	1860.8008 1135.8264 2093.5827 568.1267 1086.7121 1512.048 1111.9286 307.3739 719.7034 6169.9311 2251.5131;
	1837.9213 1144.4372 2072.075 545.6842 1072.135 1426.8 1075.2198 299.3221 708.6935 6211.7513 2297.2567;
	1801.1781 1113.4713 2070.0764 544.2843 1066.7193 1375.339 1020.2342 316.5636 690.2928 6227.2763 2163.387;
	1852.0146 1159.5093 2105.9971 553.8358 1068.3328 1409.3973 1048.5138 327.5 682.063 6279.4851 2280.1974;
	1846.7537 1116.2169 2041.8 555.1646 1035.4854 1415.1604 1034.0586 320.6341 671.3268 6165.8379 2217.7729;
	1802.5325 1151.4288 2004.8956 550.9527 1017.888 1388.5424 1013.1057 320.6884 652.871 6074.9769 2126.7;
	1807.1 1104.8028 1992.7661 546.1 1025.4349 1342.6972 1022.8 354.8 639.9942 6111.0337 2178.7919;
	1842.6295 1199.4 2090.8 549.2429 1055.4094 1448.6308 1084.9716 356.5458 657.4 6288.1541 2333.3115;
	1854.3111 1178.6276 2086.1931 565.2726 1069.0753 1524.8592 1130.445 380.9488 688.894 6218.4111 2396.5213;
	1893.9701 1229.1664 2100.7724 578.417 1119.1917 1572.4481 1181.778 406.3524 705.8 6251.8643 2483.0;
	1895.9794 1215.6096 2076.5907 543.7121 1108.2412 1566.2 1180.9356 418.2733 712.8634 6136.0027 2486.433;
	1852.697 1164.0025 2000.0877 551.6395 1055.2 1476.5845 1123.9 395.6905 673.1215 5907.1072 2363.7846;
	1738.3057 1073.1145 1880.9 537.66 965.0652 1326.9158 1011.6364 350.5391 592.576 5495.7429 2132.1895;
	1670.648 1024.7344 1789.3951 543.6639 904.1818 1226.0 947.24 316.2 537.8 5097.3448 1938.9647;
	1571.5 957.1176 1642.4536 542.9188 829.9007 1158.9471 890.3978 287.8307 521.0224 4734.3945 1841.4371;
	1513.2117 949.7384 1633.0269 574.169 819.4704 1162.7805 894.7776 302.7458 516.0622 4622.1199 1822.397;
];