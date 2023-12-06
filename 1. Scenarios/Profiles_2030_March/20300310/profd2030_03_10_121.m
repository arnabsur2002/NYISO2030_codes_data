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
	1574.2107 916.9841 1563.5215 583.3033 853.5 1231.9 914.4068 287.2295 612.554 4957.0385 2006.4735;
	1514.5419 878.0 1539.9559 564.9811 839.7 1193.3073 886.6041 275.6 580.249 4710.8828 1936.7539;
	1534.7147 897.2353 1562.7592 563.9606 824.3323 1196.8 879.2 269.3502 561.2576 4743.0888 1911.0532;
	1536.0251 920.8464 1615.2994 555.7538 842.611 1209.4266 886.946 289.2073 573.5183 4777.038 1984.612;
	1577.6872 929.7603 1641.4878 560.6203 885.3087 1256.8 937.3 304.0867 606.6064 4874.871 2040.9373;
	1614.7187 959.8942 1705.1631 557.4195 968.5929 1314.0901 970.2015 315.9964 619.9061 4918.4452 2006.4;
	1660.5448 1009.2 1763.6474 575.7634 1017.2476 1400.5209 1032.5 324.2172 618.3272 5098.8 2068.6127;
	1693.1636 1028.9373 1818.0069 585.9884 1072.432 1457.2 1090.6919 333.9576 624.5469 5199.8493 2086.7742;
	1689.7629 1052.9439 1799.7 587.1297 1078.2776 1502.0 1139.2799 343.0974 636.1168 5363.3623 2211.4;
	1683.2185 1057.9 1797.1 593.9754 1055.3194 1504.0152 1162.6732 348.205 646.4501 5509.2633 2240.819;
	1701.891 1074.1 1775.402 582.3 1035.8 1495.3451 1151.0795 371.2052 633.9199 5493.2144 2240.7467;
	1704.1844 1057.8805 1815.2038 576.1 1024.3372 1472.1531 1112.2914 365.7548 633.1188 5424.4359 2206.8772;
	1699.0842 1036.1267 1723.6329 556.2279 984.8086 1404.2762 1053.532 362.8774 617.9185 5398.9157 2086.6;
	1671.7867 1002.1282 1733.1494 532.3136 1014.478 1422.3439 1080.4 367.108 629.8814 5434.3579 2129.0981;
	1668.3 1025.2808 1706.1612 543.0492 1021.4892 1391.7329 1063.0785 341.3 632.7493 5390.0758 2165.0274;
	1719.5071 1074.1327 1729.6155 554.2 994.1567 1433.1356 1056.4517 338.851 627.0772 5437.2342 2168.2796;
	1732.1361 1113.4456 1836.4689 565.3845 1028.5231 1417.6705 1047.108 340.9615 607.9144 5454.4734 2197.2;
	1779.8686 1123.8 1844.9906 571.8965 1027.0 1501.5152 1138.0545 373.612 667.4533 5646.3664 2363.2786;
	1822.8474 1127.9265 1881.6795 588.339 1032.3717 1495.8563 1120.8351 364.6105 668.4521 5593.9595 2347.967;
	1755.1843 1068.7088 1821.2073 569.1125 988.4 1407.8019 1072.0569 349.7514 645.9072 5498.1595 2239.3542;
	1704.2429 1007.4746 1704.0599 537.7 905.3542 1312.5626 979.1883 325.5499 603.9324 5210.5089 2065.6315;
	1656.8471 960.4533 1653.7141 514.7 883.3 1231.6121 935.0564 281.2467 587.1778 5038.0641 1944.6775;
	1707.4464 937.6278 1635.9875 523.7376 800.3 1133.1384 920.2699 276.1759 523.5211 4770.5447 1956.9234;
	1632.8047 933.3571 1619.5276 541.8 854.8192 1113.5199 887.8114 261.4148 502.2 4533.373 1738.4962;
];
