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
	1503.2664 902.3895 1420.0724 584.3332 638.6967 1078.6893 852.0173 234.7 494.3215 4439.1819 1771.3784;
	1496.2206 898.5572 1416.0703 593.7478 654.2133 1087.1976 837.5 233.6 485.3536 4335.5796 1709.7869;
	1496.9635 911.8298 1469.032 580.7009 679.0369 1084.6871 853.3099 241.1 483.0 4376.4901 1719.5539;
	1540.5701 943.5267 1522.2897 590.9893 698.0129 1144.1 903.8276 251.3 503.6985 4449.0328 1789.2675;
	1588.7 972.3889 1574.57 592.1 752.4526 1206.215 925.3526 268.853 528.1641 4617.4857 1850.9706;
	1669.4479 1027.7096 1671.73 607.9622 794.2271 1248.2313 955.0 274.9308 553.7 4816.8339 1922.3;
	1704.55 1043.0738 1715.616 594.8 855.623 1279.0434 974.6175 282.0 585.5343 5029.0659 1972.219;
	1732.575 1068.0388 1810.3619 601.6 901.8612 1336.0 981.2573 286.3 604.3 5195.5731 2000.44;
	1751.4404 1096.9868 1866.8728 595.6809 953.4413 1356.8297 1009.5112 302.0518 636.8 5438.3438 2079.1407;
	1752.162 1097.9997 1906.0447 584.372 981.8 1391.2636 1041.9441 307.4 645.4325 5496.367 2111.749;
	1706.4562 1086.4 1887.2201 599.4729 952.6 1403.4661 1039.957 306.6 629.7822 5535.302 2092.1772;
	1750.4288 1081.3 1897.0055 588.7588 972.7016 1397.9255 1091.0051 339.1557 640.7115 5457.5942 1989.5519;
	1670.8 1057.6416 1896.2031 594.7038 937.0745 1291.5347 1040.1843 333.9255 620.8652 5419.7015 2060.0113;
	1643.316 1064.5102 1854.8798 576.6 904.5488 1293.2525 998.5691 355.703 624.4 5380.1 2048.2085;
	1649.4871 1075.8241 1846.843 598.6 921.6364 1294.8133 991.5334 358.0795 628.8036 5355.0714 2036.7278;
	1636.1758 1094.6452 1853.5 610.5152 931.9926 1311.9496 999.7058 366.0569 628.1203 5306.9656 2094.8;
	1644.6461 1106.8321 1902.4642 651.2906 981.4542 1306.201 1013.4 382.1615 644.1811 5268.0107 2167.3967;
	1755.3 1164.9327 1972.8266 640.6179 1001.8 1437.3214 1101.2 429.2413 679.9777 5477.4 2352.7872;
	1761.6245 1181.4 2002.4935 639.2409 1016.7 1454.4471 1128.3705 416.8658 729.5311 5571.5371 2410.1648;
	1797.7408 1145.1187 1906.9838 637.7707 959.4 1361.5926 1083.7342 382.7897 695.0007 5415.0 2371.25;
	1676.2618 1069.2133 1812.3716 616.3296 923.4277 1290.5057 1042.2918 345.884 664.4834 5311.3181 2231.6006;
	1645.0776 1009.7919 1676.6 607.5838 851.7483 1209.2128 951.7307 312.9685 595.239 4957.0656 2018.4599;
	1640.0643 1027.5232 1738.2438 618.2998 851.2879 1162.7437 942.0101 315.9153 607.8516 4834.2257 2055.5722;
	1616.3851 958.6884 1651.5193 609.9 804.0417 1104.7169 896.6254 278.6294 547.0 4622.8157 1837.0251;
];
