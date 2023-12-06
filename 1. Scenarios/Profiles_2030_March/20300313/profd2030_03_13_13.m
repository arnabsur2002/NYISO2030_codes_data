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
	1614.1028 1009.0617 1770.3868 611.5696 887.5349 1279.6534 933.7 278.3952 541.6643 4830.5449 1884.9725;
	1613.9224 1044.8195 1789.135 611.3791 899.1362 1276.7071 926.84 274.267 533.8225 4725.9268 1839.0812;
	1630.1676 1022.587 1785.6207 611.1792 912.4963 1279.1198 943.1028 269.157 532.5 4657.192 1818.6;
	1691.2658 1097.5528 1867.4341 616.2363 957.5828 1342.9438 976.0956 286.852 558.3205 4872.229 1916.0222;
	1834.7 1210.9117 2037.717 628.4168 1036.2723 1459.6094 1070.0365 332.3 635.7879 5384.4641 2135.6607;
	1927.8956 1284.0824 2110.6841 636.4472 1068.0735 1532.8 1133.6 366.0349 705.6 6029.3276 2328.9873;
	1923.0441 1282.3083 2078.9608 629.8304 1036.1332 1484.8 1118.2815 371.3683 709.9 6306.4668 2350.9524;
	1899.8209 1266.0099 2033.7098 623.4615 999.2451 1413.5591 1082.8207 362.1394 712.8 6453.0902 2285.7784;
	1864.356 1239.2841 2000.5177 620.0096 985.1749 1441.9461 1087.9068 366.1 715.7183 6536.4004 2267.599;
	1857.0789 1238.5359 1984.0383 611.5435 956.3124 1455.0705 1103.0873 364.9392 721.1442 6540.8385 2274.4538;
	1817.6519 1188.7929 1926.1074 609.3508 954.5434 1445.5308 1088.298 351.2619 727.271 6424.4119 2184.9;
	1779.5338 1167.9 1881.9118 613.7427 950.8102 1408.9589 1029.6173 333.1675 723.6209 6332.4231 2065.8584;
	1753.1167 1126.4592 1834.6546 608.4214 913.9796 1355.1632 1022.5 337.2805 723.5474 6262.5043 2080.3207;
	1718.3496 1145.5734 1859.8299 609.5725 907.5231 1342.131 1015.6512 338.5312 682.8 6357.1672 2122.7491;
	1717.3007 1164.1374 1907.8988 615.6469 941.5598 1367.8831 1021.9 333.7861 684.0183 6349.9107 2183.4661;
	1691.5451 1163.3779 1901.5074 611.7669 984.8844 1423.1548 1034.4627 334.6654 705.7335 6410.7745 2283.5443;
	1720.2297 1177.5941 1964.7579 621.3 979.5192 1455.2791 1060.2145 347.5264 677.6 6333.5748 2393.5549;
	1751.2761 1229.2 2035.8141 609.405 1009.6704 1525.8316 1145.2548 386.476 741.8741 6448.3492 2593.4057;
	1797.3158 1229.2 1987.4428 614.0203 995.2615 1486.6837 1122.7213 383.6966 727.4574 6220.3975 2517.0071;
	1724.7939 1155.8 1903.9497 610.1939 910.9198 1420.3366 1086.016 372.7144 698.1716 6021.5026 2384.2418;
	1662.0093 1076.7939 1793.9182 590.0801 855.6752 1342.2506 1045.7019 332.9583 650.1 5749.6334 2194.4745;
	1538.7896 985.1835 1676.1 576.1482 806.2792 1224.7 960.2 304.8369 584.4346 5292.8343 1968.5351;
	1527.6383 957.0208 1618.1597 586.0072 755.4467 1201.0582 907.1 286.1589 497.5337 4934.2126 1781.3462;
	1466.5023 910.7163 1599.5192 587.7537 755.4268 1198.7055 885.608 271.5 501.9127 4725.5518 1701.8433;
];
