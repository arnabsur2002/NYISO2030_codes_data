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
	1603.928 1009.1414 1700.1065 598.8813 814.8067 1121.2247 901.6961 270.1 515.9 4583.8487 1778.5789;
	1591.1 996.3851 1668.2038 593.1038 824.9 1144.9 900.8 268.7 512.8765 4530.3058 1745.8;
	1619.6599 1068.3697 1754.3155 609.5451 859.9276 1176.1164 917.1 281.9352 517.068 4616.6377 1855.12;
	1661.8077 1083.3 1815.3069 619.4078 898.0425 1233.3093 953.4127 301.6 551.4 4824.8558 1922.5394;
	1797.1755 1200.0643 2018.0822 655.8983 1040.2714 1401.2102 1065.7795 351.5 635.1 5357.5852 2160.5;
	1911.0829 1281.0548 2140.7042 659.4746 1093.9475 1462.2769 1129.5472 381.7108 716.5382 6051.7851 2351.3208;
	1948.805 1310.8789 2201.3995 663.7402 1142.2321 1498.207 1147.9295 381.786 727.2257 6417.8359 2347.6354;
	1960.4124 1290.0346 2172.4372 637.8984 1114.5684 1470.8728 1140.9001 357.3449 722.8756 6481.6829 2264.2167;
	1978.1 1286.2127 2168.3795 618.1 1141.9186 1486.4254 1166.1121 358.6548 752.9577 6527.8 2253.1776;
	1967.3243 1278.6827 2176.1311 613.3085 1138.0705 1449.268 1127.4347 364.1 750.6078 6486.4399 2196.8863;
	1927.7637 1244.8664 2139.8746 617.6697 1134.6029 1489.1001 1132.8454 361.268 751.082 6470.6241 2204.5;
	1849.3182 1230.7859 2124.7489 608.3349 1108.5024 1381.5043 1023.725 334.1 715.2741 6307.5157 2069.9846;
	1871.9498 1239.9368 2145.0204 608.3018 1111.8899 1388.741 1052.1732 341.7958 720.1618 6403.545 2138.5402;
	1836.8 1235.9593 2127.4302 623.5022 1109.0491 1389.5 1077.4 343.8206 722.8817 6402.6025 2148.3639;
	1827.1044 1230.8 2136.7327 613.2544 1124.1468 1412.684 1084.0503 360.2 695.4662 6307.3452 2206.797;
	1848.4606 1239.299 2125.1028 627.9284 1130.6268 1474.4026 1120.8557 353.3834 688.4657 6305.3185 2316.8128;
	1844.9633 1244.9604 2167.7171 619.0248 1129.0524 1490.4942 1148.1177 366.5119 698.8663 6220.2408 2411.3817;
	1925.7138 1299.0106 2223.7181 643.8835 1186.4664 1500.8588 1176.1 397.5137 735.8 6124.5043 2518.5758;
	1899.4051 1263.5412 2147.8294 632.9875 1169.8939 1410.9993 1157.9784 393.7081 741.0 5891.4659 2470.0284;
	1840.952 1215.6 2055.4 614.7748 1125.8586 1362.4594 1124.8512 366.9 718.0903 5525.7138 2356.381;
	1783.0547 1116.0799 1897.4 598.1 1059.5556 1299.7315 1037.4509 342.0328 647.4685 5189.0168 2149.8;
	1650.1538 1054.7896 1786.5881 576.9252 984.8583 1243.1 947.4849 300.2547 589.2 4743.8403 1990.8479;
	1647.0182 997.9513 1761.6 595.0242 960.3347 1197.1669 910.4321 294.3113 568.5 4797.9091 1918.0212;
	1603.0647 964.9818 1738.6 596.6076 903.6112 1155.8707 892.5703 287.1 557.7778 4617.2052 1865.3;
];
