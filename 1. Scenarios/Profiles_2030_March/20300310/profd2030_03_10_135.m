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
	1473.3092 972.6926 1642.7527 579.0 853.0138 1280.5269 903.0216 284.4514 559.0843 4966.1213 1839.5162;
	1445.1252 951.5125 1611.4195 570.7713 847.3 1294.6557 894.934 275.1 540.5067 4805.9767 1811.2;
	1453.4083 945.0765 1617.1881 574.6962 843.1097 1271.7055 887.2 263.8797 531.0 4652.8924 1743.5011;
	1469.9469 961.4706 1641.4344 569.1 839.3876 1311.8941 908.5 274.8126 542.4 4703.1174 1794.9904;
	1490.1989 989.2 1706.7315 574.5103 913.2968 1361.4093 949.3193 289.3204 563.8 4752.4766 1893.0855;
	1575.2692 1044.7 1799.1602 585.4822 993.6544 1415.5645 1023.1685 316.6315 594.6438 4928.0955 1969.9693;
	1612.7513 1051.1591 1813.2 589.7023 1026.1171 1477.7 1073.8174 328.5 634.6731 5155.9187 2105.5681;
	1656.9664 1081.8496 1854.7407 598.8011 1076.2344 1576.4484 1150.5251 354.7671 683.0205 5369.4723 2244.5518;
	1673.129 1126.3504 1911.5104 614.8811 1085.4966 1617.8217 1184.3872 379.0222 686.9367 5450.3184 2260.6665;
	1677.5503 1114.7872 1902.0707 609.2 1042.4346 1613.4304 1176.8091 377.8058 675.8569 5608.9895 2325.7604;
	1699.8 1112.8911 1913.5129 616.9171 1029.3206 1593.8768 1116.2179 372.4858 637.9 5518.1529 2271.3839;
	1676.3044 1109.6028 1908.2065 612.8608 1012.1893 1584.3845 1092.3146 368.9544 648.1613 5597.1135 2244.6432;
	1657.0902 1081.8239 1849.4464 614.4015 998.2566 1521.1638 1062.6898 339.9958 652.0 5492.1943 2135.1093;
	1610.1622 1099.1746 1880.4152 607.2 1006.7877 1582.155 1095.7884 359.509 665.0776 5533.9905 2174.6219;
	1680.0621 1143.2706 1961.2539 610.2823 1034.9591 1544.4455 1114.2283 352.1346 653.1547 5597.6262 2213.2184;
	1746.6247 1194.515 2021.4152 615.8657 1066.9758 1618.2847 1202.8218 374.3098 683.4286 5625.436 2259.5621;
	1754.9 1207.3 2006.8737 622.1899 1094.0838 1579.5987 1204.6985 399.6913 723.1441 5723.5038 2340.5801;
	1834.9188 1247.3517 2042.7709 614.2125 1141.427 1647.8026 1258.773 416.7777 755.277 5787.6454 2428.2414;
	1853.0655 1251.1601 2062.2966 602.9772 1098.9392 1650.5297 1214.2096 423.2034 726.2986 5760.1151 2519.1891;
	1783.8008 1158.8334 1951.9629 586.0156 1030.9692 1548.8565 1155.8756 399.4034 690.5029 5623.8367 2324.6691;
	1729.7821 1095.272 1836.097 562.5935 946.6451 1469.2806 1085.8378 387.7208 652.2019 5414.5278 2194.4;
	1701.9032 1053.9841 1732.8 538.8772 866.7505 1331.7134 970.2049 349.5606 590.9 5234.7509 2013.7989;
	1622.4012 983.3658 1617.2762 550.8043 845.5847 1181.4842 884.3702 262.2739 529.7677 4737.797 1766.3432;
	1533.9169 951.9148 1565.0711 555.129 805.5335 1151.7071 859.8897 271.0557 527.7031 4575.0112 1739.0765;
];
