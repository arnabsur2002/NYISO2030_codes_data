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
	1628.5209 989.2756 1702.3201 544.3571 861.5389 1195.9046 892.2052 278.2326 522.6 4488.7035 1738.7383;
	1600.7415 973.2 1666.1748 520.5157 853.1413 1197.4435 876.6773 270.7 507.8147 4419.3509 1721.0555;
	1617.1932 991.5944 1728.5521 547.3101 853.6946 1217.2901 892.9 274.1 506.7708 4479.5298 1753.5052;
	1670.0634 1064.0 1816.0645 575.4364 927.3395 1272.9186 942.9861 290.5456 548.4302 4727.3292 1863.0294;
	1803.3677 1182.8 1999.9907 612.9 1027.8846 1433.4163 1037.1 326.5521 620.0 5228.4187 2091.0647;
	1861.4218 1246.855 2091.3592 643.9815 1098.1249 1516.7002 1083.7337 356.8 680.1918 5793.0158 2245.2774;
	1842.1925 1243.4275 2068.7581 633.2961 1093.1425 1493.3 1121.3393 372.1 700.8 6210.2486 2261.0463;
	1883.9536 1241.4461 2065.9686 642.1149 1048.5456 1440.2237 1075.7109 334.787 687.7232 6289.6052 2155.4627;
	1854.6052 1236.4563 2082.5101 630.5761 1073.3189 1446.3242 1073.5 361.4298 710.2608 6415.9974 2148.1235;
	1883.7443 1214.4286 2028.3977 621.6 1086.8803 1464.4216 1047.3431 364.5477 679.3 6356.4329 2046.009;
	1858.3023 1205.7 1973.1884 613.9109 1057.4222 1428.1273 1038.6918 355.8156 679.0 6408.2 2093.6985;
	1823.0919 1178.8847 1952.9847 602.3 1020.5615 1394.9 1003.3708 357.063 668.7872 6404.7853 2111.3871;
	1812.0145 1191.0008 1948.7304 586.5661 987.8714 1429.069 1037.5639 346.9194 663.8518 6392.5663 2109.8914;
	1825.258 1174.0328 1914.5404 574.9742 977.3002 1441.8478 1056.414 343.599 684.5 6496.2872 2223.472;
	1830.9744 1182.865 1984.2647 588.9 1044.0711 1478.1965 1096.2104 342.6977 701.5 6641.2252 2339.6218;
	1825.3834 1184.091 2039.9212 592.3 1052.2207 1499.1599 1128.1023 369.0 726.1035 6678.0483 2422.3318;
	1807.1662 1179.5384 2059.8371 623.1935 1090.9053 1537.3849 1153.8723 391.7591 736.5149 6660.043 2497.8747;
	1892.3 1275.0453 2175.5242 636.7107 1146.7678 1644.264 1242.2977 429.8421 786.7333 6878.0429 2606.4177;
	1940.1426 1281.089 2192.7576 636.0 1164.266 1601.2329 1225.8817 431.2335 760.4728 6706.7512 2596.8247;
	1898.9338 1243.9594 2098.2982 616.6 1089.9499 1524.5385 1153.9 392.8028 729.0012 6463.3214 2409.1141;
	1783.6278 1148.808 1932.5342 609.6921 1019.4214 1413.7101 1109.5964 353.3983 722.5018 6195.009 2262.051;
	1686.5189 1059.7 1787.0865 589.7 940.8312 1295.4002 1015.1184 307.7 623.9482 5380.6461 2048.9423;
	1653.9 996.3112 1701.8624 571.9907 894.8094 1189.568 929.226 284.7 573.0601 4661.2092 1803.5484;
	1583.6523 973.2087 1684.8 580.0 880.3629 1189.3 902.3 266.8227 553.2114 4709.1137 1793.3;
];