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
	1418.0777 888.9222 1497.0152 498.6221 755.64 1054.582 848.334 243.195 470.0207 4551.5514 1642.1427;
	1443.9143 880.0 1478.7 482.9661 748.2648 1068.9857 845.5953 230.3953 466.7391 4510.4353 1634.0563;
	1440.8673 885.7414 1505.5615 479.7497 774.0722 1107.6063 859.0401 243.5858 470.0051 4439.8075 1658.5021;
	1486.0244 948.0694 1594.0635 502.4788 801.255 1137.5999 897.0061 261.2103 483.1315 4623.0404 1738.2565;
	1644.9012 1051.7315 1799.4208 532.2487 924.3 1302.8091 992.7 321.5139 563.7102 5096.8997 1972.7131;
	1724.065 1112.6701 1905.6262 562.3619 980.2313 1369.7 1072.195 349.1 614.1042 5593.2187 2092.5779;
	1770.1876 1129.6231 1900.3 550.2367 962.1967 1398.7896 1112.9126 351.4 660.2478 5880.4809 2144.3903;
	1746.6993 1176.4 1906.6429 540.075 942.9505 1344.9 1098.4311 341.4017 664.9 6083.5541 2196.1741;
	1756.2216 1195.4889 1938.6217 527.1749 938.7463 1333.4393 1100.6711 352.0909 673.6643 6210.4025 2231.2201;
	1750.2143 1202.4217 1960.6197 515.9587 934.6695 1294.1288 1093.7377 327.6773 654.1016 6167.2486 2144.3578;
	1771.3311 1184.0299 1963.2371 535.6988 940.992 1329.2362 1098.4765 332.84 625.8201 6110.909 2118.4911;
	1798.7239 1168.262 1870.7403 512.4801 888.3054 1258.5284 1053.1858 324.0 649.4012 6076.054 2061.3671;
	1783.8602 1164.0504 1884.5601 511.8378 917.1841 1285.3185 1019.2518 331.304 646.2005 6081.2 2161.4942;
	1731.5946 1160.7915 1851.7459 513.0 907.33 1264.5125 992.1965 334.7928 572.4328 6006.2331 2033.6463;
	1731.2243 1147.8251 1853.0337 512.8 907.2253 1273.9567 986.4077 316.3394 607.7708 6070.9736 2150.0296;
	1771.0751 1130.3988 1811.1202 522.062 897.2183 1299.7 959.1069 318.2453 591.6348 5966.3498 2141.483;
	1776.2992 1147.0774 1867.943 521.2115 969.8734 1325.1505 1011.2972 322.3621 629.3304 5916.6028 2231.3946;
	1816.1243 1157.5 1873.0286 546.2195 993.1 1375.4123 1055.3172 349.5788 664.737 5954.6897 2352.1851;
	1867.2719 1206.1004 1907.8751 562.1897 984.6154 1372.6396 1061.8453 340.4 651.4491 5792.5465 2253.4423;
	1797.6887 1133.4924 1813.4911 544.84 932.0288 1305.9996 1026.5231 320.6929 600.383 5610.5106 2158.9511;
	1730.559 1025.4552 1709.9421 523.0645 854.6325 1218.9 947.5332 294.4 573.0407 5321.1469 1996.4608;
	1642.3321 961.2862 1578.8448 520.0 814.9623 1141.5792 880.2154 267.7286 508.2705 4969.12 1715.5167;
	1565.4913 916.2237 1534.0751 537.6921 760.0006 1107.5882 889.4 261.066 467.7081 4766.6464 1664.5801;
	1521.4046 866.2604 1482.7174 555.3 730.5075 1087.33 870.7535 251.4025 441.2025 4576.9565 1647.5067;
];