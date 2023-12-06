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
	1509.4461 932.225 1594.4263 572.3 773.7 1095.1044 838.8751 256.0 495.5019 4473.1246 1667.9595;
	1513.2926 921.7682 1570.225 558.3 741.1579 1073.0 815.0185 243.4761 460.9986 4299.331 1620.8;
	1568.0477 940.9955 1597.0 566.9791 775.3 1100.9107 833.0797 253.6 473.2564 4359.6587 1646.383;
	1627.5812 1010.0506 1703.0176 589.4224 841.8913 1149.8537 882.8 263.3 513.3996 4578.6699 1768.697;
	1746.4496 1127.7901 1885.5568 613.9 951.5 1295.3736 987.1388 301.0083 590.8262 5110.9624 1951.9844;
	1808.158 1213.9539 2015.3277 624.4459 1035.7791 1402.1 1066.3378 334.5 644.0465 5618.8549 2109.8008;
	1820.9611 1206.3903 1991.2092 610.121 1005.2773 1402.9161 1089.1457 360.966 679.6294 6053.5007 2180.1482;
	1802.5355 1244.8953 2018.3677 622.1938 1036.9 1398.3046 1082.9 354.4244 686.5011 6253.6528 2167.0;
	1869.3657 1252.5813 2051.5627 616.8947 1055.5349 1389.388 1072.4712 361.6 692.5627 6336.3333 2133.1782;
	1834.7777 1246.0788 2040.2454 610.9867 1033.7 1335.9163 1092.9325 365.8436 700.7657 6389.0541 2103.1414;
	1807.706 1216.1881 1957.2932 601.2092 977.0566 1298.358 1096.7793 348.1349 692.3727 6328.8401 2071.9198;
	1826.0599 1192.459 1977.9362 595.1107 950.1426 1259.0147 1072.0 371.5639 674.0 6349.3169 2005.2237;
	1840.3912 1194.2695 1985.155 594.9488 967.6411 1286.7291 1023.1954 346.1 652.7302 6369.5807 2033.7104;
	1873.3306 1190.2 2002.6522 597.2804 957.5318 1253.9887 996.8542 344.0247 653.4788 6324.4 2100.4952;
	1894.1196 1221.8586 1994.9 606.0089 970.4349 1291.6065 1002.5361 360.0924 668.8 6375.4543 2189.1221;
	1903.6316 1242.5 2031.4912 616.4462 999.6 1388.7 1054.4074 361.8 687.1636 6597.669 2312.3;
	1878.4981 1253.1442 2051.8044 626.5603 1034.0986 1432.1979 1072.3 361.34 703.4 6371.5 2442.0151;
	1931.2 1269.4931 2127.8704 637.7153 1050.5745 1491.142 1125.237 375.5 732.3671 6360.2266 2514.1257;
	1960.1065 1278.667 2105.9642 630.6762 1046.4283 1458.0553 1099.5021 377.7327 716.8 6261.5476 2472.2431;
	1894.4105 1235.3845 2039.5248 611.2992 1020.8758 1389.6 1059.406 357.3882 689.6525 5998.1053 2377.9;
	1770.3735 1130.0 1852.7017 575.7367 919.0986 1280.5035 1003.6 322.2431 645.2532 5688.8699 2195.2224;
	1687.3 1083.9524 1785.2612 566.4 898.7997 1226.5369 962.5438 309.2829 599.8 5419.0407 2015.3139;
	1611.1882 1006.0 1748.5263 581.7 861.3 1143.5687 886.3721 282.4573 583.7 4998.0474 1865.5711;
	1562.6494 945.6 1651.3314 580.8307 824.2 1088.707 858.338 268.5 591.5501 4662.4431 1743.4515;
];
