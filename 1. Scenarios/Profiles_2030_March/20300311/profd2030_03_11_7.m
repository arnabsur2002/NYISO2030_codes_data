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
	1555.1133 901.9 1591.8511 532.5901 751.26 1098.8381 868.6062 262.7058 510.9322 4327.9739 1601.5816;
	1532.507 891.7083 1594.0234 531.406 746.8 1114.0804 863.8 265.6633 502.5759 4261.4369 1568.4703;
	1562.8812 922.3664 1647.5585 535.2235 769.6407 1140.7609 884.7299 282.537 523.1711 4314.6197 1632.3871;
	1628.7304 995.2665 1761.0829 565.3 827.2742 1192.6593 936.7921 303.1992 546.4 4589.4544 1757.2;
	1755.25 1108.8425 1930.6865 592.5 932.2065 1313.788 1035.2727 341.2702 617.7595 5097.4 1987.6746;
	1902.7409 1205.0 2049.4851 596.0458 1030.066 1441.5408 1090.7 377.6133 683.6348 5603.6565 2169.7933;
	1906.9096 1184.4108 2079.8088 619.9621 1030.7007 1433.223 1094.3 367.1852 688.7408 5686.0789 2170.2145;
	1903.0045 1210.5 2056.388 607.6735 1017.1599 1432.6258 1106.4968 379.3 696.0 6228.6069 2177.2;
	1915.8517 1233.596 2100.9845 610.4703 1050.8811 1439.9478 1143.1125 385.1791 724.3336 6399.3799 2236.3714;
	1924.7439 1220.9023 2074.8893 611.6918 1071.5809 1453.584 1113.5989 391.4861 687.1756 6324.441 2148.5;
	1874.6587 1210.7012 2049.9871 614.0112 1052.0122 1407.3041 1135.1382 390.8 704.345 6319.1867 2235.1787;
	1857.3628 1141.7601 2008.8399 593.2506 1030.2 1406.058 1091.226 371.1559 678.0624 6271.5731 2116.1532;
	1815.2665 1110.6019 1978.8868 590.2 1007.6369 1380.8093 1083.8363 360.9843 677.7 6207.2541 2024.1532;
	1779.7042 1156.5807 1982.0464 594.7096 1008.2186 1353.0634 1065.602 405.7392 673.6284 6265.3604 2119.767;
	1771.8089 1162.2975 2012.686 599.71 1044.861 1412.0 1077.3877 395.7748 668.2997 6295.1056 2159.9371;
	1754.0612 1180.3821 2058.6371 600.2 1075.522 1446.6089 1093.7667 394.1669 677.4053 6342.1854 2221.3303;
	1777.6859 1212.4243 2153.5443 608.8 1098.5807 1461.7149 1128.391 380.0 697.7936 6120.4896 2246.2933;
	1808.9 1238.7158 2139.878 620.1812 1142.6674 1534.8 1182.8521 401.2602 724.1841 6083.4385 2373.5908;
	1811.202 1240.131 2126.203 620.6684 1129.0223 1492.5 1169.1084 393.8473 720.2075 5724.0015 2290.2445;
	1755.8058 1145.2815 1999.4287 601.3259 1060.819 1376.5473 1103.04 369.2008 678.9374 5503.3932 2026.8962;
	1681.8273 1098.9473 1924.5501 591.3406 1005.4528 1310.507 1024.149 346.0039 628.2476 5353.4628 1902.7286;
	1555.3612 1024.7 1784.7866 574.1 927.0635 1237.5359 967.4762 314.33 586.6 4956.0664 1678.5873;
	1458.9553 942.9939 1684.2222 573.4 875.679 1180.6391 931.1025 287.5806 550.9 4738.3 1740.2241;
	1433.2005 919.8 1686.4958 585.1 855.5937 1190.5714 939.528 310.3613 570.2 4680.1328 1764.9034;
];