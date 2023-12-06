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
	1549.1677 939.2955 1538.4758 556.5 788.1802 1123.4 898.737 282.0259 513.4 4571.7957 1653.3816;
	1549.8089 946.1323 1564.0081 551.6 821.9046 1139.668 887.2 268.3338 508.4801 4514.3005 1639.3689;
	1556.2957 950.9459 1579.409 559.7 818.6 1162.879 886.3266 271.0063 508.7725 4458.2836 1655.7;
	1654.4 1013.1137 1645.7701 557.6837 859.1765 1222.0683 930.3677 271.6235 541.3461 4687.4045 1766.1978;
	1803.2102 1147.8033 1877.5439 606.0836 988.557 1358.2 1034.4829 323.8 627.2912 5272.2959 2044.9137;
	1917.2388 1238.4282 2062.0525 625.8583 1098.6235 1474.7513 1126.9258 352.3771 692.1 5841.2114 2216.4633;
	1899.8866 1255.8676 2075.6569 629.9 1097.5723 1498.0814 1168.5904 370.2 719.9733 6169.8215 2274.496;
	1940.1672 1321.5235 2124.7385 631.3528 1146.1852 1559.744 1222.4466 387.7331 777.1643 6608.6036 2388.8145;
	1917.4 1294.5233 2094.5 629.6063 1152.872 1568.6163 1203.3348 380.9846 728.2227 6511.5265 2330.8;
	1913.7237 1302.2365 2100.3072 630.0387 1140.9894 1559.0726 1192.8658 387.6898 726.1 6483.5882 2363.1725;
	1914.6028 1280.4963 2086.9915 618.5545 1128.2684 1530.3647 1188.0102 372.9417 776.0023 6589.4762 2506.4259;
	1910.1195 1319.0851 2095.9848 603.6764 1132.7273 1548.9842 1215.6111 364.5 772.0614 6627.8378 2586.5876;
	1907.0381 1353.9104 2078.4078 612.8634 1129.6857 1551.3931 1242.081 395.9405 754.7872 6588.5756 2566.1609;
	1890.3875 1355.7048 2075.4211 612.9778 1115.8212 1487.5515 1255.704 379.3732 738.5068 6539.1522 2444.8008;
	1884.1296 1384.3563 2109.7 604.3 1127.238 1515.6099 1196.2665 396.2293 719.9228 6626.7075 2506.9252;
	1865.7418 1320.6835 2137.3843 611.2066 1152.5459 1519.3851 1262.1825 431.9186 739.31 6601.4304 2643.7624;
	1880.928 1302.3011 2119.7292 610.9347 1182.3882 1562.9281 1278.9277 425.7902 744.6446 6522.5131 2510.7116;
	1954.7461 1363.9861 2194.0567 628.2895 1206.3614 1590.4581 1315.7005 447.194 772.6294 6512.2591 2564.5173;
	1959.2 1313.4743 2162.7 616.1324 1160.564 1571.3839 1300.8846 480.7696 745.7 6464.4533 2644.0891;
	1924.6399 1245.4687 2054.6747 609.4079 1114.7823 1492.5421 1210.567 465.7951 723.2986 6148.1022 2561.2449;
	1821.1666 1150.9684 1899.3163 589.2 1046.7405 1412.3192 1119.7937 386.0823 671.3598 5782.1618 2317.1608;
	1708.3758 1055.6991 1753.434 572.5121 938.8058 1264.0611 1034.0288 344.0824 607.9443 5428.7419 2033.6138;
	1601.8 988.7308 1702.5895 562.3647 888.0 1149.8419 947.2389 324.3 550.5774 4985.1304 2017.3638;
	1526.5726 987.5372 1695.1548 571.1279 883.6336 1145.0462 925.8452 362.0051 529.6 5033.7545 2001.8299;
];
