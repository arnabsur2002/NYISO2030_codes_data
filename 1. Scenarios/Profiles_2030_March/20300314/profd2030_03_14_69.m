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
	1568.7186 927.9488 1616.2483 584.9 799.8423 1192.5748 881.2432 275.2551 519.2239 4570.3493 1762.9409;
	1553.6837 911.6 1630.2649 580.4 797.5 1206.6612 865.1146 277.6531 513.0 4466.5095 1736.2;
	1572.9165 933.6 1646.4779 586.8416 821.5 1218.124 875.224 278.4011 515.6 4427.1218 1771.0463;
	1626.6783 998.4573 1731.7628 584.2668 858.4 1305.8733 918.3067 304.7299 550.6 4672.8439 1855.2028;
	1762.9986 1127.3691 1922.6726 611.8 982.1048 1482.2959 1028.7585 351.9 625.0 5228.1427 2092.3133;
	1862.9349 1207.3821 2025.0881 620.9698 1037.0838 1664.8083 1106.5075 378.5684 705.0673 5763.1977 2243.1483;
	1872.4349 1226.8109 2013.8562 619.5 1011.659 1589.5117 1130.0687 398.5528 727.9933 6148.9279 2327.1841;
	1834.1821 1229.1827 2021.8177 615.992 1031.2938 1554.1065 1128.2326 391.2633 779.4296 6330.4507 2336.86;
	1843.3769 1216.917 1987.0244 595.9293 1017.2 1545.5472 1137.9318 418.4313 768.4289 6397.1384 2333.5479;
	1807.6701 1190.2848 1972.8213 582.4954 1006.4626 1528.3892 1145.0603 397.0798 762.6518 6450.4989 2323.351;
	1814.8013 1173.2801 1944.4275 602.657 990.7158 1514.1742 1165.539 420.7131 782.9673 6577.7959 2337.8243;
	1822.7424 1178.7 1962.5645 593.961 960.5 1483.8538 1142.5185 401.3863 741.5645 6529.1082 2291.8293;
	1761.3184 1160.9 1955.4397 593.4266 932.8245 1452.9698 1123.435 400.2383 751.007 6463.4142 2241.8497;
	1759.1 1157.426 1917.9358 576.4 927.0823 1426.2408 1140.7728 411.6848 749.5344 6473.2078 2204.5995;
	1765.4 1168.6814 1950.4976 552.5241 915.8888 1396.8256 1152.2928 406.1094 747.0796 6551.425 2256.2782;
	1698.2 1165.5 1894.9 557.3 946.6531 1427.9481 1131.3495 431.7953 698.9138 6553.3369 2243.0795;
	1670.5765 1116.5432 1916.3128 555.5328 920.9957 1401.2278 1074.9106 397.4277 681.0947 6169.5858 2262.5984;
	1712.3656 1185.8654 2010.9615 555.78 932.8623 1475.8036 1159.0684 404.6117 734.1448 6267.5747 2432.7755;
	1722.2194 1190.1169 1969.7 574.5228 941.2875 1467.7193 1198.986 395.9752 723.8585 6241.8059 2429.1429;
	1698.4765 1109.8978 1873.2 564.3196 872.39 1364.0008 1141.4362 364.1853 683.8308 6016.8887 2310.8017;
	1617.4878 1042.2148 1786.5 549.1 832.8 1301.6258 1083.8652 337.5489 643.3355 5657.9755 2140.7818;
	1576.1 979.9778 1663.2195 535.6255 769.0209 1161.1913 978.1553 299.6004 578.5 5199.7707 1947.1334;
	1540.3311 917.4 1600.3905 512.5232 707.2347 1146.069 911.9 273.7773 551.6949 4920.5122 1799.4038;
	1511.4144 907.3885 1568.5366 523.2309 714.0301 1116.6789 872.6143 266.9285 525.7283 4596.3017 1740.8736;
];