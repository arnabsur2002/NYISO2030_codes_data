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
	1543.6522 985.6964 1709.3531 573.4 900.6271 1281.5742 977.2401 288.5778 563.0965 4946.0614 1859.6551;
	1495.3699 1014.0455 1701.2582 548.6 912.0162 1265.8765 966.5839 277.5812 544.8486 4776.2995 1764.0;
	1485.4985 944.678 1672.0311 548.6708 887.741 1252.0851 921.9196 271.0245 539.6859 4634.6169 1739.6;
	1518.7563 966.2267 1707.4179 558.2786 911.85 1285.9501 946.8 279.0769 566.755 4661.8563 1776.0119;
	1552.8165 980.1442 1785.7341 579.2748 963.9257 1327.5185 970.6974 284.3014 585.5875 4782.0382 1855.4163;
	1552.5 1029.7842 1867.7208 601.9456 1002.2931 1389.7508 1029.7 302.312 620.4361 4891.3836 1933.3488;
	1586.3 1050.6491 1878.3716 607.6394 1034.3413 1464.2806 1092.7015 308.7578 649.5844 5053.1044 2029.3548;
	1658.1036 1085.4356 1917.6004 626.2119 1075.8881 1525.6945 1127.3537 337.1341 662.8 5218.8165 2077.4;
	1659.466 1081.439 1900.9996 613.4343 1057.7031 1539.2456 1156.1273 347.4632 705.4902 5425.6908 2165.2267;
	1658.5435 1116.5428 1902.1707 597.2459 1093.6 1580.7799 1163.572 332.8438 725.9916 5464.5305 1979.2302;
	1642.2153 1107.7483 1874.3171 589.6867 1067.0465 1558.3618 1128.931 318.5802 691.8323 5516.569 1993.1596;
	1611.6637 1084.4646 1856.2262 571.0 1021.102 1537.0685 1100.652 312.1388 686.3451 5415.5526 1935.196;
	1651.8951 1097.383 1845.0736 553.559 1028.9994 1532.9771 1142.0089 319.9728 673.5387 5417.2382 2010.9744;
	1642.3836 1070.2017 1823.92 555.4 1005.328 1527.8 1146.367 318.6867 717.5129 5495.4878 2122.7013;
	1715.8241 1095.9157 1862.1 568.4 1039.3105 1523.445 1138.8994 311.4259 720.071 5518.929 2145.443;
	1710.5621 1135.5107 2010.3652 578.7 1057.6819 1541.5447 1215.9823 342.876 722.8424 5697.6666 2248.9023;
	1644.0495 1184.1164 2019.9281 596.3146 1073.9412 1567.3242 1242.4316 355.8761 754.0473 5767.0957 2317.5956;
	1702.6 1192.7076 1998.3158 615.2093 1095.3 1596.5583 1263.0 358.3 756.0557 5746.9826 2371.9865;
	1777.8871 1252.348 2000.5364 612.7 1078.9782 1579.4094 1251.5874 357.0 758.5022 5753.9 2403.9532;
	1718.6192 1165.807 1890.0249 581.9834 1014.7401 1464.5896 1148.8383 328.064 709.2626 5510.9488 2283.1957;
	1595.9446 1090.9229 1834.747 566.4 955.4661 1395.508 1089.7545 311.4147 672.0672 5319.8886 2133.9975;
	1529.3047 1007.2185 1694.6584 539.3 866.1469 1262.7 971.1252 273.7845 599.8891 4897.5711 1871.5051;
	1480.8197 940.6034 1592.9043 513.1384 838.2102 1166.2713 917.8772 249.3717 542.7 4470.2197 1704.4713;
	1546.9233 901.226 1566.5 517.0643 814.5963 1139.9 880.5966 251.4 517.031 4143.1588 1637.9869;
];