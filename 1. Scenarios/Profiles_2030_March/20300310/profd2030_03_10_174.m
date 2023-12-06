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
	1498.7714 909.3049 1503.8567 577.4676 838.1957 1172.4385 890.7106 276.405 557.676 4838.4786 1868.5671;
	1472.6 895.4481 1520.8062 570.5838 829.5347 1195.8713 877.129 266.849 539.3161 4660.1338 1793.4806;
	1485.6209 907.1899 1524.8401 581.8191 816.0509 1186.6136 888.5273 267.1967 532.4109 4662.5143 1801.6155;
	1491.6994 934.9627 1573.1 587.7615 849.8522 1221.8 901.6026 267.4408 551.4 4696.9965 1837.6015;
	1529.252 964.8358 1659.3 595.1963 911.0336 1285.1 960.121 304.5055 576.184 4866.5049 1992.8104;
	1583.7836 1002.2775 1741.616 617.0661 939.1 1358.7897 1014.8207 326.4858 606.3186 4999.8207 2053.5859;
	1603.7 1024.1758 1744.9536 633.7873 943.3872 1396.3 1045.6659 313.5 601.8 5121.9893 2080.7505;
	1606.5118 1018.3067 1759.1748 639.0602 988.1212 1463.1974 1075.6171 315.3897 631.9612 5263.8539 2173.9932;
	1610.8975 1026.2621 1747.0574 627.5752 1015.6493 1419.5 1085.5087 324.5682 637.3291 5306.2804 2112.773;
	1645.2985 1037.0604 1757.5003 633.101 1003.5938 1410.0587 1081.5 307.6764 617.7375 5289.6916 2042.8438;
	1636.5699 1041.7317 1795.7672 627.565 1013.0147 1436.6076 1102.1561 321.8 622.7659 5377.1881 2133.9093;
	1595.7178 1029.1537 1770.2842 601.6815 968.8 1432.8507 1116.0171 307.2751 628.7076 5476.9785 2115.472;
	1568.8166 1017.433 1743.7895 610.8 933.2366 1409.4585 1060.1996 288.6277 623.1142 5401.6559 2071.7;
	1573.1293 1005.3 1717.8406 584.2909 938.8103 1372.3111 1033.1 289.6991 605.7414 5323.0402 2083.8429;
	1576.2201 1030.6984 1696.6965 594.6332 940.9337 1412.7172 1070.1754 277.8942 603.7996 5361.238 2111.7502;
	1614.5598 1076.9784 1774.6665 605.5062 997.2607 1453.7795 1112.7237 305.8826 630.9 5345.4982 2184.487;
	1626.703 1103.8598 1799.8489 633.135 1003.8869 1484.8729 1147.5 330.0018 660.9 5474.184 2261.4651;
	1678.0892 1159.1066 1924.3 638.8 1052.3267 1548.9072 1202.4714 338.2422 702.2 5623.9902 2407.0346;
	1717.4964 1183.0459 1944.6098 626.94 1064.7923 1526.5707 1183.5416 331.4064 713.1899 5660.0997 2374.7277;
	1660.5967 1130.5415 1842.4583 609.7477 985.8893 1434.0113 1129.8067 307.436 696.9319 5505.6148 2334.8804;
	1607.2614 1076.7991 1769.0224 583.7567 918.7285 1340.7 1070.0222 298.1209 662.0 5391.381 2217.8786;
	1548.4792 1023.1275 1728.4731 562.2032 874.3809 1252.3 983.1971 269.8089 611.0 5084.9448 2102.4897;
	1491.7875 920.9305 1570.9249 556.6452 817.8882 1132.8374 863.2842 255.2479 523.0722 4537.5572 1759.3499;
	1502.6521 908.5923 1557.5023 556.8501 805.0 1105.9259 839.305 246.1 491.8205 4339.8547 1706.5199;
];