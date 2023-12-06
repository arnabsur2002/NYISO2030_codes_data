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
	1591.5929 990.5956 1573.4125 594.0696 845.6239 1151.2185 835.7315 289.9259 428.9368 4314.9456 1509.9842;
	1589.1625 981.2877 1571.5385 578.7111 838.3 1142.2717 817.2353 289.6498 383.9012 4160.696 1469.8736;
	1636.0342 1013.8314 1613.5388 581.3813 839.9 1160.1 835.5307 303.4 395.2621 4131.3535 1526.6851;
	1677.713 1070.8127 1727.7 606.9 905.9 1215.3603 891.1902 310.1 423.348 4369.8344 1666.3486;
	1882.5152 1202.1 1933.5498 616.8 1022.8728 1377.5037 980.4045 351.5526 479.7345 5102.9031 1950.178;
	1985.7488 1275.2848 2026.955 627.2773 1060.2032 1472.2437 1013.5967 372.5 565.6244 5743.045 2129.476;
	1990.7722 1279.8 2078.1127 626.5348 1044.0857 1487.7124 1060.7796 377.0 631.844 6008.29 2106.9236;
	2025.307 1269.4707 2025.858 632.4 1005.7453 1457.2522 1060.3518 367.9 629.4171 6093.3628 1988.33;
	2027.2197 1281.0058 2077.2406 629.4296 1017.7629 1454.6815 1066.3483 381.7321 608.7471 6439.798 2044.3132;
	2004.6796 1274.9857 2030.5 621.3815 1041.3037 1430.9221 1051.311 356.4097 594.5068 6362.2118 1995.6314;
	2000.6594 1268.5 1997.7 617.1 1044.2164 1412.501 1071.04 367.4 589.3901 6382.5937 2008.9756;
	1993.867 1232.0476 1941.9215 605.4916 1016.244 1339.8987 1020.594 374.5611 505.6778 6331.6307 1899.7304;
	1901.0798 1206.5744 1910.3785 609.3663 987.5 1337.6418 1021.5819 367.5704 571.2486 6226.5288 1882.7335;
	1887.9893 1222.9355 1914.3 609.3 999.4605 1356.7 1056.1276 380.5731 559.9595 6143.428 1964.6879;
	1845.4718 1198.337 1892.5006 604.5 1009.0 1398.7554 1061.9457 368.0675 555.0958 6199.6872 2089.1096;
	1837.9117 1207.3 1977.8079 621.2 1047.5083 1437.3788 1094.8198 389.7434 615.9536 6320.0006 2280.1805;
	1863.4407 1210.5 1985.4166 623.6 1033.7 1491.8153 1151.0175 393.7544 663.7403 6347.1721 2391.837;
	1928.4023 1255.0 2070.9462 632.333 1086.0287 1586.6051 1192.7034 419.9695 683.3 6294.3563 2523.5581;
	1982.793 1272.3743 2076.8133 636.6 1052.7187 1575.0325 1195.4019 436.6929 689.7486 6241.3818 2566.3726;
	1910.6056 1205.7 1982.2882 628.4 1012.9178 1494.2332 1139.0375 403.806 642.2374 5898.4494 2414.0923;
	1807.8975 1114.1089 1827.2592 606.514 937.2432 1360.0 1051.8187 371.251 568.4023 5430.979 2171.0072;
	1701.5141 1049.2442 1703.9 591.7 881.0392 1253.1642 916.6487 327.4 522.9994 4737.9857 1894.5459;
	1647.2258 1007.3603 1686.5978 610.175 864.6509 1187.6691 771.3042 303.7423 470.9658 4420.8638 1711.5253;
	1579.994 975.3909 1679.4208 599.784 841.991 1166.1901 842.9905 285.8857 475.6022 4309.2997 1492.8563;
];
