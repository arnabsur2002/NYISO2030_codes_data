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
	1464.8 856.8837 1546.3296 553.3822 771.4152 1095.6754 847.8 233.7026 497.6085 4358.5345 1665.7557;
	1424.138 841.2 1532.8181 541.9045 745.0862 1093.2853 819.5024 226.3 473.4374 4285.6029 1628.4173;
	1420.255 856.5402 1545.384 547.8 752.4 1114.6206 834.6024 224.3172 481.2923 4207.7718 1631.0353;
	1471.333 885.3816 1593.3363 558.1903 783.0123 1159.7002 860.8068 237.1 495.397 4375.3349 1672.3684;
	1529.4537 938.912 1703.9555 555.2 861.9268 1203.1 902.7709 267.1626 521.1 4608.4668 1815.0;
	1571.6378 975.9348 1748.6813 567.0258 894.4247 1233.8 921.724 269.8 531.7233 4845.841 1855.8557;
	1658.4787 999.8531 1823.7281 556.5 934.6549 1292.4 968.727 271.6461 564.9 5036.8076 1920.1864;
	1660.3391 1034.8174 1894.2516 559.1153 960.7221 1326.2402 992.2657 269.2532 594.3724 5195.4177 1875.5208;
	1652.9788 1038.8539 1914.3119 563.4283 973.3946 1374.1064 971.1145 288.3 590.2053 5236.9226 1899.4773;
	1695.2028 1045.8008 1910.7786 569.2208 964.5169 1410.0403 963.2795 299.5276 594.9301 5308.0862 1884.5394;
	1653.9733 1043.0416 1875.2 550.25 933.2364 1381.4063 964.0494 296.8753 600.6 5396.3784 1914.4351;
	1619.5609 1024.1127 1854.8675 553.312 912.1722 1312.526 921.8025 295.0842 575.3584 5290.2147 1912.6568;
	1656.5316 1008.5077 1726.4244 544.0019 890.5115 1248.9261 905.1789 282.8 544.9365 5217.3443 1766.7071;
	1660.4 1030.6674 1770.7398 541.4 882.7157 1232.7 949.1016 293.4978 572.0 5231.5 1854.8488;
	1606.6575 1036.0 1806.4656 530.6797 871.7876 1228.2976 970.0048 305.5698 593.9125 5282.1919 1952.93;
	1605.2205 1066.273 1842.4136 557.2 887.7 1322.0 994.9959 313.8 608.6091 5243.5101 2045.3625;
	1679.2643 1096.4366 1897.6785 557.7013 945.1 1390.6062 1030.8703 321.9564 615.1788 5433.9855 2176.1757;
	1712.6 1133.1462 1940.4434 574.2 979.0116 1427.9604 1093.6903 335.3236 638.0781 5551.4 2309.3105;
	1750.7035 1140.5793 1949.3173 573.9 1000.1319 1389.7133 1077.2524 325.0 640.2137 5401.8299 2266.9449;
	1705.4265 1083.6115 1882.5491 566.6 935.1335 1346.0335 1064.9 322.7374 639.2242 5310.1867 2221.6156;
	1669.1956 1047.7538 1781.9 559.2352 895.099 1303.4505 1013.5427 307.1251 624.2232 5191.9181 2105.3148;
	1569.6562 958.2712 1711.6073 544.7666 861.2178 1217.948 940.3 293.1043 590.5205 4859.7027 1968.3339;
	1526.4406 949.88 1685.6 585.2532 798.0693 1187.3487 931.6802 281.6337 554.1301 4628.1333 1817.0;
	1478.5493 919.5729 1637.2576 589.6955 752.0695 1171.9 887.5629 258.4153 510.7551 4098.9503 1735.2372;
];
