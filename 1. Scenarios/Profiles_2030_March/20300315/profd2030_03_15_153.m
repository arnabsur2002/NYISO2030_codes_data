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
	1521.2165 881.548 1520.6105 551.518 726.3515 1062.6485 805.3 243.5468 481.2529 4276.5892 1639.8088;
	1499.3438 874.7 1503.2457 540.5039 724.2541 1075.9804 791.4279 232.1215 470.0274 3960.8804 1592.6591;
	1508.7725 867.2444 1496.533 535.6615 728.1726 1080.3064 799.4808 234.2 479.232 3994.7119 1612.6168;
	1594.9595 939.9812 1619.2544 565.5863 813.8655 1152.0204 841.0731 264.3 525.7 4105.5436 1646.1062;
	1704.403 1035.9749 1820.0433 587.3395 914.4466 1309.4737 939.9676 307.8251 589.8143 4769.8586 1934.5136;
	1801.5704 1117.4979 1914.4864 601.0 966.0343 1379.806 970.6025 330.8233 638.4956 5246.9651 2085.9676;
	1803.2026 1126.183 1931.478 584.5437 980.0284 1344.2951 930.5288 327.7794 634.6952 5065.1014 2062.9016;
	1840.1922 1113.6912 1899.7011 579.2095 977.5494 1286.318 883.3586 316.7314 632.8029 5179.1661 1973.5581;
	1782.6115 1113.0869 1828.6392 580.6 972.0263 1268.4979 828.5722 300.2498 625.8317 5339.8172 1991.6912;
	1792.8 1120.7863 1847.074 586.7978 1024.8192 1292.0852 805.8567 308.8 656.4448 5602.6686 2081.6561;
	1763.9277 1097.2795 1832.5251 576.6922 1024.407 1258.3779 729.2223 296.7044 626.7438 5000.7058 2089.4199;
	1797.8192 1109.9 1855.9781 554.8718 1029.1334 1271.8318 685.6689 291.422 615.208 5046.299 2060.1;
	1800.373 1100.4285 1831.1226 560.9111 1007.6954 1262.8475 660.1782 287.8137 600.1644 5277.2439 2045.6;
	1789.5565 1080.7505 1771.4694 551.629 905.9297 1295.9 736.5613 288.1265 632.5452 5330.6259 2124.015;
	1774.6923 1091.0809 1808.3835 555.0148 911.124 1291.2 838.1247 280.6588 613.2731 5597.8253 2186.9162;
	1754.4711 1120.5015 1873.1056 587.6051 943.8685 1336.6241 957.8974 301.2116 651.9 5844.4623 2217.3812;
	1711.2965 1086.7941 1876.3469 630.8085 976.4589 1343.6097 995.3858 332.5831 649.9943 5655.7829 2262.2997;
	1766.8699 1129.7858 1922.3424 604.1101 1019.8959 1418.4809 1069.6 343.8133 690.3 5586.1303 2371.2493;
	1818.8112 1148.5436 1952.3707 596.5862 1022.6 1427.8507 1076.4491 328.4992 677.1018 5351.8671 2349.7608;
	1793.3633 1096.9 1865.5914 578.7161 983.9319 1351.8082 1041.788 315.9 665.9926 5230.1304 2240.9;
	1722.7567 1040.3138 1715.4942 558.2 894.6 1259.1256 1007.3781 297.9208 631.8517 5103.2311 2121.7;
	1596.2407 972.3508 1600.8224 529.4407 843.4 1152.4559 910.4509 261.7654 589.0425 4622.987 1960.7713;
	1590.6556 909.2492 1543.8487 550.1 755.7 1121.4047 863.8254 232.1329 522.4547 4092.2243 1798.6146;
	1548.9245 875.0276 1497.2296 545.2 724.048 1123.2 835.368 220.7883 475.3 3860.7746 1660.793;
];
