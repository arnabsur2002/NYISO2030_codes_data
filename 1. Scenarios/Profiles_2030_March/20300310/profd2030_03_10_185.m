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
	1431.0258 881.7719 1577.5436 543.0559 841.8656 1248.0845 906.3632 302.0 536.925 4764.075 1817.3836;
	1420.4442 879.6 1563.0 558.5819 805.1994 1213.528 883.1149 277.2668 512.7 4584.7489 1770.3834;
	1416.8127 890.348 1594.5343 549.7 825.8392 1265.1785 897.3 280.7373 526.9 4603.8588 1794.6925;
	1437.3529 904.7559 1616.5334 559.0642 842.246 1264.7644 912.4449 277.6 527.1467 4631.783 1793.7407;
	1466.3536 916.9652 1686.4083 574.0 907.4734 1310.3386 958.2229 297.8 559.8963 4738.6897 1878.9;
	1535.7973 985.7042 1786.6 612.6 992.1538 1364.1052 1024.4499 319.9479 583.3963 4899.8427 1947.1425;
	1576.8261 982.651 1823.0 617.9787 1024.6912 1413.9601 1059.7243 330.0 609.8809 5036.5847 2005.135;
	1617.3059 1016.2461 1877.3679 630.4 1058.8747 1442.2203 1124.899 357.8091 627.6791 5246.8113 2126.1;
	1653.5 1050.9106 1912.2197 629.5 1053.7433 1481.8991 1196.9127 366.03 648.9199 5437.6783 2210.5825;
	1692.1294 1053.5998 1932.0034 617.4 1044.2367 1474.8857 1184.8444 371.0201 661.0133 5525.8434 2218.4;
	1679.1941 1087.3888 1955.2594 622.4047 1018.9167 1518.5906 1237.5173 373.1764 683.9175 5627.3791 2379.5341;
	1679.2117 1056.9047 1921.732 610.0708 1004.5 1456.6241 1177.7521 356.0959 678.6711 5531.5615 2200.7416;
	1653.2709 1037.7167 1879.7273 620.8897 1005.2133 1382.8195 1180.2975 358.3148 668.9929 5543.7097 2230.7114;
	1662.7856 1062.7 1867.0276 604.2987 999.2858 1414.0 1183.0958 355.5177 668.2 5668.285 2278.1225;
	1666.1165 1082.3383 1885.777 601.9937 1015.0665 1415.9092 1136.0963 359.6082 675.0347 5648.0646 2214.385;
	1667.7415 1078.7749 1868.4 594.2592 1042.4698 1432.3459 1184.37 366.7 715.9236 5579.2668 2238.8365;
	1651.8749 1060.5289 1827.5032 606.1659 1062.7 1488.7 1219.0653 367.8773 742.7217 5659.1164 2340.9888;
	1722.0446 1091.2119 1877.6757 606.4634 1112.2687 1567.8393 1277.2622 373.9 749.1986 5702.048 2403.3;
	1757.926 1093.4502 1828.7025 601.0052 1102.2016 1526.7559 1202.1545 362.537 734.2549 5614.0086 2370.6922;
	1743.0672 1063.7518 1826.138 587.5303 1047.9332 1438.3685 1138.8105 356.8 694.361 5579.2504 2310.2105;
	1701.0832 1029.4466 1782.241 565.5425 978.3657 1350.595 1058.6942 336.8364 652.6 5337.1106 2141.9679;
	1649.4301 979.7 1680.7221 540.0 924.9746 1275.999 1003.2079 302.3674 602.9191 5071.9168 1980.9609;
	1584.9 916.249 1631.4869 532.3876 828.0553 1192.8105 899.5535 273.7855 540.204 4795.7835 1740.6934;
	1556.2836 914.9065 1580.7681 537.4229 805.1487 1167.4905 883.3165 263.637 533.2008 4618.6566 1731.7375;
];