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
	1448.5524 945.9274 1639.2162 563.152 913.7054 1112.901 868.3494 276.7106 548.2 4571.3128 1742.8298;
	1442.9234 914.8033 1631.1767 574.3659 911.1544 1117.4607 867.8135 267.8 538.79 4501.7655 1724.6175;
	1467.0157 935.6976 1657.0471 579.2 908.7823 1156.3589 891.8 289.3414 556.5 4540.4148 1758.0202;
	1527.9748 1010.9152 1756.297 578.5343 969.0705 1216.1239 928.3044 311.5419 577.4858 4819.1571 1884.6;
	1666.1712 1129.3554 1918.4019 607.5739 1083.3832 1363.1989 1047.5 342.8 661.4276 5318.8028 2130.0464;
	1725.8688 1188.4357 1964.1529 625.8275 1129.3033 1446.9323 1108.6 366.0 731.6063 5915.1986 2267.8297;
	1766.9984 1209.073 1990.7308 608.8851 1117.5 1454.668 1128.1175 376.1078 744.9149 6301.274 2298.4835;
	1791.0439 1194.6681 1978.9165 609.2911 1119.8 1398.4018 1114.342 367.6654 731.9 6478.7794 2225.8239;
	1770.1168 1200.9 1983.9963 616.9 1077.511 1340.357 1097.7498 358.9005 716.636 6438.5557 2118.8;
	1799.9459 1216.8 1944.4398 615.7755 1059.2444 1335.7 1100.6594 369.7681 725.2 6390.0883 2162.6317;
	1787.3643 1179.3193 1927.8233 591.3585 1064.4813 1261.0835 1107.1819 355.7478 712.3307 6360.9024 2100.1426;
	1745.0914 1148.983 1874.0804 579.9998 1037.1569 1249.2468 1077.7196 359.9537 709.445 6326.7272 2088.0706;
	1723.0708 1111.2081 1825.8613 571.2327 996.0639 1242.7984 1047.6122 335.6 688.2734 6179.8682 2091.888;
	1721.146 1107.033 1787.5008 574.0297 1001.6777 1273.7378 1067.5065 334.8 695.8471 6230.5077 2163.196;
	1696.8042 1043.7477 1782.5187 581.7155 1006.2607 1301.6884 1084.7918 340.5337 730.3 6207.8371 2189.6516;
	1662.936 1037.0229 1760.4324 581.2 1021.1339 1394.1652 1152.4283 358.9693 755.6582 6295.7237 2301.8874;
	1681.7487 1058.3515 1842.488 572.5 1067.5257 1421.144 1206.3883 382.3214 750.6 6341.101 2454.7331;
	1739.6115 1141.0523 1959.6833 588.0708 1112.275 1485.7454 1280.9291 394.4677 762.9 6442.101 2546.2841;
	1803.9775 1164.9013 1950.507 592.0698 1105.202 1481.1373 1259.3609 390.8856 746.3466 6235.0188 2492.8529;
	1756.1625 1100.2536 1898.1263 574.2 1055.8467 1386.8953 1202.1562 354.141 725.5281 5970.2664 2404.1179;
	1728.3116 1044.6009 1775.375 567.0987 978.4126 1295.899 1093.0724 314.1 669.3112 5633.6771 2174.9495;
	1597.0068 991.5155 1672.0908 550.8 918.9619 1200.0164 1023.604 273.9625 610.1963 5203.5555 2011.974;
	1490.7 956.8423 1607.6652 535.4 863.765 1115.0366 919.5584 262.0 571.086 4841.2127 1839.817;
	1448.8753 931.6636 1601.135 531.6447 868.5793 1112.5404 890.7 257.3247 553.5468 4732.3148 1788.2674;
];
