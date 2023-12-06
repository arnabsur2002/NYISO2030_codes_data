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
	1455.5623 897.3744 1457.8932 502.1164 689.882 1146.1117 818.8 194.7174 503.6 4455.0754 1663.7273;
	1439.4585 877.0497 1408.0335 497.8323 691.2228 1128.3492 811.8557 199.1571 491.6667 4388.0951 1620.9264;
	1434.43 871.1913 1449.2645 507.794 680.3017 1137.8 824.5 209.5191 488.9834 4362.9978 1626.6046;
	1512.6457 948.2888 1544.1894 526.7978 733.3077 1211.5191 870.8841 222.5234 510.6381 4530.6536 1731.2763;
	1700.9507 1071.0584 1742.5566 537.128 854.0507 1354.7939 976.6529 265.6848 611.9626 5102.8446 2012.8361;
	1796.4202 1163.7954 1913.2798 553.6493 954.3505 1459.1781 1046.6211 302.3351 683.9887 5555.8 2176.0268;
	1818.9 1165.814 1904.5809 551.6 941.4899 1433.1198 1040.0008 299.1876 673.5163 5639.2328 2117.3616;
	1836.6841 1167.0541 1904.3931 547.8198 970.7075 1445.144 1078.1454 305.5722 697.3358 5867.2975 2090.2054;
	1851.8 1185.2887 1948.0 536.9222 978.4905 1453.2183 1070.5959 302.4912 695.123 6039.4609 2038.5385;
	1874.9 1192.466 1991.9595 535.9 982.6667 1420.4338 1116.4466 319.8171 699.6504 6168.4379 2077.114;
	1851.1648 1171.5 1949.1197 518.2531 938.4 1389.9939 1069.8252 319.4443 689.8006 6244.6096 2099.2437;
	1885.6098 1163.802 1952.0873 508.137 937.4342 1360.3392 1070.5549 325.6458 696.0232 6263.9558 2069.9675;
	1868.9835 1127.9657 1904.8623 501.235 899.9532 1318.1591 1009.5995 320.6 672.2761 6117.8 1998.7988;
	1841.803 1117.3518 1870.0786 503.5017 881.4164 1266.3257 992.137 317.989 678.5845 6082.768 2077.4138;
	1774.5582 1083.7919 1861.489 513.8192 874.4 1248.5726 966.4187 309.1 657.7492 6001.5514 2077.9387;
	1773.0296 1079.4077 1870.7 520.6 902.4 1308.3561 989.7893 328.9 654.2297 6005.3 2078.1095;
	1792.6694 1113.5 1909.1021 524.8725 951.7197 1320.9526 1008.5093 342.8967 644.8865 5861.7435 2246.0159;
	1889.6196 1140.4681 1942.8169 539.6346 944.2585 1371.8023 1020.2605 335.7639 645.4089 5696.4802 2210.1324;
	1867.1823 1117.4177 1886.7191 533.8575 960.3424 1331.83 984.6329 324.3 612.0743 5449.0162 1901.2002;
	1799.9388 1064.7375 1785.787 531.7872 898.2851 1268.5 929.8331 311.9453 582.4067 5092.4499 1811.237;
	1750.4992 1009.5862 1693.315 509.374 847.7057 1201.7462 877.8449 285.9732 555.4652 4727.1214 1694.574;
	1602.3715 918.3643 1545.8 513.5481 803.2 1122.2581 829.5588 269.8897 507.6604 4455.6322 1585.0589;
	1553.8948 906.2 1510.7749 515.7961 734.1886 1107.6766 762.0247 240.8 471.9852 4578.1007 1478.9656;
	1556.8031 893.1747 1491.5604 537.4 689.9415 1083.6127 693.7617 201.9126 441.1194 4249.9918 1434.9647;
];
