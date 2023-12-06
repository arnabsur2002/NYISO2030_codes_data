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
	1394.4395 873.8146 1570.4693 587.2068 765.774 1044.3331 831.2239 257.8607 454.5007 4411.1659 1607.9539;
	1416.184 906.9793 1569.0247 576.9238 748.0905 1027.3688 817.8438 271.361 446.8 4341.8492 1616.4;
	1425.3041 915.3488 1603.0 581.1286 782.0675 1065.0236 836.3987 271.662 473.0922 4442.6625 1670.5518;
	1503.1401 991.214 1702.986 591.7 809.1386 1143.5046 900.6 296.3 528.1087 4699.7006 1794.0047;
	1672.0667 1109.2433 1899.3 611.6689 915.1127 1270.6099 1000.2998 338.0 608.6231 5241.7559 2044.3581;
	1772.0792 1207.8 2007.9784 621.2694 1005.2691 1301.3212 1038.078 361.9 642.1273 5785.5431 2152.8256;
	1782.3267 1197.1 2000.2559 592.0667 980.775 1327.7902 1057.6702 364.8781 646.9 6089.7262 2209.9354;
	1786.7509 1199.2 1951.3015 580.5 1021.134 1332.7437 1098.7204 362.072 662.943 6326.9119 2220.0661;
	1825.1485 1217.8 1949.2627 585.8366 984.8889 1335.1268 1110.2448 351.8 674.5545 6485.352 2257.695;
	1783.6756 1216.7318 1959.0 588.6943 1005.8376 1327.3625 1097.5 346.7362 665.3494 6496.9 2233.749;
	1809.4542 1249.6881 1967.3801 602.1 965.5874 1269.4693 1131.2444 348.8001 669.0 6567.112 2257.7078;
	1745.8287 1236.1013 1930.1939 604.0205 965.8975 1256.4693 1104.1098 340.7958 650.165 6500.8199 2175.0404;
	1773.2013 1232.5487 1907.0 599.0122 941.7957 1278.1817 1110.8165 334.6606 669.2047 6389.1561 2139.468;
	1678.6023 1233.8395 1903.8022 605.5075 945.0132 1280.728 1110.6 334.7472 685.4274 6438.5019 2269.0976;
	1724.5717 1227.1037 1886.474 609.7 933.3194 1278.5953 1114.9382 333.4984 685.1865 6345.274 2190.7797;
	1773.064 1267.7476 1981.903 609.6429 934.4255 1227.6301 1122.8449 339.7149 691.2819 6319.4714 2262.2606;
	1708.0092 1256.2192 1966.8455 617.1229 960.7861 1290.7194 1136.0763 369.3471 719.8 6270.1437 2344.8684;
	1809.5306 1288.5841 2017.8986 622.1835 991.0109 1425.7825 1196.6846 365.3 747.2047 6272.1739 2408.2477;
	1864.4777 1273.5838 1998.2434 620.6 979.0609 1415.3047 1219.5539 391.3406 772.2094 6250.0093 2458.1725;
	1809.24 1197.7 1914.5428 609.5728 933.7424 1347.0856 1135.3662 358.9 722.9513 5921.4934 2253.163;
	1774.01 1139.8066 1828.8758 596.3622 854.1009 1259.1268 1064.2982 330.3476 650.7815 5578.2357 2033.8055;
	1702.5472 1100.1749 1743.2009 576.4665 807.8058 1188.0101 997.1506 307.9068 613.5172 5245.8739 1932.5133;
	1575.5804 1013.3345 1697.343 592.7868 780.4453 1146.0877 931.7815 292.2661 582.5357 5250.0486 1882.0479;
	1551.9 964.1628 1645.2828 598.5563 724.1238 1126.9336 870.965 256.4 536.4089 4684.3935 1753.3825;
];
