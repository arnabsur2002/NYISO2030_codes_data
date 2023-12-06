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
	1472.4126 941.4227 1564.1 494.6503 792.8438 1068.0202 874.9 266.7859 513.0 4344.652 1700.8;
	1418.2865 912.1225 1551.0265 486.1032 778.3526 1071.6826 855.1 253.1 497.531 4240.4882 1674.4468;
	1411.5043 918.1888 1560.7137 529.6381 794.8189 1081.2674 858.1 256.8184 497.4142 4278.3222 1711.2138;
	1468.3118 991.6991 1668.6 529.3217 848.664 1179.3087 906.9 263.3 517.1715 4348.4836 1798.7663;
	1617.2188 1116.9125 1849.1466 541.9294 977.4086 1334.6186 1017.495 305.5 583.2773 4976.8422 2029.7;
	1802.9167 1216.5683 1963.2308 543.9864 1016.903 1438.3 1086.6414 337.3 654.0363 5430.2668 2200.4028;
	1826.4981 1230.5 1984.0 543.4012 1017.1049 1448.5 1103.807 334.9162 670.6953 5966.3468 2188.0046;
	1826.2585 1218.2092 1973.4165 550.354 972.2578 1438.1 1108.8411 325.8194 689.8468 6211.8931 2153.1023;
	1885.2 1208.157 1954.955 548.7901 965.8436 1427.9382 1103.589 307.6692 693.4253 6253.6254 2018.2531;
	1853.2689 1219.8094 1954.8076 537.0241 940.1616 1397.1311 1105.1747 309.6648 691.2185 6362.9493 1969.1586;
	1818.9435 1205.1423 1905.3287 528.9203 895.951 1378.4236 1118.2879 300.3754 685.5546 6368.5296 2093.7653;
	1817.5508 1217.4316 1898.9 522.9527 894.6 1349.2432 1118.1806 311.1179 677.0 6359.166 2110.6551;
	1721.8798 1168.5008 1808.8439 510.8902 849.7219 1311.7728 1087.4374 324.5825 679.8396 6394.8443 2053.5575;
	1741.3526 1208.4624 1831.652 477.5626 872.3331 1293.8486 1070.9601 324.8872 705.8 6351.0822 2155.649;
	1658.7499 1178.4398 1792.6758 487.7917 880.3449 1275.3746 1052.4851 338.6564 681.4 6289.2382 2141.0189;
	1580.0992 1157.9156 1795.2685 513.58 872.4757 1316.7539 1095.2141 348.4 694.5605 6190.0364 2187.9479;
	1613.8142 1155.5308 1785.6031 536.6165 907.3079 1398.9651 1123.7 350.6893 705.0474 6080.4835 2273.5441;
	1650.0179 1201.6 1864.9456 528.7914 948.1901 1454.5886 1209.9721 405.4733 736.6067 6239.9765 2393.4314;
	1676.7067 1190.716 1838.6429 526.1587 896.7855 1419.6869 1150.458 375.0 713.6856 6119.5105 2353.8155;
	1634.0253 1126.6 1778.9273 489.5162 848.0119 1344.6583 1111.0837 362.9992 687.6295 5922.07 2311.0104;
	1597.81 1051.1472 1665.5714 466.7351 797.9794 1241.787 1031.5868 321.9732 639.3 5572.7087 2145.4374;
	1515.4472 985.1411 1591.8965 506.958 791.398 1169.9121 954.4061 290.769 576.2 5244.012 1966.9028;
	1434.6251 905.4494 1519.5922 479.4236 732.7682 1123.1 898.6333 258.9589 533.2179 4711.8447 1869.5304;
	1382.6753 873.2624 1489.5208 472.6303 693.2562 1073.1 835.7 241.1015 498.3701 4425.2283 1709.501;
];