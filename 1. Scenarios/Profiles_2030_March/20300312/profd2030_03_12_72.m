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
	1605.3983 1017.0141 1676.5649 574.2 806.3829 1121.1698 897.1219 289.0 502.9868 4823.502 1873.156;
	1573.704 1010.5837 1693.2758 575.1532 806.7215 1133.7039 900.6 285.0 515.7401 4906.4156 1887.7549;
	1618.7297 1056.8173 1728.5348 580.8022 843.4 1179.8932 922.3075 289.4 522.766 4936.5416 1924.5491;
	1683.9309 1092.8481 1861.4536 601.2031 906.0 1238.0675 955.8 309.7032 557.9621 5132.7241 1983.4304;
	1861.4368 1233.7442 2069.6823 641.5981 1035.7436 1423.8278 1076.1565 365.8064 644.6418 5865.0617 2285.2867;
	1996.6473 1307.2378 2185.3763 641.7151 1094.0402 1503.0 1152.7797 380.0 720.8886 6379.4323 2395.5943;
	1992.2736 1311.4953 2178.8172 617.4054 1123.1401 1531.3 1168.1557 383.5202 741.076 6597.0765 2428.4508;
	2020.2685 1327.9598 2202.5535 593.2816 1130.5 1548.583 1198.4802 375.1551 765.5299 6883.3402 2435.6;
	1992.6967 1348.5147 2178.0905 608.7101 1118.8958 1514.6 1178.6316 349.0773 768.2483 6861.684 2310.5401;
	1956.0294 1326.3108 2152.3776 598.1656 1121.6641 1496.0293 1193.2 348.4743 721.6038 6795.0349 2356.4375;
	1990.8042 1364.4058 2153.6298 597.3402 1104.4482 1439.3743 1153.3258 345.9766 717.3456 6798.2428 2217.2052;
	1983.7748 1355.223 2143.2463 600.3 1107.8076 1432.1641 1144.9818 340.0422 750.4142 6868.784 2215.2;
	1903.4632 1264.2842 2096.9162 606.0608 1080.9263 1418.8785 1135.426 330.8888 729.9214 6708.0 2133.9302;
	1898.9498 1267.8806 2103.6908 602.5555 1060.5 1430.4687 1136.3784 345.2928 734.2125 6855.6779 2187.4343;
	1862.675 1276.4 2114.7941 618.3 1059.984 1456.492 1140.6348 359.6537 720.0075 6843.0201 2273.1967;
	1843.3825 1293.6804 2098.0859 628.2843 1086.3297 1469.7662 1127.3836 357.4932 707.7429 6771.5183 2344.5858;
	1829.6408 1299.3238 2083.0677 646.4693 1074.0205 1485.6058 1124.0851 370.2402 694.0674 6551.621 2395.4718;
	1862.2 1298.9955 2109.8 667.0587 1088.3037 1492.7911 1166.0962 380.4611 740.8 6552.4432 2483.7178;
	1873.2 1310.4 2139.3469 653.2 1083.0 1506.4 1160.6848 357.6048 714.6882 6348.1 2420.2127;
	1828.0363 1259.4905 2057.7481 632.1778 1016.5685 1426.6818 1136.9 355.9195 686.5928 6158.5653 2343.4404;
	1712.6 1126.4 1891.1597 615.3697 936.8 1314.3061 1034.1195 325.7644 628.664 5785.4806 2143.5899;
	1649.3398 1076.6 1761.8853 593.8199 868.519 1243.6642 970.5985 297.6 572.8809 5337.7665 1975.3734;
	1526.6674 1008.9 1723.9862 577.2951 841.7424 1185.8139 948.8324 294.1756 572.3 5061.9269 1883.5694;
	1484.3043 978.4466 1679.4511 567.5325 804.1222 1167.5392 935.7981 274.5 574.5 4827.2524 1795.108;
];