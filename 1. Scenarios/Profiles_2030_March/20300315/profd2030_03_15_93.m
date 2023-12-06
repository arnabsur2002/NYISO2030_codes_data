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
	1398.5024 848.2294 1452.0813 511.0952 731.174 1060.2781 847.7722 203.7666 496.2613 4279.3067 1609.4737;
	1400.2754 846.3318 1461.4901 507.7351 733.7969 1070.7304 842.922 199.4531 484.0683 4230.4935 1610.6;
	1420.855 857.1443 1467.6902 516.4274 759.5458 1083.736 851.6989 197.0077 494.8001 4247.1671 1627.0916;
	1490.8627 935.3787 1599.5926 524.0954 836.3255 1164.3906 896.2243 228.0 523.0931 4480.4917 1754.9689;
	1605.5532 1063.5839 1786.3294 554.2816 914.8329 1297.6927 980.1315 270.2553 593.5554 4969.6474 1976.6387;
	1753.2 1141.8551 1915.1015 589.7868 990.0331 1385.3977 1055.0 305.9698 667.2218 5470.976 2136.1602;
	1807.1806 1152.5 1941.5672 594.4 1007.8795 1380.0606 1101.7472 294.1022 682.9 5738.8858 2199.2048;
	1815.2244 1139.1151 1925.6314 579.5412 1010.7634 1347.8 1116.499 299.1929 700.3 5952.7035 2205.394;
	1832.5264 1143.3053 1944.5 562.6263 1020.7881 1293.228 1111.9029 274.7486 697.9 6002.2568 2064.5622;
	1808.6 1131.7634 1940.1851 553.2727 1024.7578 1282.1326 1095.6009 294.0672 690.4978 5973.1612 2032.8972;
	1771.7924 1117.4927 1946.0649 556.104 1032.553 1298.1344 1119.0502 291.711 688.0754 6076.0354 2060.0009;
	1817.5829 1108.6213 1917.6694 554.0 1003.043 1306.1124 1124.2121 267.2117 675.2622 6022.5 2052.5469;
	1819.5007 1108.2489 1902.3571 565.8 990.4648 1282.9114 1142.278 271.1718 660.2917 5904.1981 2125.0666;
	1719.1094 1068.4516 1842.0795 561.2 960.4185 1304.1231 1092.5279 276.2566 660.4186 5985.0483 2172.3144;
	1739.4734 1066.7728 1855.8295 559.3413 994.5087 1343.0733 1078.576 265.3 668.1788 6055.7297 2233.2741;
	1740.2 1062.0368 1869.5158 565.1889 1016.9635 1369.3608 1077.7007 284.4208 650.2339 5966.0995 2265.3563;
	1718.9886 1081.1932 1888.3475 567.2711 1057.7364 1412.2197 1182.1984 293.0874 705.2266 5940.1305 2421.8016;
	1808.9252 1120.4 1942.0363 606.1952 1073.586 1472.6339 1187.313 287.8655 710.4369 5889.8179 2421.6259;
	1845.3673 1149.3982 1951.6867 621.4803 1038.633 1452.1077 1167.0038 268.1044 683.2 5751.8128 2415.0401;
	1766.1 1078.4026 1848.6603 606.2739 969.8186 1344.3273 1115.3419 258.6428 662.7453 5621.0806 2288.0952;
	1695.8748 1018.3625 1726.3552 585.2 878.8415 1248.6111 1056.4548 248.2 630.6544 5392.2853 2147.4;
	1600.9022 945.5 1594.0 572.5826 808.9719 1142.3002 954.0112 218.3582 573.5 5232.6972 1960.7624;
	1496.902 930.7 1573.5 582.7384 832.2849 1192.841 1009.2256 232.6854 559.1765 5330.3882 1871.7097;
	1450.024 896.218 1528.4853 580.5131 788.6214 1114.8922 876.3123 212.1177 515.2129 4735.5317 1751.3838;
];