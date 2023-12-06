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
	1510.4761 896.2361 1647.8272 543.0279 829.4861 1258.8402 910.6403 296.4401 551.0796 4754.2997 1828.5122;
	1491.4815 875.1669 1611.1662 536.2054 821.2 1236.0831 872.9106 279.5 525.6345 4518.2544 1730.7771;
	1472.5389 887.6147 1600.5497 560.9392 795.1366 1256.2648 879.9136 282.4 534.6441 4550.9614 1739.2177;
	1500.0487 914.7959 1654.3091 559.8571 838.3193 1269.3 901.9568 287.2708 527.1 4634.6 1742.6931;
	1512.8602 940.4537 1723.1909 576.2603 854.146 1288.4069 934.9484 289.2803 559.0 4780.9686 1800.7997;
	1575.9832 1011.3 1816.4051 573.8605 920.8029 1341.5966 978.6555 308.7813 584.7275 4923.7223 1850.5222;
	1562.7357 1027.0 1824.8906 598.904 958.6329 1423.8 1031.8381 325.8735 608.3799 5148.1963 1951.2656;
	1600.5 1030.5777 1836.5705 606.0 965.7088 1474.1981 1063.4224 318.376 618.2 5114.8094 1983.9107;
	1687.5768 1063.981 1887.6 601.4474 975.0998 1455.8694 1057.4763 302.6905 584.719 5262.6445 1998.2889;
	1707.1931 1086.6432 1882.3279 604.5097 919.536 1439.7934 1078.8905 296.0475 583.3759 5369.1789 1980.9401;
	1706.1842 1101.6312 1885.5113 605.7512 933.4555 1499.9751 1084.6785 299.7462 590.818 5380.3299 2070.3556;
	1677.0803 1074.4784 1864.7895 576.2 918.2322 1438.5 1061.09 303.8197 540.9169 5317.2683 1949.66;
	1645.953 1060.592 1805.2158 568.55 951.7592 1430.7 1089.5482 303.6027 540.2979 5429.2619 1951.4676;
	1595.0734 1036.4182 1782.1952 557.0374 954.9432 1434.2689 1044.5667 293.7344 518.4806 5367.7027 1941.401;
	1579.7874 1041.4965 1799.1323 545.1 956.4 1476.6483 1052.5681 290.0254 506.2821 5385.7958 2005.8948;
	1501.5708 1010.1353 1794.2603 559.978 960.8962 1473.8698 1047.4758 305.6204 499.9863 5375.9307 2088.183;
	1462.0617 994.0539 1790.2571 577.8553 965.3791 1454.5574 984.7029 295.0715 529.5417 5368.1408 2162.5112;
	1566.6558 1053.8986 1835.4113 622.2462 1054.9777 1539.5379 1098.7844 320.7588 637.1801 5484.4276 2303.2981;
	1639.8871 1101.9701 1816.7032 622.6949 1048.5581 1517.6995 1068.8562 313.854 639.0562 5426.3254 2285.9238;
	1583.2295 1041.0673 1745.3201 600.6 993.3 1442.4618 1026.4972 302.8927 580.1712 5358.7459 2228.6316;
	1529.3606 1024.4184 1629.1444 571.9611 887.3 1351.2 969.4777 276.7662 581.4184 5097.4021 2107.4012;
	1501.7779 964.1855 1544.3602 548.0944 868.3072 1260.1994 883.4686 259.9896 526.9298 4629.4599 1883.03;
	1422.4852 857.1712 1495.5177 534.1513 799.4587 1139.3769 817.6998 235.3518 507.7 4648.8 1703.9248;
	1469.5238 859.8485 1530.3122 533.7938 787.8055 1145.2 841.7812 233.1 490.0359 4536.1562 1668.4384;
];