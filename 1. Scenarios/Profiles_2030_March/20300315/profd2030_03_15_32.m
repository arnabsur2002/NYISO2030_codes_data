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
	1490.9568 901.8859 1534.5513 531.2693 790.6928 1020.6815 800.0 236.5 483.7 4299.8253 1693.4206;
	1495.8322 888.067 1525.4527 541.7733 800.5189 1036.3106 812.1395 234.4652 485.7186 4228.9345 1710.0092;
	1529.6299 917.9628 1573.1061 546.5 833.071 1069.7532 828.5511 235.5158 488.9715 4279.2113 1717.3917;
	1595.8588 970.0757 1662.9682 573.5748 865.2298 1112.7961 866.109 256.4 512.8992 4461.2812 1826.4595;
	1732.9864 1096.6891 1878.1929 600.0 990.1162 1292.4188 979.0043 310.025 601.0131 5020.5641 2077.8721;
	1868.1632 1182.5153 1988.3307 608.3257 1069.2553 1380.3134 1043.15 325.0047 661.8765 5605.345 2264.3121;
	1885.1531 1203.6125 1994.8406 597.336 1068.6937 1396.0891 1082.9144 337.7937 667.1159 5845.9927 2278.4024;
	1937.5867 1226.7952 2012.6244 578.6 1082.4315 1395.1 1083.7252 331.947 670.7888 6024.7147 2353.1931;
	1937.2635 1244.4643 2004.1 558.0496 1063.1202 1433.1795 1076.967 325.2073 692.2 6131.4601 2352.0226;
	2015.0151 1251.5618 2066.8074 550.2861 1067.9099 1430.9268 1133.2024 336.1253 712.4 6295.8422 2449.2896;
	2014.7464 1286.7753 2012.3236 526.2 1038.348 1405.5813 1138.3411 332.6214 699.7902 6291.6474 2358.8838;
	2037.8246 1293.7043 2029.8351 517.0286 1023.0067 1381.1871 1147.568 357.3927 709.6696 6305.1669 2421.1726;
	2023.5057 1285.3461 1989.5992 514.7528 1011.0709 1355.889 1133.1058 330.6645 693.6 6370.5738 2410.9666;
	1957.7905 1259.0 1924.7997 514.5 988.0924 1350.1359 1084.6 333.8339 687.3031 6373.9244 2387.3189;
	1926.8617 1184.4544 1888.8 534.8104 996.1551 1364.2 1054.9829 340.6527 683.3127 6400.0269 2371.5457;
	1903.8472 1189.617 1854.5931 542.4 973.0932 1306.4788 1015.2929 337.5141 657.3184 6257.6835 2325.5009;
	1869.7444 1186.8808 1904.6052 540.7952 976.9962 1338.3858 1079.9359 344.1921 674.3902 6272.5532 2365.3769;
	1908.2047 1231.7822 1947.2291 548.4 996.3501 1388.5035 1115.2 350.3034 706.3212 5932.6223 2433.2893;
	1950.7124 1283.8458 1961.5 558.6 978.6 1387.7064 1111.2721 353.8388 688.1 5822.5595 2438.9987;
	1908.5413 1186.6864 1856.6807 549.1 917.7959 1325.6749 1071.9045 320.6171 662.899 5612.4401 2367.4156;
	1794.7547 1096.2025 1748.4934 533.6709 830.4 1235.431 974.067 295.8 622.274 5360.2587 2185.6993;
	1682.3566 1034.6647 1683.8 524.9257 787.5297 1185.9705 925.0154 267.4 577.8 5141.5165 2051.8439;
	1628.8255 961.3 1595.3 493.5969 778.7 1122.7343 883.3307 258.3249 538.7853 4846.4915 1882.0436;
	1615.9992 908.5621 1517.9208 530.8585 696.2247 1062.1 825.7634 235.913 499.8 4522.8343 1745.2648;
];
