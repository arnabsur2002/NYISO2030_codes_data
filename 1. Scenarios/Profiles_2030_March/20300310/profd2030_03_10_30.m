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
	1605.312 1028.8521 1820.4188 594.172 873.7 1276.867 916.3405 301.9 559.093 4687.7601 1826.0;
	1540.2723 1015.0121 1747.5088 571.4 818.7982 1234.4234 873.7891 283.4596 530.5668 4486.0347 1731.3936;
	1575.6897 1013.4497 1780.4026 574.4386 842.6 1241.2776 884.8792 291.6938 529.3977 4466.4964 1742.5367;
	1588.2415 1020.4672 1808.6161 569.1896 880.8156 1291.918 918.2903 304.7021 532.4 4424.6796 1755.303;
	1627.817 1060.9453 1864.5339 598.6078 964.2316 1353.5797 964.0787 322.7204 565.9 4611.4649 1841.3731;
	1693.8993 1109.609 1900.0016 620.3586 977.1634 1399.7203 1034.9307 326.4 601.4 4773.0298 1940.9;
	1743.7502 1130.17 1963.1112 606.5 1016.0492 1458.3814 1072.1 329.9147 646.1724 4884.5729 1988.5867;
	1759.4668 1163.4793 2006.3839 583.7347 1043.6232 1514.7781 1109.5463 334.3581 651.6257 5064.2677 1983.9304;
	1826.9809 1187.6601 2022.4019 577.3893 1077.4739 1568.4038 1156.7194 325.7292 679.6811 5219.392 2007.9849;
	1880.5299 1216.9147 2028.7811 553.4518 1099.9154 1631.0801 1195.3592 337.9066 719.0 5345.4911 2079.6635;
	1890.3855 1223.922 2036.0774 570.893 1071.643 1599.7916 1213.2477 343.8857 702.6477 5387.5407 2004.5592;
	1896.1921 1220.627 1997.6441 557.1428 1058.8064 1586.1127 1232.0212 352.4127 723.5031 5496.9015 2156.314;
	1869.4487 1207.2006 2000.462 554.5 1021.7032 1540.3819 1210.4471 357.5553 694.7782 5487.396 2123.8727;
	1893.2399 1210.0 1947.0895 516.3891 1016.6795 1504.9284 1141.6137 366.1186 687.4777 5496.8774 2109.7;
	1889.9829 1193.6927 2020.0975 544.7583 1014.2313 1515.514 1205.8731 416.8179 679.539 5535.8082 2205.5385;
	1840.142 1186.6416 2010.2855 568.5138 1031.3354 1547.8 1197.5863 371.7586 714.0179 5583.1969 2209.1174;
	1795.178 1193.6148 2047.0333 583.5 1050.777 1532.6314 1226.6024 419.6993 769.5329 5695.0748 2342.9097;
	1795.2801 1235.3575 2001.9637 597.2863 1092.002 1604.621 1287.458 425.7727 796.7177 5997.5003 2471.1598;
	1822.8732 1262.967 2039.8963 603.6401 1100.0772 1559.06 1257.2539 439.856 763.709 6035.9462 2461.2637;
	1777.7682 1201.5884 1935.3644 575.2206 1003.296 1463.5604 1200.0117 435.8705 708.7238 5944.1028 2324.6708;
	1745.0277 1137.188 1862.5252 554.4958 959.065 1408.2677 1109.9869 411.5872 665.3441 5607.2959 2186.3532;
	1660.4983 1069.2264 1755.5702 536.2828 891.7 1329.1836 1037.8424 373.5449 614.5087 5183.0996 1958.8371;
	1553.907 973.8189 1608.6151 523.7 825.8448 1199.3418 930.5586 372.654 536.906 4726.1368 1703.6613;
	1462.1902 942.4354 1630.0133 531.1162 821.0641 1180.2175 907.5601 345.079 517.2 4570.2661 1676.4403;
];
