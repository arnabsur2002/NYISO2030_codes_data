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
	1529.1697 941.4912 1562.0 584.4 810.5892 1223.2395 926.5075 288.1566 568.4948 4914.5393 1834.3777;
	1496.1332 924.129 1532.7297 582.1751 788.4434 1218.285 901.5 294.9721 530.7973 4711.3346 1738.4328;
	1507.6491 927.7957 1533.4618 585.5781 780.2993 1216.6 893.1695 276.7 531.4897 4645.2887 1740.4275;
	1500.0337 941.8564 1568.5628 593.5187 790.5767 1232.1011 896.4582 269.0488 523.8 4587.7658 1727.5788;
	1539.386 981.8172 1645.4256 607.9329 841.4961 1299.14 943.8361 276.0702 559.5104 4753.7642 1838.3227;
	1616.7457 1030.5 1700.3216 627.4 898.4 1364.3 980.0638 291.0809 587.1595 4966.7345 1911.1296;
	1621.8 1033.6252 1685.6316 640.559 931.9478 1406.9334 1029.9076 303.3 616.9 5101.1192 2034.3316;
	1633.3651 1045.045 1765.585 655.362 991.5322 1450.6979 1108.9946 323.3596 639.1057 5321.9059 2140.6581;
	1647.5763 1052.8 1756.3938 643.6 1009.7582 1490.0549 1111.1787 323.4924 660.1797 5468.4035 2247.1261;
	1710.5333 1064.833 1765.5226 625.6091 989.3715 1515.2913 1154.7915 330.2183 675.8557 5651.3062 2244.6536;
	1709.1359 1088.7 1760.9502 597.6967 936.4469 1516.5334 1171.3114 322.845 674.8258 5701.4 2238.9707;
	1696.2602 1074.003 1710.8318 575.2115 924.5708 1484.9111 1153.449 325.5665 662.6298 5717.3 2188.5451;
	1702.304 1082.9434 1735.0694 564.0313 899.5766 1449.9225 1090.4141 308.3688 672.8117 5593.2396 2189.5878;
	1707.784 1102.3 1755.1508 555.6666 909.77 1466.9441 1106.9221 323.0956 655.2641 5526.0178 2233.6955;
	1717.304 1099.166 1721.1535 544.9878 913.0144 1499.5742 1110.8218 339.8868 658.6 5545.1581 2472.475;
	1713.2963 1132.7 1810.4268 566.8059 949.5 1542.089 1159.4 351.4248 686.2717 5753.6708 2565.0123;
	1718.0716 1130.9954 1741.5575 569.6 933.1692 1516.5387 1126.1717 342.7118 682.2228 5668.3199 2497.5922;
	1747.5949 1165.3775 1874.6575 584.6368 981.5019 1566.8545 1199.1 376.8536 730.7649 5761.0489 2564.2787;
	1799.1 1195.1149 1918.7237 579.6 1000.1798 1536.8788 1157.599 384.9345 736.9819 5769.264 2585.3039;
	1741.178 1116.6828 1795.3185 581.1 923.8797 1448.1593 1125.2274 357.3202 716.5211 5731.823 2482.8948;
	1660.0707 1066.1292 1716.9 553.1814 874.0284 1371.8 1081.2458 343.4997 672.3328 5572.5203 2360.6048;
	1616.0938 1019.747 1623.7 541.3939 806.6974 1351.8069 992.8934 319.5684 642.9603 5270.2218 2138.0408;
	1580.2522 960.6522 1583.8261 531.3805 781.9009 1281.5581 958.3311 292.7722 552.2701 4848.7141 1893.8258;
	1554.6375 931.1621 1570.0603 533.9687 779.5 1209.832 936.798 290.3868 556.4819 4662.2793 1833.1327;
];