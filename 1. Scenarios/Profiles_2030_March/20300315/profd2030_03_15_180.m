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
	1420.9312 886.9 1512.6199 551.8259 731.3 1089.7397 836.212 217.8242 511.696 4471.2439 1667.1;
	1398.1828 885.9614 1498.5904 557.3299 724.6 1077.6911 807.2276 204.734 488.3918 4348.3806 1610.9947;
	1432.8759 883.8 1501.7129 554.9366 748.237 1058.8208 796.4157 220.8 489.7793 4378.3941 1656.8;
	1462.0482 927.0268 1584.8314 576.6011 791.1859 1128.3 842.9 228.1 505.8356 4577.6999 1745.296;
	1650.0896 1043.5406 1787.0798 597.0 911.6 1273.1368 931.2093 268.6503 578.37 5035.5376 1999.7671;
	1760.7159 1109.0436 1827.6392 602.0919 947.4601 1332.7256 977.7535 295.477 651.2686 5527.6891 2145.2458;
	1812.9646 1136.8893 1882.2857 595.8856 968.3 1384.4629 1049.1472 310.345 692.4 5947.7096 2267.1958;
	1815.0363 1141.1 1864.2125 584.3 938.4002 1404.2 1047.5675 271.3911 686.5034 5994.563 2202.2;
	1823.1 1107.2056 1841.1252 579.6645 949.4473 1429.0 1063.2074 262.3357 696.601 5899.5796 2184.4342;
	1817.2411 1141.9256 1856.8011 548.9446 938.5749 1399.33 1070.1444 281.308 720.2209 6165.0374 2347.6446;
	1819.5279 1127.3278 1829.9204 548.2 947.4298 1388.0034 1046.1191 281.2118 707.7514 6136.5079 2336.5743;
	1814.9712 1116.838 1811.5 524.0921 954.3981 1383.9041 1024.9587 302.3 692.0 6118.8 2279.6531;
	1809.0036 1094.3885 1778.967 537.9 959.4624 1422.2322 1043.3821 305.8408 679.1822 6118.5126 2232.0698;
	1791.8746 1068.5023 1795.3109 544.7 949.2694 1414.5776 1041.5327 314.7558 677.9161 6110.6045 2221.0099;
	1782.1176 1017.847 1784.8348 553.4 900.4 1412.8976 1030.1421 298.5521 679.3286 6142.514 2200.985;
	1774.7814 1097.5446 1866.2305 552.3548 935.2681 1465.8102 1063.7648 307.9194 672.2 6027.556 2269.9516;
	1778.4638 1106.4916 1873.9077 582.4705 977.9 1482.8297 1138.5169 334.6329 702.0916 6032.8786 2397.1423;
	1815.0959 1129.4932 1907.8908 579.5006 996.1145 1511.5402 1137.6656 333.3 710.933 5903.8317 2426.9825;
	1810.1986 1120.6012 1853.2 586.2 953.397 1482.4349 1119.6453 339.8194 706.8335 5786.1 2429.9462;
	1797.743 1065.2349 1834.1523 573.4 950.875 1432.2695 1116.2483 327.6993 679.3 5580.2061 2371.9281;
	1689.1193 999.7974 1708.3106 563.91 888.9 1348.7004 1001.8503 304.5175 625.8 5284.639 2166.251;
	1642.2194 967.1203 1633.5431 546.8586 850.2422 1287.0628 964.6613 276.2487 571.2 5038.1307 2034.1391;
	1592.0 907.2194 1581.5748 551.6 769.291 1219.9758 947.4294 260.1487 542.6168 4880.8066 1859.4;
	1556.9471 884.1279 1555.8 559.4524 721.6961 1145.9915 900.0762 246.4102 514.8361 4702.7914 1761.058;
];