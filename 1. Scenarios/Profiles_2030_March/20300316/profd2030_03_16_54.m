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
	1554.7144 861.6368 1488.4147 559.2 715.6094 1089.1025 832.3 231.8467 496.2 4298.2858 1707.7378;
	1546.1 872.7269 1492.5845 560.5067 704.9077 1077.3 816.8746 220.6 484.2894 4290.9 1660.0329;
	1553.0209 871.8 1515.1 566.898 719.0123 1116.5608 828.8 221.5456 474.908 4255.5354 1688.0;
	1545.8 890.8485 1538.2585 577.778 754.8224 1135.5406 832.2712 215.0 475.2716 4186.9372 1695.301;
	1602.7898 960.6986 1661.2599 588.193 820.5 1201.5 889.5 250.3547 517.2 4478.3767 1805.1946;
	1646.6163 985.7344 1742.6 602.2887 860.7743 1265.3389 951.1095 273.4 556.6007 4811.617 1950.3758;
	1664.2919 990.2681 1798.4399 586.3802 947.0056 1345.1772 980.7462 287.0255 582.3 5036.8702 2038.8098;
	1692.2853 989.1889 1778.8678 578.3306 922.574 1392.505 1043.9412 285.6515 597.6812 5218.3609 2088.5;
	1764.6955 1008.1743 1856.1652 576.983 982.9964 1435.3 1100.9955 297.6517 615.991 5332.6513 2105.1;
	1803.5 1057.4773 1884.8908 570.2 994.7242 1474.2402 1139.5296 322.9103 631.9 5492.8397 2188.5981;
	1850.7904 1030.449 1847.6252 555.9977 952.285 1474.5715 1123.7474 310.4478 637.0918 5508.3575 2119.697;
	1866.9504 1069.6328 1839.9985 543.6072 931.255 1469.4183 1108.032 336.3659 639.661 5622.9968 2174.539;
	1822.5264 1011.4893 1803.9271 537.5 900.1505 1431.3015 1089.2311 325.458 623.1921 5448.4894 2060.5727;
	1784.4781 991.453 1735.0514 541.6509 914.1 1355.2889 1026.7512 302.8188 595.7 5343.5068 1950.7485;
	1850.0982 1031.0916 1814.7 539.7905 952.2859 1438.5914 1072.0044 321.3214 616.0362 5316.5983 2044.9392;
	1888.1505 1046.6 1819.9147 540.3284 942.9079 1401.6462 1069.148 304.0864 639.8552 5430.7872 2136.9;
	1908.9672 1080.512 1926.5 564.0614 1003.7389 1462.2412 1121.7664 330.6752 642.6 5796.3992 2285.5137;
	2008.1245 1148.5894 2050.1165 555.4828 1031.2031 1492.7 1126.5 331.4946 705.0397 5796.9306 2363.6407;
	2054.4891 1163.2151 2087.1681 568.1 1027.3069 1511.4066 1173.8089 343.6764 720.2 5874.6472 2353.3149;
	1968.3756 1093.2033 1905.0998 570.3644 963.4088 1415.8604 1084.6847 325.4 680.8213 5494.3004 2296.1109;
	1878.1005 1032.0 1811.5905 568.7613 923.4993 1376.6404 1049.9641 314.1947 662.824 5472.0498 2217.3158;
	1799.003 997.7902 1759.1556 558.9453 888.694 1332.4511 1024.7609 297.4 648.4112 5395.6318 2120.9086;
	1728.7486 949.8617 1708.4745 569.9936 858.2744 1241.22 961.6 275.7068 591.1015 4958.5977 1947.28;
	1622.6409 914.2756 1673.0957 559.8436 819.1051 1214.7258 932.6255 263.4061 561.3657 4750.6289 1828.389;
];