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
	1463.7712 909.6567 1450.7 540.5831 738.8762 1086.3169 821.0 237.1 477.8 4318.7378 1543.1634;
	1469.4655 902.5 1460.0781 533.9289 745.5279 1073.4 814.4 233.7061 460.5727 4226.6127 1480.8566;
	1504.7419 932.5521 1499.5487 531.9797 761.7537 1106.2067 837.923 238.896 488.3 4312.017 1624.6258;
	1568.0522 981.5848 1574.8824 546.3526 813.2376 1167.1513 869.4312 254.1797 511.3074 4472.0001 1693.2049;
	1720.1602 1098.1586 1755.1616 571.4583 917.8455 1272.4916 965.8848 306.6064 599.0499 5063.1269 1927.9202;
	1808.5522 1170.86 1891.9911 600.3762 968.6898 1365.23 1031.0 336.4 683.4103 5579.7476 2075.5421;
	1837.622 1204.2038 1894.8925 584.6 968.792 1355.7556 1050.2109 346.3 711.0343 5843.5266 2182.7453;
	1859.8455 1212.6 1835.6212 552.154 909.7534 1316.8864 1053.6644 338.3027 721.2572 6072.5122 2191.7628;
	1863.3337 1234.8575 1871.8214 552.4 909.8052 1328.4 1083.1618 331.4338 732.396 6142.6506 2249.8;
	1838.4104 1275.4437 1873.0471 552.3 902.1665 1313.3011 1108.2123 335.7725 764.3627 6298.5706 2365.7738;
	1778.8577 1220.0081 1816.4306 546.2472 852.3816 1244.0604 1052.6649 334.1401 735.8285 6273.2809 2219.3883;
	1819.6718 1265.6339 1841.158 530.7311 875.493 1238.0749 1094.2523 355.9576 715.4445 6336.1921 2245.2976;
	1799.3448 1211.7932 1847.5258 539.9923 848.969 1284.3068 1086.5588 338.0158 719.5244 6277.2215 2240.639;
	1763.0131 1192.1206 1803.8295 519.0865 818.035 1268.9721 1091.3489 353.1642 760.8696 6344.8352 2237.8173;
	1762.2214 1193.4 1812.2398 517.6304 838.3418 1310.2465 1144.9715 360.1 763.4947 6330.5 2336.1092;
	1753.2246 1177.0791 1816.7 520.3015 881.3783 1300.5933 1097.1621 351.6456 749.6398 6137.8536 2371.7617;
	1791.6972 1192.9778 1851.1 544.5448 906.2687 1389.6325 1137.5651 346.8175 762.9976 5960.2207 2372.8574;
	1794.0523 1196.4969 1887.5548 567.1887 967.9706 1376.7628 1102.6609 344.6616 756.1026 5972.0732 2386.3853;
	1771.1211 1187.2314 1861.9024 551.7247 964.1 1415.6466 1120.7 349.3911 766.8088 6022.1666 2408.6207;
	1733.1785 1123.2851 1787.8493 553.1013 906.1112 1361.0223 1076.0674 328.6 718.6163 5613.0514 2292.7746;
	1687.8657 1076.1319 1719.2318 546.6478 882.3 1320.1947 1031.0401 319.1684 685.4458 5317.295 2193.3294;
	1619.3502 998.8328 1602.7825 528.1597 812.7984 1213.4175 932.744 281.4178 615.043 4956.5872 1976.3568;
	1656.468 972.2 1594.2574 547.2526 784.6 1262.093 924.1964 274.1332 548.74 4805.8444 1858.0472;
	1571.0966 921.874 1509.7731 535.5704 755.4531 1171.7258 873.5414 263.8449 519.579 4565.4817 1718.6262;
];