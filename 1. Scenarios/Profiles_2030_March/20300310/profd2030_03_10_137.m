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
	1446.2 955.2 1648.5533 599.8193 821.3426 1244.551 924.4214 285.3051 549.9344 4881.72 1860.4284;
	1407.6828 936.0299 1619.44 597.1766 808.6481 1229.2 881.0676 277.7031 515.3876 4660.7221 1740.8388;
	1417.9 934.0169 1634.3499 613.6994 815.4 1235.948 887.4237 272.6097 514.966 4567.9067 1737.0927;
	1397.0268 938.7473 1643.2901 617.5232 838.799 1240.3 885.5933 281.1 526.861 4586.2 1732.3074;
	1453.9985 962.2078 1698.4474 623.0 875.0389 1260.2593 916.3683 293.361 554.8794 4672.4338 1802.6;
	1538.0454 1017.4566 1792.7536 641.9463 943.8145 1320.2259 981.2781 306.1321 592.8731 4968.1925 1931.1789;
	1636.7914 1050.7048 1852.6573 636.9 1004.4636 1394.9762 1057.6367 317.1462 596.5641 5142.0202 2034.0374;
	1659.944 1075.8469 1919.8886 649.8117 1035.1103 1458.0428 1136.8 333.1595 643.2074 5369.4629 2139.8928;
	1652.3601 1062.6712 1887.9461 631.3544 1027.6798 1491.934 1172.2824 345.6673 651.68 5525.1331 2139.1009;
	1658.077 1071.9155 1893.8995 643.5827 1038.2982 1500.3028 1159.0083 350.1 653.9968 5610.8427 2118.479;
	1659.298 1068.7021 1895.6991 632.2 1024.5117 1494.0962 1114.8176 336.4315 655.1 5695.8573 2140.6343;
	1592.7 1082.0587 1890.1693 615.2202 1012.4412 1461.1772 1102.5656 344.9181 664.538 5803.4015 2166.8016;
	1535.8427 1052.9067 1839.4701 609.8856 998.2015 1402.9 1045.9614 336.0 655.9938 5600.6721 2204.4333;
	1551.7731 1064.3918 1821.0668 600.7375 1004.3121 1390.7066 1038.3745 342.2 624.2865 5618.9427 2191.2721;
	1616.4054 1068.3 1852.3879 595.0868 1039.6747 1432.9141 1049.8483 329.1434 611.6 5611.1158 2174.8;
	1620.5228 1129.1386 1911.9539 607.0 1056.4163 1469.416 1112.1448 339.6992 641.5408 5916.9206 2335.1728;
	1626.849 1106.7475 1897.59 625.8 1038.1455 1483.1506 1103.4612 332.7 643.3 5721.3832 2306.9345;
	1695.2933 1162.4686 1965.2483 633.4172 1082.1431 1536.9 1152.0302 353.1157 688.9249 5796.2562 2412.5172;
	1749.6286 1151.2336 1935.634 623.2251 1040.4133 1504.9021 1156.2323 355.8186 708.2445 5647.3362 2367.2995;
	1697.2489 1116.864 1872.4404 593.0 1003.3106 1468.7262 1135.9395 365.7798 698.7886 5646.2587 2331.5229;
	1627.2211 1044.8162 1762.7917 563.9753 912.1996 1343.9552 1037.5756 338.9031 653.1227 5373.2803 2189.6916;
	1553.8 1008.7 1681.0 544.4408 834.7863 1217.0405 947.365 296.5 587.5 5012.4383 2022.2841;
	1463.6106 941.9743 1624.519 557.0486 797.1 1129.3439 908.8916 293.458 520.481 4783.9499 1775.7555;
	1433.1063 914.3553 1598.9153 562.6746 763.0177 1120.5 904.1928 282.1405 486.4056 4674.6216 1749.107;
];