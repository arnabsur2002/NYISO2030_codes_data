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
	1465.9103 940.6 1616.5156 554.8877 771.4467 1145.4 839.0 228.8364 470.7311 4451.6087 1700.442;
	1489.6 940.8 1619.7 549.2496 766.9005 1161.1538 837.925 228.5503 459.7328 4435.4524 1674.4845;
	1494.7123 959.9495 1655.5685 564.6477 775.8143 1171.9163 861.4 226.2058 464.6894 4443.478 1677.7281;
	1581.8491 1027.4 1752.157 571.598 841.7628 1236.1617 903.2 246.2177 502.8144 4636.0951 1779.3233;
	1724.5385 1157.0244 1952.7961 598.3661 948.0044 1374.5362 998.4618 286.7692 572.6422 5194.0565 1980.9045;
	1819.1389 1217.4 2016.3763 605.0599 1002.9733 1477.4224 1067.4095 319.0087 624.8112 5736.6422 2099.5324;
	1815.4 1206.9246 1976.0 583.367 968.8681 1460.128 1092.9787 335.2039 672.0 6128.8 2203.0683;
	1793.5296 1183.1 1942.5072 583.1358 920.8873 1425.6 1087.076 340.6 652.3425 6225.6254 2075.7464;
	1854.3885 1228.2876 1978.8891 575.7548 961.9849 1435.8485 1114.3457 346.3 667.6287 6398.2105 2080.6052;
	1871.8046 1241.3731 1983.3634 576.5 980.6343 1459.3992 1129.2021 343.7032 673.7553 6440.6873 2120.5;
	1837.6623 1232.2943 1960.2495 574.2 925.2894 1440.0257 1108.9834 343.8013 664.2227 6362.3013 1995.4651;
	1877.7344 1230.1398 1933.5614 555.5737 914.9951 1411.9151 1082.9522 337.096 641.2063 6318.7907 1913.4483;
	1810.0911 1190.5 1873.7705 564.5859 883.9387 1424.9776 1066.3 327.9844 621.6725 6179.6761 1932.5794;
	1805.7036 1176.8724 1843.355 556.9178 897.5995 1392.4365 1065.0124 323.3 633.4731 6182.2562 1993.9426;
	1782.958 1175.7 1836.5262 553.9986 915.3503 1412.4638 1042.0054 332.6521 639.3378 6158.3384 2040.6232;
	1744.6815 1208.4139 1878.8099 565.2 918.4 1388.5 1012.5925 325.5138 621.4133 6063.3186 2109.4838;
	1711.1058 1162.1 1852.6914 559.2 875.7986 1408.3 1063.5755 349.9456 631.2247 5986.1727 2215.5226;
	1788.812 1211.2724 1914.2706 561.3354 947.7082 1467.6222 1117.212 359.9 652.5805 6013.6356 2341.548;
	1813.7459 1212.9339 1947.6724 559.282 945.1686 1490.9775 1119.844 385.8458 650.4302 6003.8254 2400.3178;
	1772.9238 1140.9524 1856.9 557.1 889.736 1396.5 1077.6592 378.3809 632.3968 5791.3504 2299.2903;
	1730.7237 1085.6809 1753.181 534.0934 857.785 1319.2 1024.6069 337.7 571.5637 5562.9081 2196.6061;
	1601.7579 992.7289 1618.0574 519.3656 788.2835 1193.4 925.9145 304.3694 526.3883 5151.7 1943.8153;
	1508.3154 942.3 1572.6383 505.5275 748.4559 1167.0461 872.2 251.3938 476.8907 4849.3155 1812.4021;
	1504.5898 908.7132 1546.5825 521.0014 693.8957 1115.7719 837.8492 247.781 464.1599 4564.158 1734.1442;
];