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
	1458.9959 922.3731 1614.4557 540.6 684.6373 1117.9576 834.0097 237.2948 488.7688 4561.9934 1720.421;
	1462.9 931.3482 1583.8916 513.7106 681.6507 1127.589 818.3852 233.2569 482.1332 4481.8539 1690.8;
	1506.1495 952.7892 1652.1484 492.3298 709.8676 1163.5197 829.2364 231.87 500.3 4530.6846 1728.8786;
	1601.572 1043.085 1801.9427 525.1902 776.1295 1227.3749 895.2365 266.0 538.7487 4785.8916 1854.9861;
	1745.1591 1149.0 1956.6045 519.9618 890.2798 1369.0818 1014.8 298.2144 628.8992 5312.4392 2089.8815;
	1839.6411 1204.1074 2043.6396 529.5626 940.3622 1448.077 1082.9347 316.5 683.241 5865.169 2221.1131;
	1833.8662 1237.9 2074.5743 512.1045 938.1398 1502.6117 1127.1 346.0 705.6645 6181.3 2246.8004;
	1842.2778 1221.8212 2017.2235 548.5486 962.322 1471.9547 1121.3694 331.2515 710.0114 6297.8573 2213.7979;
	1842.932 1218.7 1971.9175 543.1146 925.7274 1435.818 1133.4822 330.9 718.5941 6371.9855 2143.1121;
	1837.7312 1227.4116 1933.2609 542.7048 933.0968 1459.3864 1134.8273 319.7117 707.4 6345.8901 2076.9794;
	1791.829 1219.1553 1936.7551 543.3 887.3386 1380.6975 1105.185 308.2 699.1 6373.7438 1970.185;
	1797.8 1208.2908 1940.6248 546.0 894.6154 1405.7 1102.335 304.0101 683.1523 6323.5808 1945.1;
	1777.0728 1200.5813 1929.0762 543.2594 854.3635 1301.3437 1035.9314 287.2438 653.7189 6183.5659 1936.0187;
	1737.8473 1195.0253 1920.6844 547.9 839.5225 1292.0826 1041.4 292.0 659.0575 6182.1738 2126.7194;
	1711.8054 1181.3864 1901.641 563.1971 865.0108 1336.2 1047.5498 289.0654 661.33 6167.9032 2129.356;
	1740.2302 1187.3703 1937.9635 578.3824 874.5604 1338.2195 1061.5054 294.347 643.2265 6214.4574 2202.9505;
	1652.7078 1177.6904 1935.1125 582.0 894.784 1344.638 1053.7115 297.5388 675.5 6080.4529 2270.8616;
	1768.4 1228.995 2025.7763 590.4316 943.5 1458.618 1134.1178 330.8317 708.2 6140.3763 2393.3191;
	1777.4695 1223.9537 2006.7 585.4443 923.2017 1421.1072 1111.3078 336.5835 702.7456 6180.7965 2389.2839;
	1722.8445 1164.6755 1920.4008 585.8009 836.3533 1332.2 1049.2962 317.4307 655.0688 5836.5738 2311.2515;
	1665.5115 1071.7 1801.0376 572.5352 807.4242 1279.4663 990.3925 287.6 610.2262 5487.659 2131.4138;
	1523.5862 973.4068 1685.6208 566.565 758.2598 1158.7849 909.2955 256.9298 561.7028 5087.9923 1943.8439;
	1504.1821 907.8 1575.5928 540.2 713.6905 1117.1 868.7126 240.3628 520.8597 4736.2471 1814.9513;
	1447.0264 871.4405 1530.7778 511.3263 651.4424 1082.8336 803.5406 216.3456 463.2408 4469.1818 1695.469;
];
