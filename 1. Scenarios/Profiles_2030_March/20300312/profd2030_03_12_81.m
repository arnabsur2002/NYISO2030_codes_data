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
	1579.7 990.1938 1719.2 493.5992 814.5023 1118.3426 929.5013 271.7249 557.5429 4487.5258 1681.0357;
	1597.5403 1009.427 1752.409 522.435 819.7444 1137.504 930.3728 273.6354 548.2651 4491.7284 1687.9957;
	1606.7828 1029.442 1778.765 517.0666 830.0827 1131.824 928.6861 261.9 552.7175 4451.529 1679.4827;
	1690.3581 1083.0378 1902.2959 558.4403 900.1975 1228.8825 990.5236 298.4068 566.4881 4747.1374 1811.3593;
	1819.8211 1198.8533 2109.4186 584.4165 1030.4699 1396.8 1096.0326 347.7076 653.314 5281.4502 2057.5418;
	1903.3 1258.9 2228.0 605.9768 1109.2159 1478.6 1153.2176 356.8 715.2016 5727.7045 2192.3035;
	1952.5753 1252.3374 2224.829 599.7284 1095.0855 1455.1 1174.3 366.0547 735.9323 5978.0132 2235.7398;
	1939.4021 1243.4561 2134.0931 561.3787 1096.2794 1409.5 1156.3927 355.3999 729.8 6072.1826 2146.3426;
	1954.1289 1224.0511 2084.731 587.3821 1096.2 1383.7327 1177.6565 340.7032 719.8 6289.9026 2117.4244;
	1946.1198 1234.9308 2089.755 583.2257 1098.7156 1394.4714 1191.0711 335.5479 694.8227 6417.5819 2232.5157;
	1893.4607 1191.7 2051.1782 574.903 1074.9392 1383.1 1169.5045 331.9932 698.376 6314.8095 2117.8513;
	1976.1809 1223.1 2124.8011 558.0826 1081.4597 1453.0362 1225.9631 350.7 694.2134 6318.8919 2242.7;
	1938.9632 1212.2 2060.8726 528.3226 1048.1063 1408.6441 1267.4794 356.354 710.0135 6440.9614 2328.0347;
	1885.5632 1189.8119 2040.8339 539.7028 1048.1729 1352.5059 1191.2893 352.795 702.7474 6437.0403 2275.0653;
	1857.0 1200.319 2076.5618 529.4909 1072.0632 1368.1146 1160.5677 353.1 693.177 6405.1958 2247.36;
	1862.7201 1217.4 2085.3319 528.8235 1100.5063 1454.155 1151.4991 353.0 701.1124 6320.2744 2220.3358;
	1848.4505 1241.3975 2143.6543 569.4915 1126.5714 1536.1511 1149.2465 349.9027 705.0466 6103.4084 2310.2552;
	1909.133 1273.2 2165.702 566.9323 1151.4041 1561.5 1189.9661 380.337 743.7 6107.7076 2406.6644;
	1925.9102 1271.6105 2203.3675 548.167 1157.5889 1520.6253 1183.7449 348.9561 734.2941 5917.2423 2402.5512;
	1878.9671 1233.2402 2099.5 569.0102 1103.5855 1464.8199 1145.5888 340.2628 704.8012 5745.5241 2273.7751;
	1762.4003 1139.9203 1964.1593 525.1128 1018.316 1353.9158 1055.9 325.227 663.4463 5583.4351 2124.3918;
	1660.977 1073.7934 1856.087 533.5757 952.5127 1282.0839 999.4417 291.5 601.6551 5168.0946 1909.1496;
	1567.328 1022.3 1790.3489 482.3879 896.8097 1196.861 959.2977 271.5389 575.0258 4944.2769 1857.8501;
	1535.2531 1009.152 1749.0171 490.6038 869.2964 1153.8319 941.8197 274.7725 569.2868 4767.7422 1803.4;
];