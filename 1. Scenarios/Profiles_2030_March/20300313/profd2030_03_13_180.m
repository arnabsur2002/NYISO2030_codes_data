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
	1507.7617 930.6834 1626.429 549.764 866.2264 1208.2688 918.001 277.0749 523.2537 4230.9523 1759.5;
	1533.7683 933.2 1614.4594 536.4269 855.2125 1209.9519 920.3357 273.8 515.5183 4220.7412 1742.8;
	1572.4 973.3688 1676.2253 554.9 897.0745 1259.9117 932.2735 278.8191 536.252 4394.3021 1779.7;
	1629.6378 1035.1 1767.8489 579.0 921.0168 1309.205 965.6936 291.5 570.783 4435.1828 1880.3817;
	1783.9624 1148.0839 1953.2401 581.172 1024.1761 1464.3565 1068.7 336.4575 666.9819 5173.3876 2133.2584;
	1905.0164 1227.779 2078.7743 602.4783 1067.6075 1546.2 1136.173 374.9 757.2848 5922.7986 2343.6127;
	1995.0051 1249.9 2065.0 606.3 1054.0212 1532.0111 1150.0787 386.8438 763.9573 6250.6627 2427.4102;
	1976.2664 1247.7303 2031.0585 595.6133 1049.6539 1486.4 1081.7138 368.3411 751.2248 6431.5187 2310.28;
	2000.1431 1262.1 2032.637 616.3 1023.1 1483.7141 1090.301 371.1 729.6943 6396.863 2333.287;
	1987.3416 1271.1008 2043.1393 600.4 985.5844 1471.0203 1053.9185 355.1 730.1739 6456.2591 2336.8485;
	2036.7094 1250.9637 2000.2437 595.2415 992.005 1462.7539 1020.005 353.666 726.5643 6424.3817 2301.0772;
	1959.4095 1244.6078 2020.8923 604.7574 1008.9 1434.6 1029.9328 367.7184 720.1596 6446.2123 2354.6658;
	1959.1649 1262.1262 1993.9726 601.9155 997.7356 1426.5968 1022.169 345.1092 717.633 6307.4758 2299.8361;
	1942.5704 1301.5297 2009.2737 591.3167 985.5771 1403.5122 1018.3 352.5871 706.0261 6254.1467 2288.7105;
	1861.7151 1250.3839 2008.624 600.6004 980.2559 1406.1443 1015.2 329.5096 716.7549 6206.141 2249.6873;
	1832.2308 1265.6662 2036.1619 606.8 1013.2743 1445.2543 1048.4734 331.1 714.5644 6323.8829 2416.8025;
	1804.1912 1270.8009 1997.6267 604.6 1073.5495 1536.2879 1091.1093 345.1424 718.2012 6326.9879 2517.5156;
	1794.8977 1240.8 2002.4354 613.1856 1105.218 1559.6476 1160.9955 355.3089 776.0642 6418.6969 2753.9855;
	1833.3394 1237.6007 1977.3805 611.8979 1078.6282 1535.9218 1142.5719 369.0 741.2099 6254.1755 2608.75;
	1814.8 1190.9602 1925.4704 600.4873 1046.8292 1455.9334 1109.3155 349.8645 727.9672 6081.191 2566.8307;
	1729.1305 1110.7 1824.1853 579.0 959.3135 1345.9162 1000.749 322.9819 663.9935 5700.3085 2227.4102;
	1603.1595 1039.4446 1712.8614 577.4 923.0091 1244.0411 928.4 288.0714 597.8089 5232.0052 2010.3836;
	1528.6851 948.669 1624.8 544.5 831.4693 1146.2 863.2288 251.0471 548.5766 4748.5547 1801.0762;
	1487.9 922.9933 1610.3011 537.4069 846.9 1140.2044 864.7747 246.7176 544.5525 4613.0047 1716.6394;
];