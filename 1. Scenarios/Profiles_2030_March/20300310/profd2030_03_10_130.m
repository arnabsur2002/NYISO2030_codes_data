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
	1404.0331 941.1348 1563.1776 609.5734 861.7653 1276.0 936.9232 277.4 549.4631 4751.3335 1908.7918;
	1371.8023 908.7 1536.2998 611.9872 828.3 1243.9557 909.2 266.1117 524.4835 4615.8608 1863.9475;
	1365.1595 902.2378 1553.185 598.3321 817.9 1250.7317 908.6196 261.6695 525.1198 4542.3189 1870.7721;
	1368.7933 906.6246 1555.5 610.7815 811.6709 1246.7547 917.8645 266.0028 538.3437 4588.1968 1952.76;
	1368.557 920.356 1562.8967 623.5322 848.9949 1311.1622 950.0 282.8 574.3 4669.9267 2003.9907;
	1446.4822 965.8839 1651.043 642.1636 886.707 1347.6187 1009.3967 312.4473 609.0202 4906.8 2075.0054;
	1538.285 1007.5668 1666.5202 643.1751 927.4083 1365.3 1034.452 309.4169 624.4484 5041.9102 2115.1356;
	1590.8564 1044.9033 1745.3419 641.8257 976.0 1440.9295 1092.3 319.228 638.9336 5192.1452 2166.1;
	1626.7061 1067.2183 1796.9582 649.6109 1028.7317 1441.8 1151.078 328.5333 656.7686 5238.9355 2219.9717;
	1635.2 1073.7142 1831.3636 632.2457 1031.2 1454.1998 1154.368 320.0504 685.2 5346.3532 2298.5043;
	1627.4757 1074.6455 1851.8348 610.6485 1016.9 1477.2039 1195.2368 328.3393 703.6265 5439.4791 2444.2959;
	1628.4158 1078.9 1854.5368 609.826 1015.4513 1469.0038 1195.6725 336.6677 672.7991 5533.4612 2570.3603;
	1666.9942 1064.7315 1838.248 617.2389 994.7959 1417.4281 1165.7367 328.9328 658.6256 5436.415 2352.7902;
	1679.3655 1090.2 1819.898 599.7618 996.2154 1423.4825 1254.1859 341.0 684.4679 5567.5601 2542.0232;
	1715.3053 1109.6 1796.6583 598.4 988.4598 1424.4187 1222.8852 357.5622 710.4703 5533.9348 2606.3115;
	1714.4151 1146.3469 1838.962 622.7 1074.8871 1482.7856 1246.8543 373.5317 718.1137 5678.716 2746.5985;
	1679.8 1134.7948 1886.2913 647.7162 1103.1 1491.8617 1243.3693 383.295 736.3591 5684.8834 2784.6173;
	1702.708 1149.6071 1879.1227 674.2737 1116.4857 1507.1208 1258.1272 402.1971 763.6365 5740.7348 2809.638;
	1692.1047 1126.0216 1885.6095 652.8642 1089.02 1494.4827 1224.7094 403.254 727.5867 5668.1057 2685.4848;
	1673.076 1069.0043 1764.3149 618.2649 1013.6212 1413.8106 1167.2569 374.6656 690.1854 5535.6417 2486.4111;
	1619.5718 1011.8604 1730.9302 598.1 945.1 1353.1985 1100.0559 348.1009 660.1505 5361.3388 2360.4006;
	1559.3486 961.3033 1601.4251 565.2176 890.949 1288.587 1028.9472 319.5255 595.0 5050.0274 2082.4851;
	1448.0 896.8578 1508.0438 555.3 809.264 1226.0084 942.5 288.1268 531.0 4795.2337 1957.362;
	1411.1457 889.5841 1503.7432 549.3614 753.8936 1182.2498 884.0804 269.8902 492.6155 4581.3812 1910.2439;
];
