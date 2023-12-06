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
	1559.9982 948.4761 1628.4567 572.4 775.0778 1181.6 902.7 286.4568 519.3918 4654.647 1796.9195;
	1561.6 960.4654 1634.8 565.1988 773.5391 1188.5826 903.9 281.849 510.2 4564.7686 1758.604;
	1591.5905 983.2236 1647.5 579.7719 805.541 1217.685 922.3052 289.8799 525.9412 4617.4533 1814.9633;
	1663.7661 1047.434 1794.7 591.5721 884.8315 1277.5096 973.3905 311.4834 566.4124 4842.4 1922.6431;
	1817.9323 1177.1363 1995.6857 629.4 1015.5631 1440.8 1091.8204 351.0 635.8437 5475.6533 2148.7297;
	1926.6131 1261.0822 2108.1366 630.803 1078.1407 1512.6264 1148.8 381.6443 722.9007 6139.9535 2330.7342;
	1896.2802 1238.2 2105.894 608.2984 1078.3617 1496.4644 1170.2506 372.8436 733.5007 6501.9679 2373.1011;
	1902.0453 1241.3874 2127.9719 603.8721 1076.5473 1500.1728 1194.6831 366.9709 751.3914 6638.4258 2399.8702;
	1898.2185 1223.5406 2091.4944 578.7881 1042.186 1491.5074 1153.9534 350.7 770.1932 6628.5564 2497.1611;
	1952.077 1254.8339 2103.3319 578.89 1067.9425 1497.0804 1158.8235 348.6734 745.0361 6721.1196 2542.5574;
	1934.6 1225.1 2051.1064 598.4 1005.9 1483.0577 1123.7 337.4 732.1536 6683.0247 2495.1978;
	1948.7639 1230.6264 2040.0627 601.0 1057.7231 1457.3099 1105.3229 329.6918 713.1013 6718.4526 2585.1962;
	1904.3 1223.7344 1995.7 586.4475 1004.7331 1403.5968 1064.739 332.1 681.5758 6519.2706 2452.177;
	1858.3314 1191.2449 1974.5299 596.1159 1030.6 1391.2872 1080.1131 350.0173 674.4284 6545.4293 2667.8536;
	1822.5008 1186.8986 1970.3742 584.8566 1034.0818 1453.9443 1104.9465 357.2093 686.7 6593.4163 2742.9594;
	1827.4903 1199.8114 1984.4403 615.6064 1044.918 1489.0705 1126.4721 362.2041 706.5635 6805.3372 2842.7772;
	1845.0147 1242.7425 2046.46 627.3809 1030.089 1509.456 1153.9927 382.4617 735.8353 6629.7842 2967.5378;
	1900.1958 1296.5574 2099.3486 634.2823 1057.3897 1580.9077 1199.0655 387.9972 756.9243 6582.0735 2802.0497;
	1909.9603 1266.0967 2086.9143 623.0 1024.9591 1542.323 1214.7686 394.369 761.8 6583.2041 2831.6716;
	1853.2905 1195.6 1967.6584 602.9751 947.2829 1464.9428 1145.4942 351.8952 706.6973 6105.0553 2562.3212;
	1744.5454 1130.3105 1867.681 581.8817 899.6234 1346.6912 1070.3055 322.1368 663.4775 5849.5301 2346.7404;
	1640.7673 1071.5 1738.7857 571.3921 829.0987 1251.9694 984.2 283.8851 605.799 5508.2578 2171.0881;
	1549.8076 990.518 1699.1954 584.9966 856.5479 1204.6343 967.7 302.1348 576.6 5336.594 2124.4854;
	1539.4 967.9385 1720.284 586.2823 828.4 1240.0629 942.7 267.0062 561.332 4857.5902 1874.2;
];
