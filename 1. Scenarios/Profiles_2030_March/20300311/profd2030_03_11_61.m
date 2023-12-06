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
	1448.7011 814.6878 1436.3856 584.4242 769.1697 1081.5393 856.5 254.3 488.1739 4379.8864 1600.4998;
	1468.4988 861.1301 1424.5716 571.3719 757.9 1090.6779 849.7572 249.1557 472.1 4342.8775 1581.6108;
	1507.0 889.5009 1481.3998 591.9949 761.2251 1102.6385 849.5143 252.0575 472.2 4338.1439 1565.4439;
	1571.1905 934.6728 1563.7097 606.925 817.2483 1188.8 883.0 267.9719 498.5653 4517.7617 1646.6818;
	1708.7812 1053.1716 1743.9093 637.4205 921.5 1349.7232 992.5987 294.4045 578.2948 5057.5923 1878.4359;
	1868.9579 1174.6661 1901.7291 648.826 998.2374 1448.8415 1056.1501 327.3651 620.7 5716.4651 2085.4;
	1903.8285 1190.0687 1896.3894 618.4 1014.8217 1434.3415 1044.8569 331.3655 641.1309 6068.9735 2086.0001;
	1903.8788 1213.5302 1896.7614 592.4229 1005.3347 1406.8673 1038.5486 301.9451 633.6054 6156.5805 1972.6743;
	1867.8774 1204.1574 1950.5576 590.5 1000.0511 1434.0603 1051.3362 304.1719 652.4 6199.8196 1885.1568;
	1877.3127 1234.617 1951.0996 590.5263 990.081 1442.5236 1095.6148 310.6 653.3284 6000.0585 1900.3234;
	1896.7422 1249.5723 1965.9802 594.0318 934.0278 1398.9725 1090.2134 307.0907 652.0713 6254.7605 1918.3457;
	1839.8392 1211.781 1930.975 586.4485 947.8687 1336.7403 1095.6549 298.5 669.6298 6225.133 1889.5767;
	1846.8329 1210.4 1920.4128 581.0199 912.7545 1317.1173 1054.6327 295.9084 665.738 6178.6385 1839.1419;
	1855.5578 1197.7557 1900.9924 584.6092 895.9244 1289.6272 1049.9628 299.5076 640.6906 6040.2674 1831.4754;
	1846.5655 1178.3334 1899.1011 576.8981 931.3 1320.055 1083.5713 308.3674 650.5532 6066.4505 1960.5627;
	1850.265 1205.5536 1917.9977 596.5839 952.6715 1387.3834 1122.5462 314.573 658.668 6232.0483 2086.1766;
	1884.8216 1246.8845 1975.535 594.6231 1036.5286 1467.8 1201.2138 350.3585 673.2524 6196.6004 2278.6092;
	1909.0899 1288.8627 2063.4937 614.5536 1103.1 1561.273 1246.1026 374.5 695.8582 6292.4258 2410.438;
	1958.2738 1302.8096 2076.1815 613.4825 1069.5 1546.2253 1216.1741 368.0007 689.5194 6150.8922 2424.1319;
	1900.27 1247.8677 1981.9743 612.354 1011.8 1468.7138 1177.1719 355.7 671.1467 5915.1807 2270.0919;
	1806.858 1141.8781 1815.2964 591.4202 908.9695 1315.3812 1056.4342 317.6 609.4746 5497.6402 2074.6926;
	1695.9328 1099.4933 1720.7974 585.1881 850.2618 1253.3528 981.8889 277.4344 559.1 5179.2377 1924.6425;
	1562.2834 996.9685 1559.2 604.1761 790.9607 1179.0961 911.1196 244.4463 515.205 4554.9133 1694.4589;
	1535.2484 972.0893 1541.8853 603.8076 813.8962 1126.9494 866.0455 223.9053 484.2975 4319.3622 1563.0213;
];
