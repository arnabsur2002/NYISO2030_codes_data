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
	1516.1387 877.0251 1459.9752 547.0 701.2202 1072.3939 832.7311 265.8713 496.3432 4526.6351 1750.7501;
	1504.3198 870.2275 1462.9014 544.1956 691.3487 1061.2481 824.0669 249.0 480.6248 4457.735 1691.8172;
	1495.2078 883.0 1471.5 542.0436 715.4467 1057.5174 836.0719 253.4143 490.7065 4431.3681 1704.2584;
	1531.2504 897.0584 1495.6026 560.3194 729.8717 1081.093 850.5786 251.6792 492.7 4552.0085 1736.7517;
	1602.9631 968.5434 1571.4969 570.9613 806.8796 1163.9342 915.7592 278.0471 525.5304 4724.6768 1851.9823;
	1644.2079 1004.2 1661.332 572.8392 849.4574 1204.1607 946.4661 300.4 551.9402 4830.8644 1937.1066;
	1731.4834 1051.3 1748.7788 569.205 886.047 1254.6686 1005.3335 324.55 588.8709 5003.4653 1985.2094;
	1768.8787 1082.0224 1801.7814 588.7 899.4022 1301.2436 1029.9165 320.2491 619.6 5196.9 1990.0;
	1807.106 1104.3798 1848.523 581.0 912.044 1342.8122 1060.1766 314.9948 642.2957 5242.7572 1918.9716;
	1800.1272 1093.3206 1867.6131 565.8687 889.0699 1348.8805 1075.0658 339.1067 633.6278 5289.7719 1939.5;
	1802.9881 1067.8595 1799.2839 569.4843 863.2623 1307.1929 1061.2451 325.6505 635.2174 5310.9203 1956.7684;
	1807.4293 1068.191 1780.8 567.7 849.1 1308.756 1066.684 326.8444 630.1524 5339.7534 2031.8111;
	1776.8792 1071.1997 1780.6706 552.2 802.3847 1270.0749 1042.9805 332.1234 626.6675 5353.5424 1982.9816;
	1759.594 1033.4 1748.6736 546.8582 806.7 1251.162 1000.7524 337.2306 607.1098 5264.1068 1930.7193;
	1731.3244 1030.7353 1727.9717 559.2101 828.9674 1204.4281 997.3199 322.4565 606.8 5177.9041 1960.8444;
	1737.835 1050.5231 1767.4877 560.2 846.1729 1234.0386 1029.7832 317.9594 599.0529 5170.935 2029.0402;
	1756.5902 1069.9979 1824.245 560.9693 909.3729 1320.1786 1068.6611 331.1162 608.8238 5206.6009 2097.6557;
	1831.8688 1122.1457 1905.0508 575.5634 936.8399 1347.6319 1109.8 341.3 657.0584 5231.9773 2227.0359;
	1872.7882 1163.5345 1949.3524 583.2719 944.1935 1362.1979 1112.0 337.6558 646.537 5264.0622 2229.7;
	1856.0264 1113.983 1878.0871 566.7 920.6 1333.0744 1114.3182 318.6 641.5557 5218.8469 2168.9618;
	1753.8498 1033.045 1730.4752 555.1 872.2575 1257.2334 1039.592 302.377 609.0301 4970.7015 2074.9506;
	1675.3577 960.6125 1649.324 535.4696 821.9013 1190.1 986.4308 278.1567 589.2873 4671.6106 1950.7945;
	1629.1968 910.9872 1605.9209 563.9 799.1 1144.9 921.465 260.9191 575.8615 4664.8574 1808.6104;
	1593.1983 898.9943 1608.244 548.5286 781.9 1126.8412 864.0874 259.5 521.4465 4254.2776 1664.98;
];
