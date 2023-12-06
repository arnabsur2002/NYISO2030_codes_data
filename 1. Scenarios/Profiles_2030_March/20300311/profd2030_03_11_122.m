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
	1532.2951 919.3162 1630.5691 456.1145 766.0 1144.0224 875.7 267.4165 515.2177 4685.2349 1666.7615;
	1543.2666 927.6327 1683.9 438.0333 766.9 1146.6413 878.8812 268.3209 519.7467 4532.9699 1642.3689;
	1588.0078 951.8869 1680.4726 495.8827 766.9646 1150.56 885.7418 263.9191 511.4795 4539.2552 1680.5;
	1659.7 1008.2334 1778.4551 529.9524 827.4246 1205.8 944.2 278.7556 546.4 4814.1146 1800.3551;
	1807.2833 1146.293 1970.9394 546.335 924.5529 1346.0 1043.7396 323.7537 622.6467 5325.6841 2035.0144;
	1890.1786 1206.4255 2060.3551 562.9987 969.3278 1399.671 1101.4129 330.7306 672.0491 5892.3853 2161.9264;
	1870.2041 1210.9677 2101.6231 556.3818 1011.9223 1400.2069 1135.816 337.1676 699.5 6254.2659 2212.9554;
	1889.6321 1199.2 2072.5734 567.4299 983.8523 1346.1231 1145.5297 316.0298 703.9275 6373.008 2220.47;
	1859.0 1185.0788 2114.6713 566.1 1011.5966 1363.9445 1208.2357 330.2737 725.8029 6486.3443 2238.8271;
	1895.9287 1210.5091 2131.4835 581.8974 1018.4643 1376.4986 1224.4185 299.6845 733.2 6429.9913 2286.07;
	1924.2184 1209.113 2123.1903 594.7 1036.4164 1457.3623 1301.3579 313.4217 750.5861 6557.8287 2380.4512;
	1894.3 1222.2725 2100.5416 580.6609 1013.4976 1435.7741 1346.9392 307.6417 730.2165 6590.1514 2353.1106;
	1914.9509 1232.9906 2076.9751 580.6 1002.1 1398.7 1332.5981 313.2 723.2747 6600.0693 2300.4755;
	1906.6349 1246.9754 2100.9967 572.6 1017.4368 1392.9 1279.2965 327.0466 746.9 6655.1971 2463.6696;
	1874.0 1255.5 2155.7315 576.4874 1029.2058 1424.6342 1316.1157 363.5515 721.7 7023.9963 2584.4707;
	1864.9972 1259.6638 2182.9888 601.2823 1083.2867 1470.2933 1337.4365 368.0454 764.8645 6888.3748 2591.2475;
	1859.9022 1255.1787 2221.4866 617.9218 1109.1535 1542.3751 1357.5085 387.8152 771.8448 6849.6642 2692.9504;
	1929.3349 1280.3257 2238.2882 622.6174 1112.5013 1544.4524 1349.4282 396.1031 834.0009 6979.7283 2975.4505;
	1976.8358 1317.9 2240.1527 621.9348 1097.7 1538.3911 1323.5034 392.4 811.1467 6921.2606 2839.3215;
	1890.6831 1247.0619 2167.5296 602.809 1039.4871 1470.8463 1249.7223 367.7022 763.6749 6653.1294 2692.7453;
	1856.8261 1146.855 2029.7294 572.5915 938.6 1388.9688 1187.5149 334.3 713.8374 6351.1623 2530.6025;
	1722.0593 1053.4942 1856.7737 555.2261 894.1 1362.4627 1068.7848 304.3952 618.9467 5630.3155 2301.1136;
	1659.9 1027.8027 1816.1216 565.4556 867.601 1265.0036 961.5052 280.8352 557.7318 5189.3158 2181.7924;
	1613.6443 974.8468 1751.1718 571.3 866.3 1215.2907 940.5732 260.134 531.5901 4866.8425 1992.6244;
];