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
	1473.0931 895.7909 1521.0802 555.4088 783.2482 1088.52 811.5422 287.3423 524.0878 4394.9232 1643.6207;
	1511.3864 906.1531 1545.9295 561.8437 797.0365 1101.7295 826.5282 279.1 515.4773 4400.3161 1670.1398;
	1521.6872 933.5387 1619.1405 560.7366 832.1694 1136.3128 869.1853 289.6497 535.9709 4450.2146 1720.8312;
	1643.9 1017.8 1737.5647 571.2982 896.3479 1204.2511 910.0614 315.1741 575.3839 4679.8312 1843.2501;
	1786.4 1125.91 1928.0912 598.624 1002.2998 1345.9297 996.4075 359.3651 653.9643 5145.4921 2013.6042;
	1867.751 1178.1352 2004.8246 587.0345 1063.8 1374.9638 1044.5348 379.6432 694.9394 5721.7471 2158.4;
	1903.1682 1186.552 2002.233 582.4894 1053.1354 1385.6118 1059.8881 376.1869 709.0 6078.2518 2093.9853;
	1897.2949 1202.8138 1998.0695 585.3512 1052.0437 1432.2122 1066.6379 359.879 701.2 6068.7872 1960.1251;
	1914.1433 1202.5716 1992.0828 586.1869 1032.2 1355.5788 1026.916 347.3694 716.8 5975.402 1911.8275;
	1875.8 1207.0929 2028.3987 598.3 1027.594 1347.2946 1028.7556 339.1 712.5133 5989.3844 1988.357;
	1873.3207 1182.4516 1995.8028 604.8576 997.3907 1277.4155 1006.7756 340.9423 709.7052 6161.0901 1864.5857;
	1884.3 1174.532 1948.9348 594.1417 978.1761 1237.6442 964.5113 334.7096 680.9618 6112.9159 1794.5918;
	1836.4923 1180.8334 1958.5057 582.0 966.558 1182.9373 931.9849 353.9045 669.9515 6146.8967 1503.8006;
	1823.2519 1191.9465 1955.3707 586.1036 968.8354 1166.1002 891.8499 347.3197 666.4555 5949.9 1313.5881;
	1861.3 1208.3974 1981.2527 596.1 991.4271 1232.5676 896.7463 343.4149 672.5847 5788.4029 1326.7021;
	1838.0236 1220.1012 2026.6906 601.7768 980.214 1289.1503 929.343 334.4894 679.5177 4842.1827 1494.4517;
	1772.3229 1209.9984 2026.3874 586.7361 997.6459 1320.2382 921.9088 356.5273 688.6768 4906.1301 1742.8991;
	1835.0346 1277.5 2095.128 607.1525 1057.6733 1371.1438 960.0875 353.6166 723.5649 5016.0641 1959.7569;
	1853.4763 1264.2 2084.2955 609.5466 1079.184 1430.4396 1103.0245 371.4583 729.1138 5641.1367 1949.3628;
	1789.6101 1205.8068 2004.7401 600.0 1007.1447 1332.6759 1046.9623 352.2329 687.0431 4860.6987 1854.9399;
	1709.0023 1114.2256 1873.8 583.2138 920.9551 1254.4058 984.2896 321.2318 639.5934 4685.213 1755.394;
	1620.1 1062.3638 1792.6909 570.4208 878.5844 1206.1218 938.1925 277.6299 595.7094 4455.6001 1634.5984;
	1512.7369 982.8 1785.1427 589.7979 868.6457 1157.3821 883.1393 285.4 566.7827 3561.2415 1466.6252;
	1517.4207 962.5538 1742.0964 589.7346 850.891 1158.1 879.4 288.6584 551.1 4224.9655 1487.0426;
];
