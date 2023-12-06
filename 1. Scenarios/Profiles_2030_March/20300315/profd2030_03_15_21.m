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
	1410.7749 908.1321 1459.5273 514.5717 722.514 1038.2826 800.1566 220.0848 518.2 4397.8755 1665.0032;
	1393.1224 880.9 1424.4233 505.1703 713.8 1030.3 786.6582 216.8 505.3854 4287.71 1648.1548;
	1415.4 906.9348 1468.9072 513.4905 724.0623 1048.1757 814.4332 215.3 516.712 4362.059 1691.9176;
	1499.258 968.0233 1582.4985 528.0 777.784 1119.69 853.2 227.9954 541.7399 4530.5788 1783.4433;
	1673.1136 1084.8 1783.8753 557.1 911.3951 1283.0403 964.2995 232.9035 607.9234 5076.465 2022.2452;
	1748.3 1155.1108 1887.595 571.9745 1003.1929 1358.4889 1017.6348 245.5648 670.538 5543.1447 2185.5816;
	1803.6341 1197.9889 1961.1326 566.6147 1029.9759 1377.0 1047.2356 244.2221 697.196 5919.7126 2253.9409;
	1792.7729 1186.9092 1911.9517 550.5 985.616 1351.7426 1020.0543 282.956 679.567 6057.7 2239.0064;
	1817.3365 1199.2623 1933.6083 557.7821 973.6943 1360.3 1025.6699 287.5672 704.0 6142.3211 2274.5828;
	1851.2101 1210.3676 1958.9555 534.9239 1010.4706 1375.8999 1028.4577 288.19 709.2 6193.027 2342.6215;
	1812.4274 1183.1373 1924.8088 522.0491 968.2872 1325.5741 989.3674 299.3 696.581 6141.3 2354.8597;
	1812.5359 1173.0959 1867.4386 534.1197 960.0547 1295.9768 981.7732 303.0433 710.0544 6103.047 2400.5237;
	1808.8827 1134.4599 1786.6795 528.0407 909.012 1262.5143 958.6405 313.6 699.3136 6121.7704 2300.4706;
	1808.1 1176.8084 1830.9814 519.3 902.0115 1269.6801 986.8946 321.635 722.9241 6215.3759 2351.1956;
	1743.2361 1145.3629 1840.6645 536.7426 924.1122 1293.3567 999.2909 335.4421 691.9347 6160.6402 2353.3665;
	1745.3725 1122.5045 1798.6618 554.0039 925.9444 1316.9133 1004.8246 295.5 673.5659 6052.6491 2296.7141;
	1745.7266 1157.1842 1852.8 554.176 923.8206 1336.7283 1030.0 305.2436 661.0832 5873.2771 2331.9871;
	1785.5 1172.4308 1873.0497 570.8762 941.5896 1376.3355 1065.0 329.0 701.2433 5865.7847 2404.5738;
	1859.2707 1200.7817 1883.2056 571.9247 976.8702 1400.239 1093.654 330.0762 699.2952 5710.8524 2377.7914;
	1796.5156 1166.0253 1840.1941 568.6 923.4518 1335.9489 1045.4758 315.4173 671.2601 5560.7004 2325.5138;
	1714.0016 1104.0097 1715.3841 558.1904 882.1123 1231.0465 1010.9557 303.3 634.0593 5341.6461 2216.5;
	1646.4999 1038.2429 1614.732 543.1 822.167 1134.3 900.2521 253.6569 584.6129 5007.5417 2003.448;
	1616.3 951.7151 1558.4771 546.1261 781.5488 1101.9033 868.8036 239.325 535.1436 4700.1682 1834.5335;
	1585.0735 934.5802 1555.9313 549.4 751.9068 1072.527 854.4786 227.1314 539.3086 4605.612 1775.3;
];
