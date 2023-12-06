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
	1429.2 932.4 1585.6339 569.5614 839.6581 1127.9216 843.4296 264.8688 445.7953 4440.6346 1614.0728;
	1435.2316 944.2 1595.2092 560.1 811.8951 1126.1945 846.3112 273.0 440.1037 4407.1592 1610.0994;
	1479.4325 967.1408 1627.6508 570.8548 836.6979 1146.8 869.577 282.4008 465.2331 4494.4099 1669.8531;
	1553.5878 1038.0278 1738.7286 589.2382 906.3055 1223.9251 913.5123 298.4278 501.4235 4709.7046 1791.661;
	1733.8663 1185.3108 1961.7181 607.1636 1013.2018 1386.4412 1012.5995 328.9638 553.7543 5237.0356 2011.1115;
	1849.9501 1255.7876 2100.1 604.2721 1102.5383 1474.015 1109.6061 361.2249 645.3785 5844.9018 2198.6;
	1847.7 1278.2497 2123.1679 587.5144 1113.9464 1467.5899 1139.8313 354.2 655.7948 6255.6723 2254.6118;
	1884.8 1265.5908 2125.4949 568.5849 1102.2932 1456.1532 1133.5332 355.9019 653.4996 6420.8957 2186.3221;
	1869.6991 1264.266 2133.2665 556.351 1084.5126 1436.7952 1146.3611 356.6 661.5262 6533.9246 2217.0432;
	1868.0902 1266.7941 2120.8 561.5091 1090.3678 1436.1387 1156.5972 373.0889 667.9 6594.9893 2252.4216;
	1862.9778 1252.9229 2083.282 564.3405 1067.7266 1481.5 1143.6186 355.8758 659.044 6455.7484 2190.7082;
	1842.516 1265.0819 2076.3064 548.1864 1045.9929 1417.8251 1155.2035 324.1 649.2 6425.8867 2155.3311;
	1861.0921 1256.9052 2083.2646 558.0395 1047.5392 1386.1702 1099.7 338.8468 647.9103 6365.189 2162.7498;
	1831.1637 1273.9491 2047.274 560.6553 1046.9922 1390.4964 1061.4 335.5292 650.7195 6423.7483 2127.8536;
	1854.3 1259.2827 2088.6914 563.092 1096.5134 1405.93 1083.9779 347.4678 660.0666 6366.8375 2177.2482;
	1865.4251 1287.6872 2079.3706 592.2937 1115.1399 1467.1046 1150.8414 374.828 678.5 6498.0819 2289.7564;
	1855.6 1307.2088 2094.5364 607.6567 1150.1 1502.2587 1225.2998 395.6 690.2471 6499.6219 2399.4316;
	1916.9036 1362.2341 2227.4359 608.5211 1190.3679 1543.3073 1297.3062 433.03 711.825 6601.3578 2582.4614;
	1933.1038 1364.1811 2201.1535 619.3637 1150.1886 1530.8433 1260.1 408.1148 725.9692 6549.4797 2564.686;
	1888.0 1280.8412 2074.026 606.6 1074.5766 1414.1277 1192.2923 383.7677 691.725 6425.081 2447.9618;
	1820.4458 1195.6056 1981.363 568.925 1016.334 1343.3022 1134.4402 364.6126 650.5233 6080.7639 2275.4634;
	1734.9101 1113.5917 1837.5915 570.7 942.1437 1248.8386 1056.3573 334.2284 590.8416 5617.0732 2028.8549;
	1628.6041 1027.2264 1805.2495 585.6424 903.8875 1209.7099 956.7136 283.5 530.7244 4952.5639 1820.1591;
	1613.239 990.3017 1793.6159 574.1076 916.3161 1217.1426 937.9839 285.6 506.0061 4729.7061 1781.6467;
];
