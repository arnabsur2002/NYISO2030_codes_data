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
	1589.5588 999.2637 1649.8833 596.8 898.8547 1153.1 914.0 315.7674 565.0345 4843.273 1765.8061;
	1572.0587 987.7571 1628.8292 591.0295 855.7801 1140.1103 899.1627 300.016 548.6579 4688.6503 1744.696;
	1597.1476 1010.49 1683.4631 599.5993 888.8 1189.4599 922.4224 301.7488 548.6278 4728.76 1765.2627;
	1642.8156 1049.0341 1772.5891 615.8661 924.7335 1238.7872 953.4 319.1957 582.3292 4885.8615 1839.9;
	1779.3355 1184.0581 1988.6508 635.7972 1059.5858 1385.7448 1072.1446 373.3 645.2 5472.3976 2116.1128;
	1879.8398 1239.8002 2052.5219 632.4211 1118.2 1453.6221 1131.6162 415.7978 719.7 5985.3165 2266.1;
	1949.2 1253.638 2119.8893 620.4345 1148.8982 1438.2527 1163.3526 414.3138 760.3618 6303.9592 2299.702;
	1906.0748 1232.1267 2096.0404 610.5072 1121.5739 1415.9504 1154.6472 384.7 746.0275 6478.4055 2283.7704;
	1843.0531 1210.9 2024.0942 616.4662 1115.6184 1356.3659 1149.2874 396.335 722.4 6494.2532 2235.6073;
	1837.1755 1201.0553 2016.8 627.645 1123.5515 1351.7417 1147.3885 389.3603 725.4003 6534.3301 2224.9638;
	1803.0639 1170.6752 1933.4518 600.1 1087.259 1267.9692 1097.9265 366.4815 701.8 6408.2 2075.3178;
	1829.3396 1202.7199 1947.1673 610.9041 1103.2346 1345.0185 1110.1 380.6712 694.0852 6412.5247 2120.868;
	1865.3878 1180.4205 1925.907 606.5751 1090.2203 1338.4909 1087.9782 373.5334 674.2322 6359.2922 2112.4247;
	1828.496 1204.0907 1909.2514 601.9 1070.1566 1347.4276 1112.4709 401.2807 670.7097 6348.5145 2152.6324;
	1850.3655 1202.8008 1892.1219 597.2 1055.7 1386.2417 1088.8504 407.4871 680.8044 6298.6721 2247.8785;
	1824.6654 1205.9121 1883.8634 590.581 1076.5248 1437.3903 1143.1862 412.2 693.6083 6253.8912 2359.7228;
	1829.7286 1220.9413 1949.709 598.1515 1057.7313 1443.1058 1166.3385 408.9 713.787 6238.6586 2446.6462;
	1940.4 1276.2389 2075.9755 624.2 1096.9473 1510.829 1196.1632 403.3266 727.5699 6221.3415 2607.2836;
	1960.019 1266.5425 2026.1866 633.8633 1083.9622 1531.462 1228.4395 413.7963 739.5522 6158.7566 2521.5105;
	1927.2109 1176.8813 1929.2063 622.2615 1021.9564 1447.3 1168.5598 379.6163 705.9019 5893.1381 2378.7009;
	1843.4961 1099.3043 1851.8634 597.5565 977.0944 1337.4391 1074.6363 350.8789 660.6544 5697.5787 2196.507;
	1744.9357 1033.5528 1769.5 581.1444 934.445 1271.1301 1006.5 329.7696 613.1588 5271.2922 2009.5055;
	1695.2829 992.2323 1663.0693 576.7887 913.4315 1219.5321 960.5337 321.1776 558.8417 4915.8346 1894.4081;
	1662.5994 954.5159 1594.0681 594.4 877.9367 1176.8846 906.3767 304.3188 532.7 4607.6306 1819.4773;
];