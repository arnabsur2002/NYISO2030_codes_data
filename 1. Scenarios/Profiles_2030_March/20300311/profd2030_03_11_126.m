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
	1421.9491 890.9561 1521.2059 544.3272 698.1922 1091.7704 839.7237 289.7405 487.1423 4167.8869 1628.7972;
	1405.4 881.0 1519.8232 541.7 705.8219 1087.2942 840.3541 284.5134 469.4975 4031.5028 1625.0317;
	1441.1 896.5193 1509.393 548.5 726.1607 1098.0253 840.6 276.8758 470.9252 4159.8744 1627.864;
	1542.3509 969.4993 1654.5264 569.904 789.3435 1186.7175 900.6 298.7097 522.1356 4444.1869 1745.3533;
	1724.856 1109.8003 1879.7648 606.2964 954.5198 1371.7472 1031.0113 364.9 595.388 5147.3721 2031.3774;
	1850.1851 1189.3303 2013.0066 611.4 1025.5424 1454.0592 1110.6243 401.9306 663.2379 5665.6693 2223.7152;
	1886.9932 1222.9 2027.2239 608.384 995.1971 1464.5889 1121.1706 425.1385 668.9374 6053.3053 2273.8348;
	1878.4155 1251.0798 2081.0033 611.6767 1007.1617 1482.5989 1130.908 389.0941 689.3396 6217.6031 2289.1936;
	1880.9169 1272.4816 2123.1222 616.5171 1037.6117 1508.5318 1124.3949 377.0655 696.7134 6292.7231 2348.225;
	1839.5709 1243.2 2085.4358 595.8456 1019.8042 1502.9 1120.4256 357.858 675.2161 6236.0304 2308.5487;
	1816.7851 1242.2728 2101.1 596.021 1062.3493 1512.9812 1136.0408 350.3006 660.8 6309.4179 2381.0701;
	1806.1881 1212.4939 2052.8937 589.5574 1040.4848 1455.2774 1132.0225 346.633 651.0081 6228.4943 2275.5138;
	1771.1135 1195.6987 2042.3 594.2 1031.6385 1484.746 1154.9833 355.1448 659.6753 6176.0438 2293.6163;
	1783.0937 1178.7867 1948.8205 583.0311 1035.5013 1456.8537 1093.5272 337.8041 637.9949 6105.6296 2163.3203;
	1781.9 1192.3 2010.7 582.7497 1020.4619 1465.7124 1114.9431 345.1991 652.0 6159.2674 2330.7806;
	1810.2065 1216.3763 2089.703 611.2286 1062.698 1485.2296 1163.0292 350.0 669.5 6201.1799 2398.0017;
	1822.9702 1239.6758 2121.9 621.7522 1107.1183 1494.8118 1254.7015 376.0096 698.8 6254.307 2579.8366;
	1913.7616 1296.7 2208.1927 630.8505 1167.1041 1541.6 1314.6 389.8 731.0143 6393.1794 2702.2803;
	1926.6 1310.0357 2241.1771 640.4268 1156.0443 1513.8825 1281.1454 393.2824 726.6 6311.1385 2647.9453;
	1819.2521 1206.5 2081.5738 607.0404 1069.8742 1432.8929 1211.5829 356.6341 698.7 6040.6076 2468.5038;
	1704.0563 1120.2654 1919.4462 585.3 998.6774 1325.1561 1124.3474 339.6254 644.4 5742.8012 2291.3423;
	1611.9169 1038.3513 1785.2 565.7 926.9101 1232.6917 1034.4303 314.4926 600.8873 5261.4818 2134.1899;
	1530.7767 972.0716 1686.9684 577.5 875.2 1167.5741 983.2625 306.6593 561.4018 4929.7072 1937.2744;
	1497.7564 939.5 1632.9736 581.8 817.0008 1119.8087 915.4 289.5 533.5409 4605.6836 1775.7684;
];
