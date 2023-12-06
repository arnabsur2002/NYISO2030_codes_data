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
	1492.0695 884.1098 1549.1395 566.6495 746.7877 1079.1337 826.5319 248.5175 481.6305 4444.7766 1698.6125;
	1462.1178 887.2318 1543.8948 579.5745 743.3375 1083.8574 829.3883 244.0806 471.3 4404.0983 1688.8551;
	1482.9 897.7097 1565.7031 564.9651 770.7022 1102.1675 828.5 240.6 468.5886 4360.4991 1682.5;
	1567.5837 961.5636 1670.3458 570.3596 818.3799 1149.7652 871.9851 270.4 505.8134 4520.2643 1772.4384;
	1708.8 1084.7426 1868.9949 601.4914 959.9126 1340.5 999.5274 307.6064 597.0531 5058.8196 2005.8741;
	1844.3781 1174.9049 1986.2236 610.024 1023.9453 1419.1304 1053.4 321.5 655.5 5546.3742 2136.535;
	1917.2575 1216.7715 2045.9194 598.8468 1055.7596 1424.3052 1078.1549 334.3148 695.3154 5940.549 2257.018;
	1934.1017 1212.8 2018.4604 598.2127 1067.6 1458.6423 1090.2717 340.6 700.8 6193.118 2323.4878;
	1946.7287 1239.5599 2089.3402 592.5702 1037.382 1428.8658 1094.7391 353.8399 723.3523 6297.1108 2348.3471;
	1918.1534 1203.228 2036.6748 587.6763 1009.3 1371.7179 1049.1858 340.4893 730.6 6295.9816 2371.8125;
	1884.9763 1171.4257 2049.7796 587.5382 1008.7084 1397.5678 1037.1658 340.1447 713.3361 6266.0887 2376.2546;
	1961.3163 1157.9254 1993.7077 566.1967 1001.8221 1413.2747 1067.1464 324.5142 682.2623 6247.5567 2248.1008;
	1918.9347 1138.2022 1908.8 557.1 941.0818 1331.2 988.8566 297.1702 676.9073 6277.0236 2302.4348;
	1878.2065 1146.6207 1890.8165 544.6788 905.9559 1317.5186 1028.6046 304.6594 673.2193 6280.6819 2261.138;
	1878.3295 1161.5 1873.6369 555.037 886.4953 1341.5166 1071.2589 315.4771 683.8318 6677.3824 2326.7613;
	1873.2 1147.4654 1850.1879 542.6 899.0174 1339.9558 1060.4231 314.2035 671.3105 6431.2684 2270.1065;
	1881.6821 1137.4227 1823.9558 539.5916 888.4771 1354.6595 1040.6682 298.8214 658.8 5949.1057 2239.5973;
	1947.0334 1177.0 1927.5605 552.6158 973.945 1418.9766 1099.4718 309.7091 693.7779 5946.8317 2385.1;
	1922.235 1174.9 1866.0124 546.0109 947.3957 1380.3029 1091.1317 317.3913 686.6 5825.5513 2324.0836;
	1880.9742 1136.9675 1859.5812 547.7 949.2785 1360.6796 1050.1377 300.9 642.9 5485.3197 2188.6393;
	1806.4354 1076.5 1756.1333 526.0224 883.689 1269.7926 983.5 273.1 602.4604 5214.5399 2058.7212;
	1713.0819 997.3924 1630.0185 523.8028 814.9052 1179.705 911.7554 258.6 559.3365 4951.9114 1926.5131;
	1694.2407 965.6892 1588.2406 562.2368 787.7907 1198.3525 905.2 250.7 542.8918 4850.2954 1881.1573;
	1573.2114 922.6735 1559.6853 570.0593 708.8 1187.3104 863.0112 247.5658 506.2 4660.1156 1765.4763;
];