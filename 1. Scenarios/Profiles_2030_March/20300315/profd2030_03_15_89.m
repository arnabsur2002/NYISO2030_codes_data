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
	1433.3291 907.2 1522.8631 517.4269 759.9914 1030.633 881.5032 242.3992 501.7139 4572.5272 1766.0789;
	1409.7077 885.1257 1519.7495 509.0548 759.2973 1036.3709 851.2023 233.5535 484.979 4523.2519 1698.3539;
	1425.4 902.451 1552.901 514.7 772.2152 1079.5 874.8598 236.2 496.9948 4634.104 1761.9761;
	1515.1659 966.3339 1628.7843 544.7 814.6466 1145.6349 900.4964 254.3401 532.3 4671.4053 1816.4;
	1647.9561 1083.2938 1811.8659 563.3992 920.1894 1280.5273 1004.677 296.4812 624.9 5197.5423 2078.6564;
	1748.0466 1167.3501 1954.341 560.4426 995.4891 1359.3 1092.3231 331.0279 726.6262 5840.1448 2360.4462;
	1802.3006 1178.034 1992.5738 552.3133 1031.0369 1349.3022 1129.77 355.637 719.4471 6134.2341 2347.3046;
	1843.0106 1187.6 2016.7 559.1 1028.6 1314.4463 1161.6375 349.2864 722.4 6358.6729 2413.3462;
	1893.4217 1181.9316 2019.8 550.334 1025.8213 1310.5569 1157.9876 341.4469 730.6467 6427.3876 2405.8268;
	1892.9237 1211.9 2058.5931 539.0274 1032.6278 1349.2011 1223.9364 358.0388 746.9994 6598.042 2489.9447;
	1900.7992 1207.5508 1992.8679 534.4 982.2 1249.365 1141.1449 356.4027 706.6028 6405.1264 2421.7789;
	1868.804 1192.7237 1951.8912 549.8109 962.6579 1197.3397 1141.0751 343.6707 714.4 6345.4974 2355.5578;
	1812.877 1140.4 1915.5402 562.0072 971.5205 1181.4891 1093.9302 328.6285 682.6311 6398.6654 2394.0315;
	1763.6717 1135.5 1895.6768 562.285 982.7778 1172.3548 1082.1442 315.1253 695.563 6313.8073 2462.0561;
	1795.4 1141.7 1915.6791 564.1556 967.5035 1100.0568 1075.3476 319.3347 674.9285 6460.0098 2392.3489;
	1767.8803 1107.8545 1871.9 550.5022 997.8804 1222.766 1078.6163 323.9718 689.5402 6357.0315 2362.0254;
	1800.9145 1121.7013 1850.0369 548.5 1003.0634 1251.6822 1094.6655 321.9731 689.273 6226.2637 2528.7;
	1836.4954 1158.4987 1922.9068 581.6 1014.5499 1299.5167 1092.4268 312.1501 702.7 6036.4256 2552.7056;
	1867.1012 1147.0714 1875.8332 567.4 993.6248 1211.3869 1061.2309 300.2658 680.8383 5786.1 2403.1133;
	1846.9726 1085.611 1803.8423 561.813 949.4554 1179.7692 1017.6828 282.0589 652.7492 5594.547 2300.6774;
	1749.902 1021.0222 1718.2971 563.9494 895.0126 1137.7633 985.0469 272.294 621.8498 5304.9007 2171.6105;
	1668.5265 972.5294 1624.4564 549.6985 820.8159 1097.7716 927.1442 254.3656 560.2386 5094.4672 2054.7094;
	1592.6282 927.9993 1611.9094 567.7273 792.2 1133.8 941.3877 263.6 525.8 4919.8521 1974.1606;
	1582.7 923.1065 1573.6334 574.4759 792.6717 1103.8552 888.9142 268.7605 517.7029 4764.3597 1945.1121;
];