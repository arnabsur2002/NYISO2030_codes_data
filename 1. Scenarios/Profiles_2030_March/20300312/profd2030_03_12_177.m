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
	1548.2511 978.007 1666.6911 550.0572 847.0175 1170.3124 947.9979 294.112 570.4861 4571.5247 1712.0208;
	1533.8144 962.469 1650.0218 554.0687 849.7 1165.1889 926.0824 283.866 571.9781 4532.6059 1710.0851;
	1577.9064 985.2838 1695.8078 584.7188 864.7606 1193.2 936.4324 287.9 569.2594 4551.8201 1737.2198;
	1631.4624 1062.6 1817.7345 602.0111 913.4 1255.1 990.6842 307.5505 618.32 4841.0096 1858.3;
	1771.6949 1178.9672 2018.3331 635.6084 1070.9123 1406.219 1093.4817 365.9587 704.3897 5458.1849 2139.7088;
	1880.4465 1270.2 2142.6105 634.9 1122.6161 1499.9144 1205.4463 409.6524 784.2107 6071.4312 2345.6049;
	1963.4025 1293.5989 2143.5778 636.7 1131.8965 1513.7371 1223.4063 434.0831 793.6677 6447.8793 2415.8948;
	1944.1771 1285.4213 2131.1472 637.7 1112.5213 1492.682 1256.1243 440.3725 816.3698 6736.3099 2435.6;
	1964.5098 1270.4 2135.971 647.5553 1114.4407 1469.0943 1240.7894 417.3613 823.2353 6652.2143 2466.0492;
	1943.3816 1250.4703 2131.1309 643.8958 1140.4924 1505.9847 1315.5207 409.0631 859.5899 6653.8 2461.5829;
	1931.9664 1209.1035 2104.9366 628.151 1128.2 1448.2765 1293.2681 383.434 853.2653 6575.2865 2422.7448;
	1907.941 1184.2754 2047.6033 612.2359 1127.2404 1424.8205 1266.5361 367.5616 789.8261 6620.4621 2339.0946;
	1885.8341 1175.8916 1986.1284 619.6 1110.1891 1384.7264 1254.7078 357.5351 789.3989 6482.7011 2283.8739;
	1765.6039 1167.6849 1991.0544 595.0545 1077.6964 1346.6853 1197.4801 346.9 800.4678 6464.1381 2244.8942;
	1709.2137 1166.9381 1972.2785 599.3893 1044.6 1329.3194 1212.8182 337.9226 768.3 6492.8081 2247.519;
	1698.9079 1180.2 1949.8653 602.474 1064.0865 1382.7925 1203.5434 339.5 828.3001 6534.2807 2424.4485;
	1731.0734 1195.2377 1994.5 611.1696 1060.5696 1454.0332 1238.7115 362.737 773.8432 6464.552 2482.376;
	1771.4812 1228.3575 2034.8755 617.4716 1074.6026 1505.8617 1264.6549 377.5658 778.9218 6442.8336 2533.7122;
	1775.9158 1197.437 1948.8784 608.0071 1046.406 1458.1391 1266.0118 356.3932 771.366 6344.5939 2520.6584;
	1778.0408 1159.7716 1877.6953 586.5893 991.6594 1410.5552 1224.5971 349.9618 769.423 6108.4 2410.8;
	1712.632 1095.2163 1835.1865 570.9009 949.1131 1325.6586 1153.4933 333.4479 686.4 5775.2463 2229.4053;
	1615.8915 1016.9396 1706.4902 558.1752 849.1791 1241.8996 1082.6276 321.0159 649.6833 5395.0225 2029.9076;
	1547.6924 924.0524 1655.3907 564.8271 882.2233 1194.1 1070.1127 302.1427 587.079 5180.9993 1890.7386;
	1533.0085 945.3341 1677.6476 563.3389 860.0915 1190.6972 1055.9346 287.0648 595.5 4871.4495 1814.5822;
];