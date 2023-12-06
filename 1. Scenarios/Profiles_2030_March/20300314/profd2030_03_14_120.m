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
	1459.9323 908.9131 1575.0 546.2018 753.1175 1092.5504 855.2413 256.2286 512.1 4390.326 1684.1104;
	1477.8373 914.2698 1564.1 528.8122 734.4949 1070.1039 839.4719 247.2197 505.7 4380.9798 1676.3181;
	1486.4616 929.4292 1600.3724 541.2882 736.617 1080.8683 852.4058 246.7734 517.9 4379.9746 1701.9089;
	1558.8634 982.4313 1700.8362 541.6621 798.2431 1157.0831 887.9974 263.8 543.3 4553.9478 1797.4572;
	1736.1856 1131.9687 1897.6291 528.8226 927.4391 1329.0355 1001.2215 309.6 618.0021 5127.1187 2053.5737;
	1873.3 1231.7719 2012.242 566.4457 979.0902 1417.5537 1059.2278 325.3139 669.1425 5633.1208 2202.0269;
	1862.3382 1223.4983 2035.8626 549.6072 977.2764 1429.1408 1079.1956 314.548 697.4965 6041.2343 2263.255;
	1825.0177 1214.0984 1997.5137 553.5488 916.8378 1412.4753 1064.6256 331.9 709.5 6242.2996 2193.5821;
	1845.8 1238.2 2000.1982 537.0469 955.4328 1432.0403 1044.1592 340.106 716.7393 6368.8852 2189.9314;
	1835.0064 1224.5449 1982.3499 531.0379 927.1514 1375.2052 993.7167 328.9194 696.8563 6234.8877 1958.8829;
	1760.784 1205.7 1954.8555 520.3389 924.2432 1401.6202 990.8063 329.0 706.9149 6297.6272 1977.3858;
	1791.0054 1184.8989 1943.7002 531.3 905.0661 1382.788 973.7695 339.0886 698.3757 6305.3196 1959.8799;
	1767.0678 1168.0 1949.0631 514.3101 857.2469 1332.9148 945.0675 319.2446 670.6 6160.9034 1875.684;
	1769.8374 1165.2292 1965.5711 518.1397 841.2348 1348.433 959.6261 325.7 681.2 6195.8565 1915.6412;
	1692.547 1167.3882 1950.5854 500.5174 846.9154 1341.3035 978.8453 324.8692 694.1322 6290.5163 2039.7208;
	1643.9957 1135.5889 1934.1 494.7576 887.8 1339.7089 1005.6089 332.9296 691.4624 6249.3242 2200.4418;
	1622.367 1134.281 1913.7 499.004 900.6204 1382.8 1043.4 333.6679 682.8053 6084.8515 2229.5018;
	1639.0432 1170.3827 1969.5906 513.9154 954.366 1449.6767 1115.0279 355.4452 723.3 6044.476 2374.2048;
	1680.2838 1163.419 1920.115 537.237 957.176 1427.2005 1082.3132 356.3749 710.546 5892.2615 2348.8248;
	1658.8569 1109.7333 1841.0724 537.0 901.2057 1365.295 1033.9 340.6791 670.4955 5737.3437 2243.2702;
	1555.6 1034.8415 1728.1631 522.8303 861.5871 1250.7314 964.5083 290.2 617.425 5342.476 2077.0417;
	1479.6474 960.8123 1589.2 509.7 796.7864 1149.1648 889.7973 260.9247 567.6558 5031.6291 1912.3812;
	1455.2253 903.4 1523.8751 485.1023 740.9612 1069.3869 793.576 236.6646 523.0194 4292.2677 1598.7383;
	1482.3679 896.9743 1504.4301 507.1414 714.0071 1033.8563 793.2294 227.7744 507.4998 4368.9736 1568.3486;
];