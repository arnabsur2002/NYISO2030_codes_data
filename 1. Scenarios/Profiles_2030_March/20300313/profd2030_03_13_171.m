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
	1517.8234 949.752 1588.6605 585.1 769.6378 1113.1606 829.7489 230.5111 534.1257 4291.5469 1541.9229;
	1497.3238 944.9 1592.4671 576.9 783.8138 1129.6783 845.7154 231.7063 525.7 4167.2302 1603.3982;
	1487.2788 964.2275 1614.7239 589.5155 806.5353 1176.0251 874.8479 233.7769 537.0457 4189.4221 1601.3265;
	1537.7745 1025.8031 1703.8346 598.1217 845.472 1258.9756 926.7864 271.4403 569.7012 4483.5217 1758.2114;
	1655.1275 1129.1474 1884.3912 607.9349 920.7654 1367.9475 1014.5522 307.747 624.1987 4802.7028 1992.7635;
	1744.4851 1197.1 2013.9625 599.415 978.6468 1449.4867 1027.5994 321.9585 675.8806 5486.355 2076.8847;
	1768.1997 1164.0995 1960.5547 589.8434 974.075 1441.8432 1068.8396 325.9699 696.3264 5982.8298 2028.8695;
	1792.6907 1190.4711 1996.9501 602.5136 964.5415 1451.708 1094.5351 320.0 684.0236 6173.6591 1970.2872;
	1737.4027 1173.6709 1984.0561 608.3639 957.9497 1426.7486 1066.7857 299.2007 684.1311 6107.404 1996.3151;
	1718.7072 1162.415 1948.1572 588.3 935.7837 1380.173 1048.6719 300.1041 678.2269 6207.4684 2011.1607;
	1649.5033 1152.9089 1924.6365 581.2067 910.4021 1330.2732 1007.4803 277.1592 646.7596 6124.0167 1966.2524;
	1544.4296 1093.5399 1870.6 570.2763 904.3548 1346.9771 1000.3 285.7777 656.7282 6097.3295 1917.1601;
	1515.9028 1033.8303 1800.4369 560.8835 901.4397 1358.8617 991.0293 267.2154 655.4943 6178.2863 1916.6737;
	1458.3189 1008.2281 1723.0265 571.8 882.3157 1324.5792 1001.3725 270.6506 646.3297 6161.3118 1755.005;
	1409.7568 998.2461 1726.1257 586.881 917.2717 1343.3608 995.5589 270.6139 630.7364 6143.2855 1710.2527;
	1451.8902 992.8299 1681.5588 614.1856 919.6901 1373.8011 1032.015 256.293 669.3269 6214.2976 2144.3667;
	1504.9887 1004.4021 1638.0642 619.2415 925.8098 1380.098 967.8084 262.6214 623.8356 5856.557 2198.168;
	1591.6892 1099.6951 1729.1761 624.7853 955.3633 1449.878 1092.4798 297.6841 688.2263 6010.965 2385.3304;
	1688.3933 1119.0565 1731.0942 615.9 929.563 1406.5057 1078.5492 316.4795 686.1852 5961.446 2321.9459;
	1651.4065 1080.3765 1693.3856 606.4 887.148 1337.7605 1022.313 298.8514 659.7171 5762.0066 2222.9752;
	1593.6 1027.0661 1640.7737 588.4728 853.6109 1256.1123 962.4138 238.7894 611.5978 5419.0103 1945.9243;
	1523.2074 973.899 1572.8067 580.1 794.241 1158.3831 913.4054 202.4006 550.9 5035.6504 1760.562;
	1440.3 898.558 1485.5785 584.3494 747.4224 1122.8195 862.4907 236.5705 509.8292 4725.449 1692.1813;
	1402.7549 887.8492 1453.3627 582.569 684.4648 1065.8684 843.4 226.1 482.9941 4518.5796 1579.4311;
];