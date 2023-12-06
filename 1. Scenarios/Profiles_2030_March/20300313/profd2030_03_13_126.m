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
	1561.0029 972.0529 1576.9953 570.7092 807.5484 1204.5409 935.0847 269.6005 529.7536 4636.0636 1829.3679;
	1550.0924 972.0208 1557.0883 580.6963 831.8 1196.2436 919.2379 262.5 525.5554 4553.2837 1821.0262;
	1583.8052 992.4295 1607.8666 586.1 838.2525 1227.9854 936.2769 272.7112 533.7 4592.2384 1875.1878;
	1672.8978 1057.6227 1660.8073 598.3 897.9745 1309.4867 991.8813 296.5373 574.3095 4861.7124 2025.9779;
	1801.0928 1188.553 1877.6267 607.5 1024.4338 1448.6247 1098.2 337.6 648.0752 5355.7 2233.9743;
	1903.6423 1230.9218 1933.647 613.4 1069.1866 1526.1579 1156.8344 363.3 704.3468 5954.6986 2384.073;
	1926.0504 1237.9356 1960.223 577.7257 1065.5155 1506.5419 1172.644 357.3495 700.0797 6305.4049 2390.8096;
	1913.6205 1240.4 1922.2519 588.4868 1043.1567 1485.7939 1156.2171 342.8 697.6835 6430.3 2295.2;
	1876.6132 1247.6014 1934.1961 588.4 1048.6229 1497.6989 1140.9193 338.9 716.7545 6380.1608 2193.0164;
	1832.8939 1202.8 1899.5 578.0 1047.4597 1470.4442 1121.4 356.3772 715.1831 6397.6022 2213.3689;
	1815.6648 1237.0762 1883.1885 567.4033 1034.7 1406.1919 1118.5255 338.7 679.7205 6388.403 2194.5;
	1785.7443 1216.2259 1897.6972 554.804 1016.5599 1410.7913 1092.5 352.2782 695.2533 6512.5038 2247.929;
	1736.5953 1224.7628 1868.1309 561.2039 998.8287 1339.778 1036.6954 339.0 678.1804 6409.8914 2177.0181;
	1699.7749 1213.3323 1835.5275 572.2317 963.0922 1333.1787 1009.1483 325.4383 672.5 6303.2819 2117.0978;
	1660.7749 1219.8335 1835.1375 560.3537 974.1891 1321.0427 1026.8125 306.4786 676.1746 6260.8 2225.3598;
	1736.6515 1228.0797 1915.1224 597.2635 1027.2199 1375.481 1079.575 324.271 700.4562 6323.1461 2309.5466;
	1720.275 1246.242 1918.4179 601.0411 994.5 1391.7994 1059.5359 329.753 697.3059 6076.306 2350.4763;
	1726.095 1273.8848 1959.4739 614.8255 1024.2126 1463.5914 1141.8607 364.6197 735.6448 6049.5093 2484.4;
	1768.2872 1275.4902 1954.4208 615.8818 1008.7559 1474.8 1144.2269 377.2147 726.2463 6066.3239 2454.2362;
	1720.2684 1216.3312 1918.3082 603.417 984.81 1422.3811 1107.3757 340.5623 682.4414 5810.6017 2361.5821;
	1636.3047 1157.8916 1775.8 574.3018 900.3306 1296.3222 1016.6557 301.8134 608.8349 5649.8837 2187.1;
	1553.7902 1085.661 1689.6715 561.8671 881.7891 1216.2386 956.8 277.1 567.29 5309.1588 1978.6487;
	1505.9724 1008.1162 1574.754 585.8764 779.6688 1164.2163 907.4 246.3952 508.9866 4817.5668 1821.0736;
	1461.9656 976.4594 1555.3043 578.7764 781.166 1176.1221 924.3827 247.104 511.592 4663.3556 1797.8146;
];