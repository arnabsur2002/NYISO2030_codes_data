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
	1561.9064 968.5059 1616.2602 557.7549 855.5901 1137.9 848.5907 312.0855 491.4139 4523.6883 1716.7548;
	1562.2479 984.4 1642.5 573.6519 878.1818 1155.362 876.0796 315.5527 507.2802 4514.5099 1744.9;
	1533.1326 998.6 1659.494 583.747 870.2919 1154.36 878.7988 298.3 503.575 4451.3 1738.2218;
	1626.5989 1077.0008 1756.4019 607.9425 916.5806 1215.5834 927.316 333.3036 556.0706 4710.445 1859.9343;
	1788.9635 1211.5351 2000.6363 641.0933 1069.6145 1372.3577 1032.1316 369.3045 625.1253 5227.5665 2111.5162;
	1870.0363 1282.9314 2079.8628 643.0 1116.8881 1450.3392 1121.8 396.2644 701.6407 5865.5598 2271.7252;
	1852.2513 1266.8319 2089.1583 635.7757 1118.3005 1441.0986 1166.4458 385.7276 701.5 6150.7237 2310.5045;
	1819.8 1259.8 2102.0109 629.9879 1112.6916 1444.4862 1212.0749 408.3689 716.7626 6396.4958 2292.6863;
	1857.685 1272.6133 2126.2 629.3 1113.504 1470.2048 1271.9012 406.1168 737.2027 6573.3001 2344.4602;
	1893.3335 1267.1428 2114.5585 625.9 1119.7 1452.8425 1277.8689 392.4175 740.8469 6628.2561 2518.2507;
	1923.1642 1262.5771 2114.2557 627.9864 1090.4 1371.1314 1218.2959 390.9681 736.3794 6617.6217 2396.8174;
	1898.5 1227.3902 2060.7 592.2905 1040.5141 1369.0711 1237.6616 383.9316 721.7298 6519.5338 2292.8158;
	1868.7543 1212.4047 2032.0709 589.2173 1002.9801 1339.5175 1165.9095 383.9 748.1485 6589.0852 2231.5111;
	1864.6942 1226.1508 2017.4 599.2085 997.9766 1353.1571 1140.2569 380.6072 753.7929 6544.6986 2290.8579;
	1901.5305 1250.8701 2024.2 617.4767 1001.5938 1380.0036 1159.1279 378.7988 774.9771 6591.7151 2315.2641;
	1904.2303 1275.4345 2056.4633 631.7826 1015.9837 1410.5886 1208.6948 391.6902 785.8269 6558.5069 2410.0883;
	1856.5037 1275.5323 2052.6661 625.6618 1028.4484 1445.99 1253.5362 409.4735 817.5165 6427.0404 2512.0884;
	1914.5096 1302.3674 2080.3003 647.6518 1047.9331 1518.0893 1256.0933 447.6077 823.0002 6357.3552 2608.2104;
	1936.9504 1322.4998 2087.055 638.0294 1025.8696 1504.8264 1291.3455 423.0649 806.2 6313.6656 2617.3852;
	1902.9999 1270.3666 2006.8362 629.2 986.5859 1458.8299 1221.7829 398.2258 736.0509 6031.2216 2456.7668;
	1802.2267 1169.1848 1906.9703 608.3368 925.5231 1338.8044 1130.3 360.1 678.4 5725.7667 2263.458;
	1681.1932 1090.915 1740.5645 579.1567 837.2831 1264.2115 1091.5071 331.1531 647.2055 5374.3992 2048.6674;
	1620.6417 1036.2749 1635.7753 583.3331 795.3268 1195.8685 1003.5 293.1352 582.4198 4903.7887 1871.8;
	1580.3603 981.7 1606.7649 585.4675 798.1652 1144.3152 930.8456 269.5932 555.4 4639.2763 1767.263;
];