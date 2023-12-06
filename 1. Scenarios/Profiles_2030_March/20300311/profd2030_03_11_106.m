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
	1429.3463 912.6123 1546.7648 522.5796 731.2548 1125.3 850.7886 255.7 478.4625 4119.9963 1631.3825;
	1394.6542 913.5272 1546.9 501.2522 738.7 1150.9395 852.1 267.0172 469.0663 4164.3095 1611.4;
	1469.0521 938.5732 1582.4413 526.608 765.1235 1163.9087 873.0671 256.4364 477.2356 4007.1838 1656.2013;
	1537.7784 1006.5892 1694.0151 555.2585 833.6843 1239.3535 916.9 278.2438 515.3254 4279.4238 1747.2481;
	1687.5271 1120.1007 1890.0164 574.8859 946.2 1371.5658 1008.9099 326.2 588.8583 4775.0128 1964.3486;
	1819.1573 1214.3862 2033.334 582.9333 1027.5327 1476.6614 1084.5 355.013 663.4428 5527.4674 2142.6809;
	1807.925 1231.7989 2045.8 590.4327 1036.141 1451.978 1091.4806 339.9442 676.8967 5797.5948 2212.3822;
	1870.2342 1246.5534 2011.6 581.7527 981.8188 1383.3702 1049.1017 311.5921 634.83 5768.1712 2059.1183;
	1894.1081 1272.9976 2071.187 586.3657 982.4442 1375.9985 1011.5269 311.6567 611.314 5698.9808 2051.3661;
	1963.8718 1327.5873 2074.9479 586.2405 998.3447 1388.9 1019.035 318.5902 621.1804 6136.8503 2123.9954;
	1945.4604 1318.4033 2057.9799 569.1229 975.0632 1340.8079 976.3605 314.7372 614.435 5680.9835 2097.0458;
	1918.3057 1292.9846 2017.7576 553.9958 972.2633 1314.0274 972.6946 320.9 623.8844 5931.3635 2069.2665;
	1862.9131 1254.7787 1955.2415 559.292 931.4237 1245.9523 900.3817 323.9023 620.4956 5900.0351 2033.0824;
	1852.9122 1265.3494 1943.6527 562.6715 921.6566 1279.8619 964.2207 314.7149 649.5058 5840.9 2112.2249;
	1867.3238 1235.1881 1938.9087 580.0674 917.8258 1326.8624 1005.0582 319.266 658.8851 5917.4163 2202.9047;
	1850.039 1238.2535 1972.0186 592.3 982.6957 1427.1 1065.9536 347.0 667.5145 6127.4724 2318.1293;
	1874.0458 1249.7177 1979.6969 586.9971 1016.2273 1458.7584 1110.7572 340.967 664.4633 5764.2076 2342.929;
	1922.4662 1308.9 2089.0293 601.8461 1043.6396 1515.5933 1107.1245 366.3252 679.0577 5947.6243 2445.5495;
	1936.938 1316.9386 2066.2573 602.5479 1034.0724 1495.689 1147.9 366.5405 700.8295 6029.5201 2476.1123;
	1869.619 1238.0625 1975.3339 584.6137 964.2 1397.9 1044.6229 342.1095 674.1 5795.1388 2335.4078;
	1785.1389 1168.0863 1855.3 566.2104 895.7129 1309.7658 1009.3839 324.0391 642.6222 5530.8392 2182.7893;
	1673.697 1083.3059 1726.7682 565.3198 858.1642 1218.1442 941.8869 291.2745 587.1774 5077.1841 1971.3267;
	1629.5261 994.561 1647.3612 535.0385 803.1978 1160.3092 859.5854 276.3527 560.3583 4774.8087 1885.5104;
	1550.6524 980.4 1628.8906 541.3239 793.1177 1159.2533 859.9243 289.8 538.2204 4649.0884 1835.4136;
];