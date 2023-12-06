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
	1564.8 990.0443 1659.6321 576.5 816.6078 1341.3776 890.1567 244.7789 491.6 4033.978 1416.4549;
	1553.1505 982.7 1666.1518 571.4119 810.635 1338.5543 894.8447 248.6469 492.4 4043.6402 1481.0729;
	1575.3177 1012.3182 1728.7359 575.4837 831.9 1323.5612 908.2156 269.5182 502.6 4255.8483 1540.9095;
	1657.2 1068.6 1812.6804 593.7101 880.4 1443.6686 972.5 296.1 523.5358 4512.0022 1659.1009;
	1787.5062 1179.154 1980.4567 626.0 996.0138 1497.1467 1063.2032 339.4777 617.3507 5076.2733 1948.1514;
	1924.5771 1267.6027 2110.1 634.0886 1093.8289 1600.3266 1152.7346 372.5 687.9817 5468.8774 2128.7052;
	1970.1301 1280.0683 2112.0 641.6546 1067.3 1572.5406 1160.8444 352.2325 691.1464 5813.6609 2089.21;
	1982.5425 1261.6329 2108.3665 622.3279 1036.2254 1554.9304 1155.6705 354.4114 688.7193 5996.9392 2161.7978;
	1930.2106 1241.804 2067.5535 611.8 1051.6287 1558.5396 1174.432 340.0083 707.4885 6136.2612 2098.4046;
	1907.7 1240.9648 2052.0 581.4346 1013.0363 1520.4958 1127.5692 321.7035 701.6713 6133.6215 2030.9572;
	1851.5558 1244.9442 2020.6742 579.8176 1016.5454 1502.6465 1126.9978 333.0075 686.6049 6196.9348 2101.111;
	1833.2471 1219.2613 1991.8025 558.9929 977.8512 1471.3463 1071.7309 336.6687 660.5583 6144.4709 1946.472;
	1806.1735 1178.3456 1972.4651 561.7756 956.4225 1431.3345 1038.8 329.0 660.3843 6202.2401 2047.3293;
	1783.2443 1195.2862 1956.6261 549.6639 946.9909 1441.7032 1067.3612 331.2 670.0 6280.8536 2105.9832;
	1785.4919 1180.7152 1932.3122 562.7188 961.0923 1475.4956 1083.1081 356.837 681.3521 6380.6266 2226.1333;
	1828.6247 1208.7 1992.4399 558.9909 995.8 1530.5172 1139.6152 370.4339 708.5925 6520.5 2364.6521;
	1850.4841 1196.4 1997.9203 558.0196 971.9823 1569.9642 1188.8917 386.4318 726.4475 6395.4755 2429.9386;
	1904.1 1254.4288 2108.0925 575.7067 1065.0925 1660.2102 1312.2713 397.8983 806.4116 6467.8472 2618.5587;
	1961.0187 1270.0747 2110.5519 552.8439 1064.5206 1649.4645 1327.2756 386.0 808.9995 6344.5766 2567.865;
	1890.0881 1195.6 2037.1 530.7985 975.1061 1576.8317 1262.7145 365.0 765.4125 6127.0524 2415.6885;
	1849.4852 1110.2145 1914.4652 500.4286 934.5977 1473.7536 1158.5958 339.6264 714.8554 5741.0486 2237.1355;
	1758.5127 1040.0391 1810.0153 487.8463 849.1404 1358.098 1035.6 294.0763 628.8591 5272.912 2009.1447;
	1688.9928 1030.5 1820.5479 508.379 847.8208 1359.0853 993.6648 258.0479 587.0452 4946.126 1846.129;
	1666.8811 1018.7419 1800.48 548.7822 837.8 1346.0308 948.8693 265.6361 547.0964 4700.3031 1784.6385;
];
