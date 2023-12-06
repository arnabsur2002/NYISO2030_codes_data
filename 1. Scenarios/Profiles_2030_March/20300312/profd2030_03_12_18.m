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
	1634.6767 919.5968 1659.9 586.7613 807.3164 1109.7359 834.3316 263.8068 492.5 4454.457 1664.9663;
	1601.4346 922.7801 1641.0542 584.8089 802.6262 1105.307 824.4101 251.4 474.7172 4389.0329 1621.4851;
	1640.3416 970.2914 1705.5211 597.4662 810.3 1128.2621 853.2193 259.1882 488.9899 4453.876 1682.1939;
	1717.4767 1046.5 1812.2672 611.1714 889.6901 1222.1824 919.2668 286.5209 524.7193 4675.2363 1839.4385;
	1846.3704 1151.4446 2008.1819 642.6737 1007.5995 1386.2204 1016.9612 336.3401 626.2358 5368.4383 2092.8;
	1986.1 1235.0438 2152.6744 659.1603 1088.8099 1475.2616 1058.6915 363.3176 668.1106 5879.8574 2244.17;
	1962.8424 1236.5369 2107.4595 648.0005 1090.9 1478.2662 1116.0768 385.8986 692.7322 6222.7 2263.126;
	1962.5645 1233.6491 2081.6462 658.8056 1089.4594 1457.4464 1111.4158 384.6442 711.4559 6369.6968 2221.3545;
	1918.925 1230.3624 2101.088 635.5211 1054.1165 1456.9361 1097.6202 377.2176 693.1972 6431.9184 2139.4022;
	1891.9352 1199.7142 2065.3178 610.922 1021.7812 1405.4805 1059.3712 376.2143 690.984 6346.8276 2054.1595;
	1897.9905 1197.89 2045.3391 620.5858 1026.1047 1419.126 1043.5724 387.5069 668.0645 6217.9742 1975.0271;
	1903.0257 1219.364 2062.2989 612.3807 1013.2762 1449.6 1052.7122 383.8738 684.0 6053.6889 1996.1411;
	1884.8844 1210.1585 2020.4 618.1833 1036.9496 1409.4777 1018.5155 383.182 672.8 6194.466 1974.5428;
	1820.7628 1218.578 2000.5878 609.3358 1040.2809 1448.6837 1019.4534 374.4462 664.3556 6180.7097 2070.0725;
	1833.1569 1195.0494 1980.9112 621.0732 1023.4699 1432.3814 1019.5177 373.2301 630.0342 5788.2136 2049.9777;
	1830.3255 1207.3 2061.6623 614.4284 1075.8062 1495.4231 1086.8726 387.5432 648.3832 5787.3382 2188.4284;
	1791.5693 1223.7746 2106.3496 623.6 1095.6189 1569.7062 1140.9648 398.3965 666.5262 6202.8382 2311.4676;
	1877.0042 1258.3108 2164.4751 642.4005 1143.2048 1640.4517 1213.7006 435.7721 720.3616 6361.3081 2468.7382;
	1983.9298 1280.9101 2149.8727 646.7139 1074.1355 1593.2 1205.8097 431.7162 715.8488 6147.6742 2461.7804;
	1874.505 1190.0372 2036.8335 613.4691 1041.4 1515.8487 1171.5082 396.6327 693.1097 5924.8042 2345.833;
	1779.6053 1103.1844 1891.3834 602.8 946.2405 1412.3956 1081.6705 362.9126 641.2415 5628.2448 2131.9688;
	1647.6994 1017.0186 1789.5846 592.8 905.4097 1303.9246 1002.3793 348.209 588.6335 5218.4 1947.2611;
	1597.3358 996.7778 1751.912 593.4973 877.4153 1241.0102 966.7543 339.6668 553.5225 4949.3933 1847.5842;
	1584.5069 959.0166 1724.9457 601.1451 822.7623 1156.7758 917.5665 311.6519 526.5387 4720.8897 1772.427;
];