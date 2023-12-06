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
	1549.5605 964.8586 1662.7716 605.0275 822.9632 1187.9348 910.6 267.2746 496.2439 4451.5988 1773.801;
	1560.9213 966.5888 1674.0058 606.4992 844.1 1228.1554 927.5 277.6775 526.0 4555.1437 1784.7691;
	1565.2917 976.984 1700.5994 604.5309 866.6 1227.7639 925.2 278.6909 526.1448 4550.6133 1810.3044;
	1654.0472 1048.8329 1806.9919 623.026 913.5452 1298.8719 989.6209 305.536 586.6929 4884.8854 1935.1878;
	1794.5638 1167.3219 2001.9078 625.4301 1021.6541 1462.3 1103.5629 344.621 654.4008 5507.1882 2202.6989;
	1880.7 1259.8203 2112.6 633.6 1067.3682 1549.5195 1168.8461 349.5734 716.4424 6015.303 2348.3618;
	1864.3527 1248.2488 2084.1469 616.1173 1070.0 1530.8614 1174.9 348.4057 716.1625 6319.3889 2312.6754;
	1906.1 1234.9 2088.2769 598.2801 1042.57 1519.0845 1183.708 358.0828 708.1146 6404.7846 2250.7093;
	1886.0 1213.1 2044.1674 598.0675 994.7251 1488.2934 1174.4601 351.2738 743.5337 6505.7859 2247.793;
	1820.1464 1170.5441 1997.4 594.8 991.5094 1529.1 1196.1218 340.0043 739.8002 6476.1179 2272.478;
	1790.5988 1139.7474 1920.7843 578.8077 960.2279 1500.2205 1134.867 340.3697 717.6231 6497.62 2123.0187;
	1765.3687 1141.3715 1949.5871 593.3437 995.6 1492.5018 1159.9198 352.129 737.3562 6613.802 2222.9476;
	1729.6798 1090.9278 1914.6301 586.149 986.6 1415.5225 1109.6384 348.8975 747.3645 6497.0805 2178.9204;
	1677.531 1128.0325 1934.1204 593.9 1020.8674 1418.8521 1094.1079 347.635 798.6967 6410.1376 2167.163;
	1689.253 1086.1563 1906.7096 590.5941 987.8674 1360.7865 1018.7 339.1 704.0661 6319.7074 2082.8066;
	1714.1647 1134.1487 2006.6102 613.1617 1015.7932 1459.8172 1039.8821 348.2606 716.6585 6334.8663 2216.3173;
	1714.4617 1107.2929 2033.9606 595.7 1007.9067 1504.013 1043.238 355.2571 728.5747 6248.3392 2333.4576;
	1800.0 1187.4664 2166.318 607.2067 1060.1 1585.4473 1143.9 398.2585 783.5908 6382.1419 2486.5;
	1801.4572 1175.5292 2118.8529 614.0134 1046.4668 1557.6012 1149.2111 388.0 744.4216 6202.2437 2465.9086;
	1730.9592 1099.8114 1996.0693 591.0 981.8807 1437.8795 1083.2094 365.4653 703.8 6108.8966 2366.6926;
	1626.3733 1006.9294 1893.1078 577.1468 938.0551 1330.835 1020.1239 343.6875 647.4995 5803.0935 2116.6547;
	1536.4995 967.0355 1741.9902 555.1191 881.7733 1230.8446 950.0247 321.5132 591.9488 5356.7162 1940.1273;
	1440.3357 922.0899 1651.1432 566.2585 820.2 1188.4069 907.1453 300.5 523.9627 4993.6856 1853.3731;
	1426.8535 870.6972 1600.8287 556.5333 830.5761 1167.4488 872.4 280.14 480.351 4632.6184 1795.2807;
];