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
	1481.8 945.2 1596.0838 578.199 824.8519 1132.466 834.5384 233.8 516.8 4611.2844 1701.9269;
	1463.4 935.7456 1587.2532 571.8425 815.0928 1115.5644 827.6 233.6 488.7358 4466.3764 1650.2833;
	1481.5249 959.6597 1631.2015 574.9337 820.0623 1164.9677 846.3629 239.5521 498.8271 4507.7433 1705.3181;
	1553.1195 1019.2144 1734.0 580.7 880.2108 1230.2266 893.0224 266.7 537.8677 4675.9615 1787.4488;
	1704.3236 1160.2536 1920.1436 607.6291 985.8865 1384.6263 990.4825 305.3292 617.5717 5225.88 2030.8745;
	1781.2 1222.0 1969.0853 613.2682 1025.8174 1440.3657 1043.6812 314.3226 670.5 5677.5509 2163.5816;
	1812.7 1212.4 1986.5698 607.2146 1037.7254 1429.4574 1092.3 316.2875 690.6 6018.7654 2210.6138;
	1821.0031 1211.4017 1973.5664 599.1 1044.7 1419.3 1066.5509 323.1681 681.2045 6164.9427 2228.6212;
	1795.2053 1190.131 1969.0669 572.9871 1027.9066 1380.5479 1040.9787 311.75 686.2872 6215.0266 2221.9482;
	1770.8095 1176.5686 1926.9453 568.1942 1014.1538 1332.8033 1050.8274 312.4542 710.1585 6277.2424 2226.4558;
	1798.0111 1193.6 1888.7785 568.7724 994.9 1303.5 1021.0463 306.8791 714.2633 6257.6646 2259.1792;
	1768.3492 1188.8 1903.9033 557.4 997.7 1337.6265 1058.4273 295.7552 711.4547 6327.0268 2341.4;
	1759.0819 1201.9 1902.6729 560.0 1002.6743 1355.5785 1076.4629 300.7 706.4 6445.3917 2284.1262;
	1719.1364 1196.3714 1846.4296 556.6928 968.5189 1340.4933 1046.3803 284.2426 686.0147 6285.666 2160.1947;
	1701.522 1182.8841 1845.6538 564.3496 957.8786 1340.3846 1034.3186 278.9347 672.4416 6297.6542 2233.0493;
	1771.4973 1225.1234 1872.5 552.8 986.8 1351.1828 1056.475 286.2415 692.1276 6344.5009 2349.0711;
	1747.5309 1243.7228 1949.0948 554.6662 1003.5905 1392.0291 1073.1533 311.4684 696.6499 6214.0369 2552.7316;
	1786.996 1268.1053 2009.7661 574.5361 1030.8 1468.1463 1170.3174 325.7049 744.7356 6292.131 2739.2795;
	1825.0 1267.458 2016.6296 559.1 997.4 1446.4 1156.4164 347.2796 725.6 6095.2633 2659.9674;
	1752.8525 1190.3907 1880.8477 553.7403 928.8799 1338.4558 1091.1317 323.374 699.1207 5863.7909 2491.0687;
	1699.5693 1096.7736 1750.8474 539.8 889.0595 1248.3718 1020.4 294.9187 631.112 5548.8436 2256.3559;
	1590.6248 1025.2412 1617.6987 521.2 844.2763 1149.4062 949.1445 282.2059 566.5093 5210.0629 2046.6279;
	1533.6647 970.4854 1582.4211 484.3024 801.2942 1165.922 909.0 282.7436 551.0888 4937.1551 2021.7381;
	1506.0623 901.0 1498.2012 492.7337 744.9432 1109.5 869.2742 245.5 515.7 4585.1606 1788.1164;
];
