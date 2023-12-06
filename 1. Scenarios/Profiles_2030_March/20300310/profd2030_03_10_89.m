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
	1381.0183 932.0335 1631.8 596.914 815.6105 1255.5927 906.1847 300.0292 561.2942 4884.6348 1796.387;
	1385.2004 923.7576 1597.0002 584.0 801.8878 1265.5801 878.5497 295.6606 534.4 4843.4783 1761.7027;
	1380.5974 913.1749 1578.3636 590.3471 800.6246 1257.7952 881.1 302.3247 542.4362 4809.965 1776.9626;
	1414.0146 939.5725 1630.6524 593.294 823.5027 1281.4494 898.8157 304.0075 552.5985 4855.8303 1805.164;
	1473.8885 973.1607 1710.9688 589.3 862.2 1353.0875 959.9663 320.1503 588.2171 4921.0126 1910.7832;
	1540.7246 1021.413 1801.1 575.3 908.7214 1399.4357 990.2847 318.8014 612.8289 4980.7697 1973.909;
	1532.2181 1016.0229 1830.0 595.4084 949.3006 1430.9219 1027.327 327.1 628.4101 5138.5608 1983.3085;
	1577.8112 1043.6533 1880.695 593.7284 957.121 1482.3225 1073.3008 340.3 648.8081 5255.6421 2054.2845;
	1602.526 1065.7869 1892.827 603.5954 962.277 1511.4278 1138.946 352.1 670.4 5398.8387 2117.5342;
	1614.0394 1051.1 1895.9 581.6094 933.4055 1452.8 1107.3835 322.6 663.77 5522.4817 2031.8651;
	1562.6226 1050.3672 1914.6564 551.2702 899.544 1496.0245 1166.2825 327.6065 664.6 5562.124 2123.8549;
	1571.1952 1060.6 1889.5008 551.2804 923.8412 1420.7071 1130.1991 342.9 648.817 5571.3398 2160.3621;
	1558.9386 1054.9 1875.7794 555.8469 876.8973 1396.6787 1093.082 316.3139 647.4031 5458.284 2087.765;
	1572.0 1075.0745 1911.1076 543.1495 889.2314 1432.8 1110.1967 326.9 649.1 5409.5438 2084.1639;
	1591.9405 1064.7323 1894.8692 553.9 867.6095 1454.5 1079.0 309.8392 635.923 5316.4089 2095.5084;
	1588.2773 1075.7599 1860.6567 563.4584 886.6846 1448.2329 1095.0575 305.7795 661.3375 5360.6028 2169.2447;
	1637.3658 1083.1792 1889.3776 557.3351 968.4352 1503.5243 1123.9882 335.2235 658.9749 5421.9044 2224.9642;
	1652.3249 1129.0429 1931.5774 568.1 1026.4571 1588.4 1165.078 344.6 672.7957 5522.1134 2297.9816;
	1682.0933 1137.2 1974.7079 586.5 1015.5267 1545.1642 1165.067 348.9 685.858 5525.0686 2341.7292;
	1611.6276 1077.6395 1868.0 573.6621 962.3538 1477.5524 1102.3792 337.6536 659.3404 5346.0849 2183.0929;
	1600.9892 1012.2332 1772.2201 550.6325 887.3 1387.0703 1034.494 291.4 609.9295 5293.7018 2071.7319;
	1594.3 978.0752 1711.6467 529.2368 825.5267 1304.7422 956.0598 266.9468 572.1704 5039.1111 1889.7455;
	1502.1787 916.5255 1598.8994 540.8295 785.9191 1149.7048 865.2 245.6306 476.7951 4743.899 1668.7121;
	1462.333 897.9086 1568.5945 559.3 792.3 1111.7119 856.1209 230.7052 490.6437 4653.3203 1604.9803;
];