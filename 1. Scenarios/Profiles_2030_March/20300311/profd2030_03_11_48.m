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
	1478.5408 934.7279 1574.4797 529.8396 750.7689 1070.8629 877.8132 255.159 498.2168 4368.8259 1711.9783;
	1471.2 934.2 1564.0384 534.8338 743.0895 1060.4767 864.7523 256.0 471.04 4297.5977 1687.8517;
	1477.0731 951.3523 1587.7009 539.133 746.3971 1060.3229 868.6113 269.1 478.1629 4337.7281 1689.291;
	1553.4653 1023.3 1680.8 553.3888 798.5238 1119.2717 908.9 289.396 514.0089 4599.381 1805.0899;
	1713.294 1132.7 1878.0481 600.4229 906.2348 1249.4766 998.8229 336.2221 594.7 5242.1636 2048.3128;
	1789.739 1210.4348 2000.891 608.0 996.4 1364.0374 1063.0281 367.6371 664.4 5828.7135 2219.0067;
	1839.3135 1252.9755 2005.6656 569.7588 1020.8718 1363.2352 1086.6286 389.3501 687.9073 6147.3886 2263.2707;
	1855.3649 1273.1067 2058.4716 568.9076 1041.7 1399.5944 1119.3819 421.9214 706.1 6418.6686 2298.6681;
	1892.9 1291.5773 2105.8463 536.6046 1085.0722 1400.5719 1143.4847 441.0264 716.9836 6559.8779 2354.1327;
	1845.6762 1251.008 2054.3167 561.6765 1017.5 1331.7177 1101.0187 431.4319 701.5 6486.1785 2354.7551;
	1930.3543 1267.6844 2089.1927 541.8258 1034.2159 1310.7475 1136.6046 437.353 714.5448 6606.3006 2460.9229;
	1865.0741 1233.1 2017.5893 534.8148 997.4052 1281.6073 1092.4794 403.3419 713.256 6472.5807 2321.618;
	1875.3271 1253.6878 2018.5469 548.06 1012.2915 1334.4378 1123.0845 422.6552 724.0384 6479.1506 2391.5954;
	1801.2262 1202.0652 1955.9296 544.0618 977.868 1302.6553 1069.5713 420.8539 721.831 6528.4961 2324.1759;
	1797.2516 1213.7325 2020.6495 549.6735 977.279 1318.5541 1054.2836 425.5575 684.7439 6282.7 2163.0515;
	1827.1295 1205.11 1993.4379 556.3373 1033.8204 1346.8226 1081.2858 439.0182 684.5465 6238.861 2227.7547;
	1823.3 1224.3736 2059.7879 568.0703 1045.0434 1418.2063 1103.4638 437.2584 685.4022 6107.7039 2307.1826;
	1889.6678 1242.2892 2103.4425 585.3 1061.1761 1464.1329 1124.1951 442.6645 712.5021 6156.069 2443.6375;
	1900.9654 1257.8132 2122.8445 583.0227 1030.1228 1473.2452 1153.6 421.4134 716.739 6179.9049 2463.2046;
	1874.6968 1197.7997 2015.8243 565.2345 968.0257 1399.9357 1120.1653 411.4729 693.2938 5965.3 2362.7217;
	1790.0935 1110.9082 1863.5605 536.793 886.2113 1283.4952 1045.0 360.1833 619.2329 5502.6811 2141.4438;
	1694.3658 1058.6988 1766.0022 536.2302 834.1802 1186.1666 970.8881 321.7 576.7 5138.913 1968.0;
	1636.2367 1016.5 1643.5297 509.3317 781.4524 1157.4 933.9395 294.9982 517.4846 4809.498 1903.4907;
	1593.8952 976.8114 1623.5543 547.2473 753.2304 1144.2754 898.716 271.1 509.8 4583.0014 1784.6;
];
