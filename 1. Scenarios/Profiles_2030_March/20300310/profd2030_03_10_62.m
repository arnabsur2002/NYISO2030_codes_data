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
	1543.9055 940.2052 1665.2994 554.5 914.4148 1348.9897 960.2977 291.5298 590.2496 4912.4347 2075.3817;
	1511.9478 910.6361 1601.5072 478.758 891.0087 1318.6646 922.6097 264.9592 547.6516 4624.0678 1921.4;
	1516.7205 910.1 1589.9 545.0328 892.2897 1321.8324 908.4308 262.477 527.8809 4548.3146 1825.6731;
	1519.1 920.7161 1631.078 530.1636 886.6 1303.0498 917.0 263.3 538.1 4588.8931 1878.0745;
	1589.6777 980.8 1715.2927 539.1953 943.8329 1353.0748 946.7981 261.7 550.3292 4680.9243 1936.5228;
	1676.1859 1051.6367 1867.5757 594.2291 1012.0665 1410.179 1008.0 278.7 590.066 4933.283 2059.629;
	1699.4247 1090.2559 1910.3589 613.357 1048.7098 1465.4321 1089.5829 326.6549 638.9731 5186.8157 2151.3348;
	1746.0409 1126.0 1950.9628 611.4 1078.5133 1541.344 1154.1524 353.3813 648.2072 5406.4624 2267.7702;
	1738.3381 1109.1358 1974.3904 606.1 1093.1426 1623.545 1182.0572 364.1 656.9645 5428.1674 2392.7351;
	1737.3981 1118.2 1952.2083 599.4966 1082.0874 1603.8086 1217.8998 351.1 683.2 5702.7002 2419.8281;
	1761.9543 1120.0 1951.673 581.7379 1066.2 1627.4207 1199.3303 337.6855 677.1637 5629.1057 2285.7059;
	1782.6905 1162.645 1927.8169 581.0359 1065.3961 1621.9551 1177.5037 357.6 694.072 5743.883 2428.9599;
	1700.0226 1127.13 1859.7396 589.6956 1044.2079 1583.6819 1122.6587 363.8456 676.0473 5628.0155 2406.3858;
	1686.5155 1115.6706 1842.5 580.1372 1035.6746 1597.1422 1121.841 336.8106 672.5256 5578.3037 2354.6102;
	1703.3178 1116.3368 1903.5562 569.839 1032.2353 1583.3757 1130.6501 356.9 665.1535 5733.6337 2447.5287;
	1703.8144 1126.5984 1932.1481 577.6 1031.5197 1589.0052 1136.1835 332.3255 681.6254 5629.3432 2546.8893;
	1707.9 1138.7008 1936.2568 591.1434 1052.6696 1600.6097 1178.7414 337.1 728.4582 5716.6592 2797.5991;
	1715.1274 1128.5591 1932.9401 601.6838 1094.3075 1606.8923 1172.4645 334.5568 764.8772 5767.3136 2673.721;
	1719.6727 1115.9698 1894.6306 588.3336 1084.3541 1560.8908 1171.1 355.9 762.3182 5894.8565 2650.1509;
	1721.1726 1070.03 1833.962 564.6 1029.6 1425.2044 1102.6555 340.9 708.2739 5659.3878 2408.5311;
	1698.5515 1038.6898 1727.6256 526.7 960.9544 1340.7 1025.1662 322.887 654.9389 5483.7248 2239.7471;
	1596.2905 974.9654 1627.8305 511.7501 888.8421 1278.8362 977.4567 289.7718 597.5425 5409.7622 2099.4017;
	1512.1136 926.3435 1560.8255 506.1811 858.2228 1148.325 893.2408 271.7532 530.5999 4874.022 1848.1797;
	1521.887 924.5283 1568.4613 532.5244 808.0362 1134.691 874.5396 243.5951 513.5484 4752.1821 1763.4777;
];
