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
	1551.9628 979.806 1676.6 605.8788 869.7 1211.4 934.3902 264.2 538.1 4748.4763 1763.701;
	1574.3112 992.7 1703.3015 600.3406 882.3467 1234.0649 935.2 248.2944 542.7695 4725.0264 1784.8;
	1584.1 995.726 1715.8627 606.6459 882.1864 1233.8181 932.9912 264.3932 545.9 4719.3 1812.822;
	1624.5554 1064.0113 1819.1356 629.0273 929.6388 1306.9447 988.8954 281.8554 581.1 5008.3006 1912.5138;
	1747.7236 1150.722 1982.8832 645.9843 1038.1 1450.9733 1084.22 322.8081 661.5256 5457.8539 2124.6163;
	1867.2786 1232.915 2094.4609 657.0182 1077.5534 1524.0 1144.037 349.297 718.7 5964.8631 2258.8;
	1902.9336 1252.603 2090.2346 645.8437 1083.3653 1538.1424 1142.5006 355.7211 720.6453 6201.9458 2236.1534;
	1841.6 1263.6279 2069.2591 649.8404 1072.2 1492.1105 1115.8379 324.6263 700.6555 6391.9262 2234.2666;
	1876.5555 1290.4594 2078.7281 638.8718 1090.529 1502.2623 1126.4277 314.1993 699.2284 6401.9583 2161.5952;
	1867.1357 1258.2881 2018.2583 633.1455 1049.3978 1456.1883 1118.5364 309.1378 709.5086 6400.2 2138.7766;
	1839.4318 1250.6957 2021.1 615.3928 1052.8 1389.0113 1074.6452 299.7637 695.7 6401.3969 2163.3759;
	1816.3327 1236.2869 2011.3464 622.7035 1048.054 1377.2342 1087.723 330.5525 688.7697 6512.4875 2195.1548;
	1838.9063 1219.5135 1983.1317 611.6494 1003.1 1291.1631 1047.2809 323.0704 680.3 6347.1878 2145.2968;
	1790.7329 1191.5799 1952.4604 591.1528 994.6666 1291.6411 1051.6694 315.4733 699.8142 6352.3907 2163.204;
	1775.289 1192.0601 1922.5305 600.2789 991.3669 1297.9133 1031.5308 327.1 678.9176 6419.9384 2203.6755;
	1815.405 1210.1556 1947.0141 601.0436 1000.5008 1384.3 1039.764 319.9667 691.835 6351.1705 2246.6974;
	1814.4273 1189.5109 1930.7048 590.7 1000.2827 1395.4775 1061.441 337.2913 693.0815 6220.063 2295.2223;
	1877.2439 1274.7305 2040.4 616.8146 1079.0159 1522.5698 1153.9586 369.4581 752.6321 6298.371 2493.93;
	1910.2078 1283.8852 2015.0581 632.9232 1069.2207 1504.1574 1149.1132 348.0 733.0 6112.4187 2438.5496;
	1885.9251 1198.7154 1899.1063 620.537 1027.1849 1421.0582 1100.2532 326.9947 687.2933 5791.5615 2308.0935;
	1814.7691 1138.8066 1773.3678 592.8 951.6661 1335.5391 1039.2 310.2 653.7 5598.4015 2205.7;
	1668.0014 1045.4116 1670.2579 582.2812 886.3874 1213.2701 949.8688 263.7092 597.3494 5130.9713 1994.6892;
	1562.8007 937.4209 1548.3008 570.3 821.7427 1222.9996 897.8636 260.9 519.743 4838.7192 1811.1921;
	1494.8509 895.9183 1497.5569 571.3 787.9 1180.1938 860.2637 227.3259 501.1114 4664.2666 1792.5478;
];
