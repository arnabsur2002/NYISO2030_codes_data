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
	1477.8258 886.5062 1483.4 553.0169 704.8293 1048.6087 812.1 239.7192 524.4 4323.0301 1663.2372;
	1460.297 884.5343 1460.1369 548.4275 663.3037 1035.3 796.8125 222.2081 509.0573 4272.1221 1608.9892;
	1481.2399 896.8449 1483.7726 561.4583 695.7199 1051.8867 798.7097 226.6 521.411 4247.1753 1622.4762;
	1511.7784 946.5983 1592.0272 562.7082 754.2221 1121.6556 854.6 253.6624 541.453 4489.4084 1734.2;
	1689.114 1071.0039 1776.4819 587.3 854.5736 1248.3271 951.5412 293.8962 621.2508 4953.6308 1974.7131;
	1790.6493 1144.0721 1907.1 601.527 940.6481 1312.4643 1024.1615 327.8697 689.9432 5463.038 2165.7432;
	1854.1051 1159.9 1904.1046 604.8672 932.4 1338.5455 1059.3624 333.2772 706.5134 5779.2198 2224.3353;
	1902.82 1185.574 1987.3484 589.8321 969.2502 1372.7562 1099.8 339.4903 725.5653 5988.7969 2296.2641;
	1914.3058 1183.025 1966.4934 587.1 986.14 1352.1647 1101.6334 329.7339 725.8706 5902.0568 2304.7883;
	1903.2966 1198.6 1964.9481 576.0761 989.9515 1394.0 1140.9241 349.9695 754.8 6133.7657 2459.028;
	1875.8772 1168.2075 1907.9359 586.0248 930.8544 1306.909 1113.1053 337.8346 743.1454 6012.1114 2314.26;
	1848.5394 1155.3008 1907.4193 570.8927 946.9275 1314.5 1117.7865 331.5478 751.9299 5924.2173 2233.8454;
	1884.693 1139.8297 1870.0541 577.8008 918.7328 1300.6 1098.5 301.7 736.6066 5925.5124 2303.3125;
	1858.6122 1135.6167 1833.201 568.3348 893.1392 1304.4189 1063.0621 311.894 758.3406 5889.3697 2227.9;
	1758.2236 1094.2128 1793.1463 558.3 847.6651 1275.1268 1003.5461 292.2 733.4135 5523.093 2171.5511;
	1753.8282 1118.0904 1825.703 586.5366 884.7 1327.3848 1028.4491 257.1841 725.4529 5590.6663 2153.6569;
	1751.8307 1125.3059 1852.5066 597.7718 937.1 1355.5921 1036.3493 262.8361 720.6 5639.4978 2219.0215;
	1810.6119 1171.8819 1875.5 609.3222 951.3028 1400.3493 1076.273 256.3335 727.8 5679.4068 2352.0937;
	1844.6261 1142.7127 1845.2787 610.5779 928.2 1337.6387 1061.1 270.3973 703.1134 5366.1623 2298.7472;
	1741.7278 1095.7454 1790.4 595.5198 880.9789 1279.4978 1022.6636 262.5998 660.9 5375.6375 2250.5271;
	1692.0555 1031.7347 1650.2235 573.9406 824.5 1200.6473 948.7235 234.5115 623.978 4996.7928 2109.8479;
	1623.967 964.9475 1539.5166 559.2225 746.3435 1116.668 900.5134 181.2251 572.6 4585.2272 1945.4;
	1478.4883 895.284 1452.69 617.2646 677.4014 1052.0095 858.5509 199.8812 536.6105 4597.8357 1801.4125;
	1450.4636 885.8422 1512.925 589.1277 695.8954 1001.3495 818.4 209.9405 506.9 4284.7843 1705.5504;
];
