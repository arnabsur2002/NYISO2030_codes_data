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
	1493.9315 959.0299 1593.6063 564.1876 844.1111 1255.8748 907.3416 253.7865 532.8468 4623.6477 1727.1761;
	1451.2 946.0 1588.8 564.5 828.097 1242.1192 882.2893 247.1655 515.5 4482.7355 1696.0917;
	1438.9761 929.1 1567.4496 569.4211 813.2705 1223.7 885.9666 238.4806 527.0737 4366.1813 1664.7609;
	1462.8948 944.7994 1600.6098 588.6682 842.3827 1245.3487 889.8 245.1832 535.0 4422.071 1716.898;
	1494.7 987.019 1684.8333 589.4241 887.388 1272.9977 928.4385 274.5158 547.134 4610.8183 1779.5703;
	1555.1162 1043.4005 1764.2175 585.4027 923.8483 1358.8242 980.6806 298.2332 560.2738 4820.6559 1865.8149;
	1590.9612 1077.7217 1822.0332 588.3 999.4915 1403.5126 1027.1995 315.0228 601.1159 5031.6231 1947.3311;
	1669.4304 1136.2975 1854.0257 627.3448 1066.679 1437.7323 1064.163 329.8722 631.5821 5260.02 2049.996;
	1658.6946 1151.2893 1853.6403 629.4931 1064.2143 1425.8506 1064.2914 340.1 656.3 5341.5737 2019.9908;
	1666.6 1123.9258 1840.0343 629.7593 1054.5544 1366.4351 1082.4474 352.9606 672.4316 5463.8007 1998.2776;
	1679.6251 1120.6283 1842.7762 602.7615 1045.9914 1330.1255 1056.8267 350.3711 663.1941 5448.4183 1967.0798;
	1696.5843 1123.5 1799.9 575.0 1000.8949 1278.9703 1004.3217 341.5 639.084 5339.4869 1873.5181;
	1644.985 1113.1856 1749.0814 574.5865 959.8841 1243.2306 996.8154 344.7538 630.3756 5317.0292 1836.7713;
	1654.1484 1101.0805 1760.4845 577.0 981.1869 1241.9541 1002.1073 345.107 636.1432 5367.4434 1697.8319;
	1670.5892 1101.4559 1744.2969 576.8882 945.4 1248.1455 1029.9962 337.1 642.9251 5377.9205 1625.8065;
	1645.483 1168.2824 1831.8229 607.0604 1011.0237 1298.8753 1068.3608 351.0783 655.5 5496.5353 2046.6953;
	1670.2338 1176.302 1837.6434 602.7709 1041.2188 1418.6189 1115.4887 346.4893 674.4042 5603.4573 2180.7443;
	1758.3 1190.7681 1884.7854 618.2048 1084.6037 1485.2969 1169.2827 362.2937 716.9 5649.8583 2299.4914;
	1786.5 1207.4 1919.1728 628.0538 1095.1183 1498.2747 1162.3 383.1244 708.1357 5681.6096 2301.304;
	1687.7208 1133.6506 1820.7585 607.2515 1052.2889 1405.6 1105.0498 355.0225 666.9 5497.0801 2137.7245;
	1646.8034 1103.8924 1731.625 572.4 962.8954 1299.5627 1005.1939 339.9449 628.6996 5332.7333 1899.4036;
	1612.0382 1065.4061 1683.5493 570.7473 905.4059 1225.3747 928.3758 325.5501 585.9 5059.2823 1697.2427;
	1618.7736 992.9117 1618.3658 564.6672 869.0466 1113.2 802.587 298.481 500.1992 4596.4339 1399.4821;
	1552.5613 966.8985 1582.1404 566.6874 844.0332 1115.2953 816.9 269.8 484.5 4312.6034 1327.1794;
];
