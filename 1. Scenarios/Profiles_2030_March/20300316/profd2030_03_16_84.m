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
	1408.612 787.9187 1497.4188 533.7743 695.7505 1033.2269 796.1886 235.3435 473.9972 4469.9198 1615.98;
	1426.8676 837.1746 1518.1 529.6893 720.9877 1056.444 779.6906 228.6 462.1 4362.5727 1591.8944;
	1443.4953 829.8 1513.4972 538.6 723.9281 1082.7077 809.3 236.1415 473.911 4389.9417 1634.2759;
	1489.4367 856.8757 1563.987 534.9465 742.5 1099.1043 824.0981 242.1 479.2577 4387.4727 1660.5929;
	1558.1 919.0431 1662.3 555.4 787.3 1170.2383 872.6808 264.0647 486.9676 4600.3052 1735.6467;
	1620.2258 990.8 1742.9234 574.202 870.1045 1217.5259 941.8601 273.5828 528.7425 4837.9025 1817.2151;
	1644.6866 1024.3961 1801.7 584.0 913.9171 1260.5688 994.9 263.2633 549.3183 5040.713 1898.4759;
	1737.6958 1025.892 1833.6853 582.9894 938.2 1262.136 987.6651 264.7679 557.7859 5175.4 1956.2909;
	1766.806 1028.1836 1839.5059 592.2 959.4351 1298.7747 1035.6026 284.3817 577.6 5354.1846 1944.8233;
	1771.5 1031.9155 1881.0 581.4389 955.0259 1277.1487 1041.9 269.4516 574.8863 5501.6815 1950.1316;
	1796.284 1041.7 1898.107 579.1 970.6136 1305.3313 1052.8995 295.9569 570.3302 5548.0401 1908.1425;
	1764.6288 1020.9764 1874.7031 576.9907 978.9079 1334.1 1060.08 287.1888 556.6 5480.4736 1930.0234;
	1710.1503 991.2494 1801.4341 585.326 958.0804 1316.1692 1023.3505 285.7594 564.7915 5438.2126 2000.7189;
	1644.7623 977.1553 1748.5077 577.9 900.6156 1278.8011 992.209 254.6379 555.9293 5373.0687 1995.9663;
	1716.9837 1020.4111 1804.7092 582.546 919.2625 1311.1 1043.6191 268.2978 572.1735 5456.6784 2161.4891;
	1769.8316 1083.5255 1884.0764 598.0 968.7 1404.029 1111.4389 291.1 588.9968 5472.7133 2233.7731;
	1757.4 1037.1083 1836.7022 589.2799 969.5 1399.6136 1088.3847 255.1656 586.1779 5449.1263 2273.1021;
	1823.1038 1110.7012 1938.6097 606.1047 1026.3068 1480.4317 1127.3215 289.4903 632.1 5589.2084 2423.8098;
	1827.3414 1120.7916 1940.0811 595.3252 1003.3778 1456.0734 1095.441 265.8349 633.7796 5439.6949 2291.0271;
	1771.938 1077.8685 1873.301 590.7949 959.9315 1387.5879 1071.0139 281.2301 633.2 5342.5 2287.5037;
	1675.9597 1023.7526 1813.3485 570.9487 910.0428 1353.1845 1031.4784 272.5379 609.3723 5179.7775 2137.8;
	1628.9166 971.6 1757.1 548.5262 878.8713 1272.59 957.2517 261.1791 571.5455 4877.0573 1959.3;
	1512.1488 902.0301 1622.9803 544.6859 806.3012 1162.422 889.7372 223.6573 554.8405 4744.9807 1766.4037;
	1446.7372 889.548 1577.5771 547.1 800.4638 1091.9362 856.4357 238.3542 524.3482 4612.9232 1727.3732;
];