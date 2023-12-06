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
	1507.4154 990.1445 1760.2301 565.2646 869.2188 1145.6 879.7389 279.0238 533.9 4547.2818 1656.7078;
	1499.9963 993.6647 1771.9979 557.5663 880.8 1142.4061 883.8691 279.9542 541.6642 4573.9036 1699.3171;
	1536.4 1017.4422 1785.2472 560.9568 895.1467 1154.4647 881.1192 291.0986 534.165 4533.2841 1744.7041;
	1606.8699 1081.1 1880.1261 539.8098 929.4 1217.484 935.1415 300.3646 567.9087 4768.4284 1860.2672;
	1739.8855 1208.2 2078.9009 597.6 1063.2432 1397.7279 1057.1 348.7 655.0525 5351.5399 2124.3181;
	1830.5769 1264.1 2124.6889 600.774 1099.2212 1449.3693 1107.6738 359.0809 716.4 5823.4948 2249.5241;
	1812.3481 1245.7 2045.3967 591.6278 1061.1 1405.9174 1105.1975 343.7917 696.1921 6126.721 2136.9183;
	1822.5 1235.5359 1989.8085 601.2468 1016.2116 1371.4206 1078.7794 337.0706 712.8 6313.3196 2013.6866;
	1755.9651 1210.6 1941.9454 607.2974 993.3377 1261.6203 1047.3082 315.9957 701.1267 6221.2889 2001.356;
	1745.4526 1212.3393 1944.5 591.0096 975.6406 1251.5889 1032.2945 314.1932 705.1272 6334.2 2033.2957;
	1728.6907 1204.2355 1944.6729 596.1 990.9351 1211.6441 995.2092 318.7356 679.7605 6339.0938 1926.0399;
	1712.5229 1200.6304 1965.3504 603.6792 961.0294 1237.5454 1018.5872 291.9743 690.4119 6290.5743 1965.4721;
	1671.0085 1181.659 1926.4318 610.5097 936.6922 1271.5103 1035.9408 314.2566 680.8185 6392.4378 2132.7036;
	1672.2172 1193.0534 1883.3544 614.4084 942.0657 1271.4112 997.5938 309.4121 670.0 6280.1528 2102.3396;
	1668.4013 1147.9377 1886.7751 612.7707 932.3082 1301.7 996.8576 296.7587 682.3571 6252.7301 2176.5322;
	1649.5091 1176.7696 1938.3035 611.0396 923.5356 1385.9887 1025.4176 313.3339 674.4945 6169.7998 2200.422;
	1763.1003 1194.7 1976.1766 612.9912 924.4526 1402.6645 1067.9895 352.9473 705.4446 6267.6047 2361.2162;
	1813.8237 1246.6047 2057.2981 613.9 966.9839 1516.8798 1141.7508 350.3158 730.0366 6306.8264 2501.7789;
	1850.0003 1260.4505 2040.254 607.941 978.1026 1482.558 1142.6023 356.1349 730.6 6260.6754 2482.453;
	1805.7869 1190.6779 1923.9311 586.7786 901.0785 1410.1984 1076.9897 332.4 696.2195 6005.7977 2347.186;
	1682.1806 1105.1327 1817.3 569.5341 847.6042 1302.1005 1008.3151 310.0548 651.2237 5640.6559 2126.8978;
	1600.263 1044.476 1726.3656 566.2 824.3547 1221.8646 917.3444 271.1674 600.7764 5233.3617 1914.6184;
	1522.6085 995.2066 1650.2955 554.7436 791.8669 1132.904 837.9374 268.3701 556.3479 4732.3887 1800.0462;
	1462.1315 960.8002 1611.83 548.6086 814.0722 1093.8 790.333 280.054 512.4882 4554.2163 1721.0387;
];
