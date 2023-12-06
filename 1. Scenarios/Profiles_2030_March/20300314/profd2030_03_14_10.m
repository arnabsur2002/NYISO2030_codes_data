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
	1483.6923 957.7554 1593.3218 591.8292 733.3466 1135.0 850.5811 221.8811 558.6394 4594.351 1724.8324;
	1500.4377 954.9187 1599.3537 584.5264 740.541 1140.6777 849.4 209.309 544.0718 4499.0617 1727.9192;
	1517.5928 981.6987 1647.3961 590.5359 767.3 1179.4 880.5762 235.8546 558.1539 4600.3905 1812.4028;
	1581.8534 1053.6464 1740.5255 581.8918 799.881 1246.0594 930.3091 249.1247 575.7202 4764.2211 1872.5431;
	1734.0322 1178.3243 1956.591 606.5391 927.6102 1396.4965 1047.0061 297.504 635.2823 5339.1 2119.7781;
	1842.7971 1270.707 2044.6556 618.5 973.6214 1475.0347 1117.7288 324.4 703.7617 5904.4986 2235.964;
	1810.0492 1248.6 2012.6317 600.8261 923.3996 1461.7856 1119.2113 309.4072 698.8388 6165.5625 2210.3135;
	1848.6 1254.8 1994.5355 577.411 934.4794 1442.7665 1155.5 306.2 723.8529 6371.6631 2251.6475;
	1833.6183 1246.1606 1977.8 579.0105 912.5625 1465.9298 1166.0437 322.9591 733.2183 6457.2026 2251.8701;
	1859.5632 1251.7304 1959.9525 575.9 893.7 1460.8612 1153.4893 306.9284 694.6341 6434.7721 2225.7017;
	1788.4474 1233.2473 1962.0775 582.4299 866.5995 1460.0313 1105.0153 292.0868 692.9066 6308.737 2182.695;
	1758.8 1213.7542 1874.8219 589.3633 846.0754 1424.0897 1050.8267 299.5193 681.4829 6282.1406 2164.0692;
	1732.4 1180.2675 1813.179 583.9504 825.9611 1374.3297 1059.3105 304.9652 686.312 6219.262 2163.8681;
	1692.5085 1170.8852 1813.7992 576.3785 838.0514 1321.0556 1049.599 304.7394 701.5542 6205.7398 2194.008;
	1705.9208 1190.4 1818.4077 563.3751 855.3064 1351.63 1074.0893 306.2 717.4101 6244.4 2308.4268;
	1668.3319 1164.8 1804.7478 560.9544 841.7635 1383.8 1063.8 294.7977 707.9961 6198.2867 2297.7989;
	1646.9169 1157.9795 1818.5 582.0392 852.4892 1399.3714 1076.7129 288.6019 710.5867 6025.2519 2335.4575;
	1605.9033 1160.165 1845.475 592.4572 878.978 1446.4206 1119.9627 306.1642 743.904 6015.9464 2394.6692;
	1665.0452 1171.0 1864.3484 567.6415 930.016 1460.0 1132.4102 316.4791 731.4119 5859.4921 2369.2523;
	1595.8538 1120.2866 1782.9914 567.0394 835.1836 1356.0828 1061.3796 290.3 686.4 5343.4093 2229.16;
	1535.7899 1054.4703 1671.6918 553.4 761.6855 1258.1 989.4001 272.2893 628.7225 5106.4408 2089.9452;
	1431.5695 986.658 1553.7437 554.2584 706.1699 1150.0355 897.3 236.1369 577.1 4792.6394 1905.8901;
	1372.9468 928.1976 1548.9 533.7298 698.8164 1150.2803 843.7681 220.9203 516.6892 4337.7929 1788.8773;
	1332.3058 904.7 1539.1111 516.3754 692.2857 1101.2765 817.3236 215.6632 504.5156 4396.8963 1705.5264;
];