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
	1581.2503 991.6826 1736.2876 615.9 879.1892 1233.5637 917.9898 267.9229 560.9326 4707.3655 1775.5051;
	1575.2161 990.2143 1695.3086 608.4639 857.9974 1206.1951 904.4265 248.1066 540.9742 4608.9156 1768.4228;
	1608.5575 1022.9 1722.9 617.1547 864.4271 1249.9 912.8343 244.2943 556.0894 4640.4813 1787.4713;
	1675.613 1080.7063 1784.5506 624.9661 912.3605 1302.1967 967.0741 268.9051 600.827 4861.1949 1937.6015;
	1813.6 1190.8 1954.3481 626.6739 1024.5484 1476.7737 1072.8645 313.6318 690.1821 5432.3416 2188.9553;
	1890.9567 1257.6361 2054.377 644.2306 1090.1 1566.9314 1112.6748 278.0529 747.7894 5844.7923 2293.4488;
	1846.2803 1243.576 2021.7049 631.2674 1065.2192 1525.5674 1110.3 343.4901 771.2753 6228.4141 2305.4317;
	1869.8979 1248.4 2010.2184 622.7354 1053.1268 1500.8181 1128.7 334.5939 800.982 6458.758 2312.6931;
	1861.9 1238.7 1976.4097 613.2414 997.0316 1497.2 1149.423 332.0 828.8724 6550.537 2295.0724;
	1795.7613 1222.1113 1930.3587 603.7663 973.5356 1497.7718 1155.8789 329.9136 797.1313 6474.6 2271.8307;
	1766.739 1207.1 1913.5988 605.9513 960.9 1499.5867 1158.9997 341.7424 785.915 6641.3826 2277.7314;
	1735.1353 1214.5556 1915.5281 604.4776 930.374 1439.7 1115.4263 321.8264 798.0839 6634.3 2224.4256;
	1712.7108 1171.6775 1901.934 601.3 923.5306 1397.522 1094.932 343.6126 755.0765 6598.0522 2246.3045;
	1705.05 1105.4 1846.3242 590.9487 911.8415 1377.3479 1072.7378 317.8378 708.396 6436.7771 2162.4441;
	1731.012 1147.9121 1853.2581 601.7 943.4378 1454.0093 1068.826 323.8141 701.2472 6410.0842 2183.3242;
	1692.6467 1146.0 1886.5 600.997 981.0355 1505.6379 1114.654 351.9001 705.2351 6417.5764 2279.9476;
	1718.405 1171.9808 1934.9095 605.3793 991.2281 1537.2983 1139.2306 361.0169 723.0441 6371.1745 2418.2189;
	1749.3009 1233.3278 2024.9852 616.9673 1044.5816 1612.2658 1219.2847 358.4179 764.0195 6338.9895 2494.579;
	1778.2 1223.222 2000.8204 622.2699 1022.4 1577.2863 1209.1289 367.3751 749.0448 6334.2769 2479.5333;
	1784.8115 1165.4 1912.5 613.9446 985.9957 1474.4199 1172.7913 335.5 717.2884 6046.7707 2376.2352;
	1714.7885 1091.0388 1815.0736 597.8 933.4983 1374.9254 1089.6071 300.1198 655.4302 5638.2502 2166.5;
	1634.3559 1008.5062 1678.6822 584.6399 894.9523 1235.1 978.2881 273.8314 603.5804 5239.4073 1975.2594;
	1546.5754 967.2447 1618.143 570.6 857.5487 1218.5116 917.7529 275.7591 574.6763 4865.7856 1888.7;
	1535.975 947.7 1608.5 580.3 841.9389 1186.7238 895.2962 271.3289 555.1 4743.4787 1806.6034;
];