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
	1545.5887 988.8984 1688.0588 604.4 804.9027 1129.2743 900.1028 251.6 527.551 4649.1337 1750.2627;
	1495.3544 972.1 1674.0206 594.6454 804.5344 1124.9911 902.5642 249.3449 526.966 4553.3861 1735.3474;
	1531.5882 1001.5658 1718.1317 598.7925 795.6498 1169.684 923.4498 247.8395 541.1 4502.4239 1728.4909;
	1622.3033 1076.7716 1826.383 600.4 846.2346 1232.4202 964.9935 276.9451 575.4038 4795.1 1870.5279;
	1771.5515 1213.5587 2075.1774 629.6268 989.059 1425.1141 1087.3998 334.2 655.4 5353.8495 2129.6188;
	1864.1818 1285.1013 2165.3885 650.0788 1031.6955 1517.1 1148.2999 377.3817 717.8174 5924.8613 2336.3;
	1914.321 1288.3921 2138.6024 647.2731 1051.6774 1506.7254 1175.3878 379.023 738.3898 6203.0049 2356.9878;
	1929.0828 1294.1061 2107.9535 631.6746 1027.6442 1465.3 1152.5385 375.6797 743.3037 6492.3 2400.6717;
	1897.1369 1270.595 2081.9324 625.3033 1037.5632 1407.0582 1141.3257 381.0572 730.0414 6407.7943 2309.5489;
	1851.4999 1268.4836 2065.5963 612.6132 1056.349 1397.3007 1142.2 363.9791 705.7 6300.9804 2256.6085;
	1854.0867 1273.6656 2092.6189 591.1134 1034.7 1383.261 1136.071 347.4069 701.1897 6401.5345 2216.797;
	1826.7727 1276.3738 2076.6656 593.0 1029.9 1385.1399 1166.7 359.9 691.3 6444.2662 2244.0836;
	1839.0836 1273.0683 2051.0592 589.9131 1015.2578 1320.8378 1115.0 369.7949 694.8901 6397.8375 2222.5078;
	1826.5352 1263.2566 2050.8663 605.1 1021.18 1338.9798 1108.7426 372.865 707.3626 6426.4155 2193.0502;
	1830.9542 1253.5687 2065.126 604.1561 1033.463 1348.0803 1099.7475 363.9509 710.565 6353.5674 2185.7912;
	1854.7764 1258.4279 2043.7678 611.8126 1024.3118 1364.319 1123.6 372.4814 724.3782 6425.1814 2248.574;
	1848.9815 1253.0476 2058.6213 606.8186 1045.2819 1393.5228 1141.0269 392.3467 740.1967 6250.2997 2296.151;
	1848.873 1286.7928 2065.1948 610.6689 1045.9 1472.7686 1190.6316 394.8 755.6511 6299.8754 2449.225;
	1885.1 1262.2061 2022.1 605.5791 1049.4959 1466.6772 1163.4952 400.4717 744.8209 6148.2757 2437.3167;
	1836.4517 1203.4 1936.8683 604.6006 1001.152 1382.4657 1126.1116 382.1 716.5361 5975.3 2366.6542;
	1775.4788 1166.3162 1856.7223 578.5202 944.3512 1314.3338 1081.8185 346.6068 670.4 5721.0717 2240.1132;
	1676.3275 1069.5515 1738.3499 582.3106 870.551 1199.6 976.4143 307.4514 597.81 5244.2667 1997.2355;
	1556.9425 1016.7901 1717.14 581.2686 850.2294 1162.05 897.7015 268.0175 530.315 4882.0614 1799.7742;
	1494.2246 978.0 1648.5919 578.9148 863.932 1107.2185 863.7847 253.4 532.8232 4688.7544 1740.6473;
];