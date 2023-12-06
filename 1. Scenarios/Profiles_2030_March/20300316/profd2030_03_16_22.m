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
	1402.4652 816.7621 1488.308 556.4033 718.7711 1021.8584 782.1163 222.722 502.2 4213.7 1549.5446;
	1420.4908 828.2 1483.8411 549.8911 702.3887 1017.6573 756.7834 225.5 487.3 4139.813 1494.0327;
	1411.8431 828.9463 1473.511 562.4479 723.2863 1015.4084 754.4381 223.2193 492.5 4070.3688 1439.7478;
	1480.579 864.0836 1573.1166 581.121 796.5377 1071.727 794.6335 234.3 499.498 4244.7297 1501.9821;
	1600.4 944.4183 1707.0 590.2244 851.2119 1161.77 853.6061 255.9385 520.6447 4377.7 1647.1143;
	1677.6282 1004.4479 1816.9014 585.8073 908.3526 1232.9951 908.5558 269.3823 556.8 4548.1703 1734.1783;
	1717.6854 1028.7 1878.7816 586.5912 922.1186 1288.1393 959.8171 282.0146 584.3285 4839.0242 1882.5738;
	1751.3024 1055.3 1890.2105 571.6511 922.3465 1282.9507 971.3037 284.3 601.4245 5094.3173 1926.0264;
	1771.4177 1069.0 1921.6398 584.8095 919.0045 1280.9931 980.1379 296.1 619.5158 5228.3851 1899.8;
	1770.8252 1057.3464 1896.8499 590.0137 883.7981 1236.3338 965.0597 289.6828 630.1296 5115.9253 1896.4302;
	1756.8454 1067.7758 1909.5049 594.4 904.8811 1250.0815 958.1691 295.9779 643.6796 5274.5565 1905.9939;
	1708.0629 1023.1849 1849.7 585.8335 843.5739 1196.6553 922.6221 269.3505 620.7332 5182.3092 1812.3655;
	1719.7129 987.307 1783.4 589.5854 828.6155 1177.4 893.0691 274.1261 600.5102 5082.4216 1650.0728;
	1709.5049 972.4 1728.0374 593.8206 845.5516 1156.0298 935.8027 273.5064 622.9585 5241.9068 1801.8428;
	1707.1173 949.4538 1744.1668 596.3783 887.0777 1203.0801 919.8 279.206 620.0582 5042.6654 1807.7165;
	1709.9575 932.3164 1735.521 590.6 917.021 1271.1 966.0522 279.4169 625.4105 5117.354 1941.0938;
	1724.9118 1046.3262 1822.1185 598.3 953.8 1302.3919 991.6688 292.9693 634.2972 5237.8625 2058.8001;
	1734.0387 1092.2011 1934.6376 606.8858 975.4673 1369.4164 1048.0848 297.6616 689.5859 5148.5796 2187.0896;
	1739.772 1101.1128 1927.7401 603.205 950.5688 1355.0916 1030.4012 285.5709 665.29 4800.7938 2157.706;
	1708.451 1054.4216 1866.408 587.1768 925.9252 1271.6862 992.8519 303.2693 647.8343 4901.0601 2145.2343;
	1674.7062 1011.0 1821.6933 570.3 880.5 1192.584 920.8379 275.5666 613.5374 4517.3398 2010.3;
	1584.6695 940.3308 1664.8 560.0868 826.1989 1138.8935 880.7543 251.3119 576.6093 4424.5293 1779.37;
	1591.8064 935.2756 1776.6126 553.4957 821.2 1124.8818 889.011 248.4382 542.1191 4169.8886 1755.9432;
	1512.497 879.0178 1666.0129 556.3341 779.7213 1116.7197 859.6711 236.0359 536.0206 4480.2319 1654.5369;
];