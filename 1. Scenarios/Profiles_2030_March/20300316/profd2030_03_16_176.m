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
	1435.5211 874.1262 1471.0165 570.1506 701.4865 1067.0969 818.9 224.0797 482.3109 4232.3456 1644.0436;
	1455.6463 865.622 1475.8663 580.2806 711.018 1063.7627 821.4 219.4617 456.5291 4116.5497 1624.0553;
	1459.1888 861.9727 1486.0735 570.072 697.1408 1066.4219 817.2206 210.7774 467.2 4174.5347 1592.8482;
	1503.9736 899.8644 1545.1 580.1 752.2784 1124.0951 839.8237 221.4072 473.0 4299.2468 1673.6;
	1565.3302 969.3234 1613.8281 590.7669 829.2705 1169.0 872.5538 240.9624 509.9799 4432.0835 1759.6661;
	1640.9219 1037.0358 1745.1755 614.3667 872.2372 1218.8938 937.44 261.3995 548.4642 4680.4948 1893.1389;
	1687.2379 1046.6508 1802.9358 603.0227 932.0428 1284.9883 974.7808 266.5981 581.7067 4864.3266 1980.0808;
	1710.0249 1035.4324 1819.7304 596.6 939.471 1270.9116 966.361 221.9845 586.1 4916.4931 1983.2813;
	1763.2216 1058.5026 1831.3468 595.8312 926.166 1297.5152 990.4968 257.6408 585.4919 5175.0454 2072.0031;
	1737.3404 1016.3599 1824.446 582.6432 894.5527 1273.681 986.092 258.1794 596.3522 5078.9787 2046.8987;
	1711.9215 1038.2 1853.7498 593.5649 891.2 1260.2627 960.985 253.6545 606.1402 5271.4728 2011.0514;
	1690.8263 1033.0905 1839.6324 590.3717 880.8 1260.8152 927.4531 240.9689 588.517 5168.1255 1942.9332;
	1634.8157 999.171 1772.5236 601.495 866.7354 1238.5132 923.0994 234.0414 588.5063 5200.9208 1886.8431;
	1646.506 1007.1397 1758.5597 610.8984 873.7333 1241.899 945.7093 253.4343 567.2791 5119.2703 1820.2571;
	1655.2261 1043.0597 1838.0615 609.8318 928.046 1287.1146 961.6445 271.1396 576.2 5163.8468 1913.059;
	1657.0787 1052.4 1850.6233 661.3351 955.7923 1291.7034 991.5874 266.9 603.2317 5286.7976 2043.5798;
	1730.8 1093.0437 1900.0723 629.3113 959.7553 1336.7204 1027.9448 279.8773 628.4 5368.3037 2098.8377;
	1829.4285 1179.5651 2029.7347 638.0329 1003.2221 1432.9212 1102.7 302.7 661.7688 5484.5451 2275.6187;
	1906.6048 1188.2678 1990.7146 634.0881 1006.7 1397.4961 1101.5 310.5539 651.3 5493.6671 2277.2511;
	1827.6894 1108.8341 1910.0 619.4068 966.7543 1355.4457 1065.1359 306.3848 632.7 5303.0272 2233.5;
	1786.6168 1053.7933 1820.4844 610.1 900.3247 1270.1 1034.2 295.0433 625.5176 5191.6675 2165.7821;
	1684.2773 973.1 1709.6851 603.9132 848.1446 1208.9234 954.0987 274.3935 583.6 4958.9326 2006.5557;
	1600.2962 941.4736 1721.8524 618.6609 855.1571 1195.4026 948.4558 274.9622 567.5248 4898.6908 2054.1401;
	1557.9 920.3 1651.9614 616.9207 814.8596 1185.9287 947.0 262.4486 542.7786 4785.8444 2030.4296;
];
