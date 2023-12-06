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
	1356.2505 885.6161 1604.2 596.7258 806.8445 1224.1495 926.2451 269.0673 539.6959 4750.4227 1823.284;
	1347.4636 876.2 1566.1 586.7218 802.1022 1196.8107 898.1147 246.3002 509.6531 4558.2674 1735.4652;
	1325.645 869.7176 1568.2774 586.4445 795.9605 1174.9394 904.8156 250.9 508.5036 4527.407 1731.1224;
	1357.5029 887.2518 1564.3466 589.6646 815.9475 1167.1688 904.5 252.8 507.0408 4605.3534 1766.4148;
	1443.8068 923.949 1659.2 601.6 876.8091 1245.205 970.8107 292.0721 526.5735 4798.3 1894.1;
	1465.0246 959.4813 1734.3833 623.5467 937.2682 1305.1 1032.0424 340.1401 587.1 5022.5423 1998.851;
	1471.127 994.0295 1785.5903 626.546 1006.2198 1382.7209 1094.3151 343.0165 621.5115 5191.1696 2088.4793;
	1492.9292 1016.2652 1856.771 631.9315 1058.9185 1481.7741 1146.4928 358.349 660.5226 5312.5822 2171.6161;
	1489.53 991.1208 1848.563 625.0738 1072.1419 1494.1744 1199.1296 357.5072 663.7 5434.1368 2188.2681;
	1506.9979 1032.1675 1866.3806 624.2914 1055.8602 1518.3838 1226.9684 361.4086 697.0008 5541.5388 2327.0979;
	1521.4003 1076.0538 1894.3563 626.1677 1056.1254 1568.6595 1258.2947 344.9777 710.3948 5557.2592 2362.1447;
	1519.5703 1043.3096 1884.2068 610.5412 1002.5 1531.7 1212.9972 347.4 687.2 5494.05 2413.426;
	1532.1574 1039.4217 1855.8009 623.9913 985.4522 1500.0199 1199.7092 323.5204 682.491 5419.2088 2243.7048;
	1502.4493 1035.7583 1853.084 608.5963 985.2985 1472.7169 1210.0882 339.5759 655.9 5496.2025 2205.4271;
	1478.0344 1044.1936 1857.7182 602.3762 979.5449 1471.6643 1170.7 323.3642 674.4228 5576.5533 2226.4689;
	1450.8655 1081.9803 1864.2 628.7865 1005.924 1498.4 1197.0912 319.6093 687.1116 5744.0414 2276.7696;
	1542.594 1106.6835 1897.3127 627.0 1024.0657 1579.3406 1268.2197 358.2263 707.3972 6097.7544 2592.3693;
	1597.6341 1118.8883 1952.9682 626.2064 1065.0 1615.8231 1320.5604 369.9555 726.3461 5956.6607 2607.6077;
	1641.1481 1118.4616 1902.1092 610.3493 1058.5091 1579.5124 1258.1419 354.9144 728.7374 5777.8277 2469.323;
	1611.9065 1071.9338 1815.8963 584.6269 985.0319 1473.8235 1157.603 333.7 698.1819 5664.4629 2369.8422;
	1511.8455 1010.7706 1687.1181 553.2568 867.2055 1367.1923 1072.8096 300.9706 639.9057 5412.6553 2187.1015;
	1461.0542 946.5939 1611.0865 534.0 831.7686 1291.4804 985.091 260.6037 577.442 5039.1435 1969.837;
	1395.5173 896.9261 1585.0092 514.0766 815.6948 1186.4664 923.3848 243.3699 533.4483 4707.3475 1747.2;
	1407.3291 894.969 1594.4215 524.8471 834.7866 1192.0515 913.0 257.0052 524.3062 4613.6705 1715.6522;
];
