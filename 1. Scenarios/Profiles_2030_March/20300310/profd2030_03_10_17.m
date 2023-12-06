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
	1423.2785 930.1978 1564.1124 566.6675 784.824 1211.5971 915.0639 277.8575 548.9 4722.7189 1793.1443;
	1406.2895 910.6558 1544.64 569.1 770.6548 1163.1099 873.6 268.6 531.5906 4547.9961 1719.7872;
	1402.5146 908.762 1515.7495 562.7 791.5137 1153.1211 868.7976 265.8 527.1298 4488.2369 1689.4051;
	1427.4777 932.4 1552.7 585.1622 794.8356 1193.1865 897.5 277.3937 532.9579 4493.3228 1671.7753;
	1439.3981 957.6112 1571.6399 601.6 851.6 1246.1932 919.5369 274.2142 546.9779 4594.7682 1702.1085;
	1497.0094 981.0078 1609.5769 621.5378 873.3891 1290.7999 965.6894 292.1113 565.1316 4808.7533 1784.3359;
	1516.0028 1027.3 1719.8648 618.2 915.5695 1343.4684 1016.4821 306.2968 597.8564 4996.2333 1738.6399;
	1611.3514 1064.6209 1779.2757 607.7175 976.0844 1347.0548 1074.4997 324.5 635.8 5159.7145 1812.0792;
	1601.1327 1070.1886 1791.0 609.4 992.1 1368.2098 1069.3995 350.1477 654.2511 5323.1005 1867.8956;
	1603.6443 1082.782 1773.2427 609.5913 995.7 1359.3963 1065.2782 350.7267 653.1714 5516.3549 1948.2361;
	1612.6 1060.5155 1725.9676 612.9405 984.7743 1364.8624 1055.9661 363.1 666.8239 5615.2629 1954.8226;
	1564.33 1070.6388 1730.3042 605.0529 964.2 1368.4999 1051.0566 350.5566 653.3541 5738.3019 1950.6568;
	1560.8461 1058.1424 1689.795 609.1277 929.5531 1323.0517 1046.5737 362.2806 650.9 5600.0328 1971.0886;
	1536.6044 1049.9815 1651.0025 595.1621 913.3018 1238.8887 1015.4716 339.4344 617.1618 5461.7343 1970.8716;
	1362.811 1034.6367 1547.4641 596.255 886.4472 1290.6101 1009.833 336.4688 629.1549 5426.1287 2070.1837;
	1391.5177 987.1032 1544.1503 603.5 926.5015 1330.2 1024.5513 349.6 636.2994 5449.4347 2142.6409;
	1440.4122 1026.7661 1607.1477 625.616 965.5177 1377.7518 1058.1185 367.5891 646.5199 5510.4652 2207.4114;
	1562.6049 1052.3522 1693.9453 626.0 1018.0486 1437.8396 1118.5288 362.3 657.6466 5566.2848 2292.7799;
	1621.4035 1112.1649 1678.5398 632.2377 1004.1731 1434.2917 1094.1233 351.7419 656.8991 5506.4847 2209.9139;
	1611.445 1040.7391 1633.8452 595.7496 924.4316 1314.3755 997.9231 332.2361 541.6645 5206.6432 1852.5164;
	1529.0301 984.1866 1558.6768 556.2931 854.38 1245.8398 982.8556 323.8 556.0367 5166.8833 1941.5201;
	1487.5333 946.6697 1524.6658 524.3804 761.4984 1182.1185 916.2305 300.2041 501.6233 4935.2165 1781.694;
	1438.2 918.3975 1500.7292 532.1585 802.6533 1083.7261 839.0005 264.301 369.3712 4450.8714 1430.9363;
	1381.034 882.7912 1475.1258 554.4858 777.6895 1047.4 817.8 244.016 440.1 4381.9283 1529.6845;
];