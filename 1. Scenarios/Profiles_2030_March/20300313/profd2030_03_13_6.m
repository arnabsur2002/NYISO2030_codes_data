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
	1566.5 946.5073 1650.9 576.2 900.9504 1187.2176 928.5463 268.1843 540.6693 4648.5178 1748.7507;
	1540.1859 952.7 1615.2471 585.4646 870.5 1174.687 924.9 247.1 539.7245 4555.7 1724.6275;
	1598.6551 981.5837 1643.7878 580.947 876.0384 1190.5797 957.3118 250.2 543.9 4592.2017 1767.5975;
	1608.8441 1034.48 1763.1 598.1538 945.8635 1270.1455 988.0 272.5 571.4 4804.3484 1862.3478;
	1788.4307 1153.6483 1883.291 635.1267 1029.4914 1434.5917 1096.3683 325.1 660.7768 5377.8638 2095.8033;
	1820.1701 1200.928 1970.1978 639.379 1081.1938 1524.8678 1171.4482 344.0406 714.7445 5947.0723 2272.2638;
	1854.9018 1194.0515 1903.8337 601.8775 1058.0145 1476.3 1158.8083 345.7239 716.972 6165.5207 2252.2344;
	1832.5204 1152.724 1871.9793 597.9 1020.2321 1412.0 1175.1655 330.0197 719.4493 6271.9639 2226.4065;
	1847.1785 1145.8915 1924.5462 606.7 1045.0431 1432.5486 1206.7677 330.8043 730.0 6333.9602 2234.1783;
	1842.9357 1173.2356 1912.5312 592.5898 1041.8364 1389.1867 1181.177 313.4389 716.4942 6359.237 2048.361;
	1800.912 1144.4419 1844.2945 595.7171 1013.2973 1343.4 1114.1577 297.2 699.0108 6270.641 1966.189;
	1806.5121 1134.3733 1840.0334 584.3 977.4894 1402.3572 1118.4516 278.0361 690.2 5953.1584 1965.5675;
	1803.769 1129.0602 1818.1652 583.6 980.5077 1401.2956 1110.3725 277.9402 687.2976 5962.0758 2001.0861;
	1812.3 1150.8111 1835.1188 584.784 979.8755 1429.1971 1120.5211 302.0689 696.5663 6077.8185 2089.4622;
	1786.4485 1130.0445 1815.367 580.3624 1015.8696 1426.1626 1087.9086 278.4504 700.0832 5631.0178 2125.6066;
	1807.3645 1155.7395 1870.6 576.2397 1029.9678 1455.2646 1129.516 278.5234 705.5412 5925.3265 2222.9403;
	1829.5275 1161.5866 1963.1665 574.1 1070.9863 1454.0814 1175.2082 330.8373 719.1 6101.2336 2362.1347;
	1845.0745 1211.043 2022.8111 603.596 1127.5135 1514.8238 1224.0452 351.644 749.6 6188.3003 2564.5108;
	1852.6767 1205.7972 2015.3 610.1119 1118.105 1496.4659 1173.8932 356.0793 745.4799 6133.3558 2478.0812;
	1802.7 1168.4028 1925.0806 603.4437 1063.9456 1447.7 1147.5228 349.0389 732.1916 5920.795 2400.3789;
	1699.2835 1080.3897 1813.9266 584.1781 1017.7924 1356.6856 1066.0601 310.9301 675.1 5592.5873 2202.4;
	1563.0034 1009.7223 1697.6 569.6069 945.1733 1259.2726 1000.6379 261.2902 633.5664 5213.2535 1967.4;
	1561.1423 975.5077 1724.7196 539.1171 937.4984 1230.6927 1055.7993 280.5587 633.3612 4894.4182 1913.2354;
	1513.9286 957.7076 1666.0643 537.3 884.0142 1187.356 946.0827 255.3 573.5 4631.5709 1796.6474;
];
