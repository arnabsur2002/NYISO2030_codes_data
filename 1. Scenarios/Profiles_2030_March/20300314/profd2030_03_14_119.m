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
	1457.7875 889.1 1543.605 556.4 736.8468 1079.5 813.3704 230.4784 506.2 4224.7195 1685.5029;
	1454.5545 886.0 1553.0563 547.6374 735.337 1078.8394 809.4803 228.2574 499.7361 4025.6757 1650.1378;
	1515.6633 929.241 1610.7696 561.5 764.1441 1104.079 823.6107 243.8602 510.9 4258.7841 1681.5149;
	1572.7563 985.9561 1717.3599 572.3 824.554 1175.0058 870.4035 258.0361 541.9071 4414.9605 1732.3348;
	1687.1256 1115.4963 1930.4667 598.8966 952.2336 1352.9762 991.0555 292.3821 615.0 4820.5536 1963.0617;
	1776.2425 1212.5 2079.2592 609.7639 1051.3173 1404.2031 1031.9545 315.5688 669.8 5257.5798 2003.1984;
	1787.3798 1219.3272 2066.8797 598.5 1045.4495 1385.8557 1057.871 314.0417 689.8643 5675.9172 2024.7144;
	1739.4216 1215.8243 2057.0355 597.7074 1034.8129 1375.4999 1035.4923 308.296 681.626 5495.9286 1817.845;
	1736.8554 1205.7879 2021.993 584.5 977.1988 1332.3153 999.7816 295.7261 688.9569 5706.416 1918.4126;
	1769.6 1226.765 2041.5411 594.2721 989.2944 1319.9198 971.9155 312.294 676.0 5851.6454 1897.5645;
	1768.7909 1205.3706 2014.2869 588.4418 951.0445 1324.5412 966.7925 318.2458 666.1 5991.8264 1851.1478;
	1791.0686 1213.6485 1987.2113 589.1 922.5027 1291.4 960.4381 310.1859 674.001 6195.8024 1871.8295;
	1752.034 1193.0915 1949.0 586.6 906.8567 1305.2 948.2415 299.4958 641.1922 6104.7547 1842.586;
	1692.4516 1180.1 1898.7728 580.2051 895.4 1260.52 950.0025 304.4443 605.4 5760.2581 1715.341;
	1724.9916 1190.6341 1925.9746 595.3111 900.9378 1351.6182 963.9377 293.1782 599.4142 5718.9028 1872.5338;
	1719.1576 1168.6648 1934.6554 573.2661 908.4025 1417.1179 1014.2403 314.109 613.7967 5865.0255 2093.4599;
	1719.4326 1152.2395 1953.1918 590.7962 938.6502 1417.0906 1002.2152 318.6041 635.3915 5454.0971 1963.4301;
	1787.5765 1215.5617 2008.2317 588.7224 930.5896 1497.411 1086.0776 310.6126 657.0199 5457.8946 1880.2311;
	1836.8927 1244.1545 2043.6395 598.6491 947.0637 1463.0172 1093.9453 326.9597 655.0896 5556.9774 2185.4151;
	1806.8828 1182.566 1927.9311 572.8755 898.983 1390.6724 1045.5884 313.283 628.6156 5268.9531 2054.3309;
	1705.7336 1106.6517 1880.8544 566.8 833.6872 1278.5279 976.5629 300.4241 595.8 4988.0029 1951.3894;
	1624.2078 1039.4496 1776.5114 551.4543 803.1618 1203.9729 915.1991 284.8161 581.1266 4950.1612 1877.8534;
	1608.1 955.3 1691.7478 515.1372 733.8843 1141.2802 865.3696 283.4359 542.0133 4607.1782 1748.1698;
	1536.2696 888.1145 1633.2906 530.9403 749.3809 1140.3574 844.7064 289.105 515.1662 4344.2968 1689.5;
];
