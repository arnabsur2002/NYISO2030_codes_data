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
	1522.3925 983.4822 1647.2143 524.6787 818.6605 1142.568 869.4642 274.7367 509.1031 4503.8716 1679.5332;
	1524.1845 964.1524 1608.2213 509.7909 796.0689 1114.0182 865.8815 273.9901 499.3599 4467.4616 1699.2372;
	1556.0612 990.7693 1660.7 526.8 822.187 1145.7726 875.9877 277.9731 501.4353 4403.2031 1711.3352;
	1655.0952 1065.0469 1780.0071 533.1107 895.2595 1225.8 930.2041 297.1 543.0646 4659.7795 1819.8854;
	1760.6147 1170.5411 1976.8054 565.0186 1008.3246 1373.828 1007.6127 337.0502 609.1 5159.4358 2043.2995;
	1918.3233 1264.4254 2076.5839 583.4094 1073.2207 1474.6622 1058.1945 341.7868 656.6517 5615.1941 2161.7447;
	1904.8963 1265.6188 2072.5977 564.7636 1072.5 1470.0528 1063.3236 364.4878 671.1 6011.6451 2236.3619;
	1904.6318 1255.1066 2108.7901 566.8691 1085.8552 1470.01 1060.2571 365.8971 674.3 6041.8729 2177.2;
	1984.5711 1291.975 2176.5097 569.0122 1084.767 1473.6002 1055.2305 350.6138 676.9107 5908.9584 2098.3192;
	1980.3099 1300.1252 2147.7417 582.2534 1072.6516 1503.7674 1034.6154 355.4682 653.135 5984.525 1986.0563;
	1978.0752 1318.5352 2118.7145 576.8762 1073.4 1483.0762 991.7258 351.4782 653.4635 6075.9266 1922.7374;
	1953.6455 1335.3757 2163.0351 574.1985 1050.4651 1437.8448 992.9675 343.1165 649.0 6053.7782 1905.806;
	1958.5727 1291.2573 2089.5123 576.3335 1036.9 1396.1 949.4565 318.7 620.6429 6075.8817 1798.8126;
	1944.1537 1350.7524 2101.737 593.0188 1036.931 1397.6971 988.5595 342.4463 632.1212 6212.2948 1981.8105;
	1891.3015 1270.35 2040.4039 582.7 1022.9057 1376.4797 950.4011 337.2384 570.6357 6239.8306 2084.8675;
	1927.2205 1295.669 2109.6376 578.5536 1033.296 1431.2715 1031.409 356.502 585.6455 6267.3143 2225.6553;
	1945.3141 1268.416 2075.7457 589.489 1049.8 1475.0207 1065.7458 368.4 615.6768 6135.4 2346.7315;
	1997.146 1337.2094 2179.5246 600.0217 1109.0937 1530.4021 1136.2781 375.5 694.9302 6236.0578 2475.5;
	2033.7953 1322.9793 2116.6679 611.2098 1071.7038 1493.7865 1121.1 369.6825 650.9695 6123.1181 2368.5623;
	1922.0228 1247.8334 2032.6838 591.5918 1004.8952 1412.1665 1074.7294 341.2618 636.7858 5829.3734 2286.1;
	1824.1788 1177.0515 1898.5845 587.8533 942.7903 1349.7 1016.4312 311.7522 584.344 5522.1462 2107.725;
	1727.3258 1073.7781 1777.4616 588.6 894.5477 1256.4036 969.1049 303.6845 529.3943 5213.8 1958.5961;
	1641.4908 1068.505 1674.8 555.2955 830.4619 1159.8 873.7481 270.6714 486.2541 4953.1319 1821.7705;
	1543.7365 1008.7825 1665.5909 555.5904 814.6206 1140.4598 851.4232 265.4 456.3192 4709.1409 1780.4;
];
