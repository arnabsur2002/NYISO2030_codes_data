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
	1433.0244 922.2706 1473.5449 584.3 680.0974 1036.8625 805.4387 233.4538 528.4982 4393.3662 1685.8664;
	1429.2294 927.6 1495.757 594.9431 678.4152 1035.2511 804.76 237.8 533.5325 4333.3295 1682.5564;
	1440.686 954.3 1559.6575 596.3906 691.3701 1074.5083 831.0 249.4497 543.9973 4416.1716 1732.8462;
	1535.0 1011.9214 1661.9441 604.785 753.2776 1147.5347 878.7343 267.8017 580.7622 4624.8871 1814.9;
	1704.7878 1152.3565 1859.6056 601.9 865.344 1308.8392 977.411 297.7334 651.342 5082.6126 2039.9287;
	1787.3138 1213.8533 1944.3879 595.0 930.5913 1418.1 1062.3608 326.4 723.846 5609.4377 2183.4;
	1783.401 1199.523 1949.3835 597.0323 936.0602 1387.0619 1057.395 311.3427 727.8712 5710.7496 2177.1817;
	1765.1345 1173.1585 1908.9654 584.9664 965.4 1367.2932 1058.1751 306.0556 725.0192 5991.2539 2147.3684;
	1737.3116 1122.9464 1893.1241 577.8883 954.7243 1320.9979 1016.8012 316.2969 703.8 5911.7404 2051.3616;
	1717.2437 1114.328 1856.5142 575.9 927.5791 1288.2618 1006.436 321.461 690.6233 6105.8595 1969.9512;
	1673.5284 1140.3534 1868.4976 571.4611 902.1559 1250.2722 984.0466 316.5944 697.7169 6156.8289 2005.0516;
	1632.2568 1093.9904 1807.2878 572.4 883.806 1230.2234 910.9723 307.809 679.531 6143.078 1948.7795;
	1651.3687 1101.0317 1802.4025 576.3 888.2565 1203.9413 938.1094 301.9433 670.876 6031.6719 2005.1482;
	1617.3117 1097.5742 1786.9238 575.5369 863.2 1221.8132 875.0556 309.4758 644.8402 5976.2153 2003.5521;
	1654.4988 1105.9147 1778.6441 580.3136 874.1 1266.7348 992.4995 317.6234 682.8033 6036.1688 2085.8431;
	1640.3207 1127.6611 1789.8 582.428 896.9 1287.4375 947.2732 311.098 672.7 5860.543 2086.8522;
	1579.9559 1102.1989 1793.2424 603.2514 881.6286 1326.9302 969.081 314.1186 653.8552 5666.7236 2122.3636;
	1647.0901 1151.378 1891.2048 618.3321 946.5385 1408.5854 1061.2569 347.3623 699.3181 5891.1438 2302.3257;
	1708.0002 1155.7191 1879.6672 604.7235 926.8503 1347.1138 1051.4551 329.4783 708.9485 5953.9971 2286.3188;
	1633.6363 1090.861 1772.3162 588.922 858.8209 1317.0255 1022.7 331.9 672.7646 5712.306 2209.978;
	1551.1159 1019.9 1675.9115 573.4401 781.7389 1200.3533 931.5598 305.1527 619.8636 5367.2059 2020.3715;
	1419.8352 945.174 1547.0388 568.5 741.3981 1117.0476 848.6496 270.2138 550.4123 4996.2272 1898.9;
	1396.9399 908.0123 1557.5879 550.7051 710.0849 1106.2 844.6889 257.0 527.6468 4607.435 1819.5343;
	1371.2227 905.8262 1542.2622 547.7382 710.4823 1079.5 828.3 251.8476 502.5214 4466.389 1753.243;
];
