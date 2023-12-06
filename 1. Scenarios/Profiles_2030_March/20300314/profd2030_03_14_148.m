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
	1452.2257 891.7344 1569.8551 537.5053 798.7 1135.8277 863.161 252.4559 497.3991 4362.339 1689.5915;
	1476.5777 904.4 1564.1 525.8947 784.1087 1147.0183 869.3 240.9196 513.1 4379.3001 1701.4812;
	1485.2249 920.3455 1594.7509 526.8275 798.0766 1158.4046 871.7 243.5169 516.0789 4292.3127 1701.661;
	1559.0396 988.1588 1711.885 549.7104 866.4724 1246.4816 911.3748 271.1 548.2 4615.3171 1824.9;
	1689.1419 1115.0 1887.3 583.8829 967.2 1360.6 977.7033 284.9182 603.4364 4989.7366 1990.1607;
	1781.2 1192.9859 1986.1 595.0 1026.7598 1460.199 1035.6385 315.07 691.3959 5524.1553 2122.2345;
	1793.2202 1186.8332 1942.5 579.8705 983.5533 1456.5942 1024.2749 321.3811 700.5235 5880.2894 2164.2491;
	1827.9128 1216.2019 1960.3507 572.0 996.3221 1485.8873 1037.6437 330.7371 711.0506 6248.3 2225.0565;
	1805.0046 1229.194 1977.7958 571.4016 1010.973 1476.7 1047.9561 330.9 733.4 6360.2616 2196.394;
	1799.7947 1246.1876 1959.737 568.6361 984.9813 1460.6606 1014.1902 322.9218 719.8971 6293.9722 2069.7195;
	1807.1655 1243.1665 1933.1239 561.201 945.0675 1418.3 1002.9364 326.8 721.1275 6324.5548 2057.1292;
	1749.1674 1228.8277 1887.7656 543.8099 939.2974 1389.0 990.1721 308.6346 736.8972 6322.048 2090.0727;
	1715.6813 1205.9222 1867.8905 535.5666 931.2712 1330.9108 953.3002 300.1559 707.9554 6222.5316 2111.0;
	1687.222 1183.8096 1824.4355 523.4223 900.9059 1325.3412 1016.209 333.6 705.8 6296.4361 2228.7388;
	1688.8811 1182.014 1835.312 532.547 889.0909 1333.3368 1028.3312 322.2972 748.4494 6503.4878 2314.8268;
	1593.5573 1159.6805 1809.6204 543.1601 895.9 1385.3361 1053.201 317.1066 723.5339 6345.1974 2277.1815;
	1632.4928 1177.1974 1868.2152 550.3127 909.9671 1403.6942 1085.1247 348.8 781.5834 6470.9314 2384.1593;
	1672.0669 1203.7586 1944.6214 582.472 958.6118 1459.9818 1149.6 371.4 813.525 6321.1409 2485.4313;
	1696.8826 1189.9953 1914.8 579.2 944.4853 1465.371 1134.8461 363.9088 803.0814 6137.6462 2456.201;
	1598.1727 1108.5327 1823.0 568.0621 910.6 1377.937 1083.8647 358.0678 753.7079 6007.6816 2344.4025;
	1501.8988 1006.1085 1697.9904 557.7207 846.195 1297.9932 1015.2744 314.2134 698.9918 5603.566 2134.0171;
	1424.4656 939.1728 1586.227 545.8011 794.6783 1196.773 955.3313 282.8 634.7295 5207.7087 1987.3252;
	1402.9122 914.4462 1570.6628 508.9096 788.5 1124.9663 867.1571 246.0131 595.9646 4752.9826 1876.0633;
	1336.6615 893.6896 1537.7904 480.2459 775.8908 1106.7514 837.9433 261.1107 578.0407 4521.2055 1804.2065;
];