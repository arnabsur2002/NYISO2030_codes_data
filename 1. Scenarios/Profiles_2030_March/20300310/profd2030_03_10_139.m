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
	1464.7493 907.1 1597.3062 589.487 874.0982 1206.7 881.6603 264.5544 529.8283 4689.4465 1798.107;
	1436.8264 874.4202 1560.8137 580.1474 850.9412 1165.6403 849.1047 244.5 508.1381 4441.196 1690.0291;
	1397.9996 862.4332 1544.0266 576.9285 849.0146 1148.0433 846.8511 241.0018 475.066 4377.7961 1669.4047;
	1413.9313 843.0188 1533.5003 583.0519 848.0062 1150.4406 866.8407 231.7431 516.8133 4478.4899 1742.807;
	1450.2988 908.7524 1629.9282 603.9663 903.4 1210.5979 919.7671 245.8435 532.228 4628.8 1829.8295;
	1527.6183 967.932 1701.8816 602.1539 946.9073 1259.5469 965.5 281.5 551.6573 4800.1073 1868.5256;
	1541.9663 1029.9734 1786.836 616.7747 1015.5 1333.6486 1043.5857 310.1 577.1181 5006.9002 1957.6048;
	1584.2915 1088.649 1858.8296 628.7286 1041.5125 1384.3501 1121.6727 338.9 615.9744 5312.1571 2060.3547;
	1591.2709 1079.5497 1873.8 623.6189 1069.845 1348.7489 1085.7 340.9597 594.6695 5344.6834 2097.7378;
	1604.2801 1092.3412 1860.4466 620.986 1051.6612 1308.5671 1071.2507 351.796 570.2814 5380.5506 2015.3947;
	1577.5954 1106.4155 1847.918 627.7062 1022.2311 1278.502 1042.4 348.2485 573.5173 5283.064 1982.7119;
	1596.5472 1096.1351 1816.1916 614.1 996.9037 1272.7212 1029.9526 342.5615 551.5409 5177.81 1909.2931;
	1623.7094 1086.8461 1788.2296 615.9862 970.7324 1291.6451 1024.4698 328.4127 522.3569 5017.0653 1977.3201;
	1552.7383 1060.7 1817.3671 610.7 958.1217 1304.5585 1017.5063 328.0085 520.9526 5248.0527 2022.2998;
	1576.8962 1037.587 1848.0759 603.3546 934.2286 1324.7512 1030.2165 337.223 546.4497 4947.7632 2019.2464;
	1599.9275 1065.1113 1891.5341 629.0454 941.7 1363.4817 1003.4741 346.8861 614.2226 5309.7797 2123.7311;
	1562.5827 1071.2798 1873.9348 632.8639 966.5478 1391.8484 987.9813 350.2521 637.0322 5116.2419 2042.5955;
	1589.248 1103.2435 1893.452 632.0 999.3506 1483.1683 1129.2087 378.3 682.8502 5517.6027 2297.4645;
	1643.6155 1105.1996 1889.0711 609.1687 1007.3447 1473.6719 1131.1805 382.3421 680.2835 5469.0145 2249.3433;
	1611.4092 1054.143 1832.2 582.1993 967.2888 1393.4302 1083.1052 379.039 664.1 5437.436 2227.3501;
	1548.4689 1004.2349 1730.6148 558.4592 881.8 1320.3634 992.7486 351.557 623.4704 5000.7324 2102.2122;
	1512.2718 952.482 1687.6419 532.9035 855.4 1236.6782 924.517 319.8265 563.0 4796.4629 1947.5113;
	1426.5 829.7661 1557.7419 531.9 808.7916 1076.9063 838.3896 281.28 500.5648 4488.8834 1693.4605;
	1392.1323 809.2495 1528.0138 559.7876 808.7586 1047.8198 784.5783 254.1333 480.1298 4092.0912 1560.6672;
];