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
	1477.3776 894.6171 1462.5765 516.9 728.8 1094.9576 830.8 234.1 486.6458 4608.9051 1704.8724;
	1494.5 892.46 1478.1 513.2007 725.4297 1117.9535 841.1604 245.1562 493.9 4697.4609 1774.7398;
	1485.4824 903.7696 1508.3 523.3 720.7506 1129.8175 836.3095 254.818 496.2852 4535.2011 1719.587;
	1561.6511 965.8881 1621.1874 543.8 804.9729 1185.748 890.4 286.1477 540.2702 4757.4167 1795.2136;
	1676.393 1067.5 1805.5504 569.7703 909.3165 1352.5 1000.8 333.7 606.5752 5167.4678 2039.7463;
	1791.5376 1150.9071 1937.813 583.289 967.0165 1406.7301 1043.7636 348.7545 670.5 5575.9732 2165.2942;
	1775.2 1173.3 1974.0733 585.5129 951.0842 1416.0383 1070.4181 338.5 685.2536 5852.7 2236.3795;
	1790.3887 1164.9857 1986.3188 588.5 964.5534 1395.5553 1108.3605 337.1529 692.102 6013.6234 2230.3579;
	1784.561 1145.9 2009.6 554.1344 946.2532 1387.2 1150.9692 336.3606 694.8585 6048.0 2191.6647;
	1750.8141 1157.8048 2007.3567 541.477 955.1466 1417.9693 1193.5667 335.2 689.0925 6138.1877 2222.8312;
	1711.2044 1150.4296 1976.5274 552.9176 948.3505 1388.1045 1152.1 327.9439 689.0691 6234.2347 2250.5378;
	1700.0497 1115.8212 1915.5202 536.8465 939.9609 1399.9487 1126.7909 306.0887 663.8168 6121.6686 2108.519;
	1724.7349 1136.8523 1910.3 540.9662 930.1905 1375.9111 1166.4583 325.3583 662.5979 6109.1235 2120.9087;
	1666.6023 1126.8305 1853.3194 532.5 922.9892 1321.0298 1084.6 325.5076 651.8119 6002.9812 2197.1078;
	1624.2796 1120.4219 1877.7216 536.8458 919.4679 1339.6073 1106.8 320.1 636.0234 5985.167 2197.5732;
	1620.4633 1095.5909 1861.1256 532.8 926.9 1314.37 1086.4 329.1146 628.5262 5980.3674 2249.8916;
	1625.6673 1107.616 1871.6 529.0541 956.8 1379.4015 1142.3396 344.3735 660.0877 5839.5251 2372.4554;
	1688.3023 1136.9405 1924.4562 551.9 975.5 1393.1692 1171.1972 355.5875 686.7753 5866.4 2468.6602;
	1725.2146 1149.1494 1904.2038 550.7876 980.3 1415.5143 1162.8296 349.3037 690.3522 5787.7245 2495.8694;
	1665.0011 1072.1882 1833.9256 542.9 926.4759 1327.9348 1066.3 334.5182 649.0 5496.1 2270.4309;
	1633.2954 1004.3916 1737.8 524.6 880.7637 1271.8259 1034.9314 316.8465 616.271 5244.8297 2146.8;
	1542.6 963.6558 1633.3871 530.7047 833.1435 1174.7222 943.838 276.6066 571.264 4924.0801 1971.6453;
	1479.9256 954.9611 1592.1 548.3 816.0874 1178.7735 926.8476 258.6408 547.8897 4835.7062 1848.6283;
	1451.6775 910.565 1541.678 545.2 762.7674 1098.1316 878.3326 253.4661 514.1 4553.2457 1796.8969;
];
