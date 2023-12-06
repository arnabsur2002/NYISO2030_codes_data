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
	1568.7473 950.2318 1575.595 594.8407 765.2719 1136.1871 811.8183 232.0854 497.9468 3976.322 1689.7882;
	1553.9096 953.5795 1587.0638 602.2806 778.1712 1101.6885 809.4546 241.6 491.5966 3992.1113 1673.2942;
	1569.2 974.8976 1628.9532 595.2 785.6334 1094.939 813.3259 242.6 501.2 3931.0919 1691.5941;
	1636.67 1039.7994 1715.3068 608.9074 828.4 1157.7964 859.8221 259.2614 526.1929 4238.8158 1795.7;
	1815.5931 1177.6 1920.322 622.879 935.4605 1329.471 978.7311 303.8 614.9159 5048.9539 2048.512;
	1924.9393 1247.8741 2053.3894 617.2373 996.3 1423.8159 1054.0 329.9 689.9 5605.1651 2218.7;
	1921.2815 1247.6307 2032.244 606.8 1011.6673 1423.217 1045.2016 358.941 696.1634 5964.2924 2255.8709;
	1878.5111 1219.0 2024.4829 599.5942 968.3 1422.8279 1071.7068 366.0787 690.4281 6166.4245 2243.0728;
	1874.2712 1222.6207 2031.9937 591.4255 988.1 1395.4031 1052.351 358.9 673.6357 6229.5558 2221.6707;
	1870.6153 1208.1838 2032.8 604.2187 1000.1029 1420.288 1069.3506 368.9033 669.204 6239.3686 2253.7469;
	1831.2071 1204.0364 1990.704 591.808 981.4146 1422.3582 1053.6238 369.6792 661.0245 6245.4339 2204.521;
	1832.6 1188.2561 1983.477 589.6652 950.0198 1364.2 1008.9152 365.4022 660.6612 6157.9731 2161.7564;
	1806.11 1168.7129 1965.6802 568.4526 955.2184 1355.3201 1000.6979 364.6642 648.9 6132.0 2180.7837;
	1772.764 1135.3926 1911.5258 569.7101 908.6267 1310.1597 979.0394 340.5754 610.7536 6091.1155 2134.1091;
	1766.4245 1163.7845 1973.3114 576.1731 895.8766 1331.1816 1029.9896 350.9126 647.8415 6161.6606 2256.671;
	1701.6739 1159.7 1933.8 583.8312 893.6373 1379.293 1031.9842 354.9984 644.5398 6088.642 2309.2537;
	1719.0201 1136.1 1942.6609 593.6 899.5957 1368.4025 1038.63 370.7951 640.1017 5976.2309 2317.7844;
	1781.8995 1186.9059 2026.4 610.6188 959.9405 1425.5107 1094.3413 376.8281 675.0351 5899.4175 2412.1574;
	1807.0025 1198.9193 2056.8023 608.9122 944.4551 1402.1517 1090.1066 382.6501 670.6262 5899.5706 2367.1903;
	1713.4499 1120.4585 1919.5796 594.8284 928.3689 1319.3847 1040.2445 360.0 623.1532 5603.8417 2264.6054;
	1598.5407 1031.194 1766.2965 589.0865 849.0357 1218.9557 944.7684 323.9 566.4734 5184.5193 2056.5341;
	1455.9609 950.9262 1646.7018 576.3986 801.1022 1146.0 914.1313 291.1 536.3352 4932.9032 1904.3;
	1452.8309 902.3673 1587.5641 557.3733 773.1431 1113.066 866.5216 259.1 504.7296 4653.7745 1835.8466;
	1420.5346 877.8331 1563.8076 543.6 754.003 1082.6875 836.7615 266.7966 485.6039 4402.4595 1746.5172;
];
