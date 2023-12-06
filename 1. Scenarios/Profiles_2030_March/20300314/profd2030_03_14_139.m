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
	1530.734 908.5553 1530.7326 552.0956 781.0457 1144.1 818.7692 237.1987 491.6849 4538.5858 1554.9;
	1475.6054 877.7 1495.0042 545.1788 785.227 1137.0506 801.9987 238.5029 493.4353 4485.3247 1509.993;
	1499.3 887.8 1487.3572 555.1051 773.0 1147.3091 820.1761 238.9668 497.6 4412.4032 1479.8389;
	1572.215 951.0523 1563.5787 561.1369 818.0538 1206.9473 867.6506 257.202 525.5241 4615.2709 1592.5715;
	1732.7 1067.5242 1768.4714 570.0595 947.9115 1345.5675 989.5 288.1 602.4471 5095.61 1811.0915;
	1865.0211 1170.6966 1896.2279 596.3001 1009.8 1407.4012 1034.5424 327.6059 666.2 5641.1577 2003.358;
	1874.126 1175.4146 1925.9933 589.5867 1042.8653 1409.1921 1028.6587 316.5 648.8424 5920.3925 1941.2419;
	1908.2238 1187.2538 1932.5537 586.8148 1076.9585 1425.8 1064.0499 325.8086 675.1192 6196.7952 1941.4203;
	1897.3298 1174.9 1939.0177 583.5631 1095.5864 1422.2 1048.2336 320.1435 678.1229 6302.5846 2013.6248;
	1922.9173 1188.9946 1928.1801 562.9 1077.4947 1385.9868 996.7883 307.1 652.4796 6216.726 1930.3929;
	1926.0058 1183.1 1883.1108 553.6 1028.6291 1359.1316 985.3693 293.1229 659.2313 6192.5088 1926.6961;
	1871.6233 1144.2262 1780.3022 553.0 999.6896 1374.5416 960.8751 272.3669 652.0 5995.3719 1776.5199;
	1803.2944 1106.1091 1768.6844 539.4116 959.0152 1303.8536 948.7099 277.9608 656.3603 6045.3961 1865.4454;
	1764.9413 1100.2822 1732.3859 538.0138 921.8201 1302.7 948.8 275.4321 639.6431 6006.4302 1834.5874;
	1717.8292 1103.7716 1764.6231 558.6 953.7339 1379.9 1006.0686 280.0 651.4648 6070.4273 1990.179;
	1739.2031 1111.2014 1788.4341 575.0953 973.0567 1424.3235 1069.3526 287.7026 666.6066 6111.3259 2069.8146;
	1754.8 1114.3663 1838.1449 575.8018 993.0 1448.5437 1067.6335 311.2764 696.8547 5997.8437 2106.0443;
	1853.7613 1162.7263 1867.7221 589.3559 1021.3413 1505.193 1115.3379 325.2488 714.2351 5975.7051 2159.4349;
	1889.8855 1189.8438 1894.3913 584.9 1039.8135 1501.2 1113.379 308.5459 696.5016 5841.7827 2087.4763;
	1793.7815 1131.7 1809.7369 554.5558 954.3 1384.7705 1065.3502 284.3257 637.8824 5483.7359 1946.2229;
	1744.5089 1061.0 1674.9758 546.8871 860.3396 1265.3761 973.8 281.7 564.5761 4991.0021 1796.8632;
	1650.6173 970.9181 1580.1077 535.1501 813.3467 1179.5497 899.3 247.5233 534.1705 4593.7806 1644.0464;
	1528.6067 895.4083 1501.9339 522.8489 800.1 1183.5507 849.5755 243.8075 528.9037 4473.4606 1628.3095;
	1488.4769 860.1329 1457.7368 532.1 769.7819 1182.65 810.1781 233.8 485.9693 4244.3441 1587.458;
];