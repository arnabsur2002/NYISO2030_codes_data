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
	1500.2465 898.921 1575.7622 510.4017 753.4024 1095.4661 891.7621 271.1573 513.3673 4516.9863 1691.1556;
	1502.0 911.7 1577.353 526.1155 766.2 1082.7625 880.2384 272.2 506.5346 4420.88 1705.9593;
	1533.1853 936.5237 1629.0109 534.9184 778.9585 1107.7169 893.688 263.1 510.0 4465.7194 1706.9875;
	1580.6127 1005.5662 1723.2 534.0749 833.3591 1175.1124 923.8914 282.4557 562.3 4728.0452 1854.6724;
	1707.7 1097.2802 1895.5289 590.5016 927.5 1304.9097 1006.9 325.3065 625.0204 5239.3762 2077.5333;
	1896.3235 1184.8202 2012.4121 601.6308 1003.5444 1402.8 1087.6119 356.2395 690.0 5785.7144 2214.3;
	1923.9282 1196.818 2038.9722 623.6531 1056.8311 1430.4555 1132.607 365.0 718.8071 6206.1006 2289.9686;
	1962.9798 1228.7964 2064.7 631.4357 1079.4027 1456.2 1131.7897 357.1578 713.0213 6360.394 2245.8107;
	1964.8673 1259.5 2126.7743 625.9618 1085.038 1505.614 1170.6681 359.1103 733.2128 6501.7187 2334.9859;
	1936.0454 1248.7854 2130.5595 617.3739 1095.298 1513.8118 1179.4622 346.5514 740.7133 6335.8524 2233.336;
	1890.5 1219.9891 2105.7553 602.9154 1044.4721 1464.2693 1173.9727 349.716 757.1638 6394.7144 2276.9884;
	1828.2225 1183.7764 2068.2862 596.195 1049.9132 1424.5886 1159.7119 343.7719 734.7968 6444.8626 2221.4891;
	1848.6468 1205.2118 2030.4817 582.4 1042.8543 1420.0869 1154.9606 347.0815 749.9439 6422.0868 2276.134;
	1830.4782 1170.2509 1991.203 582.2142 1008.9309 1390.9269 1129.9994 322.7684 770.1225 6397.9084 2311.5641;
	1864.8315 1194.322 2005.4331 587.1 975.0407 1395.3583 1095.8678 332.7633 745.7416 6343.8198 2350.175;
	1846.1 1191.8553 1966.7859 609.3043 981.7 1434.4133 1123.2713 360.0779 702.5085 6215.7883 2370.1087;
	1878.2848 1249.5285 2035.0537 605.8909 1058.584 1533.4077 1256.0945 412.776 742.7627 6247.3117 2515.5547;
	1937.1761 1304.7888 2108.4397 626.089 1105.7901 1602.5 1302.0022 403.0347 760.7725 6242.6915 2555.5074;
	1960.1084 1309.1875 2090.7721 628.1 1100.3927 1568.5826 1254.6966 390.9919 747.3313 6136.1608 2478.6576;
	1887.0212 1252.2312 1962.1579 606.1745 1009.4273 1462.2327 1188.5272 383.2096 732.2739 5944.6238 2356.4348;
	1819.0313 1155.1068 1827.4481 603.8373 926.463 1362.949 1104.1034 345.0931 672.6 5673.6588 2198.6545;
	1673.6413 1070.3233 1708.0943 574.9 847.1555 1258.9071 1037.1779 313.1 614.9734 5334.7141 2025.4958;
	1532.5899 970.8654 1612.506 563.5522 782.9226 1159.2 923.5 303.9062 549.8 5029.1105 1847.2854;
	1552.537 970.8431 1633.7393 575.9683 823.1205 1173.3533 938.0172 289.8 540.3393 4944.7838 1813.6948;
];