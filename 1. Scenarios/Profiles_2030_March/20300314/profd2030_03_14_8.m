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
	1541.5682 975.2635 1570.5485 562.0746 797.2 1269.9277 896.3868 234.0 523.7985 4504.0054 1754.9105;
	1525.4 961.8216 1570.4167 554.5 769.6981 1212.4136 847.7 223.2058 510.3959 4414.7523 1705.5071;
	1568.9662 1021.9721 1596.6524 562.2 776.4554 1259.6369 866.2818 223.8592 521.0605 4425.8233 1728.7719;
	1635.2701 1041.5899 1668.6689 565.3382 830.1411 1265.7967 910.7679 242.8318 551.1267 4636.7898 1852.0;
	1764.872 1160.3744 1855.6579 579.3157 936.0046 1384.3 991.0222 267.7922 625.5757 5116.5195 2072.2717;
	1834.1366 1244.1 1968.8387 599.6084 987.9985 1473.3 1054.8 268.3173 688.6873 5571.3468 2202.4;
	1846.7696 1242.7741 1939.0531 578.6198 986.1697 1469.4763 1058.3 267.3283 700.0 5901.2124 2248.7936;
	1825.8506 1266.8237 1953.3711 577.6749 989.6732 1452.7 1050.6095 307.8416 694.1943 6125.7115 2225.1246;
	1839.8101 1280.9038 1958.8015 568.9708 988.3756 1487.7624 1069.4417 341.8564 685.4662 6232.7419 2242.9311;
	1840.9103 1301.6581 1962.221 570.5797 961.336 1524.463 1072.4135 340.3571 669.434 6097.3141 2120.3;
	1835.4192 1336.4489 1979.4242 563.5 964.2525 1548.502 1046.6048 337.6533 683.6 6176.6699 2142.98;
	1815.8506 1307.1558 1949.1719 566.8215 925.1957 1538.5975 1075.943 350.37 666.4466 6192.5849 2175.0399;
	1731.8 1277.1598 1901.7025 554.6137 910.604 1517.1235 1089.7676 349.3765 666.1529 6091.9306 2119.1;
	1667.3517 1235.7336 1849.2321 561.5163 893.9882 1514.0588 1061.8063 344.87 649.5 6036.5518 2067.9428;
	1712.1009 1251.304 1865.5921 547.0 938.1087 1499.6 1068.1128 343.0505 658.4039 6057.6815 2103.3073;
	1753.5898 1266.2617 1872.6905 548.5306 973.6566 1526.2491 1095.2327 374.924 656.1496 6129.897 2205.9997;
	1650.409 1208.8723 1846.1571 545.5214 995.2655 1539.6291 1104.6033 361.5342 638.5002 6101.1061 2230.5608;
	1698.2513 1244.7965 1899.5271 562.0057 1030.2 1571.0229 1142.5789 377.169 691.5361 6132.0966 2349.8155;
	1745.7486 1256.0462 1910.1 557.7 1017.8213 1573.2445 1164.1638 390.9372 706.0563 6095.9341 2378.4546;
	1732.0428 1231.1074 1871.5638 549.2 988.2108 1496.9992 1145.0613 387.3838 690.688 5951.6963 2331.0044;
	1624.8711 1095.3098 1722.5 538.3721 917.7689 1374.0812 1038.3961 327.8393 639.3576 5547.0 2138.0731;
	1561.0531 1008.8088 1614.439 532.3409 852.0047 1240.0687 930.5 282.954 569.4947 5037.6099 1952.0772;
	1457.3747 945.7707 1552.6469 537.4493 788.8427 1179.6112 890.4665 262.1793 535.9 4783.0755 1992.6703;
	1457.3637 901.9 1509.0155 537.2 749.2785 1151.1612 840.9657 232.6155 510.8593 4479.5396 1774.7342;
];
