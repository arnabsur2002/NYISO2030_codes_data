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
	1484.405 945.2975 1649.6444 605.2104 841.5 1336.8406 908.9645 297.8922 552.1617 4743.7886 1908.2575;
	1430.9948 908.5585 1597.3321 591.8778 818.8148 1295.8392 884.3294 282.2761 513.1515 4509.2164 1806.7499;
	1442.2 912.3847 1592.7756 591.1128 798.12 1280.3249 884.5769 290.3494 521.6424 4562.1654 1826.2725;
	1445.0703 926.8 1614.5686 583.6 816.8385 1296.451 894.6331 286.7 508.476 4533.3459 1813.123;
	1537.6625 979.399 1689.3184 614.258 853.2 1329.8683 938.1704 296.3 517.2905 4684.7268 1913.2638;
	1596.5547 1016.1756 1747.1843 616.0096 891.4 1378.7881 996.7724 320.3618 558.4755 4900.0459 2019.585;
	1628.7201 1057.1711 1788.3769 630.5123 907.7326 1396.1187 1030.6086 320.3242 581.2287 4976.1674 2089.1442;
	1646.8969 1045.0082 1783.5701 609.3157 910.4516 1433.2809 1066.0278 338.2 607.362 5066.9453 2167.5097;
	1682.6623 1059.7202 1788.2347 601.941 921.6819 1473.7 1128.9 353.1 618.0286 5251.8392 2277.514;
	1715.3 1092.0683 1809.3217 609.5 938.7775 1526.2253 1150.3293 339.1872 628.4904 5333.7416 2278.7981;
	1713.5546 1108.8339 1843.2964 595.1 970.9244 1561.5021 1188.4666 353.2284 632.0586 5355.2682 2294.5965;
	1680.0867 1085.538 1803.9602 599.6146 976.2 1533.3436 1140.8763 341.5 621.7054 5332.0628 2190.7097;
	1705.9888 1088.1 1791.882 599.3812 962.3195 1486.3615 1117.3 360.9788 594.089 5348.6378 2147.3207;
	1729.4928 1078.1622 1768.1561 589.0 965.8432 1412.5 1110.9434 332.3044 589.582 5369.9956 2103.9205;
	1708.3229 1080.03 1757.2079 585.0601 978.911 1410.9271 1118.0754 330.2468 621.2235 5391.1176 2109.8;
	1674.1477 1051.999 1771.5187 588.306 979.5 1451.8914 1150.2002 342.4053 634.6088 5415.9013 2213.489;
	1690.4158 1039.4977 1785.0288 589.3916 975.7138 1463.6696 1121.1 351.5 655.9377 5410.7074 2237.9975;
	1715.9278 1109.3727 1864.0298 625.5374 1027.0 1495.2799 1187.0261 370.9976 702.3 5611.4875 2375.9954;
	1786.5751 1117.7512 1919.0001 621.0092 1040.3587 1497.2484 1186.2521 360.5826 683.1281 5484.2558 2333.6498;
	1741.4265 1090.4117 1871.7457 593.0 1002.4055 1478.2771 1151.235 358.9 660.741 5481.3892 2284.5901;
	1671.2908 1043.4618 1783.6202 564.0981 913.3 1391.6943 1080.4957 326.5099 626.764 5297.6298 2160.8219;
	1622.4453 1001.5276 1692.3323 547.5028 851.2139 1352.6 998.5849 300.2 567.8082 4983.4 1974.1063;
	1491.114 942.163 1666.7963 559.2667 815.8699 1237.105 903.8808 305.0703 520.0531 4688.1849 1757.7642;
	1446.9938 933.7 1664.0775 560.6531 764.7173 1257.9898 885.6385 292.2082 508.9976 4549.4725 1689.451;
];