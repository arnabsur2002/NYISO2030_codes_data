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
	1581.8579 1020.4351 1666.0685 595.6011 864.3244 1168.2 914.9607 280.2007 523.9497 4676.8626 1829.9195;
	1555.0 1011.314 1651.3458 591.5522 840.3429 1157.4106 912.7214 288.6541 527.0838 4633.3 1826.1018;
	1588.6 1052.0276 1692.946 607.2912 856.0701 1172.1037 919.1197 290.975 512.0368 4694.2165 1831.1188;
	1665.9797 1115.876 1814.8211 614.9131 912.1441 1236.7235 968.5494 303.0 545.9748 4885.7579 1964.8811;
	1825.5429 1222.8113 2031.6811 647.0057 1064.3793 1376.7749 1062.2294 347.3376 609.4242 5471.272 2160.2571;
	1926.652 1286.5054 2138.5607 652.4225 1135.2294 1436.3498 1146.1556 395.1063 679.9 6040.5048 2310.5;
	1924.985 1283.4047 2143.633 663.4285 1131.6 1458.9932 1178.3435 390.8171 700.6 6418.4848 2305.2235;
	1937.1208 1304.7446 2124.6453 661.5188 1146.5405 1451.8019 1172.3451 374.7495 683.5478 6549.2464 2261.8143;
	1905.4003 1305.955 2135.4656 662.7265 1151.8885 1437.3569 1193.6995 382.7876 686.6402 6556.8485 2218.6455;
	1842.6699 1277.0391 2087.8174 686.1353 1138.9504 1420.4367 1141.7814 375.6688 680.5244 6588.6048 2083.8257;
	1851.3836 1306.3103 2122.1604 656.8146 1135.6283 1386.8902 1147.3255 366.1 675.3865 6656.7477 2040.3457;
	1798.5199 1304.0219 2097.7 644.6299 1118.3312 1356.8 1099.8351 365.8 659.1276 6535.9263 1971.8682;
	1827.3803 1303.0028 2074.5 647.3583 1115.417 1372.2023 1157.6728 377.9692 660.5541 6696.7112 2144.7675;
	1764.5962 1261.0324 2045.6034 637.6495 1069.8253 1406.062 1151.5 377.2557 668.4101 6728.7933 2195.6135;
	1772.9419 1259.0887 2065.067 622.5587 1066.776 1388.1623 1152.9213 357.4 672.6182 6664.2873 2251.0021;
	1744.4416 1268.3152 2049.9417 649.4717 1108.416 1460.9256 1148.9369 368.8418 676.0028 6709.1734 2366.169;
	1773.5279 1275.7971 2071.1301 673.7794 1131.7401 1536.7624 1184.529 360.4562 680.9157 6486.8957 2489.8621;
	1872.4647 1314.388 2122.6027 665.8 1145.1098 1595.658 1240.0743 390.6249 695.2848 6513.2526 2603.7371;
	1926.3 1331.8982 2157.488 662.4619 1165.0112 1615.6746 1246.3045 395.1 696.6 6384.5153 2565.1678;
	1845.6 1238.4 2073.5484 636.6018 1066.3 1511.7512 1169.8835 355.4657 646.1308 6034.232 2368.7535;
	1784.6 1145.5 1936.7917 615.2927 1003.2 1387.2718 1092.2 341.4155 582.0631 5760.7655 2173.1;
	1629.8821 1037.9 1800.6264 586.1407 930.2017 1308.5542 1002.2515 315.0 534.445 5328.1209 1992.4232;
	1675.0311 1046.4688 1843.0047 583.267 910.4167 1293.2277 986.9348 316.7682 562.5924 5514.953 1998.6643;
	1653.2432 1040.6243 1794.9011 580.0 899.9334 1254.2658 946.3883 302.8818 550.1943 5330.4765 1914.1074;
];
