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
	1477.3365 948.6041 1583.8 524.7486 790.7 1173.451 896.8211 267.4279 570.5407 4777.1124 1814.0411;
	1459.4271 942.4 1563.9222 489.1796 764.5257 1137.4076 873.4558 254.2438 526.999 4546.7186 1710.8557;
	1518.6082 973.9751 1622.5896 529.9875 782.416 1172.9 899.9471 259.0476 530.5 4541.7719 1725.5;
	1594.5514 1027.3401 1708.2464 545.783 851.4954 1236.1146 944.3244 279.3434 550.8028 4786.8688 1821.5411;
	1750.3361 1153.1 1902.5289 558.7616 949.0954 1354.1989 1040.8727 325.5 637.2645 5235.6695 2014.2628;
	1829.8 1215.8 1996.4734 550.7906 994.6551 1441.6974 1109.0049 365.3275 690.6149 5733.7417 2165.5283;
	1901.3 1223.0661 1987.4959 550.7479 980.2441 1440.3816 1117.3 352.0 681.46 6020.8583 2177.1625;
	1883.2556 1187.0378 1926.1733 494.1496 911.5361 1367.3802 1087.5701 348.0363 667.8096 6073.9317 2068.9989;
	1845.9953 1178.927 1884.0655 495.9912 912.9932 1306.3514 1042.5419 314.9257 651.5562 6160.0555 1977.3833;
	1866.2389 1207.1865 1899.5 485.8756 909.5048 1229.5807 1046.5 313.7 652.8208 6223.1743 1956.0139;
	1824.4 1180.6753 1856.3843 512.0853 915.7302 1239.0649 1115.58 321.6827 665.533 6372.6359 2064.951;
	1811.8925 1173.3866 1845.8334 519.1958 887.824 1191.2419 1059.8082 314.9553 638.8268 6223.8717 2028.1739;
	1774.8429 1161.8435 1794.19 508.593 901.8717 1168.0629 1056.4708 308.5314 624.6712 6224.2585 2079.2387;
	1770.4891 1157.3132 1819.3302 545.2082 901.0452 1138.2068 1035.4544 318.8 592.3777 6280.7203 2197.1548;
	1733.9844 1127.3966 1777.1636 536.4884 906.153 1121.4474 1064.5391 332.4847 581.4889 6332.8388 2212.0616;
	1725.6252 1152.8855 1788.6082 539.8973 944.2 1256.1801 1081.2508 347.6401 600.273 6327.7803 2308.0733;
	1666.2917 1118.9658 1781.3636 533.1796 932.9624 1183.966 1092.0101 349.8 616.1 6104.7468 2399.9871;
	1735.3795 1163.1321 1859.5255 548.6 969.1973 1368.3531 1182.0764 367.3361 660.9199 6181.7674 2537.9925;
	1795.3 1192.1361 1870.9707 567.7351 971.1269 1378.1189 1189.4655 351.2 662.3936 6052.0509 2515.5757;
	1718.2988 1145.8 1817.5802 553.1434 918.0084 1283.7548 1122.1 334.2126 634.4732 5835.3738 2344.7932;
	1599.5352 1053.4332 1673.9171 535.4902 829.7971 1162.5274 1010.0595 298.0496 569.97 5499.8342 2130.5491;
	1511.9455 997.6364 1578.9127 537.3 795.4771 1123.5699 944.8247 277.8 549.9824 5207.4742 1986.8765;
	1460.7191 947.7154 1553.1841 525.4544 789.0643 1120.324 879.5257 263.3755 498.1288 4874.3037 1851.0924;
	1433.9853 932.6342 1550.0939 518.1969 788.1185 1125.3 888.4968 252.8789 507.4081 4812.2823 1885.2571;
];