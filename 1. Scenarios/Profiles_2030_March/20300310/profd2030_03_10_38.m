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
	1453.3203 920.4595 1546.7517 581.4 780.4089 1115.051 897.6515 273.0476 534.6245 4675.7841 1690.835;
	1474.0887 921.3 1532.3468 565.8296 764.8464 1112.0797 871.6032 272.3 509.8779 4518.4149 1709.4741;
	1446.7155 925.6 1540.1615 569.6 769.7738 1132.3407 871.0284 259.8098 509.5848 4453.6669 1633.2245;
	1446.059 941.0657 1573.4017 583.6 788.5236 1150.7038 891.0853 267.2678 525.1258 4434.4824 1647.8295;
	1489.1983 960.801 1631.3483 600.9509 836.1314 1198.6394 942.6398 273.1933 544.3017 4528.7 1760.6226;
	1559.2455 1012.6 1711.408 617.5168 882.081 1267.7823 1000.1 289.3573 583.0813 4731.8832 1871.5471;
	1591.6241 1027.1 1738.6371 604.4648 915.2594 1299.0301 1048.1 308.5026 605.7005 4990.8011 1963.8742;
	1665.0831 1067.4158 1840.2848 593.5822 988.6657 1347.2625 1094.7796 340.8601 620.9704 5253.7 2040.7501;
	1715.6605 1088.9417 1850.7831 606.7 997.608 1343.6031 1075.6985 346.7 618.9801 5336.0507 1968.8428;
	1704.1865 1077.9082 1858.6 597.5708 978.6876 1360.2165 1047.819 328.5799 565.5188 5250.0355 1871.4427;
	1684.6693 1075.4898 1836.3404 596.2877 970.5 1312.461 1034.452 318.5012 580.3197 5362.2334 1866.1945;
	1703.1865 1078.4373 1819.9429 595.4 939.7 1271.8363 1028.3414 325.1 544.5711 5261.0446 1808.1244;
	1700.1777 1055.5127 1818.0913 605.1965 944.9415 1267.194 995.2669 313.3103 541.9618 5348.469 1543.0651;
	1711.3515 1085.0425 1814.7106 596.4458 936.6755 1322.6218 1027.0367 309.7175 612.9908 5344.3105 1779.293;
	1769.8143 1110.9349 1838.407 605.012 925.4402 1344.7359 1070.4886 319.245 644.1732 5372.1051 1915.4646;
	1779.2777 1129.4 1877.4591 602.3195 962.3943 1406.709 1087.4626 326.5144 631.4183 5346.7303 1717.3261;
	1756.4351 1118.8 1822.1726 602.0787 922.6176 1377.165 1092.7135 334.953 671.9 5379.6442 1837.3965;
	1743.1 1145.4427 1873.6771 631.3554 965.7613 1432.7159 1129.835 335.0759 693.0248 5571.2527 2092.1654;
	1804.9802 1154.4901 1873.6497 631.3 939.492 1418.6954 1112.6666 326.9577 670.7741 5559.0843 1832.9867;
	1779.4683 1105.4139 1841.1401 615.5083 909.9929 1336.8189 1071.3761 326.9489 671.2693 5498.8902 2040.2177;
	1693.7483 1052.5561 1734.0898 597.5 837.3594 1254.12 1014.9489 299.0177 642.5271 5302.7938 1870.4341;
	1619.515 1008.9279 1662.6894 583.1561 746.1399 1196.9015 936.1285 275.6458 593.2259 4953.6184 1750.0207;
	1534.5138 943.3237 1590.8774 563.2031 726.7659 1060.1419 833.1722 266.8046 515.7419 4617.5901 1335.0189;
	1495.2889 935.567 1561.5559 546.7342 712.1096 1055.0 819.3946 251.9579 482.4859 4334.8457 1312.6426;
];
