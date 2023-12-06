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
	1465.8846 952.9016 1614.6282 570.6 808.9458 1246.3477 862.9463 283.4813 526.6899 4631.5877 1723.982;
	1481.3496 959.006 1617.9579 586.0013 799.7303 1264.9463 869.5203 281.6751 521.1563 4565.5058 1718.1903;
	1467.4153 979.5777 1653.9519 582.4542 839.9 1261.3648 885.3038 279.6923 525.2198 4637.4318 1748.6054;
	1527.7657 1041.2 1765.5006 609.2 895.0054 1336.9412 926.3 303.5834 570.4 4851.3663 1849.0;
	1684.3724 1153.2 1966.0768 628.9301 1010.2 1455.9195 1014.4279 332.5803 662.663 5435.1 2101.2;
	1782.7276 1214.6291 2046.2044 656.0 1047.9 1523.9694 1078.0812 355.9 709.1383 6042.4381 2245.3677;
	1835.9 1238.9322 2050.9119 649.4778 1074.9425 1494.0074 1090.503 353.0325 749.1328 6352.3872 2261.7517;
	1840.82 1205.1 2014.3419 662.8384 1096.2 1480.2491 1088.0951 361.781 727.132 6514.0048 2189.5775;
	1865.4075 1177.0545 1989.6854 661.9304 1110.7968 1500.5812 1096.1243 377.0 716.3468 6652.4743 2289.6503;
	1868.0613 1164.432 1968.2196 656.464 1085.226 1528.2336 1049.0842 375.9149 714.4 6652.6717 2296.3021;
	1826.2034 1141.3263 1955.6111 649.5596 1057.8518 1522.1607 1028.9273 387.7528 694.8756 6540.4403 2143.5531;
	1887.3177 1159.3822 1953.3254 647.7307 1040.6 1490.2309 1058.6 400.9273 674.361 6678.6 2188.3327;
	1842.3037 1168.2 1905.525 644.0297 1006.4 1459.833 1038.9569 399.7152 667.6878 6483.2994 2123.935;
	1791.67 1168.5664 1931.9935 614.5102 1031.91 1439.3772 1067.3859 399.8399 662.9 6519.4235 2128.1715;
	1853.7281 1199.9576 1983.0105 619.9408 1067.5556 1461.3687 1079.3427 409.5509 678.2 6570.8267 2177.0637;
	1797.2 1209.8491 2023.1768 631.0885 1071.128 1490.6067 1094.9589 386.8663 684.0097 6496.8588 2197.4136;
	1774.1879 1226.1 2043.8595 637.1675 1033.7805 1519.1389 1130.1783 408.9752 709.0075 6509.9628 2374.3587;
	1796.1124 1271.047 2118.8 641.655 1062.8 1592.3152 1211.8879 428.7995 753.1 6700.3494 2568.6883;
	1872.9704 1246.0105 2122.8352 657.6282 1047.643 1561.164 1209.3186 388.3433 741.0954 6489.7356 2475.1037;
	1797.5704 1212.7129 2046.0 632.1758 1011.3 1491.691 1186.4999 384.6 716.9 6445.4418 2409.2917;
	1714.3826 1145.5 1908.0 625.6894 943.559 1368.6442 1093.3528 350.0 662.8 5929.4971 2191.9346;
	1622.0963 1093.4086 1832.986 623.8055 907.5461 1276.5462 1008.4296 311.3381 605.1759 5490.0649 1973.8201;
	1506.4372 1007.581 1676.8579 595.6434 832.7845 1239.0354 935.7 278.0107 567.055 4982.7406 1811.0095;
	1488.1081 990.5279 1706.0967 588.6055 865.4 1250.2045 925.7611 281.9149 567.589 4896.1454 1819.5;
];
