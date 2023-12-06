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
	1575.1879 995.1901 1625.1158 593.2973 814.6 1134.4191 924.3739 268.2628 534.9515 4517.5182 1743.5;
	1555.1177 995.2683 1639.9639 600.6587 834.6822 1131.9239 935.7355 270.0 531.666 4473.2852 1730.6498;
	1594.9436 1026.7996 1707.0212 603.171 829.2585 1141.8 926.5 270.6 528.589 4447.7233 1748.5695;
	1645.2677 1077.1832 1794.7 617.378 878.626 1217.6879 991.1858 303.9 559.0081 4682.0349 1865.3527;
	1807.8097 1191.8421 1970.767 637.9 968.0 1373.3157 1078.2 326.8191 636.4 5270.8454 2118.1695;
	1874.0534 1272.4056 2095.7246 667.4028 1049.3169 1442.422 1143.9644 352.3509 699.2172 5852.5956 2238.9745;
	1908.6118 1274.4 2068.9178 660.9915 1058.5797 1462.2 1173.93 366.4616 720.4366 6275.0332 2298.8122;
	1911.1179 1278.5556 2087.2616 656.3077 1076.7 1436.7753 1159.0 371.1642 704.3258 6456.3 2288.5035;
	1927.5088 1255.5586 2061.3868 652.1726 1059.6 1370.9935 1151.4626 358.2 717.6883 6427.8816 2224.9685;
	1890.7723 1255.4 2038.5 650.1 1043.8 1313.444 1119.7904 360.7 709.1848 6283.2803 2064.4273;
	1898.4785 1270.5591 2040.5617 646.1786 1032.5 1336.7 1124.7434 369.7284 720.8863 6185.0946 1950.0813;
	1876.0672 1259.2198 2027.3661 648.0332 1047.0065 1347.2703 1113.8795 356.4 721.3 6190.5134 1871.2814;
	1869.2234 1278.1562 2014.1 676.5349 1018.5 1364.6969 1119.7633 357.2 696.5195 6170.2912 1821.0389;
	1837.7938 1272.3725 2030.0968 640.7437 1003.8337 1375.9512 1117.5993 353.0782 711.3832 6116.22 1771.526;
	1865.2 1276.3248 2059.5692 637.4922 1037.7 1415.8381 1123.4837 338.2 698.6361 6262.5882 1863.6407;
	1839.1 1303.2139 2080.7439 647.503 1071.7444 1493.2946 1181.6 364.7653 720.6 6404.6405 1963.6111;
	1837.8992 1307.5468 2106.3913 650.5637 1061.9407 1535.6213 1226.2304 357.8122 762.8029 6327.5282 2288.31;
	1925.3634 1367.6321 2178.1368 667.1041 1080.2376 1588.584 1252.3555 364.1388 798.5992 6278.0672 2413.3073;
	1965.848 1406.7141 2227.9891 658.5578 1117.5646 1655.7143 1322.0703 368.6374 774.74 6321.1019 2455.7919;
	1956.5546 1324.7444 2111.519 633.5279 1057.5605 1562.9736 1250.6 356.8222 723.4013 5991.1413 2331.9051;
	1850.8523 1233.8616 1979.274 631.8173 990.3 1461.7172 1163.7063 313.3214 669.575 5595.1959 2137.9481;
	1703.5861 1148.2973 1820.5733 591.4867 923.5689 1334.188 1048.5027 290.1784 618.4555 4983.0361 1885.6205;
	1678.2 1197.3157 1785.8616 602.6698 893.7729 1252.0796 990.9049 274.0 554.5107 4948.6602 1821.7845;
	1621.7119 1158.3275 1755.3653 601.3506 872.7079 1251.2184 971.209 273.6949 517.7898 4786.1431 1747.1487;
];