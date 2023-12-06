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
	1473.9253 865.2373 1492.7067 507.8 714.0262 1079.4294 872.06 279.528 485.132 4805.4964 1692.7462;
	1477.8083 872.8992 1505.2847 493.1126 712.8 1091.5419 861.9372 274.6439 488.1706 4766.8312 1695.2131;
	1511.381 871.5544 1541.7761 471.6767 745.7 1102.4 875.4643 272.6296 494.6 4831.1149 1721.5779;
	1547.9057 938.0723 1623.3783 489.1421 803.1 1172.8 915.2185 280.8943 528.0 4969.0035 1800.1;
	1682.9501 1053.8283 1828.9896 530.3844 882.5754 1292.4981 1007.0407 317.1 614.7705 5486.3887 1997.1422;
	1748.3 1108.0199 1931.8109 547.3352 939.5378 1364.7326 1067.7311 330.3392 684.7 5719.7461 2135.3554;
	1755.5952 1073.7444 1929.7909 549.8845 929.3269 1380.9583 1093.2286 337.1 691.0902 6018.4729 2204.745;
	1828.8752 1104.9428 1977.2521 527.9683 964.6481 1387.3078 1120.9162 352.703 710.5967 6324.6444 2271.5892;
	1860.6182 1120.3647 1987.898 503.0561 925.459 1328.4 1106.0081 340.2054 696.3 6295.2427 2221.2335;
	1865.5474 1137.4848 2006.8 505.358 985.2041 1331.1109 1137.5163 340.8787 694.2 6508.943 2400.3349;
	1889.3968 1160.5567 2011.5995 507.3812 994.1624 1296.0029 1118.9312 358.0514 697.6 6522.7345 2372.6921;
	1893.6123 1144.4147 1978.3077 509.307 978.5188 1337.2552 1123.5 350.5856 699.1993 6666.7642 2408.4683;
	1867.5512 1140.4 1952.4507 506.8481 964.3698 1300.1 1092.8545 353.0774 692.7705 6475.0282 2438.2867;
	1816.8947 1122.7 1929.2679 485.6395 954.0172 1310.5101 1040.0387 333.8571 679.9404 6255.374 2312.2543;
	1829.912 1109.8843 1924.0478 514.8419 966.9414 1336.602 1006.7904 344.0 674.0 6241.5277 2282.6;
	1830.7632 1132.2694 1937.4 524.6 971.6974 1360.9853 1037.4599 344.8742 674.506 6356.4788 2305.2973;
	1856.1765 1105.0945 1963.5058 533.4606 1001.8294 1375.8952 1047.6933 334.4898 662.6359 6218.5769 2341.7148;
	1882.5329 1120.1429 2000.0957 543.3778 1029.3 1413.2806 1072.9019 336.3376 697.6 6230.0334 2396.0591;
	1922.4806 1119.526 2017.7836 551.5501 1044.2164 1427.5646 1095.5379 347.9035 693.1 6194.8422 2390.9535;
	1832.4578 1063.436 1879.0212 536.6589 979.3385 1342.533 1029.1853 327.3387 669.4159 5841.7855 2275.6992;
	1761.5587 1005.3188 1782.0739 520.593 917.8873 1284.6243 978.516 312.6065 634.1298 5422.8182 2113.5592;
	1629.4504 920.018 1623.5175 500.7 844.0818 1208.9089 900.3457 264.4925 574.5397 5168.1981 1944.3446;
	1595.7094 908.3601 1592.1002 472.7654 799.1728 1198.3214 908.8227 259.9567 523.3564 4949.6756 1790.9874;
	1584.5933 883.7719 1528.2 475.5753 766.9349 1212.563 878.1249 255.9141 501.7028 4826.3131 1710.5866;
];
