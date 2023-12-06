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
	1416.9774 875.9309 1422.116 536.3474 759.744 1031.1393 760.6759 226.4605 455.9655 4276.5023 1647.0211;
	1439.534 874.7 1396.3632 535.7622 744.7 1030.3 758.2731 230.2 464.6612 4243.3804 1616.4326;
	1443.7789 889.16 1457.6556 531.6811 768.3612 1031.9051 758.0832 210.2435 445.0051 4246.8 1628.3193;
	1486.3515 950.7 1542.4073 531.0598 814.4 1102.5037 810.5649 237.6152 480.0889 4487.2344 1727.4151;
	1601.8741 1045.1812 1678.1398 552.7 897.5083 1217.0819 863.0248 271.901 553.9511 4868.9 1899.2279;
	1733.1096 1114.9218 1810.1083 564.5 937.2505 1312.4547 933.7689 295.3257 632.3707 5400.2268 1977.2;
	1750.8684 1151.268 1890.4095 544.0504 960.0425 1360.014 1001.1854 297.2484 670.8842 5858.0175 2107.7338;
	1764.9674 1199.6582 1975.1 536.3 1025.1236 1378.2436 1058.8661 300.0676 700.9487 6145.353 2161.2797;
	1759.822 1208.6662 1983.5514 526.4368 1027.8 1354.0881 1063.7988 305.78 704.6427 6204.0513 2133.9792;
	1757.4529 1210.5747 2003.9 520.4689 1042.2974 1360.03 1093.4035 293.6 716.0562 6250.2891 2149.3478;
	1690.3099 1175.3249 1947.9462 500.8653 1009.7637 1287.5754 1048.7151 317.8 723.263 6312.695 2181.0252;
	1744.4329 1158.8213 1960.5809 493.5079 994.4557 1245.4191 1037.6346 311.0683 702.4271 6219.2864 2053.5609;
	1686.2125 1151.0853 1899.956 495.9442 955.8469 1257.0375 1033.9242 318.7382 697.495 6175.0263 2031.3165;
	1697.4252 1119.3189 1822.2912 492.2586 939.2111 1253.5291 1019.6402 309.9155 680.8917 6051.1736 2041.4086;
	1694.5077 1142.1666 1849.7108 509.489 932.6 1284.2557 1001.5 304.9988 672.2895 6010.2654 2056.9571;
	1656.8376 1112.4776 1796.3534 514.4684 947.9692 1290.3294 1006.5 304.5133 645.4438 5895.1503 2029.692;
	1663.1376 1114.8026 1843.0745 517.2055 956.1681 1307.1126 1005.5718 308.7351 641.4535 5728.1382 1773.3613;
	1699.2989 1127.9609 1864.9458 520.0187 999.0855 1354.9 1034.2956 315.8976 645.0532 5694.7552 2030.9812;
	1714.458 1164.3214 1865.724 544.9686 980.4911 1346.4414 1053.9728 322.1 645.7584 5643.0548 2201.1114;
	1682.839 1110.4589 1839.2188 543.8 957.0901 1309.9551 1009.0424 317.6064 616.8185 5452.9 1990.4748;
	1633.3491 1039.7911 1729.4167 530.2185 907.1779 1247.7873 950.0131 284.3713 592.6355 5244.1861 1877.3016;
	1530.3541 985.2872 1572.6763 516.0901 843.1 1181.6177 890.6379 252.6611 560.0 4967.6668 1729.1389;
	1504.2916 928.4885 1518.0401 521.2788 803.2158 1133.7171 847.7698 250.5557 524.3475 4745.5208 1760.7736;
	1466.5064 891.1411 1483.0641 526.5779 767.0874 1109.2826 823.1888 240.3495 497.6994 4592.808 1696.4981;
];
