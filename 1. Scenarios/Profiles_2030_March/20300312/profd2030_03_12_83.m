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
	1493.1791 929.7717 1655.2742 586.4 819.9236 1158.5747 905.469 259.1872 491.6 4502.8527 1692.3781;
	1494.581 933.6568 1662.3369 585.3312 804.8391 1127.6894 891.4151 245.8162 486.1898 4485.6036 1677.5747;
	1502.8024 955.8 1718.8043 594.7438 838.8 1190.542 926.427 259.1587 492.4 4532.5128 1693.8802;
	1585.5416 1035.7449 1823.224 614.1979 875.0613 1267.106 975.091 281.0847 543.7108 4842.7867 1839.2;
	1713.9805 1143.742 2020.2524 646.9359 1000.8703 1425.0514 1074.3112 325.1 613.7 5380.7093 2078.7433;
	1831.8359 1246.8839 2166.4331 671.9778 1087.0931 1514.3936 1130.3207 358.2644 679.0794 5953.0703 2218.9636;
	1873.6112 1245.8576 2168.2148 658.8647 1083.7 1540.8 1150.609 362.1 708.0 6327.9681 2269.4278;
	1855.3414 1237.9794 2170.0858 662.7038 1097.3371 1528.475 1146.833 371.3273 703.9 6430.5228 2210.2599;
	1898.1984 1248.3882 2184.1225 655.365 1099.7439 1535.8005 1154.9015 373.7322 718.3776 6527.8 2276.9;
	1865.7793 1223.6433 2185.7525 651.5313 1100.643 1577.0886 1157.1 388.0 715.0081 6603.0423 2246.4291;
	1816.954 1211.3836 2136.4 641.0821 1069.3745 1558.4532 1124.7317 355.0 690.6481 6535.6652 2054.2868;
	1800.0253 1214.2 2147.014 624.202 1052.2 1550.9 1151.3427 389.4475 711.1531 6809.2887 2111.5902;
	1815.6388 1220.2565 2123.8867 634.6467 1027.9443 1556.2911 1153.3097 401.0524 713.6806 6862.5635 2235.01;
	1797.0262 1227.0406 2119.941 620.6072 1057.0037 1512.2977 1104.3395 381.2552 710.0016 6857.6647 2197.9024;
	1800.5382 1201.5775 2124.3885 612.0873 1102.191 1548.1584 1188.0131 385.0479 735.3 7146.491 2380.7771;
	1789.5164 1194.7618 2142.204 604.1884 1093.3 1559.9673 1170.9374 378.6044 753.3493 7175.0105 2417.3863;
	1795.1249 1192.4708 2114.2317 617.3183 1092.19 1623.6843 1190.3671 377.4 746.2871 6990.2397 2548.4345;
	1819.2969 1250.797 2191.2 624.1869 1135.7213 1695.8478 1317.1204 384.883 806.3007 7222.0488 2639.3072;
	1842.1221 1256.791 2161.6601 635.6947 1088.2079 1658.1019 1297.2183 382.4677 773.5782 6837.6391 2562.5067;
	1782.7663 1193.319 2043.659 609.5 1061.1506 1577.29 1208.4433 371.5048 743.4066 6633.411 2454.6052;
	1711.9326 1119.7326 1955.6445 593.4759 983.3 1476.6975 1142.3604 340.9173 685.3145 6039.5406 2202.6777;
	1630.0 1046.9753 1837.116 588.0 927.4606 1390.0892 1067.5384 299.5637 623.2512 5612.8498 2005.8417;
	1581.6383 1004.0066 1745.5064 597.8461 936.3183 1382.2047 991.12 283.1047 559.0563 5115.6132 1835.3099;
	1526.0902 967.2055 1761.0571 593.7 965.8956 1385.3427 997.4909 274.6357 528.7377 4948.3926 1777.0074;
];
