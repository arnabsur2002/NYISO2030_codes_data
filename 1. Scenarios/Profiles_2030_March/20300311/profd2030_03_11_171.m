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
	1491.2895 858.1326 1552.6068 540.9 818.2168 1130.8796 870.8058 283.769 491.3854 4448.0339 1651.008;
	1489.2021 858.9182 1576.0738 532.3171 822.9717 1132.9254 851.2679 273.0 471.0646 4390.8588 1627.6693;
	1506.791 900.1258 1638.4701 525.3918 842.7086 1169.9618 879.4679 269.4457 497.1 4528.1264 1684.9842;
	1589.0 970.0464 1759.3312 564.4121 927.2567 1236.9726 933.2188 291.7805 538.5 4741.8731 1781.964;
	1711.5124 1087.6303 1956.009 604.7388 1024.0418 1372.5 1018.7507 337.2495 585.0377 5249.1277 2020.8559;
	1839.9893 1162.7579 2091.59 609.6725 1095.4609 1458.8743 1104.4406 366.6989 665.1591 5885.7849 2220.2248;
	1868.3895 1204.9 2105.7903 607.1 1089.1137 1484.7778 1118.9231 371.2382 673.9605 6191.6224 2236.2624;
	1918.6362 1236.7885 2084.2018 617.1958 1046.0587 1504.3056 1126.2298 366.1373 687.352 6402.3653 2219.7813;
	1876.8562 1216.2188 2059.5537 611.8858 1014.9 1478.0858 1093.7731 365.5706 673.4498 6488.502 2151.9694;
	1867.0901 1224.4884 2122.6642 602.7127 1020.0549 1500.9714 1097.5 346.9 653.7165 6461.0262 2058.805;
	1865.5498 1217.9061 2118.8168 589.1679 1031.9248 1475.6039 1083.1004 348.8001 654.2239 6541.7388 2097.7937;
	1844.2568 1252.2115 2125.3416 597.1813 1024.2402 1451.1856 1079.1308 333.3 664.6986 6527.5993 2134.2168;
	1837.2 1269.9711 2076.524 592.7307 1021.0422 1402.271 1076.5001 353.9 679.0839 6500.2332 2167.7199;
	1800.7917 1260.9241 2081.2182 595.9255 998.1402 1396.034 1065.9089 363.0173 686.7284 6572.9705 2168.77;
	1811.2372 1237.563 2080.6092 597.973 1007.4173 1396.9448 1040.4296 350.8718 677.139 6610.3596 2208.1599;
	1828.0832 1273.2888 2118.6885 620.1758 1050.1815 1471.2151 1097.8 357.9 684.9571 6681.6003 2296.3956;
	1879.1513 1308.1106 2197.3902 620.6 1099.7442 1497.136 1129.5591 373.9751 702.0 6595.2488 2385.5374;
	1929.7798 1363.0619 2286.3609 625.0 1118.8762 1539.2 1188.0289 378.5618 734.11 6900.1292 2514.3572;
	1922.6772 1366.0584 2232.1871 640.8279 1130.9496 1518.0413 1222.9211 377.1989 742.9 6715.1655 2523.7227;
	1832.7 1247.3382 2093.8278 602.0144 1046.6258 1439.6131 1163.3547 357.3 703.7 6595.4307 2386.7761;
	1736.2426 1149.6 1949.6883 581.7534 966.8762 1321.084 1061.0524 316.6936 644.4 6042.691 2159.3896;
	1657.1 1081.3929 1832.0672 569.4 912.5576 1257.4424 1030.9311 278.4973 601.3195 5882.799 1978.8426;
	1506.4369 995.6619 1694.4793 573.1265 875.3173 1191.2209 921.4 263.6 530.3596 5161.3229 1840.7522;
	1479.0587 980.2485 1645.3815 595.9 875.1903 1166.4624 891.1979 275.1337 515.2396 4904.2932 1766.528;
];
