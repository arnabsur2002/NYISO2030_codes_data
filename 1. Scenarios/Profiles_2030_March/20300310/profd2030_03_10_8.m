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
	1458.3367 948.9461 1603.1 583.4 842.9569 1244.8835 917.6 275.3 520.8861 4766.1876 1843.3984;
	1448.8037 922.4 1583.8161 575.7 841.8962 1221.607 902.509 265.9079 509.7 4531.9361 1748.0321;
	1411.4897 919.7218 1573.6431 570.5 817.0 1219.9562 903.4463 259.7492 513.8 4493.5653 1762.5121;
	1449.8954 927.6 1597.3963 573.2528 827.5421 1227.9478 919.9488 271.8353 532.4 4539.8132 1774.8508;
	1513.4023 971.6737 1656.401 590.1 864.0469 1276.0692 980.5371 277.6 555.9 4709.994 1900.9215;
	1602.8285 1037.4475 1730.3316 617.7193 939.0969 1336.5846 1022.4688 290.2038 590.4345 4828.0406 1974.3787;
	1641.2245 1057.3 1802.587 611.3565 959.6 1394.7327 1089.4869 303.3 616.9 4990.9 2052.4141;
	1636.4574 1054.8304 1828.8905 626.2449 1001.3086 1439.2224 1141.6446 328.2446 663.5975 5122.1383 2113.5764;
	1700.277 1076.4 1850.8 606.7623 1022.6783 1431.1221 1156.3604 326.5 659.558 5137.4702 2098.7572;
	1668.7132 1104.2234 1848.0266 615.8688 1025.5112 1436.3936 1182.9073 317.3696 657.9 5113.8965 2130.4057;
	1683.0917 1131.2222 1873.1347 609.7 1042.3 1462.2428 1205.3952 326.3332 688.1076 5242.7239 2172.6046;
	1683.541 1110.1491 1874.4941 604.4804 1015.7 1377.1246 1188.806 322.5 692.5 5040.5738 2054.9192;
	1714.9 1124.1849 1859.0644 592.3 971.3295 1362.4105 1200.2532 326.7085 699.0142 5034.2646 2042.3458;
	1686.0249 1122.312 1842.2205 587.5358 949.798 1338.9861 1181.8203 320.9536 666.4 4268.5106 2042.0451;
	1723.6 1157.4524 1925.0336 581.6 987.4466 1433.0445 1155.8321 323.9062 663.4 5143.1507 2126.6436;
	1709.1536 1158.2694 1884.7105 575.3703 972.1811 1460.8619 1113.521 314.1713 662.9603 4803.6209 2194.4;
	1631.9581 1176.2576 1892.8733 591.5129 979.8598 1479.5329 1116.1828 326.5909 663.5 5023.5012 2242.6751;
	1700.317 1208.1156 1926.918 623.4042 1002.7199 1527.5499 1156.0745 359.3227 711.2053 5334.059 2354.7093;
	1731.0163 1208.5229 1917.784 608.2461 991.9234 1530.0846 1191.711 380.5503 719.8998 5507.1678 2423.3118;
	1699.9047 1163.2096 1866.4908 589.8863 936.7154 1499.6229 1183.6908 366.6644 716.5352 5487.1144 2330.2;
	1604.8 1066.0 1753.2998 563.6097 891.0958 1381.2432 1074.5132 342.9591 665.4846 5320.1945 2158.9903;
	1532.8005 1013.5484 1638.6622 534.5306 831.7575 1277.6965 966.6046 298.6846 601.1354 5014.8747 1996.3256;
	1542.9322 989.6597 1578.5092 515.8539 797.9885 1151.6142 901.0221 277.6256 572.6958 4851.0954 1844.3733;
	1494.2913 970.6905 1553.8 522.7488 781.0 1108.8503 862.9489 257.4929 518.5654 4645.3466 1772.9877;
];