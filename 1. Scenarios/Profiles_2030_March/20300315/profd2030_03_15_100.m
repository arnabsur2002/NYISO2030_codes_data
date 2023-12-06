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
	1476.0812 896.683 1495.0092 516.4 779.1066 1083.1 847.6 253.7548 509.2 4624.8722 1798.986;
	1448.8035 896.488 1498.9562 519.8 757.7965 1083.5792 824.6 255.1704 491.7195 4445.8694 1719.668;
	1480.9307 908.6277 1531.8539 523.2707 771.0 1126.7057 843.4534 253.6486 508.7226 4462.0681 1766.2988;
	1554.7355 978.7436 1628.9548 543.0 828.2005 1191.9 869.3324 270.4 526.616 4704.5289 1843.4144;
	1715.6 1093.1574 1813.0412 582.417 938.5296 1333.5 970.0469 308.7555 608.1 5176.4937 2050.2373;
	1808.4189 1165.0922 1939.3776 596.5673 1035.9712 1419.3 1044.7589 360.3371 675.8698 5758.9557 2204.0682;
	1826.0118 1163.1709 1928.488 588.4492 1055.8034 1387.6665 1056.0 348.8 679.7 5987.2154 2254.8818;
	1817.6882 1165.9 1917.0788 567.1766 1037.9297 1399.9203 1069.3998 350.7 675.4704 6159.8686 2325.4218;
	1811.4796 1158.1503 1931.7994 553.8655 1044.6113 1399.94 1119.916 335.6 677.8 6217.6161 2397.7119;
	1789.1815 1120.4245 1880.7322 544.923 1041.1725 1347.4376 1057.7513 327.0913 667.3725 6118.4959 2234.3958;
	1797.5821 1123.4039 1895.3128 540.4 1023.832 1355.4703 1064.1935 328.1 674.2 6187.6894 2240.633;
	1774.6467 1050.0666 1835.1246 525.9 981.4203 1303.0734 1071.7421 331.3 669.8819 6212.038 2270.3679;
	1752.7884 1064.437 1771.0399 526.9 974.1075 1257.1896 1012.3951 322.9188 668.3804 6196.3072 2307.9896;
	1722.263 1055.9164 1778.3749 522.7225 969.9247 1247.1 979.7803 327.2 673.3 6100.2802 2243.2765;
	1686.8154 1026.8858 1774.3539 531.9 961.7662 1281.4111 990.6287 310.3047 659.5736 6109.0108 2274.9432;
	1667.0077 957.2265 1686.2019 542.7 944.2994 1292.6 1001.0549 291.6757 651.9026 6017.6658 2284.7274;
	1697.4202 1004.8002 1751.0514 545.6 982.7642 1298.265 1008.5 313.3782 653.0461 5943.8436 2371.1914;
	1736.5704 1077.8445 1776.6483 549.8519 994.0477 1354.5206 1057.9929 315.2386 672.7245 5804.5867 2403.4385;
	1712.8171 1064.6805 1726.8383 555.3873 945.2308 1345.2168 1039.1142 296.618 639.8415 5662.074 2364.1507;
	1699.2765 1040.1145 1691.7464 543.8 904.0 1291.8243 1016.6 314.4 623.6355 5515.8734 2234.839;
	1641.4224 974.7908 1645.7754 514.8585 848.4895 1218.9 947.4348 291.9 581.6491 5281.2583 2111.8673;
	1582.8806 934.3839 1571.8163 500.4771 779.7255 1153.4 893.2704 266.3 564.5 4956.199 1970.7534;
	1586.7726 928.9793 1561.4067 522.1054 805.0245 1183.6185 897.8767 276.4776 526.0 5054.6543 2025.0115;
	1513.2977 916.8 1515.4 550.6606 776.8121 1127.0054 849.74 236.0977 507.0392 4594.49 1787.3;
];