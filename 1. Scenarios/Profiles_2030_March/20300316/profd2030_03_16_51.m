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
	1478.4099 880.7223 1539.3914 558.1631 743.2022 1098.4638 846.1492 283.5767 494.9 4474.1355 1652.8489;
	1456.5 879.6 1496.561 547.6024 710.0 1073.8226 831.2833 259.6712 482.7921 4374.8895 1630.8977;
	1511.8 905.3596 1550.3269 556.1699 744.0186 1093.7901 836.3786 269.7159 492.5 4356.3003 1637.281;
	1546.2 955.5857 1601.379 562.5 786.5546 1149.0205 845.868 266.5606 496.7993 4338.0466 1681.331;
	1663.3194 1033.8489 1729.6488 594.52 863.2024 1218.5923 898.5634 289.0154 540.2938 4584.2737 1786.9822;
	1714.6971 1086.2194 1807.6173 586.6 910.0316 1282.3443 949.9 305.1999 569.0606 4811.0812 1893.1905;
	1714.1518 1114.2261 1910.6134 604.8113 941.2229 1348.975 1005.0422 317.4 587.9527 5055.0667 1969.0;
	1797.2187 1149.091 1996.1519 617.1674 985.6786 1405.3269 1068.8756 320.7346 646.4106 5284.1582 2089.9564;
	1853.5036 1147.0508 2010.6089 599.175 994.033 1434.1005 1091.4079 315.682 648.899 5409.5765 2064.5113;
	1795.6704 1122.5468 1949.5285 596.606 977.6049 1428.274 1102.1764 320.4727 636.4307 5366.1009 2043.9837;
	1794.5085 1112.9709 1934.9131 583.5 937.7929 1387.8936 1074.8194 298.775 607.1719 5247.9012 1900.7514;
	1780.2264 1102.1508 1890.7509 590.8565 917.2727 1365.3742 1041.813 293.3751 602.1 5231.3793 1850.603;
	1780.6323 1091.1581 1859.1766 585.4931 863.8 1262.5996 998.1 282.6218 573.4931 5181.0284 1817.6;
	1719.8811 1120.2991 1858.023 576.1 873.5215 1283.5322 1043.2 301.7 580.4559 5315.1019 1908.312;
	1725.7774 1091.2259 1945.2148 550.3985 942.767 1330.459 1076.9785 316.1 602.7486 5307.7068 1995.8918;
	1754.2867 1111.8328 1972.4957 572.3 976.9089 1385.7578 1155.5042 325.0544 607.9243 5354.8904 2086.8862;
	1777.8583 1131.347 1951.5853 570.5876 1012.0663 1416.8304 1192.2699 336.4585 609.1368 5260.3995 2150.3006;
	1786.7382 1138.5209 1955.0 586.4931 1013.9249 1438.9081 1192.0 344.7451 646.2303 5386.8813 2257.5472;
	1802.099 1158.734 2002.7 592.9739 997.2 1431.1007 1128.0873 360.1018 649.3937 5417.0757 2222.4609;
	1784.7902 1122.4508 1937.4696 595.7 929.4238 1391.0 1124.5238 354.1703 639.2333 5340.9787 2149.884;
	1645.114 1051.8093 1806.6367 580.7293 863.5928 1316.9101 1032.3085 324.8178 601.7358 5037.7421 1980.4349;
	1568.6473 977.6421 1677.4597 555.0 817.0618 1239.1935 966.2766 297.1 572.9 4733.1768 1858.8682;
	1548.0744 942.3471 1587.2655 574.9074 787.9932 1173.6245 902.3437 247.5425 546.3 4548.9255 1537.4329;
	1505.1499 947.726 1599.3311 576.4289 800.4697 1141.8926 898.0799 248.2318 534.6 4482.5195 1710.452;
];