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
	1570.5933 934.1697 1499.452 583.6379 764.7598 1072.7317 838.1067 255.9431 465.0 4382.9606 1724.8977;
	1548.6449 909.9441 1466.3 568.6357 713.9 1026.3011 819.287 247.8189 466.1654 4286.8977 1665.0936;
	1567.7 983.0874 1530.1994 586.7446 736.0475 1073.1724 836.3 253.8851 480.1591 4334.2674 1727.0557;
	1594.2 957.9951 1568.6245 590.8496 788.8952 1126.2865 855.8277 273.2598 474.2966 4397.206 1722.7093;
	1645.5811 1027.5474 1702.202 616.6322 873.9232 1200.7365 925.7 299.4664 510.4669 4608.4503 1852.7576;
	1711.3 1083.7197 1771.1683 610.1472 962.9597 1272.6132 965.8609 316.3872 529.9922 4760.1994 1906.6;
	1765.991 1132.5666 1840.5725 617.8 1028.0213 1335.3589 1037.409 326.9 559.8437 5033.6335 2028.3118;
	1818.8585 1166.7707 1899.3096 612.8237 1043.3124 1366.8712 1089.436 373.6546 595.2 5312.8822 2124.1863;
	1853.2543 1208.9751 1921.7932 609.7821 1043.1218 1384.9581 1143.1174 386.3026 628.0751 5469.7095 2276.1231;
	1856.9993 1216.8489 1917.8472 591.362 1040.0387 1398.8921 1123.8888 405.8707 612.0053 5553.5995 2223.15;
	1796.3394 1185.1111 1825.3133 584.3856 1005.1424 1406.8321 1117.8607 370.6706 610.6483 5459.3734 2204.3972;
	1786.0994 1179.3471 1824.7 588.9982 989.4366 1386.6073 1145.5774 366.5367 635.2 5461.3742 2134.159;
	1836.9664 1231.9003 1829.1127 588.243 986.4114 1337.1696 1079.6985 376.0346 607.0572 5379.4241 2091.6839;
	1890.4298 1202.0885 1803.574 573.4 963.0069 1308.032 1105.3639 367.3898 600.4947 5379.8998 2007.7483;
	1825.9614 1224.4629 1833.5343 564.3004 962.7771 1308.5 1073.1619 382.8722 598.0184 5370.6698 2052.1589;
	1812.5863 1160.3442 1833.7061 562.22 968.8209 1307.6 1033.3334 348.9152 581.9577 5310.3728 2028.8666;
	1840.754 1178.1402 1862.475 582.6 964.3 1348.7908 1047.9569 333.0126 600.0 5308.6628 2126.2049;
	1873.7948 1218.4866 1906.6056 596.2 1015.3205 1440.8964 1148.8775 333.8302 627.3 5443.854 2280.7892;
	1888.0406 1255.9349 1889.0988 597.1992 1010.2094 1403.3469 1150.7736 331.0 621.0 5435.7308 2274.6406;
	1854.7891 1198.0372 1839.0693 593.2049 979.3 1371.9507 1138.412 330.7931 598.1431 5196.4038 2176.5582;
	1807.1863 1122.9122 1780.6047 575.9621 937.5999 1320.0214 1111.6936 313.8509 597.1368 5104.0232 2106.2937;
	1660.2713 1022.648 1679.7 568.84 878.9418 1246.6612 1036.5202 295.1044 574.7253 4974.6993 1990.7543;
	1655.841 1010.7122 1651.0393 587.1 852.1 1235.8844 1062.1059 277.2055 555.3278 4917.8534 1935.8405;
	1572.2606 948.9637 1613.2 588.7 842.4601 1177.9122 965.7742 267.5 525.659 4690.4978 1802.4;
];
