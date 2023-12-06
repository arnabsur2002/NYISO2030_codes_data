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
	1450.5657 867.7 1517.1857 502.1286 778.322 1178.3843 863.3903 194.3298 496.9 4439.7888 1710.0142;
	1445.1433 846.2216 1500.3026 490.1627 744.3386 1128.4577 830.7907 188.3406 486.8229 4351.5323 1655.9177;
	1472.6824 856.0 1533.5295 494.7509 780.9572 1171.8068 836.4627 192.5977 491.1 4382.6858 1663.7247;
	1499.6477 896.7797 1601.7164 489.1862 812.3321 1198.551 865.7048 195.0338 514.8799 4529.3392 1742.0918;
	1710.0003 1014.1709 1821.5338 540.6821 955.0173 1356.0559 989.9703 234.6888 616.8505 5084.0823 2008.55;
	1830.8165 1098.9863 1920.0843 552.4609 997.9764 1427.7262 1052.1 233.74 700.0555 5610.8 2176.3884;
	1871.4642 1117.6 1962.7689 563.2219 1027.7543 1421.0451 1075.7442 243.4277 712.3227 5899.1583 2245.5254;
	1874.2956 1130.0398 1963.9 568.7829 1026.572 1433.4913 1114.6669 264.6545 725.4122 6174.3676 2356.206;
	1912.0832 1159.217 2013.0 564.8694 1048.9684 1458.8352 1128.1 295.8794 738.2564 6302.6629 2441.8;
	1910.0432 1137.3373 1965.1407 559.7 996.7948 1430.6688 1066.4237 293.6 718.3527 6288.3278 2360.4241;
	1894.1077 1083.9438 1897.7711 550.0831 959.4874 1346.8038 1062.1716 301.3872 705.5787 6200.2954 2319.5477;
	1891.0111 1095.4346 1919.4151 536.1775 968.3079 1384.0171 1112.2001 290.9 701.3386 6239.8967 2378.7538;
	1832.8341 1092.7277 1874.2128 541.1529 953.0 1356.0952 1072.636 285.7686 686.1908 6133.5264 2355.6652;
	1770.739 1098.8283 1881.5212 516.0308 952.9184 1345.994 1086.5731 291.4342 683.4521 6146.3921 2322.319;
	1761.8269 1116.5035 1853.6724 536.2302 933.8058 1373.5514 1068.5143 277.7881 674.9104 6138.0997 2331.4382;
	1713.9347 1130.9582 1815.651 545.3113 933.2619 1385.6141 1074.5075 261.4322 681.1937 6137.8837 2499.7637;
	1724.7273 1130.0784 1871.8968 552.3965 979.9663 1419.214 1085.5423 269.167 666.8116 5969.4546 2422.3613;
	1796.2286 1138.7447 1898.0724 557.9421 1000.0689 1452.9831 1112.1 277.8962 683.1523 5882.1564 2430.0205;
	1794.3885 1134.9148 1904.0447 566.5822 989.4 1425.0452 1091.4059 275.4716 651.7471 5761.0595 2387.9199;
	1758.724 1098.6 1847.9266 539.0 947.772 1368.2938 1067.2445 272.3786 645.5696 5613.7487 2293.561;
	1707.8953 1020.2881 1759.3 518.0 906.0348 1291.953 1014.2541 252.697 613.9 5370.4019 2149.9013;
	1630.4757 954.39 1663.0678 517.3 811.2127 1186.3784 945.8883 220.4035 560.3556 4978.771 1972.6244;
	1633.3172 929.8749 1607.2364 519.2688 784.1481 1206.3026 917.3911 247.9 531.3 4848.2832 2002.4677;
	1573.2974 866.7373 1529.4084 517.5897 748.5 1149.811 871.6193 223.7 502.1192 4612.9792 1826.102;
];
