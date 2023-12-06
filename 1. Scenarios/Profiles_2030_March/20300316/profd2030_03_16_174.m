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
	1552.0431 866.4 1528.4473 536.743 770.4 1113.3411 863.1959 254.5596 491.9603 4575.5568 1588.187;
	1523.5489 856.6 1511.2 532.5745 761.3594 1101.7986 835.9948 245.4786 480.0068 4412.9464 1497.5369;
	1552.7018 875.6 1526.7323 537.6397 784.6021 1140.5042 846.0997 229.1189 473.8 4361.3153 1514.6683;
	1583.4675 888.2338 1533.4092 538.0824 789.0285 1124.0204 836.9 236.0703 478.1088 4420.6226 1561.6083;
	1626.5312 943.9 1613.3762 559.6308 856.5262 1176.5517 873.5 239.9443 497.0883 4513.8985 1574.8661;
	1678.8 989.2 1685.0315 578.2 893.6023 1233.1531 909.8889 255.5 527.2527 4797.6889 1719.2;
	1682.8715 1028.7 1749.1 577.6723 960.4098 1279.2 929.4881 262.0723 531.5408 4948.3422 1611.9526;
	1711.9054 1080.408 1796.2172 588.5556 976.6528 1307.9589 970.3901 260.5968 559.4343 5077.9242 1678.832;
	1688.1557 1070.8495 1812.383 577.3 977.7029 1318.1641 1011.9724 288.168 578.4635 5326.1704 1829.354;
	1689.3513 1070.215 1837.5496 564.7244 1004.6484 1336.7222 991.1058 281.0809 552.8966 5358.562 1751.6473;
	1723.9545 1073.0435 1808.9832 566.7498 982.3 1340.3162 1008.2246 282.0936 583.0112 5506.2958 1795.084;
	1691.4685 1061.0029 1760.4387 572.2623 953.8179 1296.5527 990.1358 285.8 566.8809 5401.9751 1825.3688;
	1693.4429 1059.9233 1741.9713 566.2201 936.7 1274.8676 1024.3083 273.2 571.5355 5381.3075 1804.6602;
	1691.3826 1051.302 1716.342 551.3324 886.4601 1216.3763 988.4709 283.2465 569.3615 5430.5218 1858.0624;
	1694.2915 1061.1858 1779.8644 552.1176 917.8112 1243.2 1037.7013 279.3136 559.6 5414.213 1884.3341;
	1713.3985 1064.3 1792.3217 578.2335 957.2351 1291.0785 1097.8988 317.9571 603.2103 5509.0283 2064.3097;
	1660.0078 1049.283 1799.9 583.9452 991.334 1341.4236 1109.4195 307.8105 604.5 5445.4188 2105.0293;
	1741.3129 1085.1194 1834.7152 582.1436 1042.7 1393.3 1110.6 307.4936 605.3148 5505.2267 2198.044;
	1750.8348 1072.0045 1873.0585 588.6155 1030.2259 1368.1 1101.5956 311.9408 579.6612 5477.0 2152.6564;
	1740.6283 1007.8727 1783.7795 587.7632 966.5508 1317.4143 1059.1317 305.4935 530.6886 5351.7847 2007.587;
	1720.7754 972.6911 1722.1567 558.5 895.6326 1258.8022 1016.6731 281.5533 552.9557 5257.6433 2003.8106;
	1647.2914 931.6331 1629.5619 554.3 837.3134 1203.1683 956.9383 263.6082 507.9645 5140.4027 1876.5663;
	1549.8886 904.467 1595.8486 588.4668 804.0973 1143.6879 891.7235 246.482 461.637 4892.4689 1483.8019;
	1514.5192 901.0569 1584.6 593.6282 792.2763 1137.0667 866.2007 245.1309 465.3591 4740.7541 1647.3098;
];