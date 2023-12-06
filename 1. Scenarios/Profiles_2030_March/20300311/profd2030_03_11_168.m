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
	1477.9 922.9641 1625.4964 576.5 777.0647 1108.1716 812.6968 247.092 503.0 4442.2738 1633.4579;
	1501.9344 924.1777 1620.7765 574.8247 785.5 1112.9715 816.5 240.6806 498.9977 4431.9773 1638.7264;
	1533.7 947.1219 1660.7195 581.1582 812.962 1148.6166 847.1 250.9761 500.3 4454.0 1675.1206;
	1615.6317 1037.3172 1791.5076 597.4716 849.8599 1211.4115 903.7717 286.8 544.3101 4729.7849 1810.2447;
	1753.0041 1161.0567 2033.4159 634.764 988.2671 1380.983 1020.6133 338.0 627.0902 5272.0 2037.9066;
	1888.6 1256.1244 2184.0785 651.4311 1101.8092 1446.8424 1098.1877 378.1 702.0605 5874.4855 2223.0356;
	1908.5801 1285.9697 2179.5861 655.9321 1126.1068 1476.8697 1117.0436 383.2772 714.2345 6225.0396 2269.9238;
	1890.0107 1286.6377 2142.4699 643.0549 1119.8187 1478.6 1155.7417 383.049 736.8348 6673.2417 2268.6561;
	1873.1098 1290.3031 2108.1029 644.3445 1114.3 1449.6111 1128.8 382.6817 710.0598 6577.5186 2257.5732;
	1933.8576 1302.4148 2100.7337 638.1289 1117.6255 1431.6433 1082.3542 380.6 703.4 6587.5049 2184.1949;
	1954.1139 1293.3844 2109.0025 635.3062 1086.2843 1425.3305 1115.195 382.6797 693.6179 6575.1458 2191.2159;
	1978.2174 1319.8589 2084.699 624.4146 1031.9 1387.6255 1055.3169 359.1393 682.7975 6419.9334 2071.5124;
	1937.9265 1224.0 1973.6455 599.9938 981.5128 1276.8429 1025.4271 367.3 662.8386 6410.1365 2013.6583;
	1916.5723 1233.5 1959.0696 601.5 955.2384 1303.6901 1027.2455 348.8246 660.2258 6426.5233 2128.7594;
	1918.1555 1201.7236 1958.4061 609.7982 956.6082 1342.6065 1036.6104 346.8 639.4142 6326.6401 2126.0757;
	1956.8991 1245.8268 2065.5602 635.7 999.8326 1423.6 1076.561 349.2839 671.8944 6310.3262 2270.9361;
	1962.4168 1254.3261 2028.4746 650.0692 1008.0089 1443.7979 1079.6003 339.6862 671.6554 6109.5454 2215.7255;
	1974.7515 1297.7581 2170.5525 654.4125 1058.368 1491.2754 1106.842 346.8639 690.5201 6065.163 2199.5895;
	1959.2 1295.8648 2124.8219 654.3858 996.8038 1474.7746 1123.2264 343.3749 693.3697 6009.8035 2139.0767;
	1908.8982 1228.5163 2035.7991 642.0019 946.7074 1396.2818 1057.8631 335.9 646.4 5763.4735 1990.9232;
	1806.996 1132.0 1892.3521 616.6599 886.6646 1284.8148 967.9584 308.3436 620.5844 5288.4351 1759.6275;
	1718.3165 1053.7 1777.4 590.5788 833.6528 1191.6936 934.2894 287.7757 567.5047 5041.0687 1722.2987;
	1680.5781 999.1213 1736.432 600.1395 918.2788 1205.8757 915.9 274.7 554.6855 4983.1239 1782.7872;
	1624.8772 976.8402 1681.0869 599.3392 869.9859 1198.7849 898.7311 259.7142 535.4624 4671.1098 1744.1644;
];
