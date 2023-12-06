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
	1444.6774 941.0277 1574.0387 520.6088 750.6386 1077.4911 860.9935 248.4 516.3427 4392.7944 1706.0819;
	1477.4826 962.6944 1615.0663 523.0 764.9367 1082.0856 871.076 255.1168 504.9979 4363.5575 1703.3474;
	1516.033 971.8504 1624.0674 519.5827 779.9 1089.9082 874.5299 254.1829 517.406 4387.7286 1705.0952;
	1573.4106 1048.8429 1756.7932 534.5132 852.6759 1190.2495 934.7358 283.1848 569.7361 4670.178 1848.251;
	1673.7247 1146.2539 1944.329 559.9445 973.8825 1328.8241 1017.2598 323.7064 628.1154 5088.6967 2051.6981;
	1775.5603 1245.972 2076.9989 598.4906 1051.6393 1454.9195 1101.4039 363.9 690.1918 5680.2899 2227.9698;
	1760.9641 1234.6 2062.4135 594.7792 1072.5 1455.2536 1110.9812 354.3719 691.5393 5874.6997 2238.2305;
	1791.5585 1239.3005 2093.0 600.3287 1101.6131 1433.2718 1122.0136 365.3 690.9 6202.9497 2206.0905;
	1792.6671 1267.1491 2151.7736 578.8725 1113.9695 1426.4445 1142.2003 363.6086 679.5658 6335.3 2205.8586;
	1787.1445 1271.2521 2139.814 587.3 1086.0607 1396.4471 1120.1 354.1 668.3 6435.24 2212.9246;
	1776.375 1246.4727 2078.2541 573.9 1078.473 1385.0943 1101.887 365.5288 670.2 6453.2581 2176.2229;
	1691.9431 1229.7969 2038.7 577.6328 1041.0886 1354.047 1077.7433 348.9211 664.5492 6433.9073 2198.2222;
	1592.7738 1197.32 2005.2168 575.2127 1025.2386 1326.1 1054.0217 342.3195 652.3926 6283.9388 2166.8296;
	1528.4616 1133.6693 1958.0715 582.2542 989.3738 1297.7721 1006.2475 347.5597 648.0928 6284.736 2163.2218;
	1493.9928 1124.3786 1972.4901 579.5129 971.2821 1284.5648 1012.191 330.9728 672.871 6259.4733 2219.3856;
	1545.2219 1078.7374 1974.9675 598.276 1013.3 1357.8254 1070.5 348.2033 686.7888 6216.2029 2425.6683;
	1585.2869 1123.7792 2036.8821 599.3 1043.0 1410.9978 1105.0731 360.9371 697.5146 5971.2422 2485.2268;
	1685.6322 1173.5258 2106.7863 611.6987 1088.6155 1476.025 1167.4373 392.2 748.4463 6236.3095 2700.4304;
	1781.9129 1226.7557 2114.3456 619.4081 1054.3038 1483.521 1194.4738 378.602 735.3869 6136.5799 2704.0597;
	1755.8882 1164.3987 1998.7803 587.3073 1007.7451 1412.2 1125.9442 358.1878 690.2849 5923.843 2541.2792;
	1626.8815 1089.0151 1890.1049 564.5272 940.8211 1304.9791 1064.6001 331.4068 640.2102 5655.6725 2326.9094;
	1639.0944 1053.2 1787.6 557.1271 888.8121 1214.1578 987.0973 294.3356 578.6 5298.5777 2231.7758;
	1583.9349 1028.1831 1755.839 572.5177 853.8729 1140.2 928.0822 279.261 532.5005 4924.8041 1975.2399;
	1580.7524 992.967 1702.329 572.7201 823.3304 1105.4924 903.4766 258.8 515.8733 4648.1856 1815.0137;
];
