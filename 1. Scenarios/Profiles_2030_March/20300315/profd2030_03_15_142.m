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
	1420.7564 847.2424 1452.3539 525.3 648.6476 1041.9873 813.1 228.2767 479.5846 4295.0829 1660.5631;
	1435.7388 851.5048 1454.8573 514.6887 641.572 1039.9539 809.1316 225.7139 468.2414 4172.2639 1638.637;
	1450.9045 854.0285 1478.2 510.8 659.7669 1046.2548 807.3154 223.3439 466.1922 4065.723 1616.4386;
	1523.5 935.3742 1585.5308 537.3243 704.1692 1112.2163 855.8841 240.6406 505.0978 4203.9965 1733.4196;
	1630.6436 1035.2139 1707.0873 562.8 805.8639 1239.5137 973.8 287.6204 587.5203 4909.5821 1961.8245;
	1763.1368 1101.8381 1837.5934 586.0972 882.4523 1319.094 1045.2123 298.4268 651.645 5386.0725 2086.301;
	1770.3329 1137.6798 1882.5689 564.9919 887.2917 1306.6638 1060.6 311.2 662.0233 5567.6148 2167.3749;
	1763.65 1113.8568 1882.0992 561.6526 897.7094 1303.7456 1068.198 327.6985 662.4642 5780.7215 2205.036;
	1777.6933 1106.4291 1859.2715 549.4882 888.9123 1222.5833 1093.8011 321.8 644.4467 5979.1246 2148.8721;
	1757.5563 1097.9828 1838.0801 536.8043 892.8593 1207.0085 1118.1809 321.0611 631.5718 6028.4662 2126.7564;
	1790.387 1109.9749 1869.7407 541.2333 883.5697 1219.8 1123.2905 299.6288 653.1722 6003.8565 2079.4521;
	1785.5923 1080.728 1851.7702 524.8 917.7099 1194.5061 1103.1023 322.8208 660.0195 6043.9748 2136.5003;
	1757.8861 1051.7388 1802.0495 507.9 870.8684 1142.8788 1075.7942 299.6 648.617 6033.3161 2191.7527;
	1768.4561 1053.349 1783.0543 507.0853 870.0472 1116.9766 1071.7937 291.8274 656.7392 6034.973 2159.5624;
	1727.4 1017.6096 1742.9693 507.2579 835.8642 1150.1247 1049.6682 304.2926 619.2086 6068.7697 2191.0605;
	1684.1844 955.6587 1737.7432 503.0 856.3262 1149.665 1036.9 292.7967 648.4037 6029.6529 2254.4266;
	1624.3728 959.7965 1682.4565 471.7849 853.8278 1184.9748 1002.6839 291.3311 632.9953 5763.6649 2223.5591;
	1699.991 1018.7765 1779.7131 481.4613 876.4981 1202.0628 1049.9394 323.1564 683.2251 5796.3075 2385.1653;
	1741.3784 1051.1129 1787.5578 488.6567 909.087 1309.7464 1065.6553 312.3841 674.957 5642.6771 2324.8336;
	1709.3303 976.6334 1705.1722 475.9366 841.562 1221.8222 1013.75 307.873 636.2743 5452.9 2226.8449;
	1649.4 912.3035 1607.4941 489.1568 780.1529 1160.1251 952.4921 294.7 597.9478 5197.1827 2073.3377;
	1528.3183 849.6585 1500.2067 463.1214 723.3364 1081.9352 872.1085 267.7475 540.1574 4834.5011 1919.5571;
	1486.5 859.5536 1501.3008 501.191 715.4 1068.105 875.7086 265.2 520.6 4702.5448 1847.4105;
	1415.6878 823.0826 1464.8427 513.1186 699.009 1027.7689 846.3124 238.2786 481.9 4449.349 1715.3;
];
