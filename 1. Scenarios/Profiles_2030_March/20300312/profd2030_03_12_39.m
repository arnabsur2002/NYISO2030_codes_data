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
	1555.9 1008.7051 1676.6 604.0789 802.9 1198.1412 908.9176 273.9958 516.7 4412.8914 1773.7399;
	1507.4376 995.606 1650.9812 597.7326 792.6673 1203.2 901.2734 266.7 507.271 4385.019 1741.5691;
	1565.1925 1021.7503 1683.2126 603.3685 801.1382 1225.3113 914.1128 274.1164 526.3647 4417.3564 1782.095;
	1630.8 1087.9713 1805.981 613.1978 875.2739 1301.8571 964.9804 302.4009 556.6407 4658.9075 1895.1;
	1800.7 1212.304 2044.1 631.0 1017.5352 1466.884 1077.091 351.9326 638.9513 5248.3236 2152.8396;
	1881.4836 1263.8 2108.665 643.0 1069.6 1539.086 1132.9598 360.8341 717.0 5778.8269 2297.8354;
	1882.8819 1258.2077 2110.2979 642.096 1055.2496 1523.2 1139.8696 368.1908 722.4599 6125.5317 2338.1956;
	1908.279 1282.3722 2115.5754 629.2518 1040.7209 1512.2375 1125.3417 360.5509 725.9 6167.9 2269.6894;
	1921.8 1273.912 2088.7426 624.2729 1049.3481 1527.9843 1148.8554 371.3476 740.4895 6250.342 2218.2209;
	1901.5434 1269.7825 2071.2126 622.6202 1064.3727 1574.44 1160.6459 379.7567 737.1522 6370.8249 2212.0689;
	1856.0 1249.8582 2047.4394 614.6 1020.9742 1547.3739 1101.6173 375.8787 701.9423 6299.0736 2055.5015;
	1873.1968 1219.8358 2021.2327 601.0 999.2661 1531.2887 1113.2913 388.6447 679.2503 6130.8961 1972.2382;
	1822.2 1199.4 1985.3946 587.2753 954.2232 1516.2706 1060.0459 380.2 665.2705 5980.3936 1882.1657;
	1825.6719 1189.6891 1977.5747 584.1376 978.3 1481.4663 1042.0079 386.6466 640.8803 5655.4478 1865.6684;
	1793.4939 1194.054 2039.6959 601.9401 999.9764 1513.5014 1067.4756 410.9403 660.1948 5687.3952 2052.709;
	1835.2312 1234.9638 2096.0697 615.6624 1025.8275 1547.5813 1117.5015 409.0273 668.2494 5949.7274 2167.8444;
	1817.0456 1241.3002 2134.262 619.3677 997.8059 1563.7519 1159.9114 410.9657 703.8 5995.2984 2285.5734;
	1917.4502 1275.4239 2173.0786 637.5 1032.645 1587.2983 1203.8661 417.9 735.8817 6078.4485 2413.1202;
	1918.3766 1273.6182 2146.9802 639.5646 1028.9826 1544.4693 1210.5741 409.2247 737.5 5928.911 2420.3012;
	1880.5522 1208.8846 2064.5426 629.4817 989.6137 1470.1 1147.9 379.32 722.5089 5769.4175 2341.8652;
	1749.3754 1133.1372 1915.0593 616.8325 946.2547 1387.2502 1074.2716 354.5 662.8 5313.7938 2162.8649;
	1650.8447 1051.8331 1824.7083 591.1439 873.7 1305.5672 1017.0405 316.1947 624.0315 4863.7404 1974.9382;
	1589.9014 1009.8 1791.1223 583.6005 858.7387 1238.0742 952.4192 260.144 604.9666 4875.123 1855.4789;
	1570.3161 992.7 1771.3506 581.4068 845.5782 1229.2539 930.4046 240.5494 612.5025 4678.1046 1808.6542;
];
