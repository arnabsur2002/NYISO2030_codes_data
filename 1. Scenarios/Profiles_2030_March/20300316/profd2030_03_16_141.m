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
	1555.3439 890.9593 1538.2419 561.6712 706.3524 1071.9 824.1 247.7294 491.1 4469.1929 1701.0;
	1540.7743 892.9016 1511.2 557.7 679.3767 1029.3471 794.361 240.3 474.6247 4324.2037 1651.4351;
	1563.143 890.6004 1492.9963 557.0 699.9899 1011.0821 800.0668 241.1 462.2234 4291.7002 1654.741;
	1594.844 907.0 1534.3838 569.3464 706.6 1028.1115 808.1391 235.5893 464.1835 4262.3426 1651.1175;
	1677.7391 985.2191 1629.4648 575.9479 763.873 1088.4719 886.8596 262.1 513.9 4531.6008 1797.1642;
	1757.9221 1048.0959 1721.9994 598.1363 835.824 1204.7634 971.2777 291.0978 544.9944 4767.113 1877.8891;
	1768.0637 1069.1459 1800.8 613.9868 870.2779 1249.8423 1016.2908 311.0029 560.0103 4980.6138 1920.4058;
	1830.0661 1091.3 1838.1 602.7 905.3378 1251.8565 1044.3469 304.3019 578.2034 5169.0865 1967.8342;
	1848.8994 1099.3366 1894.054 599.4775 940.0505 1294.9067 1107.7335 304.994 613.5285 5330.6727 1993.7193;
	1839.2556 1110.6588 1848.9804 604.6 939.8516 1310.2853 1120.1758 307.3059 597.6653 5325.1283 1936.7159;
	1811.1101 1072.7572 1784.8095 604.9 904.7621 1252.7715 1069.2188 296.238 583.9 5216.9292 1826.1089;
	1770.8739 1038.864 1718.0042 618.6268 867.9802 1201.11 1058.4132 294.0228 581.0 5186.7875 1824.6032;
	1749.1076 1042.1135 1713.542 602.4264 861.189 1160.8511 998.1696 288.7 578.8056 5140.605 1821.5626;
	1743.7784 1058.6163 1746.2957 602.5 876.7015 1211.1664 994.4254 281.8 589.0062 5249.2561 1803.302;
	1761.6996 1051.3025 1717.8336 595.6879 844.9827 1204.5892 1019.6 267.5107 593.5062 5243.7303 1898.0484;
	1812.2 1066.2363 1791.1748 612.0804 888.7252 1257.2416 1023.8 259.6 599.5896 5316.835 2036.215;
	1802.382 1064.2186 1752.3665 607.1489 872.5871 1187.018 1027.405 267.2924 624.3901 5357.9465 2086.2;
	1852.7088 1101.3653 1840.4989 620.4 924.8843 1280.2414 1094.1668 319.7409 657.9363 5464.0213 2254.2;
	1865.3614 1114.2973 1841.1525 604.4041 912.4883 1296.0071 1089.1996 304.0921 629.7033 5369.4234 2081.2555;
	1838.5125 1081.3862 1801.2342 581.7762 902.4278 1270.5787 1058.397 290.9 633.8 5341.1 2139.5493;
	1785.1164 1036.5136 1738.9222 571.0526 838.3041 1238.1108 1018.0655 282.7205 609.6715 5223.1252 2041.2955;
	1715.8865 965.6 1626.587 564.726 772.1934 1151.0438 947.1504 234.1077 573.8594 4903.4391 1856.2822;
	1661.37 928.6168 1552.7739 587.3 763.7133 1116.8679 924.3 231.0128 539.4714 4763.8338 1763.1309;
	1622.6454 883.0059 1573.0788 593.1 743.288 1084.1682 884.4107 236.2 493.3109 4610.9725 1720.846;
];
