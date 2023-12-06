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
	1498.5172 926.1571 1604.6284 591.9622 819.6463 1130.4132 884.1461 271.5637 507.6 4392.6539 1679.9738;
	1471.9593 899.0368 1566.8551 571.9616 791.6716 1111.2854 864.84 256.6191 500.9 4311.9196 1653.5078;
	1498.2 944.1065 1636.1036 579.5694 799.8394 1149.8034 889.6026 253.6 514.5588 4358.0157 1696.6015;
	1553.9443 1014.6014 1726.8271 595.1 863.418 1217.6121 903.7441 259.2 539.2782 4576.5964 1752.7;
	1683.9362 1136.9724 1944.364 612.9594 975.4197 1367.6834 1025.821 300.5102 625.6726 5153.985 2047.1972;
	1791.6102 1216.0426 2101.8432 631.41 1037.7388 1462.3 1094.04 336.303 710.1257 5868.3795 2239.0624;
	1844.5 1225.1 2126.9617 619.249 1013.0667 1462.4381 1099.4345 335.8094 698.4696 6182.3 2254.6296;
	1795.3953 1207.7211 2092.8 630.6203 995.2 1481.9367 1121.0 324.8939 701.0 6307.4962 2183.0874;
	1845.4993 1228.6781 2138.5595 621.8 1010.8463 1480.4487 1136.1005 325.8215 705.7201 6305.9424 2141.8485;
	1834.1253 1229.5611 2115.4178 620.4 1011.3069 1475.7501 1138.5103 297.0814 674.6068 6401.0456 2058.5959;
	1786.9465 1239.8562 2089.6818 615.4448 978.8943 1425.8 1059.8024 286.5692 656.2261 6256.4401 1938.4899;
	1791.8081 1174.8118 2096.6743 617.1801 1001.163 1403.1845 1003.4 277.9341 644.7 6215.4023 1909.954;
	1784.7625 1209.5185 2067.0693 620.2299 1002.8463 1426.4608 1021.4904 276.0041 625.3244 6198.9132 1894.198;
	1751.7181 1170.9856 2055.8618 625.0474 1038.3659 1411.7 1046.9323 292.9577 613.0002 6195.543 1960.1525;
	1793.2685 1195.4354 2060.321 610.7667 1041.4895 1415.8635 1071.8789 311.9627 629.3867 6231.4235 2096.7408;
	1841.0 1219.3624 2147.5713 619.4318 1085.1522 1512.0915 1134.8436 336.4354 658.3595 6346.0528 2213.8008;
	1838.3747 1208.1029 2076.2997 606.6 1096.845 1481.2195 1129.2938 340.8463 686.5 6057.6755 2306.2;
	1916.9817 1252.8 2134.2956 618.3233 1122.7 1529.9 1181.7466 364.6766 714.3101 6073.5843 2428.6545;
	1940.38 1263.8338 2102.0858 610.6294 1107.3388 1479.4 1166.6491 365.7477 691.6505 5943.9688 2426.6458;
	1845.0601 1191.0798 1970.4051 586.4 1026.2051 1397.2836 1111.5416 344.6934 660.6576 5820.8069 2282.8702;
	1769.1842 1108.9081 1816.6182 564.2 958.3387 1295.0235 1042.1483 329.1348 614.2022 5489.5862 2101.7648;
	1657.5378 1044.9318 1689.2071 553.7279 892.1 1212.9529 952.7 294.126 556.2119 5069.0579 1919.8898;
	1560.9949 996.6 1729.2948 569.2195 861.8239 1175.0092 917.0864 267.8 511.759 4829.218 1734.1179;
	1499.1898 964.1156 1681.5031 590.1826 815.7801 1124.6792 884.023 256.3868 502.0967 4557.8431 1586.1652;
];
