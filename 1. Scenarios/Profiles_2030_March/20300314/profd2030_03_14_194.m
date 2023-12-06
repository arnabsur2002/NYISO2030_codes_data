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
	1473.6278 925.3603 1674.1321 583.3 872.7065 1204.7189 868.0897 260.1193 504.8413 4411.079 1728.8385;
	1464.9971 912.102 1646.2365 584.5393 883.4875 1172.611 851.3212 255.5951 500.5628 4395.3641 1716.6899;
	1504.6012 936.6302 1700.028 595.2 880.1897 1212.5023 863.7 271.3528 514.1105 4447.6 1731.2064;
	1555.4609 1009.8319 1787.7422 603.367 933.7341 1266.1 908.7 294.0594 550.2832 4717.2798 1869.2837;
	1691.9236 1119.9283 1919.9656 621.066 1030.0713 1393.2 1011.6 321.3 615.4385 5188.6476 2065.4392;
	1793.2095 1200.881 2019.5979 630.0331 1088.3251 1466.0 1058.4 339.6 683.2 5780.4356 2190.7418;
	1804.4 1208.6022 2009.1 605.8205 1068.7 1443.9 1061.1933 345.9847 690.2012 6159.2757 2239.5384;
	1849.8 1235.5013 1991.4029 592.6 1047.5283 1432.3 1067.2687 348.2553 695.6427 6356.1162 2202.1568;
	1886.7407 1277.1286 2047.8863 591.1 1072.8296 1457.3618 1071.8379 346.1264 696.4078 6417.1381 2213.0323;
	1895.7775 1273.7953 2009.2 587.1016 1067.5597 1422.3746 1042.4615 349.5001 696.702 6461.6183 2153.9092;
	1855.3552 1229.8797 1970.7017 598.7212 1046.457 1373.2797 1046.7 347.0523 685.5289 6505.153 2167.465;
	1825.9496 1194.8776 1922.646 585.9058 1016.8031 1353.4627 1021.5936 335.8264 688.3591 6454.9543 2039.0782;
	1816.0814 1197.3087 1912.17 582.2837 1009.5927 1351.9704 1064.2271 337.2723 696.9063 6446.3437 2099.2608;
	1773.2543 1187.747 1894.7608 581.4793 1010.0222 1378.1 1070.6398 358.0347 686.5639 6478.0816 2104.7;
	1766.5683 1155.7299 1882.4036 579.0029 1017.9901 1373.6248 1057.5742 344.1122 680.7 6410.9758 2129.5818;
	1807.2097 1158.3 1884.1751 577.884 1006.2016 1400.7238 1091.2831 357.1518 679.5916 6492.5641 2248.5428;
	1731.4973 1114.1443 1839.9773 589.0482 1008.6455 1403.1881 1104.2 329.3272 682.9078 6243.0556 2280.7211;
	1788.3323 1158.3 1931.3 614.5501 1048.7374 1483.1576 1160.611 363.527 730.5302 6179.9873 2393.5183;
	1787.3254 1164.9692 1915.1896 620.7883 1045.6982 1495.2725 1148.8844 352.5036 711.6 6026.2991 2348.9409;
	1758.3998 1115.4366 1879.4701 595.1 990.7005 1385.1191 1100.8 344.9286 667.5189 5808.9967 2242.6659;
	1653.9113 1037.5755 1786.87 573.2342 938.6261 1261.6012 1007.8 310.2952 616.3821 5446.9894 2063.8695;
	1552.6633 973.079 1633.6718 565.7014 869.5193 1191.1318 932.5812 282.5897 561.9905 5071.4635 1918.4;
	1532.6 948.9568 1610.4145 536.1 844.3705 1224.9963 873.6469 284.3756 519.0 4788.7634 1813.7325;
	1469.1834 898.1131 1523.3736 519.9876 815.1687 1139.8768 830.4103 258.6673 479.4093 4499.2654 1730.1064;
];