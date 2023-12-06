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
	1568.3947 912.3 1544.4873 519.3996 748.1227 1091.9776 845.5039 262.8183 459.2364 4362.7515 1671.0;
	1564.9093 926.7824 1566.2117 504.2039 759.0 1098.9 846.6268 272.2904 446.6556 4356.246 1678.1462;
	1594.8379 942.7418 1598.3 514.6162 783.3724 1118.6 855.3007 278.7734 481.3938 4373.2417 1702.9958;
	1637.2505 1024.2 1701.2 533.1763 842.1606 1212.1 913.9 297.9634 528.9827 4705.306 1877.353;
	1797.4008 1151.1076 1934.7391 583.8482 966.348 1365.6572 1014.258 340.5 613.1157 5230.0532 2105.1829;
	1894.989 1217.1296 1988.7083 562.1228 1029.0545 1448.7792 1094.965 389.3588 683.3 5855.9386 2313.0752;
	1925.0 1221.0208 2000.8317 535.6389 1021.0248 1410.8764 1088.0717 389.9 689.5151 6221.6813 2331.6776;
	1927.0022 1220.41 1902.6672 527.0396 1015.6144 1396.7809 1075.1339 367.5 707.9141 6381.0904 2333.8542;
	1949.2 1227.5856 1903.5054 543.2004 988.5341 1327.1209 1050.8345 336.3 722.9511 6364.0442 2325.9943;
	1952.6481 1237.8998 1960.6437 572.9047 975.8262 1271.2207 1046.2401 340.3835 712.5093 6442.4041 2480.7602;
	1926.2213 1235.0014 1949.0375 555.8846 976.7374 1265.6681 1017.3145 345.0958 693.2284 6478.5452 2414.0915;
	1925.6 1224.1801 1906.7321 538.9697 955.6138 1244.6602 1033.2521 333.3 685.3143 6445.2054 2363.4618;
	1922.3689 1223.4 1882.7658 526.8104 967.4536 1235.49 1018.5807 325.0 680.3 6288.2533 2291.6301;
	1860.3947 1190.8311 1861.018 518.9999 948.5601 1238.2617 1008.9585 332.4 676.2 6385.944 2371.3762;
	1894.4201 1191.9108 1899.7088 509.1597 963.9572 1280.8928 1028.7 328.9 682.6779 6424.1 2397.1262;
	1913.3051 1222.0465 1985.9903 523.9287 1035.1 1366.0041 1093.3884 352.3084 736.0107 6434.8174 2540.613;
	1933.2 1253.113 2069.4818 559.0521 1081.7347 1408.8671 1130.645 366.178 735.5191 6391.5333 2789.0775;
	2002.1641 1281.4773 2112.7665 565.7129 1102.0166 1465.553 1205.5 371.8426 745.4358 6340.3264 2680.2023;
	2083.0117 1329.6995 2147.0 535.446 1108.7863 1457.7602 1203.0124 379.8 754.2 6296.9359 2742.2286;
	1937.5085 1238.7173 2003.4982 556.8949 1014.989 1369.0514 1142.5559 384.6 712.6 6157.3085 2590.3882;
	1842.5479 1134.8207 1847.4165 543.3466 949.0814 1291.4147 1065.5982 369.9177 644.5177 5785.7414 2385.4448;
	1781.0079 1084.8347 1780.1304 540.469 924.8726 1212.3292 999.683 338.822 581.5 5487.56 2223.2446;
	1729.5556 1016.5 1698.2505 534.6493 859.0188 1168.117 940.8979 301.994 524.7 5053.9487 2087.6827;
	1661.1371 990.5764 1721.5816 542.6464 866.2957 1173.7 942.1054 283.1023 484.969 4874.4729 2060.3041;
];