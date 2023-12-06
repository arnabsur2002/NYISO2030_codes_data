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
	1542.7 898.996 1518.5444 559.7752 711.8 1029.253 842.7 235.755 490.9633 4376.6817 1685.0624;
	1537.5831 894.1247 1508.5309 545.9987 723.7657 1025.8789 841.9477 233.3593 484.2332 4290.706 1642.1322;
	1532.7045 903.9635 1532.0032 553.7587 711.7302 1027.3903 833.8577 241.8 486.9497 4258.5347 1646.2177;
	1564.5314 945.9112 1582.8568 569.7515 760.6604 1079.8348 844.6469 242.0524 490.6761 4250.6599 1653.1362;
	1620.41 986.8 1654.9841 575.7964 820.5 1141.508 909.2278 255.8589 524.3974 4431.3844 1754.659;
	1656.7305 1032.648 1736.3499 578.2 865.7259 1179.8807 953.6901 278.3768 530.8861 4581.9247 1779.3346;
	1692.6469 1064.8109 1793.7925 561.3734 932.7483 1234.0451 997.9754 298.1497 559.4944 4742.963 1828.9986;
	1714.508 1077.0 1852.6979 558.9581 967.2 1260.2139 1040.7658 304.2716 577.8 5077.7614 1888.7875;
	1740.834 1082.4235 1872.6839 533.3339 970.9238 1269.0221 1061.4 298.3079 603.5346 5222.8 1939.9;
	1752.2 1099.6109 1907.3079 528.3567 963.3521 1246.9694 1059.3556 298.5272 590.5672 5204.6252 1803.1695;
	1767.4044 1080.5506 1791.9564 535.935 894.3179 1213.2295 1038.1532 288.8903 591.5917 5111.1151 1775.5129;
	1805.6266 1097.9481 1841.9923 522.9344 890.4505 1211.805 1032.86 286.2758 600.7544 5231.6255 1809.8439;
	1781.7857 1063.0232 1811.1922 532.7205 895.7962 1164.629 1009.2416 273.2649 596.1011 5113.5811 1765.5378;
	1692.7086 1038.0448 1763.0219 532.5576 850.6232 1177.0462 970.5 271.1074 584.7236 4886.0071 1845.439;
	1746.1024 1065.3527 1800.9172 544.8926 859.1028 1224.2842 994.362 298.0183 591.9919 5113.2407 1944.9786;
	1726.8754 1060.6844 1805.6829 571.1761 878.8168 1255.7121 1009.0648 288.7053 610.6 5117.5809 2016.4242;
	1704.8356 1060.1 1847.8806 567.3944 926.759 1287.149 1075.6181 317.3374 628.4294 5224.2238 2079.2054;
	1738.1434 1095.3568 1892.0026 596.0 969.6473 1343.99 1129.6063 335.6911 658.072 5230.1162 2223.4789;
	1837.5202 1126.9 1903.6738 574.1 997.2 1364.681 1174.0386 343.1 686.5061 5393.6785 2310.2;
	1789.3625 1096.0718 1829.895 574.4576 927.4416 1296.9812 1117.1345 312.96 682.2042 5319.5036 2236.5633;
	1740.5743 1033.0 1740.3 564.3113 903.6 1251.837 1076.7012 296.6551 650.9798 5235.8121 2176.9353;
	1680.4481 991.1007 1651.9673 547.8 840.903 1204.6323 1043.7842 291.1019 628.1436 5029.93 2049.4688;
	1617.5654 948.703 1584.0918 556.9011 796.1246 1153.0538 971.1318 275.4 593.062 4961.6699 1886.9271;
	1571.2899 916.1016 1592.1724 544.034 772.5 1101.0412 915.4516 256.6936 582.5509 4768.1784 1785.7;
];