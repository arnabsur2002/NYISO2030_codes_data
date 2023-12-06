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
	1539.4694 956.4379 1648.8922 540.2 834.817 1104.7593 862.8274 286.1075 499.9796 4430.8245 1647.0;
	1519.7956 937.4539 1619.9148 538.8 815.111 1073.8743 842.5 278.3927 475.9851 4344.8464 1610.9109;
	1534.6966 959.9 1672.2732 545.9375 836.9468 1119.52 865.4894 279.6761 477.4068 4380.4828 1634.6356;
	1598.2871 1021.8 1747.2399 573.7947 884.892 1192.9452 920.4 306.428 524.7309 4662.6044 1744.5383;
	1738.6 1144.4406 1928.0913 594.3351 1009.6 1326.4478 1011.3 345.3254 592.2327 5153.2096 1971.3;
	1850.0 1220.6867 2056.9652 614.4087 1101.5913 1432.6 1077.8549 346.4948 656.2 5688.6005 2104.7192;
	1894.0591 1235.4073 2040.3609 617.7 1109.5376 1418.178 1090.1681 352.971 689.3875 5984.5563 2201.045;
	1904.191 1281.406 2075.7122 591.2 1119.8338 1446.6945 1128.8 357.8247 701.8703 6387.8913 2257.5598;
	1930.8542 1268.5552 2108.4872 601.6322 1112.5454 1457.6708 1131.6 337.4812 703.7841 6465.7545 2229.9878;
	1922.3961 1267.9833 2120.5634 601.3301 1138.9372 1495.3 1124.3098 346.488 742.2426 6541.9014 2254.5718;
	1879.1105 1242.8173 2111.6566 617.2 1117.3473 1503.2385 1125.4 325.189 748.8507 6440.3081 2273.3229;
	1894.3 1259.0035 2076.3561 607.1708 1106.1526 1487.1586 1112.9404 322.4253 727.545 6382.646 2220.9603;
	1846.8599 1208.8643 2042.0127 601.7791 1068.2466 1426.3148 1051.9728 319.5903 721.3138 6305.4398 2117.9047;
	1791.8994 1209.5586 2008.0576 584.2577 1045.2171 1400.0646 1048.3566 322.1486 699.0063 6284.4 2104.6133;
	1834.6 1221.8308 1992.7103 580.0 1030.5499 1395.2257 1040.5275 328.1468 686.4759 6341.5739 2144.8135;
	1847.7443 1247.0485 2080.4413 585.0286 1067.0642 1452.9863 1101.4 345.2626 734.9955 6435.4 2319.7179;
	1805.9446 1234.1 2061.1353 613.097 1087.6 1463.2988 1093.3532 343.6542 710.4 6233.0267 2346.8292;
	1886.0765 1283.8919 2161.4562 625.6 1109.0 1531.3852 1149.1 374.5 709.1 6287.4999 2458.8549;
	1896.5086 1291.0 2154.4735 623.0291 1109.8174 1516.1684 1165.2768 383.1896 725.9512 6205.3709 2437.1403;
	1854.6 1224.2362 2030.4 603.005 1040.5174 1407.8459 1100.9677 371.577 701.3755 6098.0348 2322.5261;
	1756.203 1136.9248 1944.3771 590.9941 977.9331 1308.2 1030.9615 347.5284 650.2 5694.9944 2136.3711;
	1680.1887 1050.9324 1788.984 573.4 891.8352 1232.7 962.4608 310.8 590.6611 5334.6909 1968.8936;
	1572.0835 966.3525 1692.0641 546.1319 887.7 1173.2462 914.0442 293.226 522.9241 4920.3749 1874.8155;
	1526.364 928.0627 1643.7029 537.8603 869.7629 1113.7473 882.5964 283.5631 509.849 4624.8 1785.3375;
];
