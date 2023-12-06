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
	1524.1007 937.7905 1551.1139 576.3 798.508 1116.9383 854.8695 243.4102 474.4083 4379.8615 1604.2;
	1525.5722 937.9837 1549.2597 559.6123 789.4919 1114.7707 856.5595 241.2801 469.7494 4349.7513 1588.1436;
	1547.3823 962.6 1578.007 557.3126 786.4694 1112.1832 869.7408 239.7 475.1864 4360.5447 1607.5665;
	1619.8449 1043.5025 1732.9128 589.2345 860.3 1218.9 925.526 257.3493 518.8383 4616.8742 1747.3087;
	1763.3977 1158.0561 1910.9004 606.3687 998.2478 1370.3705 1024.6467 286.183 601.7767 5081.7885 1962.6374;
	1894.3916 1260.2591 2046.3695 611.5582 1060.1924 1476.278 1090.3 324.4945 671.8435 5717.5377 2125.5156;
	1924.5693 1284.8441 2062.7079 611.8493 1082.4867 1500.5 1124.8905 340.2372 686.9358 6068.9551 2144.4005;
	1951.886 1311.9593 2070.7482 615.3584 1046.1 1523.4 1127.6575 336.3728 687.4273 6210.8448 2126.6104;
	1950.4 1324.3281 2092.8018 616.9304 1043.9 1519.0 1136.8606 356.1745 707.8 6342.8992 2145.5518;
	1933.9223 1301.0 2074.0978 596.3772 1026.0061 1495.5533 1124.4399 325.9607 682.2024 6346.3859 2075.1002;
	1931.2695 1279.3498 2047.1614 600.7939 1027.326 1479.2407 1130.0355 321.6057 680.7915 6407.2067 2149.9695;
	1941.5254 1257.9087 2016.5656 598.2311 997.5398 1467.0153 1100.2195 317.3 678.1861 6300.3828 2044.1357;
	1962.3186 1263.8 1970.7508 596.6612 989.9673 1445.2 1111.9727 336.9 685.402 6328.6105 2038.1053;
	1940.0078 1271.9394 1941.3968 602.019 984.9883 1416.2718 1116.2 323.5334 693.9853 6385.0651 2111.8666;
	1925.4658 1236.4194 1974.0407 582.5443 1030.4307 1423.0674 1100.9 343.3157 704.9709 6371.2247 2153.6745;
	1937.0821 1266.3721 2028.0 602.7803 1042.8992 1423.3059 1142.183 390.8554 738.7652 6478.3843 2337.3734;
	2009.384 1271.9747 2094.5566 617.0 1067.0176 1465.5441 1150.7 388.1831 743.5 6262.0986 2395.2144;
	2064.4327 1323.169 2175.4402 639.3672 1063.5985 1526.3 1237.713 418.6428 761.7247 6357.1244 2489.3529;
	2117.7877 1336.3682 2215.0044 647.5957 1075.5418 1484.4019 1261.6178 401.4888 757.6057 6389.0613 2557.5551;
	2043.2396 1288.2958 2111.6433 627.2843 1018.0 1429.1958 1202.4024 386.0012 725.4229 6077.9207 2394.4479;
	1908.9362 1167.5442 1962.8777 609.3347 979.8467 1344.6515 1170.9443 369.8185 712.1093 5817.8696 2300.9749;
	1819.6721 1070.6559 1836.1 600.5845 895.7431 1254.0 1069.2101 323.2337 632.3648 5454.6676 2121.5111;
	1675.5052 996.6939 1693.4615 580.6043 851.2971 1152.5272 957.9944 290.5 582.6162 4977.5733 1875.8803;
	1697.6178 988.5145 1655.8 584.2 810.9515 1110.8 905.5842 272.1758 558.0331 4743.6478 1800.1697;
];
