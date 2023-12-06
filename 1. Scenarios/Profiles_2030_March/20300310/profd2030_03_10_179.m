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
	1542.6076 973.0382 1671.8975 581.8902 839.7 1213.7292 845.3068 262.9218 563.2227 4774.0898 1776.4192;
	1482.6797 949.8328 1695.0127 575.8398 845.0 1199.6709 849.2 248.3 556.8053 4634.7 1718.1757;
	1476.6958 945.5977 1675.584 568.7081 847.2099 1214.1489 842.3887 243.2452 541.4684 4604.8841 1713.6219;
	1501.2 965.7568 1727.3718 596.9566 854.4037 1245.5 875.6822 248.6791 553.0049 4675.8104 1756.3792;
	1544.6434 1004.1771 1790.5239 605.003 904.4043 1310.5 901.7903 267.7743 560.2937 4751.2758 1829.9761;
	1575.1518 1068.4848 1873.6723 604.6289 952.9883 1374.3287 957.2098 276.4 584.4864 4849.8386 1869.3105;
	1633.2147 1086.2003 1881.2501 611.5 1004.513 1426.1074 1015.177 296.3442 617.6955 5115.8806 1973.3;
	1642.5626 1105.5186 1904.8642 624.0 1036.1509 1476.5977 1065.3294 306.8625 665.6397 5350.2818 2069.3316;
	1682.5173 1101.2966 1907.4889 620.6 1048.0852 1505.2 1108.7671 329.2 670.8393 5565.3776 2109.8736;
	1661.6966 1088.5917 1908.9068 610.5059 1067.704 1525.5418 1126.9 320.2714 678.3021 5637.9108 2098.9303;
	1654.3613 1087.6494 1902.6205 611.0716 1042.7 1506.6154 1148.4132 330.8507 677.4421 5762.1138 2203.8;
	1648.8001 1094.3 1921.6019 588.0088 1034.4958 1456.9138 1085.2218 308.4565 666.0877 5696.9008 2180.3991;
	1644.7397 1120.3788 1900.3671 571.5384 1021.2245 1424.9936 1063.9485 312.1226 662.77 5594.8082 2164.9957;
	1647.5292 1139.1167 1898.4605 570.1095 995.6482 1404.5089 1055.4981 305.3705 657.7895 5639.8601 2183.8;
	1676.4812 1152.9021 1956.6521 597.557 1040.1 1468.4437 1099.305 325.2433 663.2698 5859.4743 2181.5343;
	1705.1 1190.9724 2026.3944 613.9082 1072.9238 1548.0674 1136.9211 345.9877 681.7612 5826.6997 2231.3;
	1726.0227 1182.0999 2032.8493 609.3073 1041.2915 1577.0626 1128.4 339.3 712.3231 5697.3545 2256.1604;
	1731.6654 1200.4172 2066.4703 620.7363 1069.8408 1587.1 1151.2 345.2502 722.459 5987.2586 2386.423;
	1755.427 1190.5378 2024.4315 616.371 1046.7122 1567.2967 1171.0829 347.9604 734.7 5951.847 2463.8028;
	1704.6 1139.1701 1898.3119 592.4741 961.2 1452.6756 1103.5664 325.0687 696.005 5925.651 2370.2;
	1636.1017 1066.5501 1782.592 572.737 890.166 1358.43 1017.0052 312.0308 634.3848 5739.18 2190.2;
	1546.1569 1011.941 1698.2828 543.624 850.492 1305.8086 946.9742 287.5898 595.9 5593.0893 2031.4209;
	1495.9703 964.0099 1627.9188 531.9 834.0 1170.1821 867.6575 260.9 500.4 4772.5021 1760.2021;
	1501.4 959.1579 1672.0 532.3 809.9592 1136.317 850.4 254.9787 478.4437 4535.2 1690.3;
];
