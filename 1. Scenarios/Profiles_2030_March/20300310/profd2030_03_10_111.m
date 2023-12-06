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
	1490.1305 917.3609 1608.9251 584.5405 765.7896 1238.5376 879.6472 268.3649 538.3821 4660.3 1895.7444;
	1425.8495 886.6743 1563.4714 583.1512 745.4686 1194.398 849.1619 246.0 514.7513 4432.6809 1807.615;
	1446.2972 887.7032 1601.6616 585.464 759.9987 1226.5285 874.7958 247.6568 522.922 4458.7205 1807.7956;
	1472.5053 910.4 1639.2607 591.5 781.5607 1221.6787 893.8665 257.9 529.7 4568.1826 1864.7048;
	1537.5613 934.609 1686.6512 586.5469 817.1054 1256.7335 935.4177 277.2997 560.6722 4640.6486 1906.0702;
	1629.5857 987.6019 1745.988 595.0626 869.7026 1331.4672 995.8 308.8 600.0 4816.5519 1983.7651;
	1638.5436 1012.984 1801.7166 601.7874 916.4 1382.8631 1058.443 341.9 616.8574 5026.5056 2053.0322;
	1648.0 1022.3178 1836.7302 610.3 958.7 1441.2091 1101.6 365.6361 637.3935 5212.3089 2104.3433;
	1610.2767 1009.0068 1876.0823 599.5351 989.0533 1441.9866 1103.9905 385.4394 647.1032 5265.7115 2082.9711;
	1643.6 1039.2775 1902.3773 603.9289 1028.3268 1518.3332 1132.8659 383.139 665.1398 5379.9104 2167.5117;
	1627.6651 1014.7 1878.3684 594.0488 1001.19 1479.9796 1129.7458 369.3 663.1228 5396.3377 2192.23;
	1639.7674 1022.5778 1843.4 571.9186 960.4518 1429.6878 1102.4555 351.7366 657.0 5444.2373 2222.7371;
	1669.1 1019.0911 1829.9 565.7 911.5 1453.1525 1102.9458 358.1533 675.7225 5506.9 2290.4745;
	1647.4 1029.4 1780.2234 556.8383 881.3402 1420.267 1058.6303 338.9026 662.661 5437.6259 2186.56;
	1621.1 999.8613 1804.3505 567.087 887.8044 1416.283 1060.8 357.7166 663.8378 5425.8132 2174.8;
	1642.1188 1076.5752 1860.7336 582.4549 922.4949 1473.6385 1131.2334 366.506 710.6456 5490.9537 2288.1916;
	1642.5472 1094.1649 1861.7005 595.7181 965.111 1493.5892 1147.5227 356.0329 697.3811 5518.4693 2410.704;
	1708.0 1095.1621 1885.6969 607.1986 972.1567 1485.8839 1169.0764 340.2675 706.5666 5639.3247 2411.8826;
	1768.2535 1121.415 1872.617 620.9284 943.3535 1468.0564 1140.1 346.797 696.7 5579.1889 2390.0417;
	1697.0992 1057.86 1795.7295 588.5216 879.391 1395.1492 1077.5174 343.6931 684.328 5533.6219 2313.061;
	1674.6862 1013.9 1740.2181 576.4 798.9279 1288.3424 997.5922 305.9 632.7234 5245.553 2127.6366;
	1648.0893 957.8 1673.5073 555.4907 760.1082 1197.5507 900.1758 271.74 578.821 4940.6117 1952.7945;
	1537.7478 905.3128 1590.5891 553.1887 719.1667 1092.9984 839.3 243.766 519.3 4543.8008 1775.6823;
	1496.7477 883.4814 1567.5928 545.4988 679.1635 1067.5034 790.1931 242.7548 490.0672 4396.8988 1707.71;
];
