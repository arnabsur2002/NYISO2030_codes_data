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
	1412.512 876.6 1388.8848 536.3565 688.3393 996.184 776.4517 192.0 492.574 4103.5022 1626.2305;
	1420.8 866.5336 1396.6789 527.6 686.4238 981.5999 770.462 185.6125 486.1977 4051.7948 1569.7923;
	1437.5869 897.0 1456.1156 528.6701 702.6508 1008.9 793.0 191.3659 496.9141 4192.4651 1619.3855;
	1517.4314 953.4565 1591.3007 547.263 800.7607 1067.8 861.6055 220.6429 548.8089 4404.7984 1738.5896;
	1702.7079 1070.0143 1751.8416 547.1377 889.3 1216.7603 964.4968 273.9349 632.6268 4794.6459 1974.8242;
	1830.1822 1184.4 1907.6047 560.0702 976.5604 1329.4298 1046.8 310.0166 716.5 5444.3318 2194.7727;
	1857.4523 1219.0503 1915.5688 552.186 985.6235 1327.0722 1069.1 313.23 719.7939 5717.8868 2226.9831;
	1872.2015 1213.8287 1931.9413 545.7335 970.4787 1303.4585 1027.6877 322.8065 713.9091 5818.2447 2200.853;
	1907.7235 1228.9838 1951.7617 542.1988 985.2032 1264.8728 1041.6467 330.76 744.0855 5956.87 2229.8759;
	1884.622 1227.8316 1937.3 536.4 987.5532 1198.0739 1018.0115 336.7613 746.9275 6019.8869 2208.8943;
	1883.7529 1231.3354 1918.2022 526.3106 961.1485 1168.3932 1021.0156 327.3787 757.6375 5985.6799 2198.003;
	1912.3852 1252.5722 1927.3799 526.0 962.3533 1195.4243 1031.8988 327.1625 767.233 5953.3241 2199.0914;
	1871.1313 1223.9208 1858.1032 526.9 922.1 1172.8156 1016.141 323.9853 754.694 5965.6534 2185.6146;
	1830.5873 1221.7866 1865.8017 522.1067 882.0571 1220.1341 991.4542 315.4492 759.2876 6008.5988 2210.4872;
	1790.3081 1184.0507 1888.9613 523.3454 859.822 1267.2489 1007.8421 331.0148 760.5 6039.2662 2175.9624;
	1759.0028 1140.8401 1834.5091 527.3912 882.4593 1304.6053 1011.7106 314.7608 775.0837 6060.5 2219.3816;
	1720.7222 1141.3764 1792.9814 532.1505 865.3691 1324.0131 1036.374 332.5 767.0301 6041.0348 2299.6;
	1806.2298 1161.6 1854.2066 559.7151 893.1185 1355.088 1093.8283 343.7464 766.1 6007.9861 2385.1605;
	1794.7392 1141.1761 1805.8224 568.4672 892.1419 1305.8158 1075.0746 329.1615 745.8574 5883.3146 2375.3465;
	1761.6652 1092.3201 1773.6092 559.4 870.735 1268.5 1037.5259 313.8734 708.2769 5704.2523 2261.8729;
	1690.2887 1018.4361 1654.5863 553.2972 841.5565 1191.2743 975.652 291.7 681.4742 5400.0537 2111.5;
	1619.2817 972.0479 1562.7 538.0 733.3238 1087.8727 880.6548 272.0 631.3697 5084.9194 1981.8112;
	1548.4245 917.0963 1467.2653 541.4925 686.1311 1014.5918 836.9695 239.3537 545.7 4528.232 1806.4838;
	1477.4014 860.1507 1402.549 539.3 672.0049 983.6494 809.4572 232.245 528.5043 4416.1392 1695.0749;
];
