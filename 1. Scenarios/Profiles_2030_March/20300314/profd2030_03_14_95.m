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
	1465.9 949.3717 1616.8307 562.2774 784.0904 1145.4871 898.1259 286.2166 514.0767 4992.7604 1871.8294;
	1457.3925 933.1421 1564.1827 575.3 750.7 1134.3301 873.0183 273.7647 505.1765 4707.991 1833.3611;
	1496.7 957.938 1617.9333 565.5505 767.8088 1166.7611 897.3698 287.0255 519.9 4893.8339 1940.6337;
	1573.5677 1035.5975 1753.424 583.9219 860.9 1266.0141 978.5052 324.1825 578.4624 5246.1722 2131.4644;
	1645.8905 1139.4197 1917.576 602.6436 988.1418 1405.0947 1046.0941 363.7075 635.6743 5695.745 2241.3658;
	1753.0858 1215.3474 2000.6002 628.9322 1038.3141 1439.4 1087.8644 401.4134 690.57 5986.2396 2318.3613;
	1737.5353 1223.4306 2008.279 606.8025 1063.647 1465.8594 1150.5391 421.493 729.4799 6454.4526 2482.801;
	1742.9924 1225.4 2013.6309 594.9165 1032.4142 1457.1 1148.2418 424.8778 722.0598 6544.2899 2485.3492;
	1803.4 1237.0544 2013.8 591.5 1019.4993 1418.8959 1137.0791 394.955 712.8 6510.2616 2440.5012;
	1811.2161 1218.9084 2019.8791 570.8818 1045.7208 1468.6273 1192.161 393.3565 708.5463 6754.3214 2517.8876;
	1741.3595 1219.2 1990.8084 585.3017 1006.1231 1461.0004 1179.8724 414.2149 709.3303 6722.0541 2546.3084;
	1772.8614 1220.5675 1966.5729 560.1183 1006.6726 1451.322 1184.1885 416.675 697.1059 6553.0395 2510.1828;
	1732.2111 1188.3171 1953.3958 570.6346 1013.1776 1425.0362 1213.356 409.748 692.2963 6544.1901 2562.0748;
	1697.7117 1173.847 1907.7956 557.1133 923.5231 1360.745 1157.908 392.8097 690.0392 6427.8357 2522.563;
	1696.0238 1182.4882 1876.4528 555.8303 916.9699 1409.9919 1210.7741 404.022 675.3 6651.1858 2682.2438;
	1691.1206 1180.6237 1883.8008 568.3 915.1894 1465.6043 1214.037 424.1601 703.1113 6675.2813 2754.2856;
	1651.8521 1182.8 1897.4843 564.9 924.428 1442.7735 1177.5 407.3106 719.5436 6402.4687 2845.6311;
	1690.3467 1199.0965 1937.7827 586.8408 1007.0696 1486.3577 1237.5119 413.1687 777.0664 6666.0145 2993.9261;
	1746.9 1231.6843 1944.3135 590.0 975.0599 1452.5359 1195.2605 410.0893 759.4862 6582.2556 2880.3653;
	1691.1038 1145.5339 1830.258 587.2 916.2 1362.7544 1140.1354 390.6203 702.7604 6334.8387 2661.5234;
	1594.8 1061.1856 1711.7762 568.3194 858.2 1252.9606 1040.3 342.2594 656.7 5829.8031 2453.4538;
	1514.7158 982.4937 1611.4309 549.0257 807.0 1158.9266 985.0918 324.5192 597.6241 5392.3024 2228.788;
	1474.8738 927.1185 1555.0 526.4989 767.9224 1097.2 888.47 344.7167 518.1856 4860.2013 1854.1814;
	1469.6693 894.6 1517.129 528.513 769.1 1087.761 851.9686 326.7758 479.6283 4713.8215 1763.0735;
];