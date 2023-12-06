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
	1498.5747 910.8011 1499.5915 462.5936 696.4733 1062.4163 818.4486 221.2768 457.7718 4276.7421 1632.3;
	1459.9 894.965 1481.1804 474.474 704.5514 1031.5 792.3697 202.6462 443.0493 4067.3301 1575.6336;
	1489.1465 907.4496 1522.8261 496.36 733.053 1054.4793 807.6 214.6001 473.7 4191.8369 1608.5117;
	1577.5688 964.5939 1606.328 510.269 773.6 1106.343 844.3839 228.0934 476.2135 4309.6145 1701.2047;
	1722.756 1082.287 1794.5989 517.0733 870.3414 1271.5212 978.3 265.7674 568.1681 4995.3862 1991.5693;
	1828.4697 1178.0458 1933.9192 548.6138 930.9912 1367.1768 1015.3038 256.27 615.0596 5542.8021 2130.3215;
	1863.5122 1192.2674 1959.4852 541.3487 957.7649 1385.7111 1046.0472 293.4579 673.6325 5843.1653 2239.9636;
	1849.9934 1173.8382 1987.2376 546.8 927.2813 1323.4134 1037.9131 268.3613 685.7399 5920.0484 2209.9728;
	1876.0 1212.9925 2016.883 544.4381 964.0916 1326.7005 1100.4115 292.745 702.7277 6130.0684 2323.9938;
	1906.4718 1206.2941 2012.4529 537.5 956.9748 1355.8599 1127.0326 317.5329 717.1762 6113.3222 2453.0921;
	1887.3576 1206.7582 2009.1474 523.4413 973.0549 1363.4706 1114.9 294.9003 697.0 6051.993 2466.1788;
	1893.7341 1197.9 1975.9311 523.8223 974.853 1315.1354 1088.0378 277.7657 688.6888 6049.4186 2388.0277;
	1812.5731 1167.0547 1924.0207 525.6833 950.0526 1261.881 1069.4604 270.8119 668.6767 5924.3444 2307.7402;
	1770.3 1157.7161 1898.0055 524.6 934.7 1241.0987 1037.075 281.3 641.9298 5901.967 2202.9896;
	1757.0464 1143.6112 1896.3226 536.9323 925.5588 1258.3545 1021.8709 284.3257 621.7922 5948.7492 2252.0748;
	1737.4102 1144.1009 1928.2684 539.6249 944.2226 1307.8245 1020.2469 305.4 636.8713 5932.1525 2252.9812;
	1794.9767 1186.2054 1946.3571 550.0547 962.983 1342.109 1037.9745 311.6 614.8 5814.3642 2333.8138;
	1929.6444 1238.8126 2034.7407 553.6666 1029.1212 1459.4107 1119.8112 322.0667 655.3412 5924.4177 2586.7127;
	1907.1625 1243.3621 1980.9991 560.4435 997.6872 1427.4525 1102.1382 340.6174 638.5673 5756.8199 2545.8813;
	1835.1756 1171.4504 1893.7309 540.9209 958.7091 1361.6089 1066.0605 324.2316 616.945 5558.1928 2368.6685;
	1761.9 1110.5753 1800.398 527.0 856.3 1270.7426 1002.4 303.2421 586.9443 5370.5068 2264.6264;
	1672.5369 1042.3492 1718.5392 507.0389 823.8343 1163.1534 900.1635 267.2564 527.2022 5007.3154 2041.447;
	1639.8199 959.145 1588.0 515.4262 744.1174 1134.5897 875.6 261.1 529.4015 4745.7655 1922.7839;
	1601.2861 891.3333 1528.8484 510.8548 712.177 1085.3509 835.9 257.2214 483.4864 4444.2967 1764.2486;
];