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
	1571.602 924.3952 1614.6032 550.4 765.7832 1003.9233 826.2792 245.48 486.8661 4158.4999 1598.6358;
	1572.9474 927.6858 1618.6081 547.2932 759.3708 1017.0668 822.9509 243.8 483.399 4117.4048 1601.0368;
	1596.764 955.1742 1646.2943 558.7981 778.3309 1029.5965 827.5263 235.2051 478.8456 4086.3311 1604.3029;
	1654.3539 1009.9611 1708.7943 572.8 819.343 1072.3019 874.638 258.4 509.4275 4384.3102 1724.1567;
	1794.6316 1137.8707 1911.3689 623.9424 921.5 1246.79 998.5 311.8112 596.4308 5081.441 1993.9816;
	1918.3248 1232.4522 2027.3749 639.0201 1000.2434 1370.0543 1074.0 342.0777 661.484 5672.865 2166.7099;
	1918.2617 1253.8335 2039.6177 624.2872 1044.2455 1365.8731 1089.9585 346.513 672.8792 6028.6253 2191.905;
	1839.6051 1240.9 2021.2338 624.4718 1038.5 1401.6035 1078.68 332.5658 693.666 6130.6452 2108.2451;
	1829.6457 1242.0636 2056.5749 624.4074 1031.3806 1393.1523 1092.6947 338.2915 679.1517 6079.6263 2088.0047;
	1895.666 1255.1973 2059.3371 623.9454 1015.6856 1320.7 1052.9922 320.049 675.8652 6023.8434 2019.5087;
	1874.1479 1264.5449 2078.7843 623.0154 991.5308 1318.728 1067.1405 329.7056 677.3 6139.0953 2044.0173;
	1906.4375 1250.9489 2052.4096 604.1 979.7 1256.7071 1036.3426 305.9 662.9315 6062.3706 1987.8014;
	1851.7197 1239.1 2000.6905 591.5926 967.7877 1282.5784 1057.1496 312.4741 678.2871 6058.1793 2014.1075;
	1891.8625 1294.1622 2068.0221 602.0084 1034.9 1306.7844 1055.5218 331.7593 682.2 6242.1581 2201.4;
	1899.715 1277.0933 2067.5865 601.8088 1044.9536 1330.0473 1115.5773 356.5049 704.4412 6246.8 2376.0445;
	1909.0725 1278.5331 2042.5 617.2906 1055.4215 1363.1251 1109.4 386.6 715.3 6274.3014 2448.3353;
	1906.4511 1268.3322 2053.0 623.2 1049.8 1382.4018 1110.0797 391.912 735.5416 6112.2159 2471.7017;
	1952.3251 1332.9441 2104.5441 630.9631 1108.004 1490.668 1189.9935 406.2 828.863 6296.6 2705.8638;
	1986.3748 1335.4214 2155.2768 640.2775 1127.9671 1492.1723 1184.5721 409.287 784.7871 6220.1 2638.0301;
	1900.2725 1247.574 2057.3502 622.5846 1065.3738 1409.3288 1154.8544 399.5968 730.7509 6013.6524 2472.9241;
	1851.0101 1182.1751 1964.7 592.7659 1014.967 1296.1506 1080.2271 370.1701 678.9361 5731.2122 2326.5665;
	1747.9259 1091.7393 1808.7479 574.2 929.679 1184.5196 1002.9 338.4466 610.6335 5261.0043 2151.1601;
	1611.2057 985.4 1645.3187 587.83 840.5745 1113.0542 954.9466 310.6558 558.4654 4893.0822 1987.9722;
	1613.9047 988.4956 1643.4487 598.1774 840.1829 1085.4098 913.5461 293.7 530.8905 4739.4583 1943.9079;
];