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
	1492.4324 914.3 1554.9475 534.5684 769.1276 1123.1238 834.2823 265.1921 506.5 4456.9984 1674.041;
	1492.9526 911.9098 1559.6541 533.9 770.485 1131.6778 843.3914 269.7611 503.1 4417.313 1679.9668;
	1512.73 924.5986 1602.2961 556.8251 798.5 1146.1868 851.0 275.6545 513.5869 4452.0329 1701.7571;
	1555.0 989.225 1690.7093 571.0589 855.5 1196.0646 895.7713 291.1007 562.0386 4624.8653 1800.391;
	1731.1466 1100.3618 1918.6 598.7164 983.8236 1372.5 992.1252 336.7965 614.369 5160.0553 2023.4555;
	1834.4771 1175.7777 2063.7811 612.4 1037.3434 1478.6109 1085.9544 369.6 688.8436 5721.4702 2215.8176;
	1804.4653 1172.1502 2086.1353 595.798 1034.2 1493.823 1124.0244 380.5167 720.2887 6073.9325 2331.4506;
	1835.9031 1182.5578 2101.3233 592.3783 1036.9398 1477.8624 1147.3917 376.733 717.7134 6283.1199 2298.4139;
	1868.8027 1204.3168 2093.5388 577.2286 1036.7044 1479.4009 1116.2768 363.6654 723.3818 6321.6443 2317.5941;
	1884.4267 1227.461 2073.7651 590.1254 1047.1898 1481.0038 1136.0271 366.5065 703.1656 6346.5398 2324.2005;
	1851.8508 1183.1 2021.9327 593.2935 1002.4016 1445.5606 1125.6334 356.0545 738.7614 6353.9 2306.9569;
	1876.5529 1185.7783 1979.986 583.7 992.8625 1412.7258 1098.1307 356.6 722.3 6250.2373 2188.3813;
	1813.3865 1187.5352 1964.7 586.0659 992.1973 1409.4202 1107.5161 368.2252 707.0684 6180.6558 2159.4849;
	1790.8354 1155.9653 1942.4905 581.9133 979.8722 1412.3766 1074.9542 355.844 727.4256 6215.5235 2170.5526;
	1845.1896 1186.7 2000.1642 593.2999 999.1379 1445.7663 1108.9811 376.0823 757.9855 6247.1643 2246.9904;
	1849.8 1188.2784 1989.1376 605.1719 1015.8975 1443.2007 1138.2848 380.7926 763.5533 6307.5347 2292.5526;
	1838.1107 1187.3845 1988.8886 606.3 1067.2142 1470.8506 1176.399 381.0298 765.293 6144.015 2399.3348;
	1839.5592 1185.3896 2024.2868 606.5 1085.8865 1538.5151 1205.487 417.8233 793.4141 6275.5452 2530.8231;
	1879.347 1218.3613 2040.8117 606.7 1084.153 1500.3615 1232.6525 424.1234 813.316 6198.0 2529.4843;
	1824.8899 1151.3366 1950.947 594.6299 1009.3975 1395.984 1151.2235 417.1919 724.9392 6018.8954 2511.7362;
	1754.6476 1076.8726 1849.2885 574.0 926.4118 1278.4793 1047.6291 355.9346 660.1808 5624.7794 2229.2669;
	1692.3585 1029.6423 1737.0843 551.5261 852.8332 1167.3773 968.7 319.4809 595.9713 5190.1722 2012.1003;
	1524.4454 918.0274 1637.5756 590.074 827.7578 1145.9189 931.6873 287.5 553.2023 4757.5482 1863.3;
	1527.0611 940.4607 1631.7076 588.3 878.4232 1147.9088 905.1 285.6376 533.7984 4732.2405 1814.7855;
];