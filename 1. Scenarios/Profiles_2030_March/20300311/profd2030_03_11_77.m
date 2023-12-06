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
	1496.1394 920.7296 1555.5517 570.012 746.3204 1167.1845 843.5567 258.0 495.7 4305.4614 1602.0846;
	1501.2431 926.7386 1561.3983 564.2235 760.1923 1163.0966 845.5485 268.836 485.2766 4189.1283 1588.0446;
	1499.957 930.9 1566.9365 568.475 770.7 1186.4126 859.2 277.3 487.5 4320.5423 1641.0573;
	1564.7411 1002.4737 1683.4 582.7534 836.3452 1242.6341 904.0429 292.1 538.5435 4535.086 1753.0515;
	1709.5539 1090.5318 1853.5318 604.707 956.9915 1397.1 989.3651 323.9118 617.4 4986.2461 1971.4578;
	1845.7581 1191.4118 1985.0719 624.9198 1029.8567 1481.1796 1070.9 338.0 683.6717 5460.9548 2166.6776;
	1819.2 1201.828 1965.6096 617.536 1024.5337 1443.8839 1090.8284 305.6015 671.5091 5389.7144 2147.0747;
	1791.7466 1176.0 1947.6494 637.0337 1011.1521 1450.6872 1067.7446 285.8549 652.1958 5205.8433 2055.4734;
	1821.6804 1185.9992 1954.6188 621.7177 1018.3818 1438.9184 1063.1315 305.1303 633.7048 5761.2783 2040.2369;
	1877.8761 1185.8718 2002.4543 602.0336 1035.6 1507.2485 1102.9737 309.1133 665.6702 6028.0082 2007.2067;
	1839.7356 1179.3059 1989.7706 604.0457 1050.2712 1475.1176 1034.3 274.3463 656.8454 6018.82 1993.237;
	1868.6014 1183.2864 2012.738 602.7102 1071.0356 1500.9856 1028.1388 277.894 664.8611 5855.8899 1974.6653;
	1831.0011 1161.9766 1974.9172 599.4005 1078.7378 1464.3021 1032.5669 276.824 645.3972 5863.8232 2034.8;
	1823.7092 1143.4289 1956.6968 574.0859 1064.7788 1409.7911 1034.981 256.5833 641.6 5793.631 2072.6563;
	1858.5427 1161.0463 1903.6654 586.8 1041.6503 1425.4222 1060.4616 256.921 649.3622 6138.5122 2144.7627;
	1857.4172 1168.0013 1942.3926 593.3749 1068.8 1432.0756 1078.3499 287.4747 673.2561 6039.0786 2281.9022;
	1865.2447 1205.1052 1995.5256 603.378 1073.2892 1463.8 1085.6708 276.1177 696.3 5969.605 2346.1929;
	1949.0635 1269.507 2100.0261 614.1242 1122.7 1526.5452 1191.1943 316.6488 730.7463 6191.3911 2547.957;
	1895.1426 1240.5939 2061.4604 600.5583 1102.2 1502.9493 1203.8132 324.6551 727.0827 6147.9097 2555.4346;
	1841.0211 1186.1 2000.4899 592.0202 1043.5885 1444.6827 1166.0045 327.6419 699.2722 6034.7675 2430.6281;
	1788.1597 1095.0 1856.6707 568.5576 937.0427 1363.9198 1059.0387 285.6555 645.6837 5693.3 2234.8546;
	1653.6931 1006.4 1746.6 557.039 896.7595 1253.3054 979.6 255.3669 599.8 5190.5121 2010.7221;
	1599.5972 971.4387 1695.6125 573.251 862.1 1210.3699 914.122 268.1 534.1252 4890.1197 1873.9877;
	1534.2872 916.8393 1626.7204 572.1 838.1034 1184.8079 902.4 279.759 515.4665 4624.7152 1792.607;
];