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
	1655.5237 991.0119 1699.249 594.7298 879.7487 1255.1283 977.1098 277.5 554.9139 4645.2628 1904.4053;
	1639.5211 998.1089 1692.6154 593.6 874.4181 1227.3 946.1427 290.9 548.7184 4627.325 1867.7346;
	1654.9363 1016.0465 1726.5186 604.0007 903.1317 1293.6418 974.483 299.3 556.5053 4644.5431 1892.7101;
	1707.3979 1088.3201 1826.1208 610.5651 975.5 1354.8309 1011.7718 328.9907 576.4193 4870.8573 2008.1616;
	1830.7962 1200.8872 1974.3357 625.0 1038.1 1497.0614 1112.7189 352.9395 650.6924 5343.2648 2189.7677;
	1970.1 1283.4866 2081.2 636.4407 1072.4104 1568.4068 1176.6167 367.98 717.4042 5993.0823 2344.1086;
	1954.0532 1272.9 2042.8674 610.3823 1072.3 1559.1277 1197.7959 366.4 726.6827 6243.9406 2332.9769;
	1911.8053 1279.9408 2017.0932 598.095 1069.0623 1496.5804 1225.4052 352.5974 724.0937 6511.9894 2307.544;
	1899.1 1271.9162 2023.9057 590.1233 1062.7 1519.771 1258.9477 360.1 748.9534 6557.1729 2319.5934;
	1865.3401 1245.5083 2007.3874 591.8059 1058.1294 1499.428 1301.3153 351.0738 743.6288 6610.3031 2310.7803;
	1817.9225 1224.5167 1966.8703 578.1062 1030.5891 1439.0018 1222.6837 335.1417 740.7505 6579.1421 2315.5989;
	1852.3462 1205.1976 1935.623 569.2658 1021.4894 1422.5663 1201.0693 325.8 744.6195 6537.9979 2245.6182;
	1819.2179 1181.7334 1878.7279 581.3016 1010.6138 1421.428 1179.7862 325.664 694.0816 6355.2 2253.1327;
	1750.5879 1154.9345 1872.1977 570.4731 990.9163 1394.1894 1196.8132 337.7082 677.0636 6398.7 2362.9229;
	1730.5412 1141.2912 1863.5945 568.8666 1005.6394 1418.149 1129.2786 337.0238 666.0206 6413.606 2216.3624;
	1777.2187 1128.6 1825.8892 584.0 1023.9013 1431.9 1117.5439 344.3884 680.4246 6375.952 2282.5267;
	1784.8443 1145.0595 1861.3833 590.5015 1017.946 1456.7424 1119.0893 361.1843 688.8793 6276.901 2393.9796;
	1812.6564 1183.1518 1909.2894 596.9761 1064.7821 1517.2948 1181.6 358.0819 727.2021 6304.5088 2518.9556;
	1853.1714 1207.1719 1941.5406 583.0 1050.2605 1522.4017 1220.9266 361.7 726.9 6295.4826 2592.3201;
	1775.6 1112.83 1878.2728 578.1366 1004.1705 1435.3175 1165.3 362.7267 692.6133 6160.735 2427.7714;
	1717.7683 1042.6702 1748.3067 574.0175 967.1637 1316.1 1082.3098 324.3 650.8255 5715.9615 2257.1197;
	1619.013 964.3342 1636.6 544.0932 904.6523 1212.6797 996.6076 279.4 593.757 5323.7893 2052.6998;
	1628.0789 913.421 1563.2321 530.8269 841.815 1129.5382 905.6831 227.4656 524.1 4830.9832 1852.7403;
	1559.1124 895.9957 1537.2 531.9454 806.8774 1126.2263 875.3167 206.6649 507.5661 4685.4947 1784.6805;
];