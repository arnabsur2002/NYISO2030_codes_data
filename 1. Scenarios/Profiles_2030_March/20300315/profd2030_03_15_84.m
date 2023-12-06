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
	1473.56 911.1428 1512.9485 515.6712 738.6882 1134.7904 873.4881 263.3588 546.154 4470.7573 1699.6074;
	1435.2612 899.3868 1494.1649 527.1378 716.7158 1119.334 837.8267 239.8158 507.7849 4284.8803 1611.2584;
	1462.6039 927.5459 1551.4446 533.866 734.0499 1147.9663 864.8745 247.0352 520.463 4363.4993 1671.9314;
	1512.7846 979.9077 1655.6959 552.4 818.6886 1215.7945 907.5486 267.4331 544.4241 4513.1706 1753.965;
	1659.676 1096.6766 1831.2804 573.8674 928.3846 1368.6438 1025.393 321.5446 620.3039 5158.6744 1993.2813;
	1737.4442 1164.0 1940.5204 580.8039 964.7851 1431.5178 1107.3453 368.2099 684.5543 5689.6233 2155.1542;
	1774.8285 1180.3 1978.1313 568.6836 976.6051 1454.106 1129.5014 391.212 690.4741 5938.0746 2214.149;
	1797.4655 1207.4 1982.3373 566.018 970.9005 1486.1088 1172.0287 383.6639 709.0 6169.6743 2284.398;
	1838.2812 1225.6768 1981.7933 567.9477 988.6319 1483.2371 1184.3678 382.061 721.7023 6263.8488 2294.6283;
	1794.2126 1219.0753 1950.4333 547.8913 997.2972 1456.8102 1192.5257 385.0555 717.0365 6358.9061 2338.796;
	1753.4197 1198.7454 1919.7261 552.7 967.9799 1428.3783 1176.4281 375.6173 725.844 6402.4262 2312.7429;
	1768.7295 1221.6955 1925.371 543.6 976.6929 1437.7725 1173.5117 382.661 740.4356 6387.0561 2413.5227;
	1752.1681 1215.536 1917.1284 521.4 968.0495 1427.9845 1122.8193 394.8742 706.2801 6226.525 2300.0353;
	1722.3 1189.8217 1898.5827 512.5583 951.3777 1406.5292 1156.9019 411.3796 687.2 6260.3368 2380.3931;
	1807.3855 1183.2272 1892.5396 527.5273 958.6992 1372.9566 1142.8801 402.443 694.917 6344.5607 2375.2762;
	1828.0847 1172.4459 1873.7013 526.3618 964.7035 1410.2366 1123.4422 387.1525 675.8548 6087.4166 2300.3662;
	1790.7528 1145.8309 1868.3192 533.5698 978.7638 1441.5206 1126.2 399.9979 676.2046 5961.7845 2428.6449;
	1814.3473 1182.3134 1902.1329 552.3762 1008.8633 1442.7919 1097.8085 423.0447 695.095 5895.7765 2429.1684;
	1878.8 1187.1326 1980.3907 560.6331 1029.3 1439.9721 1133.7178 415.0948 672.5454 5845.3117 2452.0489;
	1749.1603 1117.5627 1891.4427 535.0696 985.7052 1368.2649 1099.5473 371.7455 643.6 5684.3524 2316.2261;
	1706.5295 1064.813 1824.9045 524.6129 937.4578 1293.8575 1050.8366 330.9725 601.7822 5400.5896 2153.582;
	1608.7909 1012.2264 1715.7869 507.5529 853.4877 1228.7365 992.4394 298.2283 556.9 5193.5142 2049.8779;
	1513.3373 976.5889 1648.5744 515.1816 803.2983 1140.7 916.6 267.6802 541.8113 4920.4866 1977.92;
	1495.3831 960.1 1578.6372 528.3 806.1947 1098.3859 924.5902 272.7589 539.6848 4936.8011 2023.0333;
];
