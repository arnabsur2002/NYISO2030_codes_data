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
	1481.7866 957.3089 1655.5551 577.1272 836.7 1235.6631 868.6403 275.9069 429.3014 4537.5521 1706.7091;
	1491.4206 968.3794 1662.7228 580.9967 830.5866 1255.7222 877.9137 274.8 453.7435 4507.9939 1717.6441;
	1491.1 993.4828 1709.0595 574.8 838.1299 1292.1606 905.1006 280.8951 464.571 4570.9361 1751.1137;
	1578.4447 1042.0596 1783.3376 597.7 877.2 1319.4127 946.2173 297.4408 494.8052 4780.9918 1825.4954;
	1743.2228 1142.2842 1953.3194 630.6091 1010.2 1460.8408 1052.8 328.5 569.5869 5267.6831 2054.3559;
	1886.5407 1239.3295 2065.5799 667.0955 1088.0 1535.8615 1097.1677 344.103 561.8841 5893.0587 2192.4485;
	1888.7944 1227.4907 2071.2558 661.4456 1096.0184 1536.4827 1132.3029 354.121 580.6938 6262.4285 2180.9568;
	1890.0107 1214.1581 2068.1427 655.074 1089.4148 1552.3697 1169.1888 357.0966 637.0961 6506.4505 2218.7;
	1975.3005 1248.6353 2074.1671 644.9 1103.9848 1578.6882 1190.6472 356.0 613.8226 6496.268 2146.4367;
	1970.9694 1250.3542 2058.7218 641.7109 1092.4674 1574.8261 1203.5824 359.6694 661.2049 6542.4113 2177.5;
	1968.5212 1237.1429 2020.2909 629.6114 1049.0977 1521.0096 1188.7128 341.8 659.663 6536.6979 2066.0251;
	1946.1 1247.6133 2062.823 620.8513 1060.6735 1505.7 1182.6769 337.5 663.0 6496.7029 2086.9144;
	1890.135 1219.3898 2010.0287 622.167 1038.6499 1462.3297 1157.6187 331.0 661.7 6451.8714 2093.4775;
	1836.8 1201.3272 2001.0739 624.8026 1020.2609 1435.5807 1248.0232 343.5699 682.1 6433.4 2158.2861;
	1841.064 1219.666 2031.6124 626.8505 1024.3259 1457.6858 1255.1331 377.0 685.605 6378.1078 2195.7897;
	1848.9044 1257.9912 2085.4153 642.4 1051.0563 1503.3704 1280.8543 373.0306 699.5861 6501.5505 2286.1018;
	1884.2724 1247.5 2093.2194 651.0197 1088.1 1575.124 1258.2927 387.5 719.7294 6482.2128 2385.9414;
	1976.7567 1310.5815 2210.4 661.3371 1121.4141 1671.8926 1341.6 395.6 751.1712 6505.0315 2518.0167;
	2006.8476 1311.3785 2138.8099 650.9357 1109.6669 1643.7122 1278.558 391.2 727.4893 6387.2521 2460.8353;
	2001.4506 1259.9411 2081.0912 645.8618 1082.8774 1567.2783 1218.6529 389.8 723.8424 6443.6515 2443.3721;
	1889.4971 1187.2968 1952.6796 628.5784 1020.2 1473.7747 1151.7214 345.9447 666.8 6277.3593 2292.6376;
	1769.0906 1114.6 1820.5773 621.7123 966.2946 1390.0459 1067.4405 310.3353 605.0333 5804.986 2065.4046;
	1645.3 1018.9518 1729.0032 617.7404 922.672 1270.6401 945.3835 293.9071 550.3939 5094.7526 1861.5609;
	1599.5705 998.7 1702.9015 610.9175 893.5246 1251.8 932.2534 299.9386 544.7207 4858.2159 1850.315;
];