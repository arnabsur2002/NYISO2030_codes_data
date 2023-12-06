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
	1533.2813 905.3471 1459.6 488.1985 740.4017 1116.9757 810.9505 229.5 442.2406 4263.2099 1669.5;
	1510.6277 897.5 1459.7724 474.5982 742.3042 1100.0508 803.4457 224.9913 452.7073 4188.0608 1680.4439;
	1528.139 918.1368 1486.5153 478.45 756.2051 1139.5266 823.4 233.8 454.765 4246.6823 1719.6965;
	1582.3 972.3 1574.8661 519.7 804.4279 1179.879 841.5001 240.1188 477.981 4361.5793 1755.7;
	1709.2 1087.8111 1761.1097 550.9573 936.9 1356.6586 955.5 296.3202 565.4105 4771.7996 1988.6819;
	1801.2589 1150.9281 1872.2557 571.6191 1001.4757 1438.4965 1020.6781 299.4308 642.3666 5355.7472 2167.2998;
	1871.2909 1174.9353 1811.9986 569.065 1001.9481 1425.8 1082.2106 320.0039 664.9142 5767.7434 2254.1232;
	1901.3976 1213.9362 1825.6122 531.7425 994.051 1391.8095 1099.4 327.4 702.5941 5950.4559 2296.4306;
	1919.7293 1231.9611 1835.4043 539.9 983.7219 1396.3685 1107.6 329.4911 730.3068 6135.6547 2321.4832;
	1957.8329 1232.6001 1846.8491 548.6 995.3659 1426.7 1163.1 332.0 722.8456 6192.0552 2390.9476;
	1897.4387 1183.1709 1777.4034 550.7 919.1045 1315.5 1077.7054 306.9166 705.6205 6082.4697 2279.4;
	1888.8574 1187.5376 1753.6138 544.6921 909.6419 1320.3495 1063.4133 303.6 696.1461 6089.4989 2226.3124;
	1866.9384 1139.9785 1722.7943 553.8265 883.1203 1297.7031 1086.4163 283.8054 684.8952 6110.342 2230.5;
	1868.1575 1128.544 1706.2426 524.9 839.7643 1284.7315 1038.5557 295.2473 662.4398 5974.2899 2182.5541;
	1910.772 1134.7 1712.8007 525.4173 875.8538 1305.8 1054.4553 328.6746 659.6095 6027.1604 2209.7859;
	1957.0933 1145.3314 1788.5905 542.4667 907.9641 1354.6 1117.8446 352.6 681.2 6052.3497 2317.8102;
	1981.7886 1150.488 1790.2777 552.5866 928.5944 1416.9364 1107.5 384.1179 685.2793 5864.8966 2417.9475;
	1974.5906 1129.0 1828.5815 572.6349 947.3178 1410.0579 1144.6269 367.1226 703.4995 5869.3527 2543.5618;
	2046.1826 1184.8326 1845.1981 588.9392 958.0867 1449.5381 1163.4479 382.555 717.4685 5814.8117 2593.6225;
	1946.3095 1110.94 1743.1066 566.0331 919.8694 1352.1619 1102.3789 358.5603 675.5405 5633.6966 2490.9678;
	1864.2889 1062.7 1675.1187 553.3958 894.8222 1294.7168 1061.3784 339.5317 636.7803 5397.4654 2395.3464;
	1722.0888 962.729 1559.3965 543.8223 836.8865 1226.4291 958.0431 299.0 578.8783 4950.4085 2114.5937;
	1584.519 916.7434 1452.7024 510.849 772.4717 1154.3026 887.3578 281.1 533.78 4738.1741 1812.8159;
	1548.6078 875.9309 1437.6 513.1427 729.0288 1097.3595 861.5464 254.1707 510.1 4571.6976 1732.3107;
];
