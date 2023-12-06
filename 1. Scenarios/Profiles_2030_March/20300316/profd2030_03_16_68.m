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
	1470.4958 848.8251 1552.8421 501.2644 711.7502 1085.5 846.3 258.1643 499.5395 4472.9751 1803.8484;
	1491.3487 866.2428 1569.6782 524.7041 685.9732 1087.2912 850.6804 253.985 493.4605 4504.0105 1830.976;
	1493.2 872.4645 1612.5018 522.7299 698.6627 1087.1705 852.8413 257.3892 491.5231 4423.517 1755.3175;
	1546.4483 909.6552 1668.3934 542.4 754.8249 1127.2868 871.1 272.97 507.598 4497.622 1844.7987;
	1544.4442 951.6618 1739.8752 550.1006 785.5631 1184.1792 926.1927 277.0742 535.7185 4734.8042 1969.534;
	1620.2226 996.2181 1800.9852 568.3829 820.538 1236.6263 1008.9914 279.3248 567.6073 4909.0509 2148.9432;
	1647.7757 1019.106 1850.1002 575.8323 889.1765 1289.7169 1060.4757 292.9608 602.0099 5059.1067 2098.2896;
	1661.282 1048.9401 1873.8748 597.5209 908.537 1297.9572 1085.3068 290.5 626.612 5187.7736 2079.7895;
	1702.271 1041.6037 1900.8244 610.1 899.3971 1326.3631 1180.815 303.7413 667.1122 5429.9639 2319.94;
	1701.5881 1060.2148 1911.1776 608.8425 883.9521 1314.1246 1198.0059 312.4 678.8992 5575.598 2365.7423;
	1655.6175 1040.0986 1913.4195 580.8 858.8053 1258.8866 1160.1495 314.5 675.921 5474.7626 2134.6561;
	1695.216 1046.2985 1840.0287 571.3876 838.5943 1246.8448 1153.8009 337.4473 659.7547 5557.012 2153.2732;
	1663.9515 1043.0447 1818.5153 581.7783 806.4247 1237.5763 1069.9104 316.5937 610.5121 5407.0977 2135.3575;
	1644.7882 1032.7 1803.0758 566.4584 818.9375 1224.4573 1129.1562 336.6975 615.4 5374.2789 2124.2518;
	1683.8295 1057.453 1831.2438 573.2788 851.8948 1305.7647 1113.2543 341.6419 623.2512 5369.7268 2153.0587;
	1720.1948 1050.8289 1861.1239 582.7478 847.3942 1283.0284 1122.2261 342.0826 627.9893 5341.2078 2145.046;
	1755.7929 1102.9658 1938.2058 589.8811 904.9041 1304.7744 1077.5032 343.6 628.5662 5323.2063 2151.7018;
	1785.9763 1163.1084 2019.4591 602.3 967.0242 1405.0052 1183.0971 368.8494 677.8 5558.281 2422.333;
	1844.809 1189.9701 2087.2113 605.1348 988.8461 1422.0 1201.2475 381.0866 669.3 5590.749 2463.1051;
	1820.6743 1168.2199 2041.2088 605.38 941.4508 1384.4744 1203.2496 342.9 672.4808 5561.2292 2440.6804;
	1740.2221 1069.4696 1891.4654 581.2505 885.1912 1325.0513 1099.6742 305.3518 633.8684 5261.4728 2240.9706;
	1618.1511 1023.6992 1839.1405 579.9 834.2258 1250.4 1052.9355 286.6 614.9085 5026.8607 2162.9977;
	1607.5551 989.7189 1769.8308 594.8383 778.9352 1167.9179 985.9191 277.6 563.0343 4953.4023 2191.348;
	1572.828 974.1317 1745.0634 595.1 772.2 1190.9632 980.6739 304.4045 538.8 5109.9315 2141.2975;
];