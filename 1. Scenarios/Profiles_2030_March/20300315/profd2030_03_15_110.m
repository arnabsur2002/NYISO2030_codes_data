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
	1425.1148 849.7811 1382.6834 520.9556 744.8699 1064.8866 793.786 221.7031 529.4397 4457.5167 1633.601;
	1433.4754 861.5993 1421.2672 526.8761 728.3 1052.1078 791.2645 221.8665 497.9 4380.1543 1609.4;
	1431.6826 865.5438 1439.2052 543.4275 745.0317 1070.3773 797.4289 229.4 518.2393 4373.6557 1630.7368;
	1517.5 940.2 1528.5821 561.5027 811.7483 1136.076 836.9166 256.6 550.5119 4576.526 1709.6437;
	1675.0507 1055.2025 1745.9409 590.3663 913.8346 1284.0812 947.4443 312.2743 618.174 5087.7104 1943.6331;
	1745.6912 1116.5981 1810.6755 596.5808 950.665 1356.6848 1011.0553 335.4655 706.2746 5596.5466 2140.7668;
	1717.15 1121.5 1790.4035 583.1838 945.1677 1351.1503 1032.3 342.3043 709.2967 5906.4949 2174.8268;
	1741.0995 1137.5669 1781.0663 558.6972 977.4887 1353.8717 1050.2374 344.6 722.82 6146.451 2208.1735;
	1782.0663 1140.1253 1846.9542 542.9265 963.948 1365.876 1047.5821 347.0 762.3548 6313.8765 2297.1077;
	1792.2254 1132.6492 1845.5199 535.9 968.7515 1319.6261 1056.9759 348.6017 752.2053 6303.0146 2332.5737;
	1759.222 1098.958 1810.4194 536.5 942.7393 1327.9091 1045.2569 335.6 726.2622 6306.9 2321.9917;
	1804.7004 1089.1063 1794.393 537.4767 909.8 1256.4929 1026.6861 333.0446 752.4364 6204.5343 2303.2465;
	1749.6747 1045.5799 1774.0 522.1144 899.3969 1237.0913 987.3857 315.3816 724.7961 6112.8669 2211.3482;
	1665.4698 996.9565 1730.4642 512.4167 911.1051 1245.821 969.7 327.02 695.6681 6082.4374 2129.8858;
	1593.0375 961.4534 1699.2132 507.1018 896.5232 1289.5685 993.9534 317.3448 691.7 6123.961 2210.0037;
	1612.1248 972.6639 1739.0128 505.3592 892.237 1365.1124 1006.1406 309.5397 703.138 6074.5 2269.8341;
	1581.9474 983.07 1778.6158 520.5 917.812 1343.1646 1024.3804 325.6254 702.5654 5930.9316 2308.9107;
	1674.8564 1049.3454 1830.7784 546.3273 935.8 1361.6714 1057.7651 336.9851 759.5224 6198.588 2463.494;
	1709.6799 1078.6773 1834.6494 544.9174 966.5299 1359.1704 1062.1819 328.6879 752.306 6317.1352 2438.3634;
	1662.5187 1031.4473 1774.638 553.5 924.8268 1309.1471 1026.6511 318.2211 715.5992 6204.0857 2369.4491;
	1620.3075 968.1684 1695.5079 541.8 883.6871 1218.9498 981.3013 291.497 659.8609 5631.0885 2198.4936;
	1541.6019 920.715 1614.6 531.0564 806.6489 1149.6457 909.2116 275.1702 584.8204 5260.5307 1988.169;
	1514.5 895.633 1550.3829 528.501 755.4282 1143.5 877.0 247.8978 526.4295 4881.8305 1859.5275;
	1500.9836 887.328 1534.5322 528.24 740.7727 1131.322 875.0699 236.4129 510.6984 4793.4471 1806.5288;
];
