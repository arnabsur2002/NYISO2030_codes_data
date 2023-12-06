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
	1494.2924 900.2454 1608.0346 492.8456 794.0634 1068.8692 841.2656 226.6974 459.0194 4464.4855 1626.1706;
	1514.2866 929.6 1636.5898 492.075 795.8678 1090.9329 832.3465 231.3714 447.1653 4328.4214 1622.6381;
	1542.0878 947.7 1689.5764 528.9182 841.4392 1137.7 880.0413 246.378 458.7398 4419.9575 1686.4099;
	1645.3257 1016.4341 1804.3 558.2323 898.5217 1200.2659 936.2245 277.4 503.33 4624.9401 1829.3902;
	1801.3672 1145.7399 2020.9 591.5957 1031.9802 1364.7224 1042.6065 318.4 593.9998 5246.058 2100.1756;
	1907.9569 1237.9095 2125.5575 608.5185 1118.6478 1461.2412 1092.8822 334.3811 662.485 5814.2578 2256.0072;
	1962.5735 1275.8738 2138.7833 604.5575 1111.1041 1459.9739 1108.0642 355.6 676.1 6305.227 2290.3274;
	1940.2696 1266.2329 2123.1 604.595 1114.3992 1460.9255 1098.3957 368.7173 673.5189 6472.7601 2265.7363;
	1929.4153 1254.2259 2125.1172 594.9 1092.8628 1452.9869 1084.3379 361.1 673.5141 6590.7875 2327.1714;
	1918.6363 1251.5089 2114.1795 596.6443 1082.5349 1361.6563 1026.936 354.3489 665.6894 6494.4732 2256.5856;
	1893.2829 1233.6 2075.1636 578.3517 1079.0 1364.4282 997.5669 351.8 664.8226 6545.1259 2163.099;
	1889.2992 1217.4364 2050.3633 571.4237 1053.7297 1306.9855 962.8405 335.8 637.4119 6403.3 1999.4706;
	1857.9969 1166.6889 1989.2929 560.7946 1055.5221 1245.8287 986.065 344.9 659.6277 6448.6171 2111.1033;
	1848.1 1174.9635 1984.4764 535.218 1014.2615 1276.6775 998.4 332.1877 650.6 6303.3495 2049.1025;
	1832.8 1158.3675 1976.6096 508.4296 999.1 1231.9256 932.5317 337.5456 613.4694 6272.8286 2104.7299;
	1844.3307 1189.6 2010.5063 544.1231 1033.7889 1376.4542 1074.1264 378.3181 652.2657 6448.4685 2259.3929;
	1909.8159 1257.2722 2112.1331 591.3114 1132.483 1471.7747 1142.3444 417.6133 682.0623 6408.8912 2380.1379;
	1932.3216 1272.9649 2149.1605 602.2 1149.8299 1508.9163 1187.6021 427.8085 740.255 6489.9129 2493.2;
	1917.5503 1253.3709 2122.6368 615.7802 1146.4945 1509.11 1157.3402 407.8261 692.7179 6354.8173 2436.6883;
	1875.9083 1211.7533 2039.9 596.5 1083.5 1437.0076 1110.4154 388.9055 664.3492 6087.8174 2299.0384;
	1788.7563 1125.5638 1932.5107 567.6671 1039.0109 1341.2633 1038.8819 367.8599 626.5185 5774.9042 2131.6586;
	1726.2009 1041.94 1811.2907 556.0 958.9307 1264.1822 980.6723 344.3788 577.5689 5375.9826 1971.7393;
	1635.809 941.496 1679.4329 545.1789 908.9768 1166.5436 924.8453 301.0025 529.4468 4961.396 1823.3;
	1643.6976 945.2921 1683.2253 544.5916 883.0355 1167.0097 904.7541 298.94 506.3231 4845.7713 1764.0941;
];
