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
	1397.4077 924.7951 1548.3207 563.3 733.5021 1139.1428 865.7 246.4966 521.4 4380.657 1682.6843;
	1396.3059 921.0758 1554.8 563.2 762.6049 1140.6644 862.69 238.5 518.0985 4385.9979 1651.0418;
	1434.1389 934.4256 1574.0681 559.9425 757.0464 1150.1455 861.7174 246.8 518.2268 4387.1534 1674.7297;
	1535.7835 1007.5 1676.9911 560.1662 812.2864 1217.3216 910.1 262.5112 556.4 4567.1882 1787.2827;
	1682.8886 1136.9593 1873.9712 577.1061 952.3202 1372.5443 1012.508 305.1908 626.5033 5073.5694 2007.7167;
	1776.4884 1216.7669 1951.6564 569.6824 1032.8432 1483.0363 1105.7239 347.1869 676.4742 5583.0748 2136.6289;
	1791.0585 1217.1 1962.8318 586.2579 1030.3436 1462.7246 1115.4592 350.9169 698.184 6006.049 2165.0379;
	1870.8641 1233.8042 1973.9018 577.7655 1035.9013 1480.8293 1137.4841 351.9308 696.5728 6197.3585 2212.5;
	1844.5214 1219.6998 1985.7563 567.9209 1037.5 1467.811 1174.023 343.3 707.7062 6359.4088 2229.6216;
	1880.6478 1240.4699 1983.287 557.0 1046.3144 1456.6923 1156.0562 339.9 706.1 6331.5511 2161.5375;
	1840.5097 1220.982 1968.3 566.0755 1051.1916 1477.789 1148.1 321.2294 689.3746 6367.9085 2072.4506;
	1827.1776 1235.863 1954.0869 555.4518 1015.3827 1454.9302 1143.5861 330.5 685.9322 6320.0414 2123.5099;
	1795.376 1229.5109 1935.3419 570.2175 1022.7011 1467.1417 1166.8697 331.029 676.6333 6455.8799 2221.9793;
	1706.232 1220.5266 1939.1145 564.387 999.1567 1461.2968 1158.2103 304.1965 682.922 6279.7 2130.1982;
	1724.5092 1217.5491 1942.7574 580.3 1010.1 1417.8615 1127.5258 276.2026 666.1822 6198.036 2126.1042;
	1655.7738 1205.3312 1895.4395 575.2 1015.0351 1465.583 1140.6992 318.4 681.4288 6342.2922 2191.0729;
	1657.1247 1192.8839 1939.7102 582.9248 1005.9793 1452.6342 1167.806 325.2 690.5 6237.0933 2273.8;
	1714.9403 1263.412 2033.5326 583.8 1035.3806 1551.2881 1237.7103 351.9938 734.3039 6337.8988 2446.5968;
	1744.6791 1256.3749 2002.1392 583.3894 974.9636 1496.4515 1174.0133 342.9215 723.2913 6081.0793 2411.4158;
	1673.9493 1180.2752 1907.0 564.0 942.3276 1436.7865 1165.9285 325.0 696.6 5942.6808 2300.5;
	1603.8587 1096.6 1777.213 541.2 893.3892 1352.7956 1079.754 298.999 659.4679 5551.9689 2113.1392;
	1487.5919 985.3316 1630.6324 520.8 858.785 1241.8837 973.4368 261.7472 618.451 5115.227 1906.8446;
	1473.9857 926.9564 1565.8183 516.7736 846.6191 1229.8 888.3161 258.511 546.281 4630.2 1790.2059;
	1415.7554 922.5097 1530.5 527.3582 793.5245 1165.5922 856.2235 240.2925 527.4 4311.7065 1692.9;
];
