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
	1381.0259 849.7948 1463.6325 521.3278 747.8 1074.3536 808.8323 225.3239 494.7429 4254.1217 1627.2581;
	1400.0194 847.6609 1490.601 526.7526 738.7613 1060.953 809.267 220.477 497.1 4247.9767 1616.9;
	1425.4907 862.0792 1517.0 536.2818 773.0635 1110.6393 837.2186 239.4 517.1425 4347.0908 1657.0083;
	1486.2232 938.0943 1605.5819 558.0 802.2 1163.0956 873.5 268.8703 553.2983 4616.0685 1766.9501;
	1660.251 1060.8 1817.0 574.9541 929.7 1349.9321 992.4827 300.0458 638.8156 5115.0624 1992.116;
	1812.5965 1167.8218 1953.0909 575.5814 1012.191 1451.7928 1083.9744 331.0 718.0225 5658.316 2140.5912;
	1878.3482 1200.0351 2034.814 558.3 1035.3203 1455.5904 1103.7 341.0 717.1094 5938.2361 2203.783;
	1899.7671 1211.5799 2002.3759 551.2402 1026.2 1458.5006 1138.8889 356.5 747.0897 6268.1529 2268.8921;
	1925.1 1187.3414 1975.9997 545.6829 1011.5473 1446.8315 1128.3175 344.478 774.9649 6233.3 2264.0205;
	1857.6363 1143.8542 1971.8 532.8619 998.6052 1409.4207 1092.7634 329.8879 759.8846 6192.4781 2178.208;
	1867.8155 1157.3045 1976.1 539.1 989.1951 1411.372 1072.5363 319.4386 795.8493 6239.9698 2204.9835;
	1858.2308 1173.2832 1949.7543 551.4506 969.9757 1413.5163 1065.5204 315.6 776.9005 6166.4573 2157.1393;
	1840.5 1140.1713 1900.0211 556.4915 917.7169 1325.1275 1025.4272 306.2716 766.4502 6103.4838 2108.5644;
	1815.4535 1115.3953 1856.4717 557.2596 907.4317 1294.0077 982.0953 318.0063 748.7201 6082.8507 2101.2433;
	1803.4524 1108.521 1839.6787 562.6853 920.1997 1318.6 990.3125 310.0552 730.7662 6031.3874 2080.3148;
	1763.9642 1093.1713 1788.5669 559.4129 930.7793 1346.1008 981.6623 302.3032 719.8315 6017.5148 2170.5437;
	1774.5397 1086.9804 1744.4735 553.3 948.4429 1329.4 989.9522 305.7 704.6583 5859.9005 2194.5751;
	1793.0499 1120.2756 1813.443 559.8214 967.6312 1372.3 1042.0522 311.4023 747.4727 5847.1839 2347.6622;
	1846.6904 1123.8267 1795.8969 566.0914 974.3302 1364.8426 1041.7746 299.8338 721.4254 5741.0283 2332.6299;
	1797.8739 1082.8 1748.29 548.88 939.6461 1292.2 1007.5048 310.4 679.1378 5504.7187 2193.8019;
	1663.5946 996.0534 1592.5476 534.8164 839.5 1195.5374 948.0371 285.842 632.1542 5216.6924 2026.9587;
	1583.0357 954.9809 1598.5959 543.7 847.2044 1155.1508 908.1 272.7326 598.339 4928.139 1916.3323;
	1574.09 923.4 1583.8346 545.5994 802.3819 1103.423 884.6187 271.1265 535.3757 4744.9454 1850.0415;
	1504.9327 908.5181 1553.142 559.1283 776.3088 1086.3698 857.9971 264.684 514.1 4680.9296 1772.6463;
];