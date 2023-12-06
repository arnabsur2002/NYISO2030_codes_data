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
	1552.7076 923.3378 1593.7183 552.5 731.3 1055.0961 834.5178 247.4069 489.3782 4327.4725 1645.9464;
	1514.6445 921.4796 1574.3045 551.9973 725.4528 1036.3022 826.0212 261.9364 493.2 4365.2207 1648.3;
	1556.9219 946.8197 1623.7884 551.161 749.3 1066.0249 842.5 258.5395 488.3 4352.4 1685.7668;
	1603.3146 996.4974 1678.4101 555.3835 817.9136 1152.8502 895.8893 291.2843 527.1741 4532.5481 1785.9268;
	1719.7365 1090.471 1842.0 562.8 909.4923 1279.3703 979.0145 302.3962 600.0506 4982.9952 1965.7;
	1822.7919 1161.9367 1974.5248 581.3688 1003.8 1390.4428 1064.8145 330.3649 674.6514 5479.8426 2142.1316;
	1854.5018 1162.9 2006.1128 587.4 967.5 1381.2835 1094.8439 343.0181 693.8679 5661.8977 2128.5321;
	1853.535 1171.2321 2033.4994 589.6172 959.6693 1372.4506 1129.728 344.465 708.71 5876.5976 2143.343;
	1864.8487 1167.8828 2033.5423 570.6 949.6473 1335.3893 1158.8 378.6709 734.3877 6112.4144 2207.5732;
	1871.0624 1152.6865 2034.1593 554.7009 933.0858 1277.9721 1137.3364 362.1 726.2143 6069.1864 2069.4853;
	1846.8945 1110.0662 1991.9814 546.8 912.4726 1186.1468 1118.3221 359.6428 719.6991 6162.3575 2104.8261;
	1872.5335 1104.2 1976.335 549.8084 886.2 1173.6231 1130.7014 330.3 707.0109 6157.0 2065.4909;
	1825.0778 1098.3124 1937.1517 550.647 885.5195 1206.4323 1121.6115 336.9 711.5966 6110.0052 2115.2325;
	1773.5724 1056.0 1868.7194 536.5244 903.0 1213.3 1098.7291 314.7592 699.8858 6100.9952 2117.0012;
	1743.764 1006.9646 1815.4783 543.7265 875.1402 1216.0223 1098.0041 284.4515 699.5742 6117.1325 2083.2046;
	1791.4486 1082.8056 1864.0 552.3 884.6667 1230.5429 1133.7377 295.681 680.3538 6161.4637 2168.0266;
	1777.9697 1066.1251 1863.5421 565.7901 890.651 1266.0 1115.908 301.2314 673.7844 6135.5507 2271.3973;
	1804.6134 1105.5135 1936.5448 576.0 912.6975 1323.7316 1234.2051 315.9339 722.5224 6367.1794 2418.6991;
	1799.1214 1109.9 1912.3988 570.1742 909.8652 1329.2161 1163.4206 300.9946 692.6102 5943.3315 2379.8027;
	1783.5651 1063.9285 1852.9655 564.3105 883.5065 1277.2529 1117.4411 306.9323 676.3043 6115.6601 2308.7712;
	1729.064 1000.1959 1767.607 559.3309 816.7474 1211.9609 1079.9485 281.9 644.916 5442.6379 2135.4777;
	1650.2552 956.7137 1676.1465 550.2922 753.3337 1145.891 992.4439 263.2718 600.2736 5244.5485 1973.2361;
	1590.4075 923.5376 1567.0535 559.4398 678.0983 1141.6228 906.7849 243.2 535.7788 4753.052 1824.3321;
	1547.9678 891.7 1579.0056 556.4 639.7352 1096.0 841.7069 242.3868 502.4837 4592.2604 1721.2;
];
