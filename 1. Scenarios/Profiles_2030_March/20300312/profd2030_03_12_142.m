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
	1522.8031 974.4979 1681.7802 559.4668 827.8302 1215.1484 916.7544 239.5543 521.8 4618.1494 1714.0878;
	1522.2204 979.9412 1670.563 554.5 830.3601 1237.0283 904.0524 231.5905 526.8051 4494.9341 1716.8464;
	1529.8679 1000.0 1712.3099 570.1289 838.7867 1251.2201 924.1121 236.032 534.109 4544.6247 1758.8;
	1627.9156 1070.4017 1820.3036 573.8767 899.6323 1333.4233 984.3638 263.7182 575.3973 4837.7744 1912.7835;
	1774.6277 1178.6518 2004.5152 620.4547 1010.2 1458.3503 1084.9774 315.6804 654.1392 5437.5137 2156.2221;
	1827.9332 1254.0209 2135.407 623.6105 1087.7457 1523.4509 1141.2936 355.5291 722.2469 6026.0338 2283.5125;
	1854.9643 1260.5114 2148.4675 617.9822 1134.5935 1583.4291 1184.2618 331.2413 720.1213 6350.3024 2289.6307;
	1856.5206 1250.2734 2129.4149 586.3448 1117.9274 1556.1111 1140.3 323.1353 710.8 6432.4353 2219.3149;
	1817.483 1244.4746 2112.1109 572.4063 1119.8524 1548.8056 1126.9241 320.7511 699.3 6383.2297 2104.0496;
	1833.105 1236.3601 2120.4339 562.2551 1119.1833 1479.6289 1055.3792 311.9596 679.3 6277.9193 2004.1372;
	1827.2676 1235.195 2139.8507 542.6687 1130.8751 1477.3544 1028.079 278.8872 672.192 6238.5837 1954.6321;
	1839.0054 1238.3 2145.6981 550.6191 1118.4375 1480.0914 1070.9848 304.9415 686.6325 6410.4295 1995.2058;
	1823.0492 1235.9428 2113.9526 557.639 1104.2057 1506.8443 1102.24 286.1222 672.8 6363.8492 2058.3587;
	1806.6125 1251.538 2127.2402 552.1493 1085.7814 1483.9758 1091.0316 294.1153 673.0 6310.3572 2037.7305;
	1793.5831 1247.5854 2170.9433 558.8671 1117.9696 1513.9966 1177.288 308.2204 681.6711 6395.8262 2129.4054;
	1809.0949 1228.3266 2174.6103 566.2 1118.8895 1545.1472 1183.4174 326.0279 684.6 6408.9188 2191.262;
	1797.5478 1221.2596 2170.8304 586.9203 1132.5382 1514.7123 1139.6112 327.1736 690.9062 6246.3303 2261.4905;
	1860.7277 1268.9136 2181.004 589.5886 1166.8695 1548.674 1172.7817 331.7302 703.4247 6183.7766 2324.6083;
	1899.1442 1280.1564 2211.9717 568.8796 1145.6679 1526.6724 1195.9692 351.9947 713.4322 6245.4464 2419.6958;
	1849.5347 1200.8204 2087.088 570.1153 1103.6992 1455.4118 1141.788 312.7965 679.7156 5880.7177 2120.4125;
	1753.5385 1113.2 1923.5438 552.1084 1003.0631 1363.1455 1074.6 310.1399 631.8677 5553.0555 1965.4986;
	1668.4463 1053.6 1804.4103 526.603 930.5094 1287.0883 1006.8261 279.4796 571.1 5267.7552 1918.8209;
	1617.8831 991.7901 1751.9553 518.8493 919.0642 1213.0164 933.0859 237.9902 505.1641 4905.8784 1657.1166;
	1627.1633 983.2409 1769.1408 556.3 914.9065 1213.9 907.2262 253.1 467.0944 4696.3169 1638.8833;
];