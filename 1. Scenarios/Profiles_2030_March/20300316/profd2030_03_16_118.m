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
	1526.6769 864.7 1469.7622 507.0427 730.7469 1106.689 840.7114 243.9498 512.8869 4512.3169 1790.0532;
	1519.7 856.0351 1463.9 504.9236 711.0629 1076.582 814.1799 247.3888 502.7832 4424.3804 1710.5442;
	1502.1 851.6026 1463.4999 499.5292 719.8295 1068.6028 806.4999 239.1105 510.1496 4365.9467 1708.5653;
	1535.2325 887.3081 1525.0601 496.7948 775.8 1125.4805 834.0241 252.7 502.3 4416.3868 1744.5;
	1585.2022 920.6731 1613.9059 521.4 825.9312 1168.5914 866.1567 269.9115 513.254 4475.3756 1796.0194;
	1681.8728 978.2615 1693.9278 530.9634 889.2093 1232.9125 927.0195 300.4053 551.1495 4649.0578 1881.0992;
	1747.6478 1035.7972 1796.7587 530.1097 929.2486 1292.4858 989.4037 314.5791 589.4256 4948.3742 1987.2757;
	1763.7684 1030.5593 1782.2491 510.78 985.0265 1341.1466 1043.5748 306.4528 619.6 5192.8828 2062.6426;
	1772.585 1071.1277 1789.0693 529.8151 992.0695 1342.4 1081.3396 314.9307 622.4454 5376.4545 2085.5739;
	1784.2258 1067.1 1829.0613 532.3583 985.72 1404.7 1070.7 321.3 631.3021 5539.2059 2128.6771;
	1770.0 1055.7944 1778.2256 542.3732 940.4677 1366.6042 1061.7663 324.5527 624.3314 5558.1171 2120.4765;
	1776.5614 1071.8104 1777.4061 531.0445 920.2698 1384.9789 1060.0791 319.7702 605.2378 5401.6008 2050.3184;
	1758.7726 1043.0998 1723.5867 538.5 919.0929 1306.3366 993.4278 325.0371 598.0205 5313.6942 2049.1638;
	1710.4251 1017.401 1694.3 552.9 927.3 1290.8329 1015.6544 327.9892 636.5 5314.4425 2094.3414;
	1666.512 1018.8593 1671.1301 533.1 887.3225 1235.8874 970.6736 304.8361 631.4336 5227.8193 2030.5476;
	1659.0655 1011.5327 1705.8221 519.9798 922.722 1255.5326 1015.18 313.6003 642.9714 5256.9428 2107.5072;
	1662.4791 995.4493 1692.1494 514.9277 907.1624 1285.3056 1011.2362 312.4156 635.547 5104.0041 2139.8;
	1733.6742 1053.441 1803.9914 529.0935 931.4711 1384.8549 1085.7816 320.7 656.8013 5341.6803 2269.1672;
	1780.8042 1063.396 1812.8484 531.2198 927.986 1371.255 1083.6 309.3051 635.4767 5354.5886 2269.8;
	1762.7 1030.9787 1730.6713 515.4041 886.6517 1312.6614 1056.7054 305.2941 618.7761 5230.1662 2197.9;
	1696.3416 978.9725 1654.8733 511.9851 846.1454 1258.4997 1029.6125 291.7104 599.2 5017.6842 2092.5474;
	1587.4925 910.8575 1559.073 496.7662 822.6 1192.455 964.2629 289.8 580.5 4885.923 1996.5584;
	1577.9 910.4885 1549.7963 530.4099 807.0353 1160.5237 927.2 263.4212 531.9 4807.9645 1877.3234;
	1551.3784 895.5529 1519.4702 570.7949 796.7605 1162.1502 896.6962 270.359 489.272 4703.1957 1836.2409;
];