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
	1550.046 1002.7 1691.4213 582.4632 854.152 1158.8774 913.0007 301.0842 519.2546 4655.0212 1841.6378;
	1534.5575 1010.5701 1689.9114 579.3123 850.0 1183.6317 932.4989 300.6365 525.3206 4618.889 1830.3412;
	1578.7368 1022.2063 1712.4229 582.0738 866.0928 1214.4957 935.0649 306.8539 535.6685 4651.5438 1841.2821;
	1686.445 1102.5483 1811.2962 596.3835 907.6619 1299.8066 979.4 304.3151 564.2 4854.1381 1932.7843;
	1806.7367 1215.1256 1952.3383 617.6 1029.4481 1442.0861 1073.5212 351.2192 640.2607 5478.1117 2180.6593;
	1869.599 1273.4266 2001.1672 604.8909 1036.6563 1478.2695 1132.6 385.4 695.2955 5998.5932 2286.4049;
	1907.6109 1302.657 2030.2125 578.9797 1045.8184 1463.5251 1134.7024 391.3033 722.384 6461.7621 2309.0755;
	1906.0 1268.1925 2023.9264 531.8604 1038.6961 1384.0114 1115.9751 372.6877 724.6543 6572.9824 2229.9665;
	1908.1927 1295.154 1998.8545 546.197 1022.7705 1354.8856 1060.275 362.8294 703.5506 6478.9904 2181.3332;
	1915.7915 1288.7063 1989.9934 574.7484 1002.5319 1277.3922 1052.6186 370.0946 684.303 6450.7054 2131.9741;
	1884.5607 1296.6125 1946.7484 573.6779 1017.0193 1246.8343 1047.8823 373.186 686.2655 6374.0142 2042.3981;
	1874.2 1280.1333 1884.5171 562.8946 968.8836 1236.2115 990.7012 362.1432 682.7236 6376.5944 1979.341;
	1896.7461 1267.7876 1887.1664 571.6155 987.8454 1255.8199 1014.0237 379.9647 700.2389 6518.788 2128.7206;
	1867.0621 1247.2473 1899.8034 564.7 967.5216 1323.2631 1031.5011 390.0622 693.7218 6493.2947 2223.2655;
	1902.4863 1227.1959 1913.7656 566.8918 998.5464 1336.5545 1024.4231 377.5873 698.4077 6428.9214 2195.2348;
	1923.5985 1215.4 1984.6869 558.7838 1052.9561 1408.4949 1075.2497 408.6755 706.9258 6443.8198 2348.266;
	1874.2535 1222.6408 1975.7 553.0 1060.0519 1434.6618 1098.6292 435.9332 716.6881 6310.6544 2427.8326;
	1896.2059 1262.7952 2020.674 559.1 1100.1814 1510.002 1161.2695 429.8778 753.5521 6322.5578 2491.1746;
	1873.9736 1249.8377 1987.4808 558.1166 1071.1134 1484.2175 1162.6846 418.8633 736.7143 6235.2246 2463.3;
	1830.4021 1199.171 1923.1045 582.6572 1027.895 1404.1869 1123.4965 393.2475 707.787 6023.8147 2360.1;
	1763.6258 1106.2045 1809.1 576.7046 958.1178 1295.21 1040.5 360.4256 631.4 5708.1042 2139.4469;
	1666.4114 1047.6076 1757.7308 578.9 909.8027 1227.5881 972.7676 365.4871 587.6801 5317.2972 1968.1547;
	1496.0661 963.7113 1622.6889 590.4875 861.2061 1127.7 906.2547 285.5367 535.8 4767.9624 1843.5132;
	1484.361 939.9126 1571.5444 586.2721 798.7956 1129.4 891.5745 265.4 496.7375 4574.5599 1753.3467;
];
