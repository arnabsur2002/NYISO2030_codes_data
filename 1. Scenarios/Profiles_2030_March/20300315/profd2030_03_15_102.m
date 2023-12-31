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
	1373.9553 821.2672 1477.4335 536.3216 796.484 1032.786 804.0713 220.7121 446.1962 3982.1242 1484.8632;
	1368.4 791.8919 1454.4174 531.9109 817.5853 1062.2435 806.1497 219.0555 441.1314 4092.1542 1476.8055;
	1421.4936 840.7783 1498.2 541.9755 801.8344 1056.2286 815.8 214.6653 465.0855 4186.9283 1517.4955;
	1510.0751 889.0725 1578.0793 553.9 840.7119 1133.5868 848.9536 245.8 504.1209 4354.1042 1645.7439;
	1639.3117 973.2879 1767.9108 582.0 968.821 1275.9079 957.9437 283.5 580.1122 4923.5013 1842.9046;
	1725.8176 1074.8973 1871.1025 590.5943 1031.4294 1359.8 1030.9051 313.8 666.1973 5484.6079 2079.7634;
	1766.2713 1133.7914 1952.6 585.5 1047.5422 1371.2397 1060.3183 333.2067 679.0866 5810.485 2192.3052;
	1798.4751 1159.7153 1985.8334 586.4 1049.2282 1394.5 1095.8491 332.4 705.5083 6059.5104 2238.643;
	1857.4036 1167.7865 2015.5182 561.4678 1036.3857 1424.2 1100.1107 324.5832 705.3661 6040.8473 2189.6944;
	1840.6067 1129.0086 1971.8031 548.3 1017.9946 1356.5039 1077.7197 314.2792 691.6623 5956.247 2091.7169;
	1806.7118 1093.7372 1915.8909 531.3 990.6583 1322.9691 1048.935 315.8 673.0078 5983.1397 1945.4343;
	1805.8448 1097.0194 1923.0 522.8165 992.1207 1324.6733 1037.5153 325.4542 690.3122 5928.4691 2036.9218;
	1772.3556 1081.9271 1860.0946 507.9633 971.0547 1323.7936 1066.6979 308.4758 700.511 5815.506 2055.3553;
	1755.3793 1067.692 1816.0017 509.3871 984.6634 1302.8669 1023.6 315.4 685.6488 5801.3642 2020.5026;
	1752.149 1069.5 1834.4898 518.3636 955.9 1265.5245 998.2 314.7 689.9904 5836.6372 2084.972;
	1722.6011 1087.6044 1825.7 528.2 947.9218 1286.0383 1043.4359 331.5 709.119 5887.0276 2193.4;
	1756.1499 1089.5094 1851.1299 529.1537 974.4051 1337.0594 1076.9564 346.0361 717.3892 5764.5772 2218.051;
	1815.1 1111.437 1867.6956 541.7162 953.4395 1357.2311 1083.3868 349.3411 734.1317 5678.5822 2295.7732;
	1830.7 1098.647 1836.4292 564.5161 971.9 1353.8224 1079.5728 351.7846 695.9051 5642.2781 2291.4816;
	1802.4133 1053.7858 1793.1 542.4 916.5359 1292.5 1038.2115 347.7 667.9662 5523.1 2131.9666;
	1733.1426 996.5258 1694.2323 536.949 866.326 1207.0739 980.2 333.7152 628.3 5234.7458 2077.511;
	1584.0 940.5 1611.5271 512.2416 809.8711 1145.2336 940.9 310.6487 574.6922 5050.5574 1901.3294;
	1532.1893 876.5041 1534.5281 518.5895 764.1 1093.136 883.138 253.9475 519.5 4755.4242 1759.9225;
	1511.0354 869.052 1489.1566 521.4106 703.2972 1057.0597 819.5857 235.8 485.0385 4491.4013 1623.729;
];
