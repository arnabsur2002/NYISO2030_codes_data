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
	1570.6971 1000.4 1637.9331 585.1 902.8889 1226.7806 948.7181 281.7636 557.723 4897.6395 1840.9356;
	1528.2641 1007.3055 1634.9607 582.2608 897.1049 1219.0 936.2294 283.2367 551.2 4853.0908 1839.347;
	1551.2933 1030.3666 1659.0359 590.2351 896.9926 1235.4314 972.6399 295.8838 580.4452 4914.6017 1904.1763;
	1644.5748 1088.6627 1749.5 575.6926 948.5072 1298.982 999.7 312.8317 592.005 5092.5119 1992.7147;
	1750.9254 1204.4228 1918.7813 583.4862 1069.7435 1463.8893 1098.7178 346.9 674.5506 5755.4045 2204.7244;
	1870.7 1281.687 2034.0635 608.59 1134.7397 1574.5613 1207.7167 385.6508 763.8631 6446.9533 2502.2212;
	1887.0025 1263.3963 2012.5604 592.1589 1118.9655 1558.2073 1233.2022 408.2176 795.7623 6685.1446 2503.207;
	1881.3559 1231.585 1951.3215 588.178 1088.0 1461.5193 1235.5897 390.363 805.01 6747.6048 2404.8007;
	1898.1127 1234.2906 1977.7 575.8 1089.9186 1458.6876 1193.2772 371.7 816.5146 6786.2314 2262.6594;
	1861.2274 1204.3644 1956.3148 589.3389 1098.5985 1457.724 1197.4161 362.9268 758.9826 6615.9328 2269.5443;
	1855.3507 1179.3 1934.995 583.0722 1059.263 1427.2094 1176.8171 341.706 732.7211 6635.381 2148.9452;
	1834.1283 1178.1628 1901.4808 589.1 1066.6327 1415.6681 1164.1758 323.9091 729.5503 6635.5022 2089.8929;
	1819.2696 1152.2992 1845.8964 567.2402 1027.7328 1355.3908 1086.8346 320.9599 686.9155 6394.5061 1951.0891;
	1807.7868 1141.2029 1818.087 565.6251 1012.9384 1324.4461 1050.3286 324.1859 696.2 6396.9039 1994.8193;
	1760.2984 1121.1343 1746.3871 574.5931 1014.5 1313.7076 1017.0326 318.064 675.7544 6357.0106 1950.7537;
	1763.2479 1131.7258 1743.6799 575.6 1022.2052 1398.8256 1050.5199 337.9669 675.6278 6454.1294 2201.3838;
	1783.308 1157.5787 1833.6989 601.4098 1050.0 1452.4 1101.8236 350.9537 685.9796 6540.4108 2308.2514;
	1851.1821 1232.4 1919.1093 604.6 1094.8396 1506.5168 1139.9458 380.9 722.939 6664.6786 2470.7677;
	1879.0731 1240.3578 1919.6 597.0 1096.2534 1516.7271 1156.1365 373.0182 729.3 6629.3083 2514.92;
	1888.2493 1212.5476 1852.7458 595.2621 1029.3355 1433.0832 1122.257 359.9 683.2 6506.4639 2431.9899;
	1765.9672 1133.1503 1740.8881 588.2796 956.4993 1326.2684 1051.9035 330.7288 650.0485 5951.6812 2238.1001;
	1651.4266 1054.6519 1640.6615 580.7 911.0748 1242.6 983.4 304.4054 585.991 5628.1383 2109.5843;
	1616.6174 967.1815 1564.8411 564.7736 836.4247 1174.7179 910.3184 299.1596 577.6868 5207.1325 1939.3618;
	1588.1437 934.8578 1504.6 573.8416 793.126 1132.5 892.6246 286.1046 545.7461 5119.7588 1975.1728;
];
