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
	1514.2278 890.8504 1584.5335 540.6674 757.9939 1101.8396 823.3669 233.643 521.8487 4477.468 1710.1667;
	1472.6 871.9972 1542.1169 528.4 747.9751 1073.2133 776.1079 219.0316 496.2907 4277.1919 1633.1057;
	1482.9 903.8089 1620.2889 538.0968 780.7002 1106.8383 807.2428 233.3447 501.9 4367.3216 1702.6469;
	1558.8328 957.565 1707.6934 539.2464 844.0882 1174.6013 836.9821 237.165 532.5965 4529.3377 1797.9123;
	1718.9602 1075.7 1884.3364 567.397 916.2 1297.6 943.5 278.2157 603.9707 5095.7978 2066.9749;
	1819.0897 1151.5 2010.3948 586.2598 965.8201 1398.0 1015.7267 305.3465 675.3947 5511.2152 2204.2288;
	1826.3127 1160.0663 2037.5522 565.9679 967.5 1412.9114 1069.0243 340.8749 714.2088 5910.3597 2418.0347;
	1848.6624 1205.1 2084.4335 565.0 968.1001 1430.0273 1160.1838 371.1 729.5133 6157.3278 2504.6021;
	1834.011 1186.0 2079.0366 562.0064 964.2578 1424.4362 1203.3597 367.1342 739.8945 6209.8606 2526.9482;
	1838.3251 1197.2 2081.4901 569.4 972.9 1420.1922 1212.9202 343.3978 742.8 6239.6561 2549.1463;
	1803.7143 1187.8224 2020.0786 548.7934 943.1743 1443.0861 1247.0458 328.9681 761.7542 6235.6299 2460.9713;
	1848.2111 1171.9866 1990.2722 536.2386 919.3261 1445.9164 1225.4082 317.1276 737.2242 6132.0617 2302.2583;
	1819.6 1157.257 1984.0539 535.5 932.9398 1407.346 1222.4391 322.7 716.4 6116.8731 2260.2054;
	1790.1204 1134.1749 1921.3474 538.8 881.112 1395.8824 1239.502 324.9699 702.3856 6105.9974 2229.5701;
	1787.556 1119.8 1893.2423 544.5 882.2223 1339.6563 1121.7807 308.1782 688.6174 6055.3631 2208.0942;
	1768.9627 1120.5599 1901.3995 554.4942 943.5894 1364.3212 1161.9002 326.3183 676.2476 6097.6144 2296.9;
	1786.6 1113.5852 1890.3195 561.2702 934.1 1353.4476 1097.9266 319.9001 661.3689 5767.3311 2251.5995;
	1815.0077 1168.1885 1957.5047 561.7 980.4658 1403.2061 1131.4563 327.8 698.3 5692.5316 2342.8095;
	1790.6266 1131.8053 1920.0848 555.2463 996.5695 1424.9897 1112.6546 319.6511 693.7775 5516.3783 2329.43;
	1777.4283 1102.785 1899.911 556.3042 960.4353 1343.3211 1092.3 324.3184 679.1932 5485.5827 2294.1957;
	1700.9209 1056.6 1804.9296 522.09 893.6773 1284.6513 1018.8914 304.8446 630.7751 5307.6494 2161.0857;
	1616.5838 998.0039 1693.0255 503.6874 811.2578 1163.1612 943.5626 281.0089 585.5846 4946.8416 1930.2386;
	1543.6202 952.8 1618.7171 503.9198 759.3057 1163.2 908.0895 260.2238 573.648 4850.3389 1835.2313;
	1514.8592 896.8601 1542.0432 534.4705 733.8046 1122.5891 849.5761 231.2 549.7687 4624.3836 1781.6923;
];