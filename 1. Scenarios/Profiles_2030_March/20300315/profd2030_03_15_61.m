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
	1491.4616 851.4077 1503.3742 494.5953 749.5561 1075.1009 800.0 216.304 460.3707 4330.161 1420.019;
	1464.2017 847.6 1505.5103 501.8371 761.8 1085.7566 793.6 220.4 436.3887 4306.0593 1455.7517;
	1507.7352 875.2 1552.5304 501.6923 773.2932 1091.8347 814.5201 236.7761 457.5222 4274.0472 1515.0053;
	1583.8862 955.7633 1663.4472 520.247 847.5182 1161.5142 852.7 255.8401 470.5509 4489.2254 1661.6765;
	1714.8202 1057.3772 1872.1494 552.0188 956.4244 1333.8147 967.7 305.7582 559.7292 4988.4934 1921.2249;
	1854.1389 1123.6432 2015.1258 559.562 1039.3321 1418.4693 1053.4672 351.4862 653.5187 5539.7668 2093.5427;
	1817.104 1091.445 1960.7541 543.5647 1032.0672 1367.3 1058.9 358.244 677.5175 5797.2349 2181.9027;
	1850.4719 1149.086 2008.4735 541.4376 1059.0857 1360.8 1062.1862 379.5402 693.5 5981.7322 2168.5619;
	1845.2171 1139.9 2033.3329 542.6371 1068.054 1380.2303 1089.6 413.6381 692.0279 6065.4973 2242.7209;
	1876.124 1134.3016 2023.7793 522.5524 1067.3185 1395.4989 1095.4 423.7954 674.1696 6091.0341 2256.9643;
	1839.169 1126.336 1996.9472 501.4313 1051.2477 1393.6767 1124.8875 390.4409 683.8 6141.2292 2277.4;
	1877.0072 1153.3 2031.9386 505.3253 1026.4686 1377.3487 1104.4315 366.0573 696.2057 6122.4 2284.2974;
	1826.3745 1134.5703 1961.3643 502.8347 1000.3679 1337.4484 1067.5 350.3712 686.7585 5986.7106 2207.3;
	1800.1194 1113.1363 1939.1606 512.2553 967.7623 1309.5014 1055.0789 359.2762 705.7719 5978.5317 2187.3893;
	1725.2581 1069.5 1895.7053 500.7541 961.8085 1251.8957 1025.3866 341.3999 689.6929 5959.7 2219.8415;
	1710.7785 1073.0549 1931.0058 517.1502 956.2201 1301.4558 1015.8909 344.9 697.0757 5912.882 2180.1261;
	1734.3991 1065.1352 1970.2656 534.7348 984.0543 1328.6743 1036.9216 361.8 684.6111 5772.9176 2227.1514;
	1750.6771 1076.3349 1989.2457 554.9874 1045.0848 1353.2869 1062.9 359.0599 705.532 5679.0137 2274.4112;
	1792.5328 1119.4 2046.8028 545.4982 1056.4334 1349.0681 1075.094 346.3 698.8986 5601.936 2181.7856;
	1787.3057 1078.6 1947.2465 540.6912 978.853 1300.2119 1053.0742 317.3364 652.8 5230.0365 1989.3367;
	1680.1752 988.2682 1811.2484 522.7624 887.03 1207.6356 961.1627 270.7638 606.8773 4749.0213 1808.2442;
	1600.1142 934.3334 1717.3367 515.8 856.2877 1131.8 900.9845 253.3198 552.0368 4592.4958 1731.3032;
	1597.6063 922.3941 1640.1457 521.2 825.2375 1121.7913 863.6113 230.6737 479.4534 4292.4202 1451.8124;
	1566.6556 903.1518 1591.4 550.2436 778.9456 1115.3029 840.4894 220.5825 465.8211 4133.7655 1403.4454;
];
