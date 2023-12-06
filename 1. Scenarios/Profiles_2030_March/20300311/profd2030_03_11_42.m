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
	1580.2556 907.1941 1540.1207 545.0799 751.6524 1077.5851 849.2885 253.7836 437.1409 4446.1664 1667.8;
	1550.9149 904.1901 1509.7295 531.1889 757.9673 1082.9 849.2534 254.8528 442.8722 4415.414 1653.1861;
	1547.9454 919.0654 1563.649 534.9707 780.7084 1103.8497 868.1183 260.5696 434.3021 4428.3595 1663.0592;
	1639.9303 992.1488 1662.558 564.8068 838.4212 1180.6373 927.6414 286.8852 482.9135 4768.9426 1808.8919;
	1814.9346 1127.3017 1900.9092 587.1 952.654 1329.1909 1022.3 318.1 569.925 5330.9284 2109.8354;
	1900.7693 1186.7838 1989.5587 630.5524 1005.9162 1379.1226 1068.271 324.2058 615.3609 5804.8283 2203.0451;
	1933.3521 1187.9916 1953.7082 620.4 1002.2 1358.0263 1068.3622 320.4906 657.4273 6128.6626 2252.9313;
	1978.7848 1190.9157 1918.7672 591.1017 974.8757 1328.8239 1066.8703 293.5149 657.4434 6313.5623 2243.9569;
	2010.8956 1185.8912 1952.7271 601.8153 1022.7115 1365.5132 1072.6842 298.1927 652.4 6433.732 2333.3626;
	1987.2623 1189.8156 2006.6802 608.5597 1020.4087 1391.6049 1090.8813 301.0314 643.1799 6458.8355 2273.6363;
	2000.3885 1232.3 1997.169 602.5433 997.0731 1371.3734 1089.9096 297.6483 650.9996 6543.3002 2449.3866;
	2052.2637 1239.6 2043.5919 594.9 1028.3898 1406.4762 1048.1448 292.8305 653.0 6605.6113 2452.6547;
	2051.5113 1242.6917 2010.8441 593.8454 1005.7102 1411.3843 1058.893 300.7501 652.5454 6669.4241 2499.301;
	1990.6158 1252.5283 2003.6759 600.9092 979.9 1403.7318 1080.7263 315.3 667.3771 6575.4028 2453.9712;
	1930.3748 1215.5 2024.5094 605.7076 989.7988 1433.6 1098.1084 326.7 705.907 6859.8399 2537.5288;
	1925.3677 1205.1022 2090.8 600.1009 1024.4999 1470.6007 1101.3387 332.0675 689.8022 6743.3788 2553.3351;
	1969.5705 1238.8291 2117.8917 605.3041 1087.1591 1529.5 1140.083 357.1357 719.4134 6573.7881 2622.5636;
	2025.4823 1256.9999 2156.3 607.1 1074.0 1600.3919 1181.7 377.322 744.4 6429.0197 2573.3531;
	2089.269 1308.7546 2185.858 614.4026 1088.5108 1596.9043 1197.437 386.4175 731.3531 6516.7327 2534.0797;
	1990.5368 1198.6 1998.9775 597.41 971.1616 1472.1442 1120.6046 352.1 693.1 6094.0662 2391.9898;
	1863.9344 1109.5658 1857.115 585.8008 934.4898 1396.2712 1047.4831 324.3523 640.4643 5791.4752 2235.3781;
	1788.7084 1034.4082 1767.9773 584.4384 874.5 1291.741 971.3512 297.6 578.6 5361.1909 2050.0286;
	1731.2702 998.8 1773.3612 596.4753 858.9 1220.8484 911.9413 287.5043 519.0115 4987.9677 1949.2852;
	1766.3265 979.8409 1734.4216 599.9 845.456 1223.1461 928.2856 273.1 505.4 4798.1567 1888.4047;
];