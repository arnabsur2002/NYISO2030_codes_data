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
	1592.4149 994.7056 1667.2313 570.279 870.7667 1148.7762 872.2006 244.9654 460.0714 4483.6464 1635.9091;
	1585.5663 995.8153 1667.1995 573.9834 871.5277 1167.8961 883.4607 239.9414 474.5597 4482.1263 1662.8335;
	1632.9371 1023.084 1716.1017 576.6924 919.7955 1221.2363 911.5589 236.1864 478.1861 4543.4315 1709.792;
	1684.3 1091.4566 1816.2599 617.5597 968.6825 1282.8676 956.9021 268.8518 519.6894 4822.4704 1839.0598;
	1853.6266 1217.8397 2020.1607 634.7199 1058.8358 1404.8253 1052.8 307.0663 585.4548 5381.8443 2072.9916;
	1936.3509 1284.3426 2129.9513 641.9461 1126.0279 1486.4004 1111.4641 347.3 663.0449 5952.3255 2243.9587;
	1950.979 1299.2982 2117.0538 630.6 1127.7752 1478.9269 1125.4781 367.2211 672.7769 6327.4078 2292.6;
	1938.9305 1257.3137 2080.1 630.51 1127.1065 1448.2 1081.8343 354.2612 621.5296 6530.7088 2261.9517;
	1927.4 1234.9447 2053.8886 616.7241 1091.6 1388.9265 1048.106 343.5652 645.5142 6552.8465 2198.1707;
	1917.5 1254.8258 2100.5326 635.4 1108.2463 1480.0 1045.3652 339.1 641.8354 6542.6057 2178.687;
	1923.9184 1258.071 2042.4 612.477 1087.1113 1473.7776 1060.5663 358.126 644.7148 6763.0144 2170.2785;
	1929.6719 1256.1135 2086.2601 592.9949 1072.5628 1476.2201 1098.4666 365.8342 649.3047 6624.3766 2178.8281;
	1879.3477 1255.1 2031.7077 591.5084 1032.8639 1498.4439 1108.2779 370.5668 643.3887 6696.2867 2190.0514;
	1838.8149 1235.9629 2032.0092 590.2761 1028.286 1493.6313 1115.9518 371.7484 620.3107 6689.3986 2274.5457;
	1883.2005 1264.8207 2029.3519 570.604 1039.1261 1520.7795 1124.648 359.6453 642.0035 6752.2354 2375.2217;
	1914.8125 1277.437 2068.4157 589.4446 1065.1281 1537.7236 1231.6326 382.082 681.7 6870.1949 2548.6297;
	1877.0567 1260.4788 2059.2428 604.4 1097.9593 1531.3089 1175.0109 387.5154 694.5 6568.3636 2479.2572;
	1958.9036 1318.5491 2100.3435 607.154 1145.0883 1605.7305 1234.0848 393.8465 725.5 6435.3644 2556.3079;
	2042.1481 1363.9773 2129.3054 621.3253 1135.3386 1576.6546 1238.3851 403.5713 729.2373 6406.1 2614.2634;
	1933.071 1294.8645 2037.1322 603.2064 1081.8033 1508.8737 1178.8 384.9097 703.135 6101.3497 2454.3633;
	1831.3242 1199.9119 1910.2866 573.8812 995.7584 1411.7458 1100.1743 340.4861 661.0 5871.4183 2329.4008;
	1709.5092 1077.0492 1767.919 550.0002 905.7 1296.7635 1009.8591 307.2 601.7622 5454.5972 2056.5479;
	1694.6572 1052.4 1737.1738 561.5972 883.3 1241.7819 973.7713 284.2164 567.4 5167.4475 1965.5301;
	1633.0795 1024.9001 1702.8 586.4226 855.8667 1219.2 940.5 277.5032 548.4234 4866.8756 1857.9519;
];