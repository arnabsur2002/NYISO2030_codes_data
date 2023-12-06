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
	1517.8529 925.3 1530.0916 557.4595 774.6163 1108.6805 836.9235 257.8599 512.943 4477.8203 1471.1396;
	1508.5157 929.7346 1517.6776 567.3 759.0467 1067.0622 816.7386 246.0775 496.9 4423.4211 1550.7149;
	1520.1271 942.7221 1572.4308 574.1974 784.2485 1093.6565 836.8041 255.1819 504.8115 4467.552 1597.806;
	1612.8908 1017.2643 1666.4254 574.0974 827.4415 1172.7853 873.3608 270.4 551.946 4704.4097 1758.4035;
	1756.17 1150.1385 1870.3811 603.8857 951.6 1318.8469 985.8374 297.7508 635.0285 5260.5074 1976.3653;
	1858.1546 1226.6239 1960.1664 602.8767 988.9614 1407.393 1043.431 308.6139 689.4 5823.4954 2136.6933;
	1883.3447 1230.5 1969.8766 600.4 983.0416 1405.0264 1078.7025 316.5048 699.9 6215.555 2176.9663;
	1915.8244 1237.4867 1965.0535 556.5552 989.1222 1392.1 1065.7806 314.6613 698.4823 6473.1983 2128.5025;
	1870.2041 1213.6734 1912.9228 553.1803 955.3612 1317.8341 1036.6627 282.0023 702.198 6421.4371 2074.8755;
	1835.4508 1178.5272 1848.7517 525.6353 898.579 1294.6462 960.5 285.7609 671.9 6434.0432 1965.7264;
	1865.3465 1196.3173 1881.462 549.247 930.0596 1323.9071 988.4203 281.5743 667.1487 6396.057 1959.0729;
	1857.6227 1193.3 1869.1017 540.0226 894.6062 1316.8932 976.8844 288.9 657.4901 6329.1566 1929.9789;
	1876.9264 1183.9673 1828.8521 538.6521 894.6597 1311.7587 977.7588 298.234 653.5722 6332.1502 1890.606;
	1858.0951 1156.1309 1801.9784 544.6429 912.0592 1340.2093 1044.9919 308.1 668.3475 6375.0583 2121.7475;
	1830.9467 1140.0196 1771.8 535.4118 882.9128 1301.1857 1011.8189 293.2 660.9 6245.5611 2117.5067;
	1795.6702 1155.6983 1829.2813 538.2936 907.2132 1338.6 1039.7411 312.3385 665.438 6248.4241 2180.2;
	1831.2017 1147.9009 1839.9556 558.4 945.4205 1374.9 1020.9358 318.9222 660.8266 5998.016 2209.9973;
	1793.659 1142.812 1834.522 565.5652 908.7519 1391.9407 1037.0675 313.939 685.3813 5865.5028 2307.2008;
	1825.0 1166.7635 1850.8765 568.4274 923.1746 1393.2903 1051.2736 310.9684 667.9922 5846.4583 2288.5204;
	1752.798 1091.3897 1770.5792 560.915 874.3124 1329.4476 997.5084 301.7569 655.957 5540.4966 2081.5298;
	1670.9466 1012.8086 1681.6324 551.2805 851.5274 1231.3941 951.6 270.4845 593.5981 5129.585 1874.5949;
	1561.1 950.5 1580.0925 552.031 800.7 1140.6 897.3 267.6 534.3605 4757.091 1720.1129;
	1504.3896 886.3864 1533.7868 557.4462 808.0433 1115.3 868.2 252.7 518.4298 4599.9635 1695.5215;
	1504.5466 883.61 1511.7 550.9809 816.5938 1078.8132 806.6 243.111 476.7598 4328.9664 1500.5128;
];
