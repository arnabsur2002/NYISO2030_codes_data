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
	1621.8438 952.2472 1680.219 593.5138 816.5987 1216.7563 917.2387 265.3 513.9 5061.1808 1854.7599;
	1590.9875 948.8802 1666.282 596.2592 828.7615 1236.7452 903.8405 254.1307 510.0 4932.3641 1795.9246;
	1595.226 973.7444 1714.2853 605.908 837.1705 1234.7391 912.3084 251.5272 507.5216 4930.45 1805.111;
	1665.5505 1043.7705 1818.8444 622.3601 895.0726 1301.7561 949.1342 278.6785 533.2404 5091.8756 1911.4672;
	1824.5997 1167.2745 2017.5806 636.9 1012.519 1420.2 1050.6724 310.2521 614.7394 5451.564 2145.5352;
	1950.9886 1244.6605 2125.3297 639.6837 1045.3321 1473.3647 1123.9 307.7338 688.9918 6080.9093 2286.9173;
	1947.786 1243.4217 2102.2599 632.6081 1034.9298 1490.0548 1120.6581 284.0965 707.5559 6315.9638 2306.8393;
	1902.4 1241.4003 2096.9 622.7596 1044.4662 1473.0025 1118.6758 340.8907 701.7413 6541.5712 2279.4539;
	1907.5232 1230.9952 2097.4097 617.2441 1042.1463 1464.4 1098.6032 364.414 691.4 6718.5811 2324.7723;
	1934.8129 1232.0948 2101.5807 612.6 1064.4485 1414.6451 1094.8827 369.9278 689.0719 6833.3679 2380.4522;
	1901.1609 1229.325 2103.8506 628.2378 1073.5094 1477.6466 1065.1895 370.0012 687.2555 6875.1806 2401.5403;
	1873.2028 1219.0644 2035.1545 608.627 1062.8943 1481.5304 1078.3675 353.7182 672.9 6843.97 2431.5503;
	1867.1331 1172.8157 2006.5765 615.1822 1040.964 1379.3487 1018.7231 348.3744 650.1655 6745.5186 2362.4091;
	1803.1978 1132.6233 2015.3058 604.2814 1029.8618 1346.5 1022.3233 350.3073 643.1 6552.8068 2333.0457;
	1822.57 1138.746 2094.4542 604.6 1062.2763 1368.117 1065.4 379.5267 659.0134 6568.8997 2375.5134;
	1845.025 1160.6 2074.1512 621.8089 1039.1459 1398.3579 1081.5671 375.8917 659.9796 6616.9092 2450.9758;
	1871.3062 1196.4 2105.6299 632.5249 1048.7921 1446.5219 1110.3631 375.6458 687.0384 6597.4024 2495.4473;
	1918.7415 1230.5897 2135.5285 641.6441 1080.8636 1494.0105 1189.6 369.8007 719.2921 6551.8551 2641.2269;
	1953.9906 1239.3127 2139.4771 645.893 1055.3373 1505.0755 1200.6431 378.272 721.0 6733.1947 2663.6159;
	1898.5794 1172.73 2016.5254 633.8158 1006.6368 1427.7496 1145.4399 371.4 658.3906 6239.2216 2419.1693;
	1745.7605 1041.0693 1862.4583 607.1956 916.8853 1301.176 1073.8506 326.9261 616.231 5839.178 2207.657;
	1654.8365 943.9144 1751.2 603.5556 868.6212 1229.1101 993.0183 283.7317 552.1991 5322.8165 1973.8393;
	1579.6284 949.8255 1701.9479 606.7 906.383 1193.2278 948.71 276.4539 558.8 5191.2647 1923.6966;
	1574.0 944.9784 1711.4049 607.3195 882.3882 1155.339 903.6444 247.4548 536.5359 4941.4635 1823.8474;
];
