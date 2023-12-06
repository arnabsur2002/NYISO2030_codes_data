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
	1526.4311 934.9 1610.1 562.5339 830.8758 1206.8 850.1844 261.4335 516.2032 4742.7 1826.3085;
	1510.2578 910.0632 1597.3452 538.8599 822.4837 1173.7073 840.91 247.3653 499.454 4558.0786 1737.7736;
	1545.7 915.9 1598.2 549.7 806.828 1181.026 855.0601 243.4966 497.8273 4551.2581 1743.6146;
	1518.4267 916.6538 1601.3818 573.1 812.7761 1164.849 851.2746 249.0251 489.054 4536.4174 1757.3166;
	1503.2969 941.8644 1659.2809 597.5643 853.2 1190.9025 893.1288 256.0525 508.632 4709.3538 1838.5122;
	1544.3976 993.6626 1761.5569 617.7038 935.5456 1236.3915 963.7478 289.4 560.2535 4871.2364 1958.9356;
	1575.822 1016.9186 1826.9093 624.6691 934.2182 1232.0237 999.7207 288.8984 589.1217 5060.0376 2019.2303;
	1607.9155 1056.068 1831.1154 635.41 1000.0862 1270.6859 1022.2371 305.6351 608.3 5212.3086 2036.8932;
	1621.0591 1058.2424 1813.6572 629.5 1000.2 1270.0842 1008.3787 314.6643 615.221 5284.4711 2001.9507;
	1629.5578 1055.8879 1820.9423 619.8058 997.6 1250.0283 977.8792 322.6946 613.1672 5372.7438 1904.3583;
	1657.1747 1079.6047 1846.6453 620.1 949.0447 1203.5035 984.355 321.8 639.1628 5380.3093 1919.0359;
	1658.6 1066.1041 1830.0953 608.2 998.6416 1290.142 1006.1429 312.2697 648.6314 5422.0419 1941.5831;
	1643.7751 1075.5829 1823.3295 598.4169 999.74 1302.234 1021.5459 317.7754 661.4 5461.1852 1931.8599;
	1686.5 1083.8277 1827.0 574.9389 988.8333 1333.6002 1073.6504 306.1532 648.4278 5449.7256 1906.7289;
	1725.1545 1089.1734 1881.7411 578.7234 984.9076 1385.9 1125.7092 319.561 658.4099 5501.4714 2066.9052;
	1809.4325 1114.8371 1891.3808 591.7976 1006.1746 1442.5503 1135.5118 320.213 650.9794 5571.7126 2107.417;
	1789.7344 1113.0227 1884.3097 578.0715 1032.7556 1477.5724 1153.6 322.1982 667.3684 5615.5064 2197.9156;
	1767.6296 1145.6 1924.2 567.7211 1003.4003 1515.9413 1159.9351 284.485 695.6 5675.6 2290.4084;
	1812.0279 1177.988 1936.5616 575.2552 980.5174 1479.075 1142.2211 318.3509 700.5765 5742.4833 2231.7355;
	1782.0827 1117.2 1854.1156 558.3073 940.7307 1418.2582 1125.3209 323.1978 666.3 5602.798 2202.7216;
	1736.1965 1070.934 1780.2998 521.4209 926.0973 1331.5371 1039.5 298.7236 646.01 5460.5096 2029.89;
	1639.092 1004.6371 1654.5 515.8037 866.2564 1235.6793 961.1 289.7 593.5716 5188.6967 1848.685;
	1584.8971 916.1946 1527.4873 527.8045 837.8171 1103.798 875.0881 254.4518 517.2989 4724.0969 1696.9959;
	1529.2997 895.9007 1497.0072 530.0056 812.2335 1057.9366 841.2831 243.5744 496.4 4503.8 1641.2878;
];
