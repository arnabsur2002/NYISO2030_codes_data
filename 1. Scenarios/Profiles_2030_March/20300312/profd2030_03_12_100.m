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
	1552.2026 972.5066 1667.467 591.57 806.3286 1178.3092 892.3 266.9443 518.1 4543.3778 1728.5014;
	1519.7805 957.9822 1642.1221 591.389 807.3194 1150.137 876.2928 260.2296 512.2941 4469.4385 1721.4021;
	1531.2237 964.9 1670.1 606.2606 808.2526 1173.9385 886.1877 263.8269 506.1741 4523.4016 1743.7574;
	1589.1565 1044.0667 1791.7716 623.2702 885.9531 1254.997 929.3658 273.9467 539.3699 4710.0497 1850.76;
	1752.3 1169.3761 2003.119 659.1629 1037.6239 1400.8 1037.0912 320.189 601.8559 5263.6945 2056.5344;
	1852.9295 1228.3207 2084.9061 664.9619 1112.3467 1479.7266 1117.8815 348.5328 659.4859 5822.5945 2192.4894;
	1886.4035 1247.2908 2089.278 661.448 1095.0884 1484.5845 1134.8939 368.7836 679.2022 6261.735 2234.8;
	1899.6207 1263.2346 2133.1265 640.4 1126.745 1461.0723 1140.4 384.8753 699.0687 6625.1155 2236.7255;
	1885.4624 1270.5999 2138.3197 630.5151 1116.5 1453.1751 1118.9666 387.1615 711.26 6648.4627 2146.668;
	1907.7346 1260.2 2113.4983 610.8368 1065.6308 1378.8335 1077.8828 372.7619 691.9321 6665.7878 2048.2043;
	1908.7694 1262.8786 2066.4894 624.4323 1020.9141 1347.4731 1075.3058 360.5 679.0 6753.946 2009.2879;
	1894.452 1241.4888 2065.1105 621.7248 1040.3405 1362.1 1073.6039 350.6414 683.3713 6734.9957 1977.0586;
	1902.3328 1238.2 2073.9589 610.6 993.1076 1347.528 1081.594 354.8382 685.0792 6640.074 1981.2535;
	1873.7931 1226.602 2067.0682 609.4 989.264 1425.9719 1071.1167 341.1214 671.545 6506.9489 2059.3023;
	1872.1939 1213.5411 2036.3 594.6661 1026.7886 1447.5173 1099.7628 334.9 670.7165 6521.2689 2185.5346;
	1901.3366 1243.3859 2112.1944 623.7875 1087.0753 1480.4818 1174.6459 357.4944 699.1 6710.8551 2357.3225;
	1920.3975 1253.9473 2125.6046 621.3009 1128.9742 1520.8124 1214.8547 387.5932 711.4 6500.8182 2463.2083;
	1993.4131 1296.6086 2176.2367 639.7714 1140.2432 1588.8709 1264.8475 417.9 757.5445 6633.3808 2643.1372;
	1968.0 1275.9878 2118.9302 643.7426 1097.4553 1549.2005 1222.6434 408.0 737.4014 6447.7969 2526.6926;
	1867.8281 1217.9013 2032.5459 617.4273 1043.8028 1443.523 1168.8703 368.1952 702.7104 6130.9 2399.7286;
	1784.6 1144.5639 1913.0175 597.6537 986.6617 1372.2789 1094.2746 361.6525 611.0982 5858.9 2189.8772;
	1691.7114 1080.8008 1779.1141 595.6123 924.2 1291.7968 1012.3336 325.8 579.5133 5754.2758 2054.7991;
	1621.9076 1009.5494 1701.573 614.4939 902.6607 1266.9159 977.6522 316.7347 571.9505 5564.6322 1923.7125;
	1561.5853 954.6277 1663.7 617.4908 910.0175 1229.0039 942.2 285.8142 539.3 5035.8742 1823.9984;
];