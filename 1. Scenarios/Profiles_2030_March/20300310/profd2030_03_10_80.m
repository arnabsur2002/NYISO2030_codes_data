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
	1372.6303 923.8486 1608.4 584.4 912.8677 1227.8215 918.4335 278.616 551.5131 4854.7157 2009.0132;
	1328.9954 897.0414 1581.3469 572.9617 889.4531 1154.7328 880.5 265.6261 529.2941 4680.5744 1921.4;
	1347.2 898.7921 1582.6673 561.3628 856.9273 1181.4274 883.838 268.8891 523.7195 4653.243 1901.2264;
	1367.8751 919.3144 1639.6053 582.6906 909.5818 1221.8 908.8824 287.1856 533.0397 4675.7783 1916.6066;
	1450.2272 960.6756 1717.3428 598.4046 963.8885 1272.9209 976.9294 299.1304 580.5083 4888.8153 2083.4778;
	1554.6755 1003.1071 1779.8098 606.1909 1002.2695 1321.965 1016.8498 319.0056 619.0718 5063.0889 2060.7011;
	1562.8 1028.4 1832.0172 620.6971 1050.0915 1370.0845 1050.1507 322.5 657.2184 5134.9388 2110.7396;
	1579.4853 1038.6062 1843.7867 629.5372 1093.0378 1412.3782 1111.3605 343.2444 688.0087 5299.2702 2150.0796;
	1619.9686 1063.3481 1899.9971 623.7123 1096.6679 1457.8811 1165.3509 350.9431 714.3079 5460.0978 2244.7272;
	1624.0074 1078.5086 1950.1588 622.332 1075.2711 1465.7665 1197.1 383.1906 716.9425 5629.9904 2403.4821;
	1629.3846 1071.8562 1955.9485 619.5 1073.771 1450.025 1171.2987 372.8033 698.5043 5691.7351 2345.9163;
	1608.7501 1047.9476 1885.111 603.7 1042.6632 1427.3 1146.8677 357.146 706.6031 5788.2697 2306.1258;
	1589.3033 1059.9 1886.6547 587.0629 1021.3863 1451.4065 1117.2532 347.9973 693.2722 5573.1203 2219.2688;
	1586.2506 1055.0553 1870.0369 579.7105 1030.0879 1420.4311 1104.9435 342.5826 694.9 5488.2354 2225.6536;
	1599.6495 1060.0209 1893.7189 592.6512 1012.2002 1407.2147 1074.3637 358.1 680.2901 5461.4939 2238.1527;
	1642.0975 1096.8628 1955.7136 596.7852 1021.2853 1447.4106 1110.4617 365.0253 683.4857 5544.4684 2294.8188;
	1611.711 1126.5196 1985.0531 598.8023 1040.7234 1463.6336 1113.215 367.6627 691.619 5541.396 2401.404;
	1638.5843 1161.7052 2030.0604 599.2 1066.9371 1515.9 1154.6 383.0223 722.4 5717.9982 2604.5666;
	1670.2147 1151.681 2014.4242 612.5166 1060.749 1513.4665 1155.0 380.4418 712.4629 5610.7938 2498.0227;
	1647.5787 1112.0772 1967.5463 577.3 1009.7369 1411.7123 1094.0928 369.9 683.7107 5595.7925 2486.87;
	1575.3221 1056.3514 1850.8238 571.2756 950.2 1346.1853 1023.4163 340.1306 632.0084 5341.7582 2252.8638;
	1499.8993 990.4996 1680.0881 554.966 860.0203 1242.6 940.7542 308.0 572.6603 5049.5384 2064.1233;
	1419.3289 940.0839 1609.9461 585.8742 834.1477 1103.9516 888.0946 298.3579 567.333 4746.3811 1869.0846;
	1403.4929 913.3477 1612.291 576.9949 835.3449 1123.8255 884.8 289.2 540.4353 4716.1643 2010.0738;
];
