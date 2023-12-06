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
	1430.0743 918.925 1526.1583 555.2102 723.1837 1155.9 890.8062 273.4818 574.9083 4676.7699 1863.7029;
	1410.8 904.5932 1520.4 554.1331 731.0972 1142.9397 870.7413 272.7696 552.9756 4565.3959 1789.2821;
	1389.0513 910.1636 1555.5 547.7453 767.4 1179.7314 881.1 284.6793 563.9879 4577.4669 1812.5715;
	1418.3579 926.1 1566.441 558.0312 791.0894 1199.4581 889.4 294.0345 565.2098 4561.0353 1792.0964;
	1465.2337 949.2 1598.7221 576.3991 806.3562 1260.8192 937.8 291.9474 574.6228 4595.1599 1845.499;
	1480.2017 985.1587 1603.6275 594.1 847.5061 1335.133 977.7 313.7748 602.1156 4745.7847 1907.592;
	1536.6839 1002.4847 1627.4501 595.7633 868.4891 1316.0921 993.5295 326.6619 607.8 4770.4359 1934.0809;
	1594.744 1022.1771 1683.312 606.859 895.478 1411.7283 1032.843 347.8478 629.2333 4771.0047 1967.1938;
	1601.8658 1032.3812 1692.2446 605.2755 878.5192 1366.0 1072.6415 365.9727 688.4 4946.2748 2033.2097;
	1606.7553 1030.7365 1660.9097 593.9414 866.6871 1345.926 1061.9841 359.3 737.529 5097.2786 2027.4266;
	1662.298 1044.8132 1658.0245 590.6 881.1376 1324.3088 1067.1223 365.555 721.3536 5298.4219 2040.8029;
	1645.3061 1032.5319 1681.8148 578.1999 887.643 1287.8766 1111.7183 363.5 722.2039 5245.9944 2067.57;
	1625.1956 1008.4256 1662.6914 566.7779 859.3373 1349.5867 1117.3 357.8902 712.8668 5294.711 2126.5168;
	1638.1501 1002.0696 1637.4668 579.2 852.1981 1345.8053 1065.2146 341.8343 644.3842 5024.5555 2109.2073;
	1617.1215 1026.419 1658.6359 579.0833 843.2238 1403.8418 1104.3672 368.9604 656.1222 5239.049 2218.1986;
	1666.5911 1071.7849 1735.422 585.9111 866.9244 1435.0461 1111.1362 371.5095 672.5077 5307.5701 2319.0621;
	1643.7059 1105.9723 1779.5092 592.8222 912.2882 1497.6652 1127.7692 387.4426 696.8 5443.0819 2389.0414;
	1681.1496 1138.186 1824.1269 602.0 924.1713 1527.2829 1168.6 374.7 712.2564 5492.3626 2403.4362;
	1708.8865 1140.7 1830.4123 597.7425 929.012 1486.2007 1171.7429 361.9 706.4576 5481.8343 2372.0884;
	1653.3429 1099.3447 1763.9245 566.4877 874.2253 1403.1759 1095.8402 357.9 662.7344 5408.5 2274.6399;
	1615.0219 1030.989 1678.5761 537.6388 810.2983 1308.8831 1020.4488 324.6748 617.8547 5213.0658 2119.4958;
	1526.172 978.9936 1594.9664 510.998 752.9203 1221.1916 985.0481 314.1715 581.234 5139.4319 2002.3803;
	1419.0986 913.9249 1544.4003 510.9263 749.7586 1072.1 913.4397 280.1685 522.8 4662.5523 1760.2014;
	1389.8208 905.3257 1552.2149 522.5174 738.6891 1042.5627 884.0648 262.3796 508.1 4551.6928 1721.6905;
];
