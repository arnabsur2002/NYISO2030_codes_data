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
	1395.0609 867.0308 1555.1 555.6 683.4842 1073.2392 852.6 229.3 456.6728 4405.3848 1622.4003;
	1415.8246 895.0876 1582.2982 566.262 697.2716 1059.9 853.2046 223.4939 472.7221 4331.7524 1618.9405;
	1428.7637 913.8095 1605.4466 576.9966 734.0533 1088.9261 857.7676 238.4386 479.5458 4410.3604 1640.8353;
	1489.1054 993.4689 1708.7845 594.0542 777.4299 1175.1186 923.2215 270.2 534.7 4621.7301 1747.3975;
	1627.0129 1081.5028 1877.0484 611.9 865.5523 1287.0489 1007.7402 298.5156 603.5 5080.6772 1989.949;
	1739.7791 1163.3846 2006.7151 630.2998 974.3326 1426.4 1089.8 337.1269 682.1868 5770.8 2189.7855;
	1804.4154 1162.7114 2016.8084 627.4 980.8317 1416.1502 1111.7247 317.6633 695.0593 6027.77 2214.1476;
	1820.2447 1176.0 2000.2841 608.8383 948.4137 1423.4234 1114.5389 309.1025 695.5 6229.1295 2131.7149;
	1823.6493 1187.4464 2001.1062 611.4471 937.1439 1386.8 1159.8992 332.6997 721.7139 6364.8772 2178.4118;
	1843.6533 1163.6335 2002.5 615.7858 912.9262 1330.8374 1148.8782 307.257 726.1 6400.333 2180.4069;
	1859.3674 1191.0614 2027.3829 593.9402 902.5081 1343.8813 1136.0079 297.8993 696.7572 6325.9574 2128.1538;
	1864.995 1191.4074 2008.2471 591.0794 908.1 1341.9648 1104.3756 311.065 669.0 6293.3954 2019.2508;
	1839.7502 1193.66 2007.2301 583.963 901.5519 1324.012 1094.1967 292.6181 666.5401 6256.3999 2053.9059;
	1808.5 1174.5183 2008.1922 576.6834 899.7776 1370.3981 1127.9538 285.8857 672.8255 6339.1222 2089.9748;
	1867.5119 1233.0 2062.3432 576.0382 943.9233 1395.1142 1153.3198 308.2181 677.2 6386.1674 2231.866;
	1796.8694 1240.1181 2089.8079 573.2475 952.6195 1392.2884 1157.535 325.9977 680.1523 6380.7126 2322.3598;
	1823.4533 1238.1 2111.9357 596.7 1001.5509 1449.3423 1230.4311 347.2137 702.5832 6296.2666 2457.1294;
	1867.7151 1288.5552 2178.9 602.2741 1061.3805 1530.5708 1323.0672 379.7767 734.3253 6364.2796 2586.1694;
	1875.9968 1268.0515 2179.0457 599.4346 1053.1703 1486.4636 1273.8837 375.9 730.8114 6310.9156 2515.9363;
	1863.8513 1208.3 2053.1891 574.3414 985.1874 1408.1616 1215.1815 357.3046 702.9345 6166.4913 2388.6364;
	1742.3008 1124.1 1928.2406 554.705 939.396 1307.4 1114.954 339.8444 645.4574 5768.1065 2166.2713;
	1676.4043 1068.743 1890.9312 544.3259 898.3 1230.0195 1068.5292 325.3744 597.9 5641.0551 2116.1954;
	1606.7058 1006.4658 1793.8016 558.1 880.2388 1180.6362 950.1081 287.7771 543.5673 5319.3746 1858.8;
	1560.299 985.8763 1730.757 576.1952 878.7642 1153.7662 899.7689 249.3999 531.3076 4828.0593 1750.5;
];