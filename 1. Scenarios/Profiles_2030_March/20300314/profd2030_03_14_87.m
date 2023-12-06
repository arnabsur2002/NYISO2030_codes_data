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
	1491.9567 951.5118 1565.4602 580.4086 755.0442 1150.007 869.2315 275.8241 540.9364 4642.7612 1706.1497;
	1516.9137 945.6071 1564.3489 577.006 771.1 1133.9197 868.5 255.2015 518.3819 4507.3495 1698.8518;
	1546.0 974.7465 1606.307 586.9621 778.136 1160.5361 872.2 256.9191 517.8755 4550.0 1729.6864;
	1634.3225 1050.0897 1739.1672 604.0 854.9971 1247.9839 930.8567 283.0 559.8586 4801.6027 1861.1466;
	1802.089 1191.6904 1996.868 620.1 996.0004 1393.2 1024.4034 325.8719 639.288 5321.9737 2084.6813;
	1878.3298 1261.684 2072.961 631.7833 1009.7817 1469.6351 1065.4699 352.7991 690.3957 5768.6675 2170.305;
	1878.7134 1277.532 2067.9472 642.1355 1010.1467 1482.4838 1103.1 372.5196 698.0055 6083.1933 2219.3849;
	1857.9242 1312.2811 2049.1127 688.0998 999.4115 1460.9636 1120.4 412.3574 709.5636 6288.4287 2258.485;
	1837.8747 1301.3772 2027.6 627.62 963.2 1446.8723 1113.6298 375.8295 728.0762 6332.1861 2202.2033;
	1828.7002 1301.6001 2032.8 612.4285 956.7468 1450.6015 1091.8773 358.7394 735.5642 6383.7954 2186.8088;
	1779.9013 1275.3673 2005.894 606.6587 925.1452 1430.8529 1037.728 353.5067 718.8485 6332.0488 2183.5333;
	1802.0381 1292.5507 2023.7731 609.8486 923.7233 1406.2754 1050.0407 340.8021 704.4214 6335.2049 2176.6893;
	1769.7109 1263.6849 2003.9743 611.1831 932.9436 1401.7989 1043.1936 349.3 688.4134 6288.6264 2196.3248;
	1754.022 1236.2 1920.5425 603.8159 914.3056 1402.3849 1029.9709 324.1698 674.4965 6309.1791 2169.6499;
	1658.5501 1189.9822 1890.5184 602.4341 895.3059 1391.1622 1028.3061 318.0113 687.3761 6198.6141 2111.1433;
	1677.9308 1217.3664 1878.7041 587.0383 909.2505 1411.3123 1058.4384 336.1731 682.1497 6220.6857 2163.4138;
	1687.6869 1200.8694 1928.7212 590.6879 924.4033 1449.5089 1115.1349 338.5954 729.0907 6117.1517 2305.5629;
	1740.2 1248.9762 1960.4764 594.7763 927.3146 1453.5 1141.5582 365.4 752.0512 6111.3878 2377.2;
	1777.3207 1243.1632 1960.8514 587.9854 907.3934 1459.2806 1181.8096 393.5625 737.9744 6083.0025 2419.2436;
	1763.5435 1162.6053 1881.6354 590.1888 895.8605 1375.1 1088.7596 363.2228 700.603 5805.3598 2297.1263;
	1672.1 1085.0579 1733.1502 562.4202 844.0755 1281.6777 1035.1233 336.8661 654.7465 5553.6934 2164.3756;
	1607.0731 1011.6215 1605.0 547.0 816.1 1199.4486 946.5584 299.692 587.4098 5169.9729 1961.104;
	1545.814 991.2552 1617.8216 546.5121 808.0405 1179.5 955.3696 277.8686 558.1422 4890.5865 1931.1562;
	1543.8195 954.1496 1570.2581 551.2393 732.0 1109.2807 907.1007 258.8862 525.8278 4679.3246 1808.1401;
];
