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
	1483.8112 936.6084 1567.9863 560.2056 784.8244 1183.168 882.4421 239.3087 510.0815 4441.5 1658.1;
	1476.7 919.6 1523.86 553.3661 758.1468 1149.2949 860.6 239.4 491.0 4283.3182 1605.7956;
	1494.6071 933.9778 1558.4824 560.3 759.7443 1138.6506 876.5059 246.4667 506.8 4313.3952 1639.3255;
	1592.7522 1013.3 1679.7302 573.0 832.6166 1219.281 926.0 266.5522 541.7 4565.6881 1768.7777;
	1727.459 1147.1 1900.0062 590.0607 955.0454 1359.4716 1062.2711 335.6457 631.6484 5186.0177 2049.557;
	1839.8346 1219.4543 2035.8 611.697 1025.9378 1469.5756 1135.9876 361.9 687.7693 5696.3153 2193.1134;
	1836.5591 1215.5994 2004.7793 609.1 1035.7138 1453.3512 1140.2118 362.1788 682.1 5933.8621 2185.6825;
	1846.6635 1215.2198 1967.382 582.232 1019.361 1461.984 1131.0 367.5988 685.5326 6037.7815 2088.048;
	1886.7067 1245.4208 2017.8089 564.354 1007.9849 1464.5166 1134.2545 359.1791 685.2548 6153.1818 2059.8415;
	1925.7275 1271.8351 2027.8626 597.5 1005.4413 1492.521 1182.5461 362.8316 692.7235 6304.8925 2009.9093;
	1922.7 1274.5 2041.933 585.5 1014.7667 1490.825 1176.8304 348.9 684.0822 6207.4933 1992.6327;
	1922.5515 1290.3422 2026.4531 577.6315 1003.1234 1412.5 1139.4861 359.0133 679.3 6277.1826 1988.4583;
	1897.7499 1291.3635 2025.0476 553.0241 1002.8104 1467.7275 1135.2906 344.8 664.6006 6228.5722 1958.6266;
	1888.4 1276.5639 1998.6912 562.8743 976.6805 1418.0143 1177.2 369.2248 682.2 6252.0027 2024.3129;
	1852.3132 1262.9852 2001.476 570.425 994.5591 1434.7004 1198.1881 370.5585 696.5736 6209.9073 2042.3023;
	1898.3436 1305.0195 2039.423 572.649 1015.1 1425.512 1127.8171 343.7029 685.6 5989.2426 1919.6007;
	1913.1676 1341.6677 2102.6382 586.3542 1039.6264 1511.1323 1204.3105 378.1024 692.8367 6128.5155 2201.4978;
	1954.86 1429.9295 2201.5527 592.598 1088.3613 1552.1709 1224.6835 393.1497 734.8 6181.2049 2371.4821;
	1963.6808 1373.807 2126.3927 588.2369 1065.5463 1536.9372 1201.6354 382.2472 714.9564 6013.2782 2299.3787;
	1888.1217 1313.9265 2054.8667 579.2575 1010.5499 1449.5124 1192.5438 370.3848 697.1835 5915.1027 2180.0791;
	1863.3853 1206.665 1916.2229 556.3907 926.1014 1327.6606 1104.9468 334.3 654.5643 5608.901 2067.5485;
	1766.3044 1119.5436 1774.7568 562.8293 869.7829 1263.4314 1028.9884 304.3443 605.2361 5270.0926 1888.9208;
	1639.3445 1045.8 1741.925 577.7654 859.0388 1205.4689 972.6534 255.0338 572.6441 4831.0504 1791.4981;
	1597.5471 1017.5114 1780.5817 558.9128 840.6744 1160.5619 913.7443 249.1518 545.063 4662.2372 1767.2432;
];