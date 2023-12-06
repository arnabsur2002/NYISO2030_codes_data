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
	1544.316 959.9024 1638.9562 567.449 818.0908 1151.9664 887.9393 269.2162 512.5861 4523.0991 1732.9421;
	1539.6128 962.1362 1640.3424 566.6043 817.7304 1154.2976 885.7431 268.4154 506.8832 4467.4395 1723.768;
	1560.5362 982.836 1677.3233 574.412 835.0695 1177.6779 898.7605 273.1028 514.7412 4498.6149 1755.4375;
	1636.3606 1049.1327 1784.9455 591.0796 895.3048 1248.6669 950.0782 295.806 549.9304 4744.3736 1870.4572;
	1785.4599 1167.8583 1986.377 620.9071 1015.6447 1396.8134 1053.6149 337.5747 628.6941 5314.4533 2111.9119;
	1892.467 1244.7806 2103.3018 634.3606 1080.67 1479.0189 1118.7317 365.0478 693.4285 5895.8406 2261.9717;
	1906.5942 1250.3527 2106.4954 626.5592 1082.2711 1473.6243 1134.6017 367.0336 703.5091 6231.3649 2279.203;
	1911.5131 1250.1914 2100.5139 620.0856 1078.9957 1462.9592 1136.7059 364.0677 705.8223 6431.1842 2257.0226;
	1917.4076 1250.3327 2102.4106 613.3543 1074.9394 1449.8593 1131.9379 362.0306 707.6968 6492.2245 2233.3677;
	1909.9376 1244.5101 2090.0397 606.9017 1066.9793 1434.6217 1122.1701 358.357 700.0754 6503.8452 2216.7535;
	1888.8099 1233.7414 2067.8664 600.6437 1051.677 1415.9406 1104.3759 353.6368 692.385 6496.8538 2179.3587;
	1884.4077 1224.1819 2051.1469 594.8557 1038.441 1400.5736 1095.3782 349.2775 687.3989 6467.8022 2155.9627;
	1859.8164 1209.97 2021.7614 592.5167 1022.9107 1382.3341 1086.6102 346.1268 680.1639 6428.4694 2154.5767;
	1831.4938 1201.6097 2001.0699 590.7043 1014.5442 1376.6033 1085.2057 346.4405 679.2971 6421.907 2176.391;
	1826.8492 1202.2119 2007.4255 592.7117 1025.1823 1401.0466 1097.982 352.3263 684.8489 6445.6842 2235.6241;
	1831.0836 1216.8066 2036.1092 602.2074 1046.5146 1449.6867 1131.0078 361.8089 696.3776 6468.4304 2330.6398;
	1838.8993 1229.4586 2059.0676 611.3456 1064.4826 1491.0974 1161.8622 378.9075 712.1574 6378.2976 2434.7987;
	1896.2478 1273.8795 2129.9896 625.1393 1106.3722 1552.9478 1222.4832 395.5635 747.0346 6420.1059 2554.363;
	1919.734 1279.7619 2126.6465 623.7257 1099.4043 1536.8808 1219.0126 392.5627 738.9507 6315.881 2525.8765;
	1859.5231 1213.8196 2029.9223 608.4739 1042.0708 1459.9042 1166.7698 374.54 705.5662 6077.6726 2399.8129;
	1767.8571 1129.3229 1902.0448 587.1531 972.207 1358.6316 1085.968 344.2379 653.3861 5733.2614 2206.553;
	1665.9075 1053.545 1785.5915 572.6023 910.4223 1268.7737 1006.3901 312.3103 597.9942 5308.3779 2006.6039;
	1600.7019 1005.0075 1722.6377 574.7915 880.875 1215.25 955.62 288.6134 562.873 4993.4173 1880.1565;
	1570.7046 981.0363 1703.1988 580.119 864.9999 1192.3951 930.2622 278.64 544.534 4780.4197 1813.83;
];
