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
	1379.2219 922.3302 1615.2298 556.7707 851.7 1339.2391 932.0 347.245 546.6662 4813.9114 1811.843;
	1334.7322 892.8 1582.0904 555.6 812.0809 1284.4812 896.5885 334.6573 512.1263 4577.5 1694.3616;
	1364.8092 909.5894 1604.5366 561.544 811.3395 1305.5342 900.4141 334.198 521.5 4555.8585 1746.5676;
	1346.8252 899.233 1576.4469 559.0658 791.4763 1314.1388 901.9 320.739 511.0643 4500.4525 1720.5269;
	1365.3768 939.695 1636.8606 583.1475 846.0211 1351.92 947.3851 332.2672 540.9601 4631.2362 1812.7;
	1437.3155 967.7219 1695.894 593.6166 913.7417 1383.7143 1008.7889 365.6492 578.9683 4812.5 1912.259;
	1452.1543 1014.3197 1759.252 594.5518 959.1 1428.5695 1040.38 362.4521 605.016 5006.7 1969.793;
	1541.8734 1056.235 1809.4409 623.4652 955.6335 1474.5929 1038.3 389.4543 626.7 5193.2461 2025.685;
	1557.8725 1061.0742 1822.5 611.0 984.3632 1473.7 1023.6129 378.2936 632.2162 5234.551 2003.8242;
	1656.2331 1086.5 1823.0024 588.3913 973.847 1492.6245 1053.9684 366.9077 646.3601 5348.812 2024.2794;
	1579.051 1084.5725 1811.4546 590.6849 935.122 1488.6055 1039.5006 349.2968 653.2 5327.8764 1944.763;
	1625.7012 1063.3757 1799.3964 576.3 939.0913 1445.9737 1012.843 346.3285 638.3 5286.817 1959.6185;
	1588.2666 1046.1126 1745.6993 581.7241 954.742 1402.932 997.7192 344.5 630.3329 5131.2906 1943.0784;
	1538.9886 1053.7 1726.8426 568.5 949.4574 1432.8 1042.6701 331.7741 641.2356 5276.669 2103.4395;
	1572.4828 1096.3287 1782.5875 583.1695 971.251 1481.569 1079.7 349.5 684.1933 5444.9186 2185.4262;
	1622.7212 1135.7901 1817.5365 592.0 988.4827 1497.1 1092.0836 370.1183 681.5564 5455.1535 2195.6281;
	1615.6648 1154.2228 1869.8 578.1423 978.5658 1478.1223 1074.6809 378.2037 677.9628 5490.5357 2193.4413;
	1709.8059 1224.2895 1950.6888 582.0 1015.3415 1551.2066 1177.4 399.7 716.5978 5636.2003 2339.4324;
	1739.7019 1209.6045 1880.0322 565.7581 967.947 1500.5 1152.6668 394.2083 718.5991 5574.0212 2306.2444;
	1688.5283 1153.3005 1789.6247 563.1727 902.7593 1445.3179 1086.9376 372.1558 689.4161 5353.8294 2194.1801;
	1634.1113 1109.2634 1712.9453 561.312 888.5657 1360.5921 1007.9238 340.4668 632.0683 4924.9411 2012.8419;
	1549.9454 1026.5858 1609.0216 548.9533 818.9345 1268.926 928.4 325.1402 585.0056 4627.9763 1808.5687;
	1470.6068 953.8437 1599.5572 544.5675 810.5142 1191.4496 884.4345 357.0408 549.8855 4612.5212 1738.0393;
	1432.319 929.4 1597.3 535.3 816.4918 1197.5713 883.1 336.6749 536.0201 4557.7748 1685.0946;
];
