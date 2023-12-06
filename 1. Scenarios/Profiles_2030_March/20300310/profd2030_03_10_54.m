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
	1539.9213 941.1054 1622.0084 566.7 831.1458 1218.8 913.3 285.5 531.5703 4865.5142 1819.0;
	1496.0049 910.7159 1591.0491 560.9 806.0032 1208.9298 877.2 276.0 502.412 4619.7107 1745.1676;
	1493.4421 908.2395 1596.9652 557.7004 788.6368 1194.8919 885.5 272.7098 493.8808 4572.8509 1740.7;
	1486.0742 925.8839 1619.4608 572.2538 825.1674 1220.6129 910.6044 263.3 530.7 4629.7406 1757.5069;
	1499.3889 957.4564 1649.5365 578.9 848.4101 1220.3544 925.0117 276.5078 541.2913 4667.6885 1770.5973;
	1606.7297 1021.1 1766.8 602.5011 942.6204 1301.1693 984.6283 296.3275 571.575 4901.1994 1934.5236;
	1627.1817 1046.5283 1819.6216 610.1072 1009.7885 1366.199 1040.5985 313.0733 593.0663 5112.4306 2015.2751;
	1652.7079 1065.6906 1863.6838 598.8 1033.0 1379.035 1082.5293 302.2 603.5162 5217.3 1983.9089;
	1715.6834 1090.9683 1978.1172 595.5064 1063.2568 1419.9614 1136.6801 345.2768 637.5199 5478.932 2051.3934;
	1744.0445 1099.1537 2013.2376 589.5899 1051.1059 1508.1786 1151.8268 354.4379 629.6796 5541.4983 1949.5024;
	1758.1812 1114.318 2005.205 587.3 1041.3 1511.0577 1166.1614 348.8234 639.2763 5507.2338 1945.6606;
	1771.3387 1122.1972 1975.3348 590.6367 1015.7 1533.5941 1183.4788 348.387 644.8 5459.7509 1950.1;
	1790.5762 1097.3226 1943.5792 595.5896 1005.8693 1490.0522 1160.3444 318.6023 636.3562 5348.3327 1899.4064;
	1799.8893 1118.8 2003.5323 579.1442 1034.1282 1482.5883 1139.6367 317.9517 649.1006 5348.7415 1899.7625;
	1774.3184 1111.7 1976.7375 583.839 1018.283 1471.7668 1137.1323 299.2582 656.627 5350.6458 1965.2161;
	1785.3 1133.1042 2005.1399 616.142 1026.2379 1496.475 1168.2901 313.8238 662.1042 5489.5747 2081.6052;
	1805.7264 1154.3293 1954.9895 618.3209 1029.824 1543.807 1131.0436 321.6071 657.5 5468.1694 2162.963;
	1816.3302 1167.5722 2001.8223 632.4165 1051.0 1577.7596 1198.2682 353.7622 687.1344 5575.9647 2329.1879;
	1823.2956 1164.0614 1983.6886 627.8 1061.9535 1577.2507 1162.9544 332.6454 696.3402 5567.919 2291.538;
	1801.4848 1109.6884 1899.411 609.6998 1010.2321 1471.3631 1129.784 334.2741 653.3 5399.1582 2206.6022;
	1741.1838 1072.3975 1848.8652 594.6833 960.7261 1404.5342 1069.4045 308.2 643.6437 5321.1865 2114.3751;
	1604.1 984.6424 1728.4583 555.426 874.5324 1296.4834 979.0167 290.5307 594.8578 4998.9074 1908.6;
	1467.5919 912.9324 1605.6144 546.3 772.3014 1159.4853 891.6597 263.6306 542.2792 4707.6124 1747.2;
	1461.3064 852.1306 1591.7086 551.6 773.5 1132.2007 873.4341 265.4 535.8933 4580.6799 1681.2262;
];