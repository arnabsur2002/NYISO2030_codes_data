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
	1417.1349 842.2804 1446.7142 471.7971 694.3221 1017.7098 777.3 221.4 483.6224 4361.6892 1594.3666;
	1403.8189 836.4983 1480.4955 482.7688 714.0581 1024.1149 771.0489 222.6477 476.7 4279.6723 1555.6918;
	1421.0261 856.0 1516.688 494.6275 726.1347 1016.2861 758.1887 217.8838 473.6915 4298.3626 1539.7282;
	1486.7217 917.5363 1597.8609 505.3638 803.3 1117.1766 807.1165 259.5671 512.8725 4502.9197 1674.8191;
	1588.0429 1049.6891 1787.0157 537.4145 924.4652 1284.6835 905.1341 297.4 604.9094 5054.3014 1938.4925;
	1712.7 1138.0134 1888.1619 553.3985 980.522 1416.2 995.0217 324.8217 673.1376 5605.286 2164.6;
	1781.2989 1141.9 1910.1726 544.8973 974.0143 1448.7616 994.0947 320.0 681.5243 5932.2518 2234.3139;
	1815.3437 1132.6688 1943.0 532.3881 948.1766 1427.2739 1000.8196 296.557 682.5259 6121.5541 2222.8569;
	1870.8878 1192.667 1964.3357 532.7995 957.6712 1437.7 1030.3277 290.6714 711.0409 6192.8358 2275.53;
	1902.3151 1195.3334 1973.1292 520.3464 941.5978 1356.1872 1011.0626 305.9 713.925 6236.7839 2291.5524;
	1849.7014 1150.2649 1924.7083 514.9253 905.288 1369.5928 988.9017 289.0019 707.4118 6174.5368 2162.6692;
	1868.2119 1114.1 1855.6784 507.4161 878.2946 1303.2156 977.6443 283.7782 692.0 6049.789 2178.4219;
	1817.7012 1121.4802 1839.7281 505.1087 892.019 1357.2861 1003.7535 274.4794 709.7355 6111.542 2221.4;
	1739.9603 1098.6886 1782.5396 502.5996 859.2603 1278.1959 983.5081 291.0732 726.1544 6071.6829 2232.2;
	1756.8413 1105.5121 1789.6373 517.2882 883.6547 1276.2739 959.256 266.8887 691.7 5973.2128 2176.1155;
	1740.2 1095.5023 1760.8619 531.184 861.5572 1294.1345 996.5306 266.7025 707.3775 5897.4593 2268.6715;
	1722.6632 1087.48 1739.6606 556.9711 877.8796 1321.1748 1001.3884 289.8188 681.0112 5751.7681 2278.4638;
	1766.9046 1117.1981 1838.7418 572.9 932.2095 1397.6697 1064.2 325.5 725.9 5842.9794 2463.5503;
	1744.7299 1098.9008 1796.5991 573.2915 938.3872 1365.5768 1061.8744 321.2682 705.5037 5748.1631 2529.1838;
	1704.1413 1084.5744 1756.478 562.5024 872.704 1300.3807 1011.4288 294.317 668.7161 5475.2769 2319.4657;
	1652.3695 1016.5362 1675.4651 528.5169 834.3483 1237.3109 967.2318 283.6154 624.9515 5223.0959 2178.7;
	1577.8089 940.4107 1562.6 512.2 760.9174 1141.8902 897.7 260.0856 573.9 4923.8688 2050.8966;
	1490.2 879.5765 1469.6039 522.1087 715.0578 1113.1 884.2475 237.7451 531.7241 4733.3861 1866.672;
	1495.1716 857.8559 1459.4849 528.58 731.0498 1088.2225 854.3162 226.7862 518.723 4575.2806 1730.6027;
];