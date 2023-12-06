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
	1452.1608 935.3037 1643.6 528.9 819.0341 1104.9551 875.7 265.3947 509.5822 4572.2875 1616.4119;
	1462.2729 938.1269 1616.1882 534.762 797.6373 1114.6298 875.41 259.6 501.0813 4491.2963 1599.8688;
	1504.9162 971.6767 1688.5504 538.1099 811.1844 1136.6861 886.3105 272.7255 516.2957 4566.0251 1647.6436;
	1591.6 1037.4844 1786.5858 545.7004 861.7185 1203.7596 924.082 282.3216 548.5317 4722.7011 1743.9247;
	1732.3 1163.1408 1996.8439 578.6 965.4757 1318.8 1021.3 319.5 620.7 5314.6164 1987.7043;
	1843.1521 1251.5494 2132.997 602.5792 1046.1278 1411.2581 1116.9778 359.5 721.5717 5930.9894 2166.1304;
	1888.3087 1258.2352 2126.9649 592.1134 1052.8778 1441.1 1136.3937 354.2 746.1142 6345.2391 2198.095;
	1847.9077 1272.6 2191.4021 613.4324 1053.1 1437.7704 1130.087 367.2437 742.324 6607.4992 2257.5179;
	1868.4345 1286.1194 2185.7178 603.5 1041.1 1415.8151 1139.6545 360.6 756.6711 6599.4881 2239.1484;
	1831.1205 1269.115 2166.7886 591.3 1015.9192 1383.7508 1160.2482 351.6431 731.1879 6722.5587 2217.7538;
	1783.9351 1208.0854 2105.7522 587.7385 989.8315 1343.3488 1128.591 330.6757 708.5682 6607.7 2131.0558;
	1786.2893 1201.8074 2099.3032 591.0221 983.5822 1326.4208 1100.0929 325.9326 682.3921 6417.3314 1980.7411;
	1742.14 1213.5 2076.3711 580.6 969.1 1278.1635 1074.1 323.0785 680.3 6400.5407 2018.4222;
	1763.3 1170.9535 2020.568 584.9168 933.8 1276.5968 1045.5 315.7532 665.4427 6221.0332 1963.1483;
	1807.5 1192.3 2090.0237 593.5 975.1227 1356.6 1090.5767 330.3384 669.7952 6289.0379 2052.7949;
	1839.1022 1213.8314 2128.8075 605.9358 1037.7995 1392.9 1107.381 358.0508 674.6928 6269.8328 2145.9278;
	1784.8683 1208.4 2127.5527 614.7977 1077.3832 1416.1696 1119.9653 368.397 664.3317 6116.0305 2156.324;
	1867.7761 1267.4357 2150.0243 630.2491 1093.2301 1524.2798 1195.3409 379.2467 709.7 6229.7491 2402.4164;
	1905.9179 1264.9007 2125.7 623.0 1055.9 1486.2778 1190.7877 395.087 708.9689 6108.3511 2405.8218;
	1825.7 1180.5755 2012.2866 607.0741 1001.57 1400.5606 1135.9562 366.2 664.3613 5960.7168 2277.7177;
	1746.3744 1139.2 1933.6267 588.2353 959.6418 1332.2439 1099.1293 347.8517 631.7 5884.8062 2149.7132;
	1659.1678 1053.5803 1762.7708 560.0693 908.8407 1230.4 1025.2 318.7769 586.4263 5289.4748 1953.5372;
	1547.5027 987.8046 1695.5286 571.3797 853.122 1115.5011 919.2913 273.0 515.9091 4859.3256 1804.4619;
	1546.0702 982.248 1725.8774 578.3605 855.2429 1115.1829 890.2317 270.4835 500.6097 4640.078 1683.2144;
];