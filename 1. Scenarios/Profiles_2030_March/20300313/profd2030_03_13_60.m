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
	1577.509 974.965 1710.6063 590.8599 860.6549 1179.5042 909.791 279.3539 491.0152 4625.368 1728.0903;
	1573.3296 965.6341 1717.5843 601.7 857.9212 1188.5367 901.7517 272.7348 483.9118 4561.2556 1721.0727;
	1567.6009 999.4 1753.8045 595.4 858.0316 1238.713 924.7 267.5593 502.0444 4620.0322 1736.8717;
	1667.9088 1049.263 1842.3533 603.025 912.7172 1293.84 974.3748 302.0958 522.6162 4761.0097 1831.4;
	1801.0366 1182.4562 2023.9191 618.5508 1024.402 1451.8208 1084.5 344.5606 632.7 5386.7025 2105.5295;
	1885.8477 1264.9872 2107.4997 633.6 1067.4579 1514.6166 1133.3152 374.5688 690.7791 5971.5845 2251.6998;
	1902.9274 1254.0321 2094.3795 611.8066 1096.9908 1500.5781 1121.7367 371.4674 699.6841 6257.761 2226.4389;
	1898.5564 1227.2663 2070.727 584.3519 1073.7 1482.2 1082.7499 367.4 671.1775 6459.5227 2190.0838;
	1853.4722 1223.6202 2057.326 582.4903 1056.2597 1399.7346 1024.179 361.1104 655.9535 6486.9042 2078.1663;
	1874.2076 1228.3 2037.7688 599.5 1026.4812 1395.8902 1058.3328 347.4999 670.1332 6527.2043 2028.2549;
	1832.4323 1240.5844 2029.1077 573.712 1030.4 1374.5661 1050.8809 369.8726 667.7421 6522.684 2017.7292;
	1841.8368 1225.5142 2006.109 559.7297 1035.7962 1347.1 1052.6789 343.2 662.195 6500.1 2008.168;
	1832.6829 1211.6014 1979.8583 551.1155 989.8587 1340.7062 1027.2127 330.0514 657.1153 6338.008 2002.357;
	1787.0899 1211.6722 1985.3871 567.1648 987.1412 1296.1624 1023.9809 313.8248 648.0759 6362.6522 1970.4663;
	1781.5512 1232.4573 2040.8022 574.7627 1013.2905 1378.8868 1040.4022 343.3 660.6748 6349.0361 2102.8449;
	1791.8408 1267.545 2071.8124 589.8768 1005.2048 1441.395 1086.4729 361.2804 678.6126 6346.5452 2241.1232;
	1778.1541 1269.1679 2111.7343 573.6811 1037.8845 1422.2404 1122.7858 368.6 687.1612 6273.5976 2338.9244;
	1801.8634 1297.4516 2153.1373 581.5 1086.4318 1500.6577 1223.8853 407.0863 747.8466 6368.9548 2476.1522;
	1906.3 1298.5852 2132.4241 598.0729 1078.3969 1469.8561 1202.1498 414.1948 732.9295 6224.6424 2470.1277;
	1858.8674 1241.4837 2033.6427 592.0 1019.8584 1417.5792 1145.7696 385.8175 708.832 6008.7948 2342.3436;
	1766.2 1140.4371 1897.0361 575.2667 972.4 1333.3436 1071.7445 391.174 649.5506 5803.802 2181.1855;
	1665.766 1075.2056 1780.1114 563.2769 913.7 1278.8119 1016.0902 358.7156 614.288 5495.2681 2011.8373;
	1588.1101 1152.03 1767.6688 557.7984 841.8717 1260.303 976.0687 304.3603 573.1404 5189.9307 1840.5637;
	1597.1708 1098.0613 1796.0294 561.0 868.7845 1270.4446 969.3959 305.9965 530.3466 4838.1342 1780.7337;
];
