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
	1464.0119 876.4113 1570.4429 549.2028 774.3106 1133.3108 833.715 222.5877 508.6944 4229.6244 1620.5651;
	1469.5044 886.4214 1572.0014 560.7 775.3099 1143.3144 837.9442 235.0 492.6723 4230.4661 1611.4;
	1507.0 908.7821 1585.8418 573.5 785.7512 1151.8676 862.783 252.3423 510.3425 4364.8422 1670.8;
	1574.6665 992.2 1686.1545 578.1 833.3593 1219.646 914.465 269.0904 546.9968 4616.9 1799.8754;
	1728.655 1111.6498 1866.7064 631.64 943.4764 1354.2222 999.0387 276.5401 616.271 5095.4023 1988.4453;
	1838.7422 1183.2 2015.7779 650.4613 1022.6 1438.2116 1064.3303 313.3066 682.0772 5663.3485 2132.0206;
	1912.4175 1207.6695 2019.0 628.8043 1040.8647 1459.5098 1102.2806 344.0397 707.858 6125.0352 2219.0411;
	1940.3075 1243.5337 2062.0623 633.6844 1074.3836 1474.0338 1121.6842 345.6352 689.8 6271.8242 2194.1065;
	1955.8669 1256.6169 2111.1 610.1 1095.6 1500.9442 1123.9 340.7118 692.7401 6241.4332 2149.01;
	1993.1612 1256.9428 2105.8231 611.517 1062.095 1464.8701 1137.0019 326.7841 671.124 6204.9045 2053.7644;
	1964.582 1256.1558 2113.2702 606.2652 1066.4583 1413.1656 1137.3413 328.479 671.9 6190.5997 2093.4472;
	1941.1535 1239.9 2088.9643 599.4887 1047.5787 1453.1139 1173.6405 345.6078 703.7679 6227.879 2058.2084;
	1889.6 1243.7051 2089.9451 587.9955 1034.3416 1452.8426 1187.7197 341.0 717.095 6259.452 2094.8683;
	1872.9048 1242.1662 2046.7166 592.6854 1007.4792 1427.8 1188.7104 352.2941 768.6949 6220.6144 2012.6211;
	1861.4 1248.2721 2096.6956 595.3578 1021.1409 1430.7627 1273.2555 362.9597 823.6612 6399.4573 2196.7124;
	1885.0158 1247.747 2098.1756 590.3882 1015.9743 1456.3229 1265.4347 367.2935 813.7021 6367.6215 2257.4921;
	1867.032 1245.156 2127.2246 606.3 1043.0128 1519.9305 1276.7807 388.2058 744.1339 6225.6857 2365.4362;
	1931.1821 1300.3 2223.1134 620.0344 1071.0 1570.4 1328.9118 399.3348 796.4446 6240.0375 2480.9285;
	1919.4036 1302.9318 2247.8001 622.4 1090.5948 1560.2847 1341.7682 388.3831 752.6918 6168.9502 2459.3641;
	1857.5045 1227.4472 2079.213 604.9475 1024.8497 1468.8775 1209.2702 372.0697 699.9 5914.7501 2273.7181;
	1815.3165 1186.7406 1990.2013 579.7374 965.2953 1386.7358 1135.5377 349.664 671.7616 5693.3 2142.096;
	1695.2597 1095.1428 1837.3342 578.9743 894.8848 1315.0 1063.4032 314.3917 600.9081 5219.1614 1960.7824;
	1634.1504 1026.6713 1823.928 574.3 891.9881 1277.2005 969.4516 290.6 563.2743 4779.324 1815.076;
	1557.6533 978.7 1721.1042 560.4045 830.7537 1240.7805 927.8715 271.1 547.4883 4535.2413 1744.5153;
];