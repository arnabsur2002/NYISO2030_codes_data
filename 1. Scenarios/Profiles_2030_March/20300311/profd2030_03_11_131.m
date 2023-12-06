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
	1488.5922 909.3439 1570.4485 541.6654 756.0177 1042.2 845.1325 269.9 529.1571 4457.3127 1702.8118;
	1506.4527 904.1538 1575.8187 545.0998 751.7 1056.4 850.2 268.7743 523.5805 4374.374 1701.8265;
	1499.6169 926.7198 1603.0979 547.4151 764.0 1070.5467 850.7824 277.3321 519.7836 4416.4349 1705.9;
	1598.0 996.627 1710.281 576.4 846.8895 1149.9406 899.9798 290.6231 554.6482 4657.2201 1806.4865;
	1700.5182 1108.7727 1899.1032 604.1122 989.3272 1323.8558 1014.4315 338.7516 630.1147 5288.4665 2046.9;
	1789.8398 1187.3107 2046.8882 614.3 1066.5133 1421.8767 1091.3124 372.0579 685.7 5838.325 2208.5821;
	1810.6 1201.6738 2031.5917 584.8195 1076.7441 1404.2279 1103.7883 368.5698 701.1589 6167.0311 2251.7026;
	1801.428 1231.927 2064.286 581.6225 1085.4312 1420.3099 1095.4 362.2 721.4612 6412.9 2265.4463;
	1821.0251 1263.2 2117.9 599.8 1044.1252 1390.3498 1078.9267 356.1312 702.0 6464.1293 2209.8215;
	1834.7754 1272.7033 2118.3819 606.9873 1060.5413 1440.0482 1143.1182 356.4349 706.1 6540.106 2196.2952;
	1812.9371 1274.7179 2111.7835 603.9977 1062.6257 1479.1952 1155.7191 371.2213 721.443 6656.0205 2203.1;
	1812.6402 1287.3293 2082.702 596.0 1025.1626 1409.9052 1132.1 362.5 680.2 6577.1506 2140.3893;
	1828.5418 1285.9303 2051.464 582.7185 1009.6 1344.9959 1113.8312 374.4387 675.9217 6741.7857 2255.6003;
	1826.0272 1261.4236 2075.6766 574.6363 1027.8594 1390.0179 1124.4284 381.0806 672.9931 6762.8697 2287.0;
	1813.0856 1236.6653 2056.9144 578.4603 1019.0922 1404.1803 1139.2499 371.0292 684.1357 6861.0675 2361.5359;
	1820.0209 1266.685 2013.8 588.9066 982.8171 1440.8007 1150.2072 373.0 676.047 6511.6594 2324.7068;
	1806.7565 1272.0877 2033.4278 574.439 1013.7 1511.9035 1211.9653 408.8723 696.3 6421.0089 2491.3239;
	1854.8946 1332.9973 2098.0 606.8 1077.975 1555.0072 1270.2818 420.3536 729.2 6399.6031 2625.4;
	1840.8531 1311.2828 2080.4454 612.1001 1067.0 1548.1599 1241.8275 418.2248 733.6188 6322.0007 2509.6726;
	1763.2695 1241.4603 2005.9 592.6514 997.1492 1466.9055 1192.5062 409.8589 691.0 6095.0234 2367.6854;
	1690.7712 1156.951 1899.3612 578.9388 940.8549 1357.6202 1078.5659 353.6 634.9708 5654.7781 2127.5476;
	1625.1 1101.1482 1811.461 570.5542 897.3 1282.4993 1007.5082 334.4025 592.7423 5283.4106 1954.3;
	1510.2341 1008.7167 1690.1232 575.9 885.8794 1205.8733 944.4468 297.5213 553.1338 4823.7715 1832.0475;
	1540.8039 975.9 1673.1905 595.6267 837.4814 1172.75 926.4 303.5867 517.3279 4666.9414 1752.8805;
];