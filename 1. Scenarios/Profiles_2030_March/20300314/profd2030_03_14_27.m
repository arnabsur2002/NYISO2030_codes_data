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
	1417.6785 897.7076 1585.4295 576.9838 805.6102 1078.3517 817.4137 234.4 509.7116 4494.569 1592.7016;
	1429.5 903.6859 1571.4 575.5843 793.7645 1071.6128 817.4867 243.6 505.3713 4406.3136 1593.6632;
	1469.3833 924.9088 1588.1122 584.6713 798.9122 1102.1178 817.0 240.875 494.9 4433.0098 1588.6044;
	1530.9848 998.4747 1695.5 597.9826 867.4976 1175.5057 875.4 266.1 528.7527 4596.9815 1718.9132;
	1718.0 1126.6092 1862.6179 633.929 951.8802 1320.4321 983.5287 280.3972 599.5882 5004.4077 1885.8765;
	1822.5 1212.7064 1979.5858 625.5943 1000.9747 1421.0139 1079.39 334.334 675.1097 5743.3555 2150.8;
	1804.0938 1206.7 1987.5698 609.6991 1020.4125 1431.1011 1094.2954 355.9172 695.1018 6087.5284 2162.1243;
	1804.165 1217.3486 2030.4339 617.7031 1046.7 1419.3 1087.4 348.1412 709.3429 6260.0044 2110.6959;
	1816.1 1226.1 2023.4158 618.3694 1013.2161 1400.2879 1062.2077 333.136 728.2353 6383.8289 2094.2976;
	1794.3442 1232.6 1987.0337 608.1529 996.2359 1390.8 1078.7413 328.8981 712.7838 6455.1079 2088.8369;
	1766.6775 1195.3 1938.6845 612.6271 960.9163 1302.1749 1004.2485 314.9073 694.8 6381.3103 2015.6758;
	1725.9961 1189.1657 1880.7998 608.7648 938.9304 1246.5375 977.1113 309.8 691.7746 6382.8126 2039.0274;
	1696.6386 1188.434 1862.9214 612.6678 916.6649 1281.8944 1019.776 324.4 713.1396 6498.0 2183.0144;
	1643.0981 1160.6 1829.8873 615.7988 908.7989 1253.7 1015.7866 311.5947 698.8625 6489.6436 2179.4;
	1630.6361 1169.4432 1839.465 623.1353 924.5171 1266.4727 1000.5894 318.3841 678.6994 6485.8679 2144.5659;
	1644.739 1140.6 1850.2409 608.8095 909.7438 1313.7187 1035.9167 328.7296 687.7115 6556.0165 2297.8327;
	1712.5361 1174.7357 1898.71 617.7428 952.3171 1345.4 1058.4214 351.4648 669.8 6213.1243 2304.7391;
	1729.7 1213.1 1995.4608 618.3904 1032.316 1419.0633 1145.2634 386.4512 732.219 6356.7593 2485.6331;
	1750.8231 1237.0987 2023.9067 597.8755 1027.6495 1397.6252 1134.6 366.0 732.6648 6536.7196 2546.6904;
	1709.3121 1164.7691 1922.6928 592.5994 980.2415 1324.8067 1061.1224 342.0649 671.6723 5868.034 2325.5706;
	1595.8256 1080.7197 1761.5187 567.2 890.4079 1175.5962 973.8963 313.3673 628.6677 5536.2498 2125.8404;
	1517.7126 992.7356 1654.1719 558.629 835.1 1117.1 892.1882 275.6 572.2 5109.23 1921.1121;
	1460.8967 879.7667 1555.9722 543.6675 793.4346 1057.4408 816.1956 249.965 519.0 4624.2896 1770.2294;
	1383.9088 842.4086 1487.1414 543.9 753.5592 1031.6555 774.9225 227.0559 494.4 4478.7967 1682.3042;
];