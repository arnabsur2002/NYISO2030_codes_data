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
	1599.1426 951.6731 1697.9 595.5286 840.5 1178.8314 922.3958 269.7202 532.5298 4604.9288 1736.9043;
	1562.7295 947.1645 1664.5378 592.1214 842.9388 1172.5 914.1965 260.9 523.5978 4543.2424 1724.5466;
	1575.8051 965.0004 1703.2464 602.7352 840.9 1157.1275 925.5792 263.8786 536.0 4504.9699 1708.0482;
	1630.2977 1037.2 1810.2 609.4644 915.3681 1246.9564 967.9798 291.7716 566.8942 4740.2512 1815.3537;
	1779.7 1143.5346 1961.6 630.6373 1009.0 1382.6328 1070.6 347.3346 654.5617 5353.7847 2110.0533;
	1886.4556 1216.7055 2036.0325 635.0 1062.5003 1490.0248 1119.7865 375.6349 714.6 5919.5555 2267.7569;
	1836.1293 1198.6786 2021.7355 617.8779 1061.1 1453.6135 1151.7164 379.0319 760.3246 6319.79 2308.7591;
	1792.6218 1195.6222 2002.5759 586.4582 1068.5836 1381.2395 1135.8518 375.7258 728.4583 6412.7 2239.854;
	1791.2866 1182.4342 2008.8935 606.6 1054.0727 1369.8462 1163.9792 370.9554 765.8539 6436.4215 2252.5488;
	1791.4232 1171.6238 2020.4518 583.1725 1069.5353 1422.4261 1272.5395 429.5232 753.7844 6524.0176 2271.7799;
	1789.2637 1206.2376 1997.7266 596.7 992.5356 1385.3412 1238.9982 412.1768 751.1354 6590.8673 2307.4195;
	1748.8884 1172.0085 1976.8733 597.8649 978.3645 1402.9204 1235.969 428.2351 719.0452 6567.7126 2272.7153;
	1710.4952 1177.1692 1981.7623 588.9 1006.6154 1383.292 1237.8349 419.9409 698.6059 6580.1849 2291.2139;
	1685.9822 1168.8624 1964.5531 576.9166 994.7 1366.8603 1261.0406 392.6702 695.0 6469.4154 2242.789;
	1629.1801 1177.6518 1945.0517 582.5359 1035.6848 1420.7096 1278.4107 387.4154 711.982 6510.4894 2355.3458;
	1654.1729 1199.5731 1993.4563 589.9 1022.0419 1449.3903 1251.8042 403.1132 710.2671 6520.2511 2337.0643;
	1684.4442 1181.5866 1928.6185 584.2283 1018.1635 1445.3195 1183.58 376.6805 685.8971 6310.977 2373.2077;
	1749.5652 1230.221 1966.2242 579.3216 1045.9731 1509.3541 1243.1515 403.3145 718.2341 6367.4 2523.5719;
	1770.6933 1214.0003 1917.2013 588.3864 1015.2007 1483.7527 1250.1423 418.8903 709.1506 6327.8016 2494.6531;
	1722.8677 1158.6621 1830.7021 575.8422 961.8573 1394.0891 1157.5936 384.1871 679.962 6103.8912 2350.584;
	1709.5038 1101.9228 1735.932 553.6233 894.4739 1293.1411 1107.3522 356.1335 642.7998 5828.161 2223.833;
	1633.6686 1026.5053 1647.6174 530.1046 838.3721 1213.9386 1037.3203 330.6064 592.5 5466.7838 2039.7214;
	1521.1319 958.8805 1573.4371 559.7057 773.1538 1149.5366 988.2249 293.3136 536.661 5265.896 1819.1181;
	1506.3635 931.4093 1525.5279 562.5109 757.0766 1111.8485 944.9595 276.0637 523.6905 4802.0483 1745.9868;
];
