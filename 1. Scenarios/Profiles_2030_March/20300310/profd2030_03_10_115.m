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
	1501.7437 955.2359 1747.6914 585.1 899.9719 1332.2275 948.8249 283.4308 552.1 5074.2627 1998.8679;
	1483.2753 941.1538 1742.9947 581.2793 915.491 1300.5029 934.9959 272.9901 539.7059 4820.1326 1911.5895;
	1466.2176 943.2662 1713.9037 581.6299 894.5561 1284.6011 924.0534 269.9513 538.049 4952.5775 1933.5571;
	1503.4454 955.3302 1675.26 582.2655 892.1388 1298.1612 939.9107 285.0082 555.8334 4888.3383 1903.0621;
	1509.7257 978.199 1710.2068 601.6 941.579 1332.0224 987.2284 295.7364 573.4477 4895.0471 1960.0281;
	1562.8818 1022.0 1735.3 619.7 977.2143 1387.3402 1024.3133 300.8676 594.1 5016.4072 2003.2024;
	1524.5599 1057.1184 1776.9185 634.3387 1021.2439 1454.7563 1082.1827 307.9926 608.8 5076.2609 2080.5907;
	1537.3207 1058.9 1781.0376 637.3476 1032.0746 1446.7 1111.424 307.4464 627.7745 5139.1857 2130.5915;
	1601.0 1088.2 1834.1 640.1301 1047.3 1445.4198 1148.3149 319.3258 633.9753 5353.8 2182.9406;
	1595.6898 1070.7298 1815.32 635.0 1023.1232 1420.5912 1159.6597 304.613 623.9613 5394.2548 2105.5837;
	1574.1611 1066.8552 1791.7407 633.2024 1034.3827 1486.6923 1149.6957 312.9452 614.1533 5518.0899 2120.4;
	1568.0819 1060.766 1787.8477 608.6432 1010.7 1480.3742 1140.8609 319.6287 614.6579 5496.7 2063.8667;
	1605.1046 1074.483 1728.4542 604.3621 987.7372 1476.199 1101.2137 306.9692 607.0373 5477.3285 2056.4443;
	1634.3007 1085.5 1745.2935 590.4462 972.5671 1481.5935 1084.9786 302.843 582.3264 5364.7071 2008.8707;
	1659.2 1061.072 1766.2756 578.6064 979.8119 1491.6267 1091.1568 305.0336 572.3891 5367.8462 2049.8838;
	1751.605 1097.8968 1822.702 578.6904 1015.5752 1527.6131 1110.6342 313.3542 585.3042 5381.5336 2169.0083;
	1720.9119 1083.7124 1793.9745 587.0939 1096.2778 1550.7459 1104.0828 334.9438 592.0487 5377.6365 2182.7455;
	1753.179 1119.3 1874.9753 596.0119 1119.8348 1603.626 1130.8326 349.8397 555.6236 5569.9767 2290.9;
	1742.9471 1126.7482 1872.8752 582.5324 1099.0467 1575.2339 1141.6731 343.0 626.2875 5516.1863 2311.2;
	1722.8432 1048.9174 1734.2766 576.1323 1014.7189 1473.7686 1086.2078 334.361 581.8885 5436.1661 2190.0965;
	1666.2324 1017.6019 1643.3802 562.1 949.7837 1362.3369 1016.6578 317.2989 567.1434 5132.7815 2051.6203;
	1574.1 951.5996 1575.0747 537.3 861.4149 1262.7 933.2878 281.2746 523.0249 4981.7355 1908.6;
	1544.0002 927.3974 1567.4 530.2181 866.2973 1214.823 861.9061 254.69 481.4076 4722.4327 1756.5704;
	1504.1028 906.2 1528.2464 550.7281 852.1044 1168.3525 827.2843 251.4452 428.1628 4443.9341 1623.9565;
];