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
	1527.7 870.7806 1507.263 572.9414 749.0991 1065.4445 829.8 267.998 489.7 4367.682 1663.2296;
	1502.4281 861.2568 1501.2586 564.6 733.5448 1064.6954 821.3 259.9548 470.4267 4379.1464 1642.0895;
	1499.9 865.7087 1507.5577 570.4784 755.4234 1075.2448 823.6399 252.522 474.996 4299.6672 1646.9953;
	1551.4233 901.5 1556.9731 580.4349 779.5 1111.8118 838.1865 258.7341 496.0187 4426.248 1701.4;
	1611.1545 961.1941 1648.1687 594.9563 841.4406 1174.7489 899.1213 284.2406 508.4314 4530.4347 1816.7745;
	1691.3647 1006.9348 1698.9453 601.3243 919.8249 1238.9069 943.8 306.4172 551.7108 4779.6783 1933.7;
	1731.417 1016.1079 1724.5965 606.1 945.6083 1282.901 989.1093 311.1 597.087 4984.2567 2009.2773;
	1801.107 1062.3435 1761.8422 611.384 981.475 1322.7302 998.5 325.2142 614.3286 5187.892 2032.5;
	1871.7238 1108.6769 1845.1455 591.6 977.2049 1374.2405 1033.1346 341.4036 648.6616 5440.4416 2093.9187;
	1845.2932 1080.9261 1812.5 607.2 938.4984 1373.0371 1042.4 342.1294 658.8 5578.7283 2179.655;
	1832.4985 1094.7 1808.2633 598.38 944.8092 1393.4859 1027.4245 342.5893 655.6933 5580.0666 2163.5847;
	1786.5128 1061.9725 1780.3322 601.3043 932.5398 1339.9984 1020.5074 335.205 659.5847 5541.4 2135.2179;
	1711.5392 1040.0 1712.0413 585.4878 911.8705 1239.9863 982.8728 321.2504 629.6994 5463.5 2037.8638;
	1730.167 1019.3738 1719.4765 603.4681 917.9395 1291.0275 991.6446 328.9069 635.5943 5421.7613 2063.4454;
	1699.035 1046.2426 1758.9004 591.3 919.5693 1302.0257 1024.0503 324.2899 636.5928 5313.7814 2068.9874;
	1722.7734 1065.7 1810.3957 602.2987 951.8559 1337.9 1037.9586 319.2 621.3884 5353.1978 2136.8317;
	1758.4 1092.292 1825.8116 602.6 927.9495 1372.6292 1044.3666 328.0753 616.8733 5371.6831 2158.8066;
	1826.0032 1145.2841 1912.3 621.3499 975.8507 1383.6476 1082.6573 351.0439 634.2217 5396.1157 2277.9847;
	1856.3264 1137.9259 1930.0874 639.5451 988.6713 1393.5351 1084.0608 348.1356 638.0 5534.9661 2323.0759;
	1823.8455 1078.8 1849.1 612.1 939.4 1333.1015 1054.5182 336.059 614.944 5408.619 2224.4945;
	1764.313 1024.2901 1732.493 575.7046 845.1132 1276.7708 1009.3646 304.0326 604.7273 5216.3152 2124.2907;
	1677.1 955.7401 1621.6918 581.1 805.8791 1186.9959 952.8087 295.9039 589.2664 5013.7515 1975.4;
	1604.3768 930.8 1578.309 593.8299 795.8681 1107.4532 880.6022 272.0888 545.8 4793.8 1817.8707;
	1589.4933 907.8 1581.0461 589.9274 784.072 1083.0047 851.739 258.1613 528.1485 4692.8619 1775.2007;
];
