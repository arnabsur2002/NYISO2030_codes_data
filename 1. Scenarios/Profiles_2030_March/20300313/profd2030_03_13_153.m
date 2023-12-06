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
	1582.9716 988.1862 1677.4573 556.951 854.1351 1130.1175 895.1017 248.2 524.4 4654.6661 1725.1796;
	1574.1528 986.4449 1682.8 557.9 880.2133 1150.3826 905.4229 247.5504 512.7 4584.864 1711.909;
	1584.1756 1006.1384 1716.7667 559.1532 889.1 1175.0274 916.8104 244.2812 523.6 4613.7667 1744.8088;
	1672.5679 1086.2452 1826.3 566.443 934.4418 1250.2835 957.2788 257.3047 547.0636 4755.8725 1770.8274;
	1825.1744 1220.4963 2020.2351 604.9 1039.359 1406.3777 1065.4074 295.4169 643.5306 5394.573 2041.7446;
	1947.6616 1267.9638 2146.3297 606.4039 1121.1035 1460.6181 1143.0352 335.2143 708.4881 6052.4908 2273.2917;
	1921.6271 1243.0219 2074.2964 618.4705 1136.5947 1424.0026 1153.7011 345.8988 723.6619 6350.0409 2327.3876;
	1882.5 1215.3867 2007.359 594.3872 1113.1478 1388.3521 1152.6236 355.2134 729.963 6431.0 2263.6407;
	1889.6 1200.9 1939.6462 599.7268 1060.4778 1270.2472 1103.6179 343.2803 711.0014 6418.7959 2245.9549;
	1868.3888 1187.2532 1945.4452 594.4 1054.5 1251.784 1096.1596 343.8658 695.9687 6448.8596 2268.93;
	1881.513 1173.2362 1912.4755 580.6952 1034.0631 1238.2034 1116.662 330.6976 691.6952 6422.6466 2225.941;
	1849.4332 1148.3447 1890.2 564.9342 992.0861 1224.6466 1054.0916 295.1489 669.2361 6252.5612 2080.8503;
	1830.5513 1137.2183 1929.4986 587.9335 999.2508 1290.7599 1071.1 299.7818 654.1837 6348.8268 2146.5;
	1776.7959 1143.9684 1913.1358 586.1266 965.1913 1267.9038 1046.8589 302.0166 648.4011 6377.065 2168.2419;
	1781.9007 1172.1311 1937.213 602.9696 992.4978 1310.4263 1061.0913 309.9154 667.5327 6441.2431 2271.4622;
	1814.1172 1178.2349 1951.4064 597.0098 1004.0436 1360.4937 1075.273 310.3416 689.8917 6483.3 2333.8307;
	1831.6409 1237.2802 1964.3498 598.3108 1005.8276 1464.0232 1119.8887 308.9262 707.4562 6469.9207 2423.1656;
	1885.9987 1257.4877 2077.4041 610.2496 1026.3531 1495.5529 1167.7 364.1256 725.914 6475.1423 2532.23;
	1901.4651 1260.1677 2041.7957 605.7089 977.8133 1477.094 1160.5034 338.357 713.0908 6363.8179 2483.8223;
	1849.6 1187.0768 1943.3812 594.6144 897.5553 1396.8398 1105.4847 316.678 671.1147 6065.1 2338.9551;
	1697.883 1106.194 1852.6408 583.4325 862.0513 1312.1 1046.3 306.9482 621.4 5698.6122 2171.6706;
	1605.1728 1022.3 1714.7 566.5923 780.1822 1201.3832 961.6045 265.2798 577.7639 5478.3976 1985.7058;
	1556.4056 982.6 1722.2023 555.0237 793.2819 1176.7378 934.5 244.9102 546.1226 5223.7462 1869.9058;
	1501.3371 949.4 1678.3645 560.5 794.6006 1131.3014 885.0 237.9633 514.4932 4875.8123 1764.1548;
];