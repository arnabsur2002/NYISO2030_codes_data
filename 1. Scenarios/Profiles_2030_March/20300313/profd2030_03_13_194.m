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
	1519.0216 941.3579 1556.019 600.6994 769.9715 1106.1869 861.6037 228.0 469.9288 4146.637 1663.319;
	1538.0492 951.3 1561.5582 589.6884 775.6477 1124.907 859.3008 241.0951 475.7476 4366.7463 1640.1996;
	1566.8 977.4679 1648.9846 593.0 806.5052 1137.924 880.6383 249.503 478.6 4401.4885 1720.6127;
	1621.9031 1017.0667 1710.8503 606.6119 868.2143 1158.2377 913.5097 264.9138 508.0012 4609.4054 1820.0887;
	1795.69 1163.802 1881.6418 612.4 935.7429 1337.0021 1006.5967 292.9469 586.2891 5118.2192 2091.4781;
	1884.839 1213.1631 1939.0559 621.8175 1007.8145 1403.6913 1071.6602 341.8974 649.9195 5815.7512 2248.3837;
	1868.952 1178.7989 1950.9985 588.2 1014.4887 1307.4676 1048.7654 327.3917 646.438 5895.5403 2212.2848;
	1873.3796 1198.5542 2000.7371 595.9884 1013.7 1282.653 1042.8825 327.0 634.2094 5796.1396 2123.3125;
	1913.8269 1208.0391 2000.519 576.3905 982.7201 1308.41 1036.3271 313.3537 641.3574 5876.7279 2069.8;
	1891.2815 1152.7913 1894.3981 577.9917 973.62 1269.0098 991.217 311.5296 579.6874 5814.6375 1908.8107;
	1869.3597 1164.8543 1924.23 578.6732 969.436 1226.2 960.7606 312.8003 507.7339 5992.0 1848.4757;
	1894.1 1168.742 1900.9534 580.8196 956.7 1186.1573 989.9698 320.9 572.0388 6274.2146 1935.5648;
	1822.7283 1164.6127 1879.1 585.7825 957.044 1177.4986 973.391 320.1602 567.4541 6249.3717 2001.39;
	1765.0479 1134.4 1873.0179 588.6 944.4811 1183.0002 985.1737 335.9668 552.437 6331.3 2115.0951;
	1777.3887 1144.4281 1912.2589 591.5553 925.7695 1221.043 1029.0618 329.8648 649.0183 6448.1913 2248.9234;
	1787.2623 1157.4884 1935.0817 589.1984 929.5079 1324.4796 1055.4529 329.7753 652.119 6388.5562 2307.3798;
	1795.4809 1153.337 1971.8735 590.5655 938.3205 1373.9848 1084.9352 332.2568 663.5 6288.7537 2354.9461;
	1804.4045 1194.3758 2002.4725 593.6047 959.5226 1325.971 1112.8895 334.0936 673.5576 6197.3435 2405.2922;
	1812.8116 1202.2008 1991.0106 575.7278 952.793 1329.7692 1118.4055 352.0149 662.3139 6155.2358 2418.8962;
	1790.7571 1144.3405 1938.703 566.373 946.4994 1356.5364 1085.6237 339.3018 640.3787 6028.6329 2366.3117;
	1697.9179 1056.5567 1761.4148 540.9202 859.001 1205.332 999.6541 295.5495 587.257 5658.9532 2113.7068;
	1632.4745 991.2516 1680.5529 536.6 838.1942 1142.3522 917.5874 271.2115 526.6371 5186.9626 1899.7846;
	1556.5716 965.2323 1599.6685 547.8804 812.3911 1057.7512 841.4894 212.5679 486.7399 4765.4305 1744.3275;
	1512.945 926.8449 1586.6902 559.6153 789.8079 1078.1613 834.212 197.6495 487.0359 4572.1845 1701.4886;
];
