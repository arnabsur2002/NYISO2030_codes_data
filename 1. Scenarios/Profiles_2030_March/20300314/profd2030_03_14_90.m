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
	1521.8865 944.2828 1660.0037 551.9426 818.6592 1129.5217 895.4209 276.1975 541.7185 4652.9544 1894.4138;
	1482.1693 936.9 1676.9 556.9977 803.7976 1117.4339 881.9662 264.1337 540.0524 4586.6014 1870.5906;
	1536.4725 969.6851 1711.9658 561.3 821.5 1125.3037 898.7741 269.4111 547.745 4725.8685 2037.2368;
	1620.3968 1023.6197 1789.3149 559.7 861.6044 1174.6678 952.5928 289.5 578.8708 4822.826 2061.8005;
	1754.908 1154.1258 1988.5321 577.9 992.197 1312.0005 1051.0529 327.167 649.1634 5314.4835 2154.9957;
	1891.537 1243.8768 2080.6503 579.0592 1043.9461 1381.0641 1114.2948 363.487 717.0225 5833.5569 2285.8668;
	1938.3388 1236.8498 2033.9727 566.5655 1011.3599 1365.278 1125.6051 351.7157 725.551 6073.513 2346.7716;
	1970.795 1255.7096 2028.8216 549.9031 979.4804 1365.1103 1109.2404 340.2681 713.1 6223.9 2320.6258;
	1895.2438 1234.5 1988.3584 529.2518 970.3214 1321.0554 1101.5865 336.4251 728.2675 6259.1 2390.8;
	1866.2965 1218.8859 1908.7468 547.4086 912.6121 1258.8148 1065.6208 339.972 706.1 6283.2034 2414.3663;
	1844.0855 1189.1404 1823.0568 545.8036 895.3992 1197.9436 1006.4104 331.7055 691.478 6181.4331 2299.9729;
	1837.6 1138.5836 1811.2477 534.7671 863.6856 1150.8707 1010.3978 330.6486 690.1 6149.3105 2266.1169;
	1799.0221 1138.2 1812.9412 535.6 880.5325 1188.5555 1028.8608 318.6421 696.8591 6167.3003 2253.7578;
	1740.8667 1143.1875 1787.6791 541.5948 897.2454 1229.1 1042.1029 309.8917 693.9849 6100.5772 2227.1;
	1760.8027 1126.7077 1794.4474 563.1 887.5079 1263.8789 1073.3919 302.2199 702.4321 6145.702 2296.0929;
	1714.6553 1122.8 1839.4821 568.8778 926.6204 1298.5703 1098.1875 335.9 722.1449 6191.2622 2357.692;
	1666.5049 1121.4558 1807.6138 583.0131 958.1 1329.1097 1076.0061 337.5 683.0831 5986.1301 2294.0799;
	1781.8456 1194.5051 1939.588 581.4303 1001.4966 1429.5454 1169.7946 365.7 730.534 6091.657 2465.1837;
	1814.9946 1219.1598 1950.828 579.1145 994.1441 1412.4849 1174.3888 347.8 722.1 6030.9936 2374.6965;
	1749.3925 1131.2823 1793.4454 553.4973 910.6 1308.7614 1073.0528 326.9 687.7 5729.7 2258.8745;
	1694.6807 1070.9 1700.6358 526.8874 848.8484 1209.3 992.4621 290.7467 621.7137 5435.2792 2063.777;
	1591.6 992.5341 1601.5535 534.6641 798.3851 1104.2973 917.8 247.1701 566.3923 5065.0506 1919.1542;
	1570.3736 946.5549 1553.5838 507.1 781.1301 1033.2389 865.0 251.846 518.5164 4725.7368 1797.7908;
	1472.6023 898.4288 1557.2159 510.1567 769.7146 1062.1 840.577 233.8 488.9985 4444.9402 1703.2157;
];