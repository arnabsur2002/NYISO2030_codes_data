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
	1440.0074 916.0491 1552.076 562.4 790.7 1128.748 877.9808 245.7 507.9 4428.8 1682.0;
	1416.7389 913.9154 1548.6052 569.6269 767.6058 1135.8093 868.6081 244.3481 503.6056 4407.0346 1661.3134;
	1448.2995 934.6 1553.9482 573.4645 778.0233 1131.2852 874.3926 241.103 497.5996 4410.1333 1681.8293;
	1527.1226 1020.2361 1675.6372 574.3 844.3 1255.1 950.7414 266.2 541.5112 4719.3433 1797.6055;
	1718.1977 1160.6975 1877.2 596.5463 951.5389 1416.7826 1040.9708 313.4393 623.6086 5243.1358 2013.8514;
	1816.31 1254.6829 1951.0151 595.9 993.9938 1514.6707 1098.1 332.046 683.9779 5703.8551 2160.9983;
	1818.6287 1252.4946 1959.4133 615.022 1016.6297 1507.2204 1122.5 353.8 687.2 6031.4 2233.3896;
	1796.6816 1251.7932 1881.8978 606.4585 1043.4 1479.7788 1106.0321 350.8 694.0473 6131.4924 2176.6;
	1805.2281 1235.1 1845.0033 598.6935 1010.5244 1483.5451 1131.8847 346.5769 708.7 6315.5193 2229.1893;
	1823.092 1234.5166 1821.4303 574.9902 944.33 1431.3316 1116.0914 341.5713 692.2481 6302.5168 2089.4563;
	1793.211 1238.0 1794.4673 585.1701 974.0702 1383.0022 1114.0151 333.9659 713.2 6357.4796 2167.2413;
	1816.8745 1230.0907 1807.265 581.1741 949.1 1372.8752 1118.8866 321.4502 717.2988 6355.1481 2069.0726;
	1810.1204 1228.9195 1769.6251 611.1878 976.7526 1377.9078 1094.1 321.7 713.8138 6319.7333 2055.073;
	1817.5908 1197.7424 1762.9154 591.5057 984.258 1373.3263 1111.4122 326.0 702.5842 6265.4208 2046.6858;
	1787.2006 1180.6907 1709.2952 608.1483 986.8805 1373.0741 1105.9516 337.476 716.0705 6457.6342 2145.9166;
	1739.1454 1160.223 1726.6025 606.5553 969.5184 1385.5157 1113.6322 355.9092 745.9658 6484.6931 2202.2;
	1736.5055 1171.8173 1739.7746 610.4314 961.0863 1424.0506 1123.6663 355.8792 724.9201 6217.1247 2271.6736;
	1750.5021 1200.4 1768.1677 600.3893 1003.0 1425.5142 1137.4 359.2766 724.4163 6148.5724 2346.0868;
	1768.2077 1224.3844 1808.9488 598.3 950.8087 1408.2225 1154.1 371.1372 708.8371 6027.8508 2340.5392;
	1718.5055 1153.7935 1716.5654 594.0396 903.026 1327.31 1107.1988 340.9427 685.3488 5806.3 2254.0781;
	1605.6711 1041.4635 1646.844 576.4 832.4947 1252.6523 1060.8503 302.774 633.282 5527.8041 2092.4477;
	1505.3269 961.8369 1500.305 551.3219 752.7 1159.0197 972.1735 260.5515 576.617 5041.7836 1859.4552;
	1487.6 905.4639 1469.3917 561.4293 731.3809 1125.135 927.5365 241.4942 535.6667 4739.8352 1767.4948;
	1443.5418 888.3 1410.0154 544.7917 695.9389 1106.9323 889.5805 241.1275 520.0 4526.2 1715.1063;
];
