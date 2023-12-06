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
	1461.1 930.8859 1562.1 565.0863 796.0613 1085.7914 870.3081 244.0517 495.2097 4543.5584 1658.5129;
	1476.8 924.268 1571.6482 559.127 783.2004 1087.3 859.6149 248.3152 483.1 4500.4475 1667.4349;
	1490.6 953.6 1603.0294 568.2974 811.034 1096.7247 872.9134 246.4 487.4957 4459.5485 1680.2928;
	1554.3158 1023.0 1720.0215 593.7484 856.1753 1179.5395 934.4644 270.2965 533.3217 4693.8061 1804.3257;
	1717.5434 1154.6606 1933.4078 633.1605 975.5854 1326.6256 1036.4169 322.8879 613.0 5264.4947 2049.6906;
	1838.6757 1239.9439 2050.9891 636.9389 1043.3734 1424.4396 1119.5013 354.9887 673.9717 5833.5867 2194.6168;
	1852.12 1258.2687 2085.3758 639.8 1076.7667 1452.6682 1165.2685 370.8515 693.5209 6234.3124 2305.6912;
	1883.0003 1272.5042 2095.4483 641.5453 1094.5 1422.65 1169.8651 363.2337 704.0946 6448.8763 2311.7863;
	1911.4645 1300.444 2122.2201 607.5755 1085.4134 1439.9655 1178.1592 342.8 723.3624 6553.2617 2301.5874;
	1891.2 1303.262 2162.4284 596.7356 1073.1536 1476.1196 1192.4206 335.2973 710.2 6635.3804 2345.9797;
	1875.7089 1292.9678 2134.48 609.9112 1064.2028 1423.9 1167.9755 341.6 682.4457 6722.593 2260.9717;
	1856.5591 1291.5274 2124.4632 603.6678 1069.2089 1432.6628 1113.084 346.6 650.5951 6689.5658 2318.4405;
	1829.8012 1227.1163 2103.5015 622.8072 1050.1925 1426.8699 1135.6201 342.4 643.3786 6726.0143 2392.7397;
	1801.0383 1195.8222 2059.3648 620.225 1006.2326 1435.4057 1106.7593 337.8 656.3267 6959.8301 2445.3857;
	1801.9082 1201.7507 2017.4734 611.6293 1014.2477 1453.2078 1139.4616 368.0 684.764 7281.8272 2701.5029;
	1844.4707 1209.7 2057.033 618.75 1038.1835 1484.6356 1177.4286 370.7873 685.2108 6882.9321 2622.7103;
	1850.1506 1229.0164 2095.7352 635.4 1073.6717 1517.83 1193.1889 391.886 694.9 6664.9755 2579.4426;
	1893.3608 1250.6433 2138.439 641.773 1065.5368 1542.4984 1195.6 392.4181 736.6881 6427.4656 2621.5261;
	1891.5518 1245.6086 2121.5784 629.8 1030.344 1522.484 1194.8 393.6005 718.8311 6171.4 2521.7967;
	1820.5099 1166.7903 2010.1771 627.3 981.4291 1411.9667 1125.4 365.4 691.5231 5883.4794 2337.1;
	1716.1961 1075.0102 1858.1722 607.6129 911.7441 1308.2 1050.2745 335.8 634.9267 5567.5247 2202.668;
	1654.3233 1014.8 1753.2596 578.1 859.6 1229.9129 998.4399 303.7 592.8123 5189.9449 2022.1995;
	1556.9959 953.2661 1692.8999 602.2264 848.7788 1194.4925 920.7325 278.56 545.2 4856.8023 1842.088;
	1521.2055 942.9228 1664.7126 600.8233 817.8586 1205.3807 895.7523 267.4627 531.4252 4728.0742 1773.0324;
];