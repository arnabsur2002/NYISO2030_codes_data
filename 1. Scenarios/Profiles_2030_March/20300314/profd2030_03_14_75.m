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
	1486.4036 905.4 1573.4005 565.7775 764.2334 1136.1 835.8053 245.1011 516.8819 4547.5574 1639.9548;
	1517.8466 918.8 1572.9585 565.3 771.0038 1148.2621 836.4796 245.0 511.8066 4532.6789 1630.3805;
	1539.4588 955.1546 1608.4193 561.1 767.1374 1153.8 831.9017 234.1 516.989 4508.3683 1604.2293;
	1612.3108 1018.9135 1720.8901 570.1919 853.0737 1227.3491 888.5285 257.5998 548.0751 4697.7854 1733.9863;
	1740.8537 1137.0812 1920.3444 590.6 975.7333 1400.4529 994.9037 314.1 633.2269 5188.3005 1961.6383;
	1819.4645 1219.3579 2026.2566 590.8938 975.9828 1428.5059 1045.7874 341.2395 689.3847 5679.2039 2097.0866;
	1868.5798 1224.6029 1989.7198 589.1527 995.3663 1454.3443 1103.9 363.5154 710.7455 6088.6888 2198.5407;
	1875.7193 1214.0568 1953.1595 563.5 972.759 1423.2364 1082.5108 366.9272 705.1555 6276.7189 2151.4079;
	1924.5918 1226.1 1949.8175 560.2904 989.3317 1415.6204 1038.4711 349.3922 701.3 6239.5517 2063.9727;
	1921.0301 1230.2744 1938.5708 558.6 989.6554 1371.4644 1033.3256 350.3 719.5 6245.7679 1998.1148;
	1871.6947 1203.0227 1914.2631 546.7593 982.5151 1349.6852 1015.4035 346.1 689.4967 6247.4984 1955.7717;
	1908.148 1201.4092 1921.1045 537.6209 982.3 1334.1328 1041.1426 350.8364 691.7 6319.2297 2016.462;
	1874.7738 1209.7953 1911.1135 554.4 990.135 1333.1207 1054.8097 331.1417 675.9385 6321.2901 2046.885;
	1805.0083 1172.8592 1907.9156 536.2617 960.5613 1249.0243 990.4721 332.9293 664.652 6349.3315 2095.7822;
	1739.7 1174.1019 1848.9998 538.6 955.0892 1278.2284 998.2 330.8091 669.6852 6381.9041 2115.7789;
	1713.2056 1166.8 1873.2163 541.2342 968.0046 1317.7 1036.0357 348.4 694.5162 6548.7917 2202.2;
	1719.6239 1185.9843 1941.4845 578.1376 1054.5555 1408.0994 1107.4432 389.0982 737.4075 6535.5268 2364.9313;
	1846.7605 1243.663 1998.6856 578.2144 1078.8502 1466.5285 1119.9864 398.909 748.4632 6430.5396 2443.6226;
	1884.6197 1264.4097 2028.5945 585.4146 1047.2063 1459.8261 1126.6237 398.7361 729.0969 6546.6048 2430.1034;
	1793.1597 1199.0518 1897.9599 564.6 984.4417 1378.908 1068.408 376.769 704.6939 6200.5115 2287.6483;
	1750.366 1098.6583 1791.3199 544.8 923.3119 1263.3369 998.1526 390.7005 658.6922 5954.7042 2115.4459;
	1628.2145 1009.6645 1657.5566 539.7139 850.493 1192.7 921.7 369.2624 596.0661 5585.3157 1917.5417;
	1589.9828 970.4 1570.7367 535.1677 817.2982 1135.9104 854.0242 277.1369 541.3583 5023.8521 1670.967;
	1548.7257 931.7882 1505.1 536.6229 782.5207 1115.6502 805.4 248.6622 495.3602 4630.2628 1572.2261;
];
