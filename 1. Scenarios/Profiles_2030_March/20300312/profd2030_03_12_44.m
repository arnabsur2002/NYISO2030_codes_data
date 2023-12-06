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
	1530.9244 945.1 1588.6329 579.7 795.0018 1112.6895 831.7208 253.5116 526.0 4496.3745 1721.0;
	1521.4352 955.8 1579.5391 576.0548 783.7166 1095.6006 828.5919 254.9642 505.6 4467.7693 1691.9393;
	1563.2914 977.6 1642.6868 570.5 805.0 1139.994 853.9182 259.6981 517.1988 4462.0481 1739.6627;
	1641.0717 1048.8852 1730.6458 591.4993 876.1253 1185.2044 884.1985 267.4464 550.0193 4690.1385 1803.6993;
	1738.3356 1161.8345 1942.8088 611.0 999.9594 1365.7226 1018.8796 312.7307 633.2 5259.9573 2079.0375;
	1890.5657 1245.0 2057.2854 636.2197 1047.6386 1421.1936 1044.7959 337.2524 701.4577 5897.8082 2226.9306;
	1943.7 1258.3 2065.7423 627.5 1039.6 1430.9276 1091.7796 336.1789 735.9082 6326.2232 2310.791;
	1918.8111 1248.4878 2059.1115 617.4464 1044.9736 1469.3533 1113.3113 353.3173 722.9 6525.9987 2309.8953;
	1911.7 1254.3 2090.0 609.026 1094.071 1464.4246 1090.4905 352.6 722.4 6603.5764 2269.944;
	1918.1155 1258.7033 2048.3387 600.2711 1093.7627 1469.6787 1095.0349 340.3139 721.3665 6597.5695 2295.6;
	1888.3899 1256.94 2036.7354 596.3536 1079.5677 1417.4551 1072.2046 350.4 714.7 6566.6238 2256.5503;
	1873.3092 1252.0916 2032.9 583.0 1068.4705 1445.8665 1088.0764 356.3 719.6068 6712.3 2349.0586;
	1812.7369 1233.6027 1971.0584 576.9586 1040.3 1380.5631 1032.7761 334.8 706.2122 6536.4789 2249.43;
	1840.7122 1239.4 1923.8959 571.0 1015.9728 1366.1247 1064.1752 343.6 712.1088 6552.5253 2360.1661;
	1851.5189 1237.6536 1990.4563 578.5173 1039.696 1392.4451 1061.1 362.0078 712.136 6807.5824 2534.679;
	1884.433 1239.3119 1978.4184 587.602 1016.3025 1465.1091 1071.1952 365.7248 706.6 6602.4595 2422.8553;
	1975.7 1281.6 2022.1225 605.297 1046.0558 1499.952 1093.2708 390.0 732.4227 6683.7209 2544.4746;
	2019.1207 1310.5651 2048.0117 626.8 1061.3791 1567.5877 1148.783 404.7986 754.347 6634.0752 2561.0027;
	2069.1724 1323.0494 2038.2608 625.5 1046.4 1549.6242 1131.443 400.9 719.9 6402.9102 2480.3454;
	1980.7063 1250.4434 2027.868 617.9 1021.0 1494.4527 1110.2247 400.1077 690.8245 6129.9911 2375.4568;
	1817.4173 1194.8398 1878.2195 598.2583 949.2597 1370.494 1026.6 354.5 638.12 5753.2031 2181.0754;
	1687.4211 1098.3666 1772.5611 588.245 886.2582 1315.117 952.1 319.7 600.3 5349.4055 1990.3937;
	1578.3757 1129.1419 1717.2094 584.3 866.5 1200.4989 874.3042 291.71 535.3292 4942.3614 1846.0978;
	1560.7828 1024.6329 1679.1496 603.2561 850.6 1146.9396 839.5396 274.5 519.302 4695.2233 1758.8;
];
