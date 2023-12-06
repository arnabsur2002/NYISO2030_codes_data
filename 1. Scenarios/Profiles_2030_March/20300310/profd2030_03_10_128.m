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
	1527.1938 911.6094 1600.2 578.7993 838.9686 1241.1134 905.1998 284.6 560.7112 4801.4921 1844.0;
	1483.1127 889.1879 1543.8337 576.4762 794.5668 1203.3905 875.844 265.8718 525.6338 4577.8925 1765.4841;
	1481.7213 898.4761 1561.3397 581.7557 811.3 1205.2 886.7581 274.0927 528.9 4562.0696 1803.9477;
	1485.9 908.1492 1590.4613 591.6044 834.0494 1191.2395 897.0144 277.5 549.9614 4609.7248 1819.2446;
	1552.8239 951.1264 1654.4321 604.773 860.0 1264.5324 939.4 282.8 555.3436 4674.2905 1884.7379;
	1605.5 1015.6 1711.9637 616.4769 886.5227 1285.9247 989.5 292.9007 572.6988 4800.6732 1996.7944;
	1637.4657 1041.4219 1754.0361 607.246 955.9315 1340.208 1042.2582 303.6114 588.0 5009.819 2068.7691;
	1708.7115 1075.9717 1854.8515 632.2075 1001.8 1406.8395 1117.1954 334.5205 619.789 5256.2979 2200.2016;
	1689.5289 1077.594 1878.2298 634.6001 1019.3507 1439.7 1159.6683 351.6 636.7037 5443.4402 2270.2229;
	1701.119 1100.9 1864.7078 607.0282 1029.4773 1447.865 1188.7725 330.4 651.7352 5470.3876 2268.348;
	1735.2133 1112.0332 1857.6787 607.9407 989.2608 1400.3513 1163.2927 326.1481 646.4478 5450.7125 2173.2563;
	1715.579 1162.2416 1848.032 606.8 1004.5 1419.2053 1173.6519 325.1 649.1296 5505.7538 2294.784;
	1666.2916 1103.0212 1843.4582 600.7728 977.8869 1383.8053 1160.8715 319.7463 631.592 5463.8736 2287.3414;
	1708.5211 1146.2029 1860.8674 579.1334 980.2894 1390.7999 1155.566 316.8254 646.8 5570.1483 2352.1467;
	1715.3275 1126.9642 1871.6214 571.8156 1011.1139 1417.4839 1166.9119 320.1211 642.0906 5853.0506 2522.5184;
	1754.0192 1133.5 1882.7924 568.7913 1035.6217 1452.2423 1245.7353 342.8843 681.5644 6205.4925 2722.1679;
	1709.9872 1138.6 1921.5 558.0 1046.7688 1495.6635 1204.8681 339.2 672.8 5876.2507 2582.2111;
	1753.0808 1160.9827 1939.4322 578.5603 1075.1117 1575.0 1236.4518 353.1298 710.3 5890.0404 2655.9452;
	1764.3029 1163.4991 1918.345 542.4079 1060.7215 1522.6 1224.9365 360.1869 711.9063 5937.009 2559.9471;
	1741.4228 1113.2026 1864.7292 547.0 992.8796 1429.2027 1132.3075 342.1044 670.9806 5694.3383 2331.0525;
	1675.5879 1046.3 1822.4692 500.3016 941.1593 1357.1225 1066.1714 302.1637 638.6 5581.0328 2212.7175;
	1623.0449 981.1164 1685.1251 457.9469 857.0224 1260.2479 970.9826 269.0409 586.2586 5193.969 2038.7416;
	1527.8071 916.5924 1569.3636 460.7113 768.3034 1110.3986 899.2944 245.3479 524.3136 4706.5401 1795.5;
	1508.6852 913.7904 1559.1 505.8951 715.3581 1086.56 869.2996 227.5979 509.5584 4573.1494 1731.958;
];