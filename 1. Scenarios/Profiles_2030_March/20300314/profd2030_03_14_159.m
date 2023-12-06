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
	1446.2486 941.6503 1571.4 579.5832 746.8877 1109.3263 841.7624 265.0 523.2905 4538.8136 1756.0454;
	1426.0356 927.4429 1570.3914 584.8 749.154 1082.776 828.9158 249.8039 510.2 4406.7981 1689.7019;
	1460.6773 951.6 1595.7307 574.3304 751.8848 1118.2517 856.2 259.1 514.6 4414.7773 1736.6;
	1540.0511 1034.2014 1734.0 594.6564 828.4879 1185.0952 882.3871 276.5444 544.4 4627.2172 1820.9182;
	1702.3487 1168.8095 1956.1 599.4 942.9865 1346.8887 998.5 304.205 629.8498 5182.6439 2066.014;
	1815.4612 1246.0935 2032.9893 599.7948 982.5842 1411.4848 1060.4898 340.1068 697.9422 5749.8 2266.6432;
	1876.5926 1260.0154 2059.6475 606.8 1017.1604 1417.3969 1122.1194 358.0316 720.5505 6033.6977 2429.1784;
	1881.7232 1268.946 2073.9167 586.7538 1012.8324 1412.0357 1118.6313 348.323 736.8885 6294.5701 2417.2228;
	1858.0 1250.5729 2100.7114 592.4 1033.3912 1393.7 1105.6972 343.2202 724.8702 6232.4052 2368.3478;
	1854.9597 1213.2 2041.9937 570.8121 991.4 1360.0 1107.2763 335.2286 718.3369 6202.4508 2285.1056;
	1821.1924 1185.0679 2005.1062 580.2686 971.9781 1330.9589 1125.3022 341.3877 725.9241 6349.5 2284.6341;
	1774.5 1173.0872 1985.253 565.8771 913.7 1231.3 1026.6 323.0 667.138 6197.2473 2090.8745;
	1803.8325 1173.2 1970.1979 561.0688 945.8192 1276.1 1036.1056 335.1408 669.6964 6157.0024 2056.7262;
	1722.4216 1165.1187 1969.068 565.4 901.0 1242.3 988.5593 348.101 668.4195 6087.6784 2037.7337;
	1721.2473 1174.9419 1916.6 557.4288 882.8458 1264.7248 1016.0217 330.4 667.241 6091.4827 2108.8279;
	1718.9105 1177.9899 1931.0008 544.8 932.6765 1319.889 1027.1453 350.075 660.6359 6038.2049 2104.6224;
	1682.957 1180.4396 1939.8132 543.7492 944.2256 1349.7276 1054.1919 352.6014 700.4123 5951.9504 2217.1673;
	1763.7358 1205.8003 1958.6624 533.7878 966.8894 1402.6321 1119.914 374.0657 725.1466 6062.3744 2351.6481;
	1750.243 1215.5147 1929.3896 549.1 963.4934 1404.5447 1128.2 369.5 727.4184 5966.7887 2376.2724;
	1708.3488 1132.6623 1852.3802 561.3 924.1095 1331.2566 1106.6818 354.0687 705.3542 5829.0686 2296.5657;
	1597.8859 1055.2026 1719.6265 539.3397 867.8906 1225.307 1014.0727 311.0003 638.3854 5412.6867 2082.0466;
	1488.9076 955.5 1575.323 527.9348 806.3645 1132.3175 932.5294 286.4 587.8439 5076.5158 1929.3;
	1465.2219 907.7209 1526.8508 529.823 740.0929 1077.3 846.2422 236.8855 515.3925 4645.7914 1777.4642;
	1440.0229 885.3 1506.0574 531.8 734.3792 1048.8075 837.9 211.3897 497.2 4490.6509 1675.2;
];