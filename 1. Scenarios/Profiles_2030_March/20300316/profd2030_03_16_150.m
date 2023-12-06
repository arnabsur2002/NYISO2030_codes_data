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
	1515.8 816.7691 1454.4837 563.7 703.6 1068.8 858.4014 250.5 510.5801 4393.728 1717.866;
	1476.3844 820.6431 1434.851 555.2339 704.2433 1058.9701 847.4224 248.0157 495.0 4313.7 1707.7489;
	1464.9573 828.0685 1469.6119 556.7 712.3 1077.2 850.0334 247.4561 497.3 4285.7997 1708.6433;
	1513.5 823.5732 1489.4079 558.3706 748.5 1093.5431 860.2305 255.2 501.0 4347.5723 1735.9988;
	1569.1703 889.689 1599.9758 559.6701 783.21 1150.9674 895.8067 277.632 520.3399 4526.0224 1822.5851;
	1624.5948 903.8128 1617.5639 574.7214 851.8914 1197.322 902.0996 286.2971 549.3245 4726.1997 1846.3528;
	1669.2919 979.9975 1707.5142 575.8593 901.1258 1269.7084 948.9381 300.5 583.3037 4974.4403 1914.0044;
	1706.7192 997.4719 1741.6912 583.7 898.0939 1293.3256 1030.8451 323.7789 626.2946 5195.7966 1997.6982;
	1661.4703 998.2028 1772.1227 582.7 918.5608 1302.2272 1043.9265 326.5715 638.1463 5279.7655 1989.7917;
	1672.2083 1012.9205 1812.0407 591.4352 926.4217 1343.3528 1129.2707 356.1841 661.9334 5420.1085 1960.6875;
	1658.5061 994.9159 1758.7194 588.465 897.3 1303.7122 1106.449 351.2462 660.7195 5449.7298 2005.4226;
	1647.3614 982.1851 1741.7992 566.9885 874.0335 1219.2 1035.0813 338.9575 638.6 5326.6 1938.0474;
	1652.7372 991.7685 1668.5728 559.869 822.2701 1204.1504 1040.8981 327.4078 636.2391 5340.683 1997.3407;
	1533.1655 954.5486 1630.6575 540.0758 828.2 1201.4972 982.8645 308.5753 612.1 5249.9679 1929.6477;
	1516.6903 959.8026 1577.2997 534.9555 807.8791 1214.4768 965.9427 305.3228 596.8 5254.998 1932.7112;
	1609.2736 972.3082 1639.0054 503.9863 838.8556 1289.0326 985.2878 356.4416 611.7879 5327.7235 2051.1426;
	1657.0293 1002.1 1612.1002 519.7606 863.7828 1327.9225 1015.7812 361.3559 605.4446 5377.1658 2121.3;
	1694.8237 1027.1572 1735.7625 556.6165 915.6 1400.792 1058.086 342.8194 627.6489 5284.9787 2165.0147;
	1746.8318 1090.6914 1821.1762 579.819 943.2839 1398.5184 1080.5688 339.1783 651.9347 5437.4474 2220.1741;
	1695.9832 1045.0772 1758.5095 570.2604 882.4 1329.3183 1066.3926 325.4333 628.1317 5298.5865 2150.9368;
	1620.8139 983.737 1655.6934 569.8 839.2423 1268.13 1044.4094 329.518 619.6533 5069.109 2042.9368;
	1576.2051 944.2608 1567.4465 561.3 788.2701 1203.1 986.0545 304.6466 582.804 4871.8708 1908.1;
	1516.6712 936.1 1581.3742 570.0068 784.5518 1190.1278 959.1892 296.3 544.5554 4857.7282 1883.3426;
	1440.2271 892.4931 1534.2014 574.1299 736.6662 1154.5 919.0659 278.8752 533.9107 4742.8 1826.368;
];