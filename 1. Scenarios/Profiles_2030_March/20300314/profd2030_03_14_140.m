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
	1512.1975 961.0 1584.0 539.8786 751.9168 1086.101 823.5884 233.6825 524.7255 4403.4181 1700.7355;
	1545.8453 964.5244 1592.878 549.5261 743.8282 1080.9608 825.5585 228.7 512.1905 4353.1756 1701.6172;
	1537.4693 978.9061 1611.0347 548.8527 738.1174 1074.9251 820.1237 231.3082 508.1551 4367.8156 1707.3;
	1617.1378 1056.4146 1741.9755 566.9 846.1285 1186.6021 889.3048 251.0511 547.2265 4650.3238 1851.4771;
	1800.718 1199.455 1959.8513 583.252 957.3984 1365.789 1013.0459 300.4123 625.0226 5216.372 2115.8882;
	1914.4114 1277.9056 2109.1559 594.8952 1057.451 1443.2638 1076.0235 324.1178 694.489 5789.5476 2254.2305;
	1878.8448 1284.4249 2093.8243 579.3484 1035.4 1444.8904 1113.2796 332.0 716.8554 6130.8454 2283.9084;
	1859.2569 1282.182 2071.9998 583.6319 1014.5 1452.3807 1119.4585 329.1553 710.0 6273.2766 2259.3213;
	1902.17 1301.8481 2068.4584 578.3423 1015.7 1462.0921 1112.4951 344.1 709.482 6312.6377 2280.7;
	1927.9671 1334.034 2039.9731 563.5352 1009.6064 1386.5926 1038.5744 322.4299 703.6543 6228.4234 2156.8903;
	1936.3908 1347.7123 2023.4074 567.159 1020.2 1413.3298 1046.7 308.2 670.1747 6151.7402 2123.9943;
	1853.7509 1294.9654 2006.7065 559.9 993.193 1379.802 1042.5767 291.3644 653.3441 6032.9831 2003.9078;
	1813.0642 1251.2548 1980.4422 553.063 974.142 1314.0928 1041.0757 302.7835 659.3846 6003.8063 2075.7452;
	1750.037 1216.7425 1898.0 551.9669 931.7002 1260.9757 1030.6651 303.6482 650.7154 6071.6902 2179.5507;
	1762.7313 1230.75 1939.7157 546.5 957.5607 1289.9821 1052.2261 292.0898 639.8473 6060.3928 2209.4688;
	1718.0811 1241.3481 1974.6136 557.1064 967.3226 1338.3 1055.1743 303.6149 640.6473 6107.8883 2252.3;
	1766.3739 1330.4668 2038.6119 551.6347 992.9331 1386.4023 1057.7 309.7307 652.3199 5985.4 2297.8675;
	1797.3266 1313.2372 2017.8561 571.5743 1011.1 1412.8 1105.2535 333.2581 702.6247 6020.7254 2410.6439;
	1792.9292 1294.4101 1992.0864 567.2345 974.2035 1427.4213 1087.1336 322.2564 689.2 5846.0155 2365.9247;
	1711.1811 1218.4563 1883.3 551.5445 928.7 1342.4676 1043.8573 309.1904 669.7391 5622.6548 2276.1938;
	1664.5 1140.7519 1791.4874 540.8 877.0347 1235.7752 950.8304 265.5531 604.4996 5190.1316 2092.8629;
	1501.64 1047.0544 1645.7116 524.5742 821.2225 1143.2 892.3594 251.0027 561.8996 4852.6256 1918.4;
	1494.0292 1006.8878 1594.3286 535.8603 788.2513 1111.8372 828.1034 192.6903 497.8458 3388.0023 1719.8;
	1447.6402 995.5461 1590.4 527.8 784.5 1103.6697 790.4086 197.0 490.3658 3795.529 1642.1387;
];
