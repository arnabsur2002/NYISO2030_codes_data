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
	1482.9793 946.2 1649.4287 607.8657 868.0956 1286.5 991.6033 329.6639 606.5084 5240.3967 1885.795;
	1447.3863 933.1937 1606.4007 598.3719 842.4354 1252.9727 932.1069 314.9944 566.6984 4998.3218 1794.7366;
	1459.9419 927.9249 1620.5746 600.8916 847.3375 1232.6366 923.3 313.0301 557.1523 4915.0994 1776.9042;
	1469.6 942.1526 1629.0504 610.8277 842.7 1224.9 925.7 303.3008 558.4168 4756.7063 1789.4137;
	1496.4402 978.3604 1699.1916 624.433 903.2828 1276.5316 978.0 322.3 565.8351 5010.5933 1868.7139;
	1548.521 1023.7898 1725.465 648.8287 892.1432 1313.4 1000.8793 326.4804 589.4072 5073.051 1911.1315;
	1585.8969 1052.6628 1776.3978 648.1366 968.0 1385.8262 1069.6503 338.2083 624.7495 5199.8885 1983.9;
	1648.0 1120.8452 1860.5082 635.7 1031.9558 1446.7 1139.9773 348.6 660.5 5500.7935 2056.0487;
	1649.3592 1101.2083 1850.8 617.9 1009.9569 1473.8139 1170.7393 346.4954 667.7537 5486.4921 2105.8345;
	1672.1 1108.3741 1822.9612 618.3777 994.427 1457.7 1153.1498 353.3749 679.6323 5559.5536 2082.4187;
	1723.212 1171.8135 1885.5209 617.1251 990.8518 1520.3875 1196.4569 366.7519 671.0 5695.4713 2122.471;
	1763.8509 1169.8214 1857.3021 612.4396 976.6377 1504.0722 1165.8316 347.8 657.4998 5666.2407 2061.1567;
	1792.4539 1122.8367 1869.877 602.367 944.2777 1499.4388 1144.9951 348.2517 658.3455 5572.4488 2115.9624;
	1780.9346 1137.5997 1888.5068 599.5537 977.9039 1506.1618 1129.6 341.8 647.9811 5547.7047 2164.1358;
	1725.9 1154.7021 1920.9305 584.1 996.6892 1485.3893 1151.3085 341.8221 655.7806 5681.8088 2215.1827;
	1755.5853 1199.0342 1988.6191 585.8121 1027.6579 1546.1963 1206.5363 336.2 675.4176 5577.8175 2254.9205;
	1764.2 1187.0498 1993.994 596.4 1075.478 1544.1888 1275.7814 364.8076 698.2056 5679.2665 2333.6212;
	1848.5985 1224.6125 2066.0995 608.7579 1096.7122 1518.5154 1263.4551 383.0 739.7553 5777.5826 2445.7077;
	1776.9523 1167.8713 1989.2452 614.4375 1081.2472 1498.8531 1232.9548 364.4838 729.8433 5695.68 2405.9701;
	1748.8196 1109.8 1937.5667 609.4039 1035.122 1443.4724 1183.4292 347.142 705.9 5664.0514 2306.4985;
	1692.4011 1044.8753 1809.6769 578.8387 938.949 1340.0179 1099.6573 330.9202 656.5599 5360.8968 2144.2405;
	1601.794 984.7 1736.7361 551.3675 860.3 1208.6969 975.5316 292.0 605.4 5052.4912 1960.4012;
	1435.2829 892.336 1596.9657 553.7348 790.4 1107.4258 901.0314 263.6745 533.684 4738.9556 1802.2281;
	1462.055 877.0084 1571.8214 550.116 781.8799 1095.9589 899.9782 250.7252 517.2 4698.2464 1717.5911;
];
