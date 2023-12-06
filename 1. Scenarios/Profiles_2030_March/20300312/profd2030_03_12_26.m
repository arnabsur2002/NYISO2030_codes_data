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
	1548.3246 1021.9954 1761.1542 570.3277 834.0613 1195.0668 909.6482 300.1749 540.8014 4656.9842 1780.197;
	1533.5286 987.87 1692.7988 561.9958 811.6915 1198.971 889.463 283.1882 521.2895 4524.964 1737.9183;
	1539.5858 1015.9299 1740.2043 571.3 841.4314 1234.9453 900.4083 297.443 536.7885 4563.8839 1802.1152;
	1643.5251 1092.5643 1847.665 590.0731 914.0546 1312.9175 970.4906 319.8189 569.0878 4856.0143 1915.7716;
	1757.5009 1193.8991 1978.7863 629.4 1001.056 1416.6709 1048.7 353.4996 629.1 5380.2374 2114.2513;
	1850.4706 1270.0029 2122.4 636.0862 1048.8661 1505.2 1092.0 390.5 701.5834 5886.1699 2246.7406;
	1817.3201 1270.7142 2123.8257 633.7 1061.7729 1494.4732 1125.503 397.5416 708.9854 6270.4226 2318.3703;
	1822.2304 1267.4337 2083.0 632.4407 1063.9161 1474.7666 1110.443 383.7 716.8668 6466.1338 2307.5;
	1784.4724 1254.2 2037.2731 627.1603 1045.4564 1448.4769 1090.2634 372.3071 728.7631 6468.7975 2239.8575;
	1782.3447 1258.1195 1990.5324 610.6438 1018.9335 1416.5883 1052.8893 378.5285 743.9196 6541.6136 2330.0792;
	1783.0066 1237.2375 1939.2702 595.5387 989.9421 1410.2 1054.2187 368.6652 748.0261 6468.9157 2195.9575;
	1790.4768 1191.0339 1893.2398 600.2002 972.2496 1340.5572 1020.2967 368.5257 731.7488 6569.5316 2213.5013;
	1720.0932 1185.0716 1878.6049 604.0 962.8081 1350.8684 1045.6902 375.1134 744.9127 6356.308 2195.354;
	1666.066 1179.2 1882.2824 588.8759 980.4418 1323.8253 1031.3195 352.0247 745.2156 6253.1431 2137.835;
	1742.7006 1194.1751 1928.5662 605.353 997.9 1369.5025 1050.7455 373.1076 740.9551 6317.1101 2240.0537;
	1717.5458 1196.0508 1958.5954 610.4 1012.4804 1426.0 1074.4334 375.595 757.7631 6253.3799 2269.9336;
	1761.8816 1203.7319 1991.1729 617.6 1049.7326 1500.2018 1149.2 394.8598 780.0032 6194.5496 2382.0019;
	1842.1579 1258.0569 2108.9 633.5 1115.1904 1598.2 1233.5069 419.454 790.5156 6377.1589 2529.0772;
	1913.044 1260.5 2094.1 641.0949 1088.9011 1592.5814 1280.3811 421.3 795.6766 6235.2615 2571.6682;
	1838.2208 1195.5291 2015.9465 617.0356 1037.0067 1522.4601 1226.2313 411.8 751.1709 6082.3 2462.9331;
	1760.1415 1111.2 1898.5878 594.5477 977.7173 1411.7363 1115.3 368.876 684.3893 5674.2124 2234.0814;
	1653.7197 1051.5526 1776.7767 587.1167 917.8753 1301.6 1020.556 342.7873 625.1334 5281.4 2052.3076;
	1607.8341 1007.3951 1706.1031 579.868 896.976 1270.597 960.5537 330.3 580.6786 5102.3048 1960.9804;
	1586.6 976.2134 1684.5917 574.814 859.5 1250.3601 940.4568 304.0893 597.1884 4784.6969 1858.2154;
];