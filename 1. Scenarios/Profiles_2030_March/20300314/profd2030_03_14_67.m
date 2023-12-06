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
	1483.3615 971.0628 1574.7327 581.2162 861.6842 1164.5819 900.7073 244.1 521.8 4551.345 1741.7;
	1478.7981 966.973 1587.0514 576.0756 840.6126 1146.3407 882.322 248.0738 504.6128 4436.9134 1719.0543;
	1505.6811 974.778 1603.4842 581.4821 845.8 1149.8705 883.0856 245.6983 511.1199 4410.0527 1726.287;
	1555.7614 1049.9311 1700.1454 589.5901 883.0 1220.9313 930.1671 260.0003 536.4 4610.0449 1811.2603;
	1739.5264 1192.9496 1920.9393 607.4455 1018.924 1357.2042 1022.0876 298.7761 623.4 5115.2711 2050.7627;
	1800.1982 1233.4897 1988.8233 614.4684 1073.155 1420.5 1043.7 309.1119 682.1963 5579.5646 2176.9036;
	1823.3662 1244.6483 1980.7557 600.4299 1044.7762 1408.9267 1072.3053 325.3 684.9 5915.083 2211.6256;
	1838.1805 1275.315 2025.2247 601.5855 1064.7925 1465.7237 1118.6 328.0 712.9102 6240.6156 2307.3317;
	1885.2 1269.1156 2014.3 600.1753 1068.5475 1498.4239 1141.8407 326.8 732.051 6302.9644 2330.2353;
	1846.6 1242.7624 2009.0132 591.6 1031.6859 1491.1916 1119.1268 309.8 681.5916 6273.246 2197.053;
	1812.4808 1198.2 1983.4706 571.1089 995.1717 1447.5977 1074.4604 309.2959 670.1 6133.29 2113.4195;
	1765.0024 1175.1293 1994.4587 573.0048 980.8855 1371.5 1013.2813 302.324 658.8507 6093.3948 2028.2248;
	1765.0718 1194.5968 2010.679 576.4955 992.026 1398.3745 1032.6501 300.0076 668.9 6038.1781 2074.3384;
	1753.5025 1175.2381 1946.0826 577.4175 963.7543 1387.1261 1025.642 299.3424 676.5 6047.0778 2090.5448;
	1761.393 1158.3 1878.7744 586.0893 957.7 1424.6159 1062.3703 309.1797 676.379 6105.9717 2119.4346;
	1696.647 1111.3055 1853.0026 598.8715 962.2546 1385.5 1028.2633 314.9359 666.7 6041.4432 2143.7738;
	1647.0681 1073.0464 1819.1607 583.0033 965.1 1443.7195 1062.1119 321.6204 692.9934 5982.756 2229.4218;
	1747.7478 1175.7 1896.6179 584.1297 1019.5842 1539.6872 1158.0474 347.3719 765.6135 6069.265 2395.2;
	1789.5411 1179.9647 1953.9859 569.3501 1022.9093 1496.0245 1160.6461 326.607 732.8872 5934.9188 2372.6534;
	1710.6092 1126.1746 1889.5363 560.6075 948.4821 1396.6133 1109.8782 319.2421 689.7455 5651.2895 2231.8685;
	1579.3803 1039.3985 1733.1 549.7209 879.6905 1299.8 1042.6 295.4096 634.0 5387.9638 2054.641;
	1534.4817 966.4223 1612.8158 537.7212 806.9 1207.1295 956.7806 264.4773 573.6 5002.3039 1870.3127;
	1518.1901 929.4453 1572.7334 521.9884 757.3785 1174.4231 911.9 232.3961 541.346 4576.1371 1782.9488;
	1457.1 885.3 1528.8095 528.7191 752.0292 1145.8108 876.41 232.3376 510.8 4450.5661 1719.41;
];
