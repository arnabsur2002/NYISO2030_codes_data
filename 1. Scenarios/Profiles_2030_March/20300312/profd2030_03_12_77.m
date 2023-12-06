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
	1464.6521 929.133 1710.6867 553.2853 816.7 1214.9391 936.1418 276.5481 552.5446 4624.4768 1757.0751;
	1488.2236 948.0755 1695.2826 564.5129 805.6499 1221.0292 925.6 272.8 541.1642 4571.0602 1740.6004;
	1492.3587 968.7144 1771.9618 564.7259 838.8197 1225.5966 937.0808 288.7114 549.387 4612.4839 1785.0029;
	1584.3092 1041.3038 1836.539 576.2439 894.366 1292.11 979.7838 316.4 573.0245 4828.0269 1891.0;
	1693.8124 1140.8451 2068.4612 604.5474 1011.4215 1443.5421 1080.6752 371.5803 650.8689 5401.8873 2181.6;
	1789.3134 1213.2442 2208.5 606.443 1077.7364 1513.1831 1157.4886 397.597 712.8595 5997.393 2365.7915;
	1838.5335 1236.3503 2183.5643 614.5712 1084.3793 1536.5488 1190.3254 399.9469 721.7458 6370.6547 2417.1202;
	1813.1577 1220.2478 2136.219 585.0676 1062.6345 1529.2382 1154.6 385.8711 704.1046 6580.3101 2339.3971;
	1828.3279 1198.2006 2124.2248 577.4386 1061.6712 1527.9871 1152.5675 400.6073 718.6 6752.9922 2282.991;
	1848.273 1198.1742 2090.098 586.2169 1057.3388 1506.7 1132.8739 368.5348 690.7 6654.6755 2206.5215;
	1812.2665 1192.3187 2095.0466 593.6252 1032.9916 1509.3392 1107.0755 362.6271 666.5409 6591.9576 2040.3623;
	1798.5726 1183.1322 2065.2007 589.6602 1027.9137 1500.6468 1102.1796 347.3482 659.1319 6463.5937 2011.3459;
	1801.8878 1190.8244 2071.1343 583.1995 1008.0115 1450.6896 1075.3366 341.5178 643.5279 6359.555 2019.515;
	1824.0815 1199.2244 2063.0 586.7 963.871 1426.8768 1074.6806 343.3332 643.1687 6415.769 2154.9632;
	1798.1013 1176.6 2080.7331 586.7 979.0717 1438.6 1095.4597 362.9715 655.939 6399.6038 2195.7542;
	1781.8471 1211.478 2061.0014 592.3231 990.4662 1452.8 1130.4342 359.8876 660.4785 6375.6875 2305.5801;
	1838.5 1264.106 2125.5691 604.2354 1058.7303 1489.1197 1203.2304 403.5537 701.9444 6342.9151 2403.4;
	1871.4817 1292.1289 2218.2854 619.3333 1110.9 1531.5125 1287.6 452.5181 743.7378 6499.9636 2556.6897;
	1882.2654 1293.6679 2221.4241 618.5695 1100.7499 1501.7865 1256.981 402.601 724.8885 6348.5726 2505.6551;
	1819.5047 1214.8 2113.9482 596.5914 1030.14 1427.8914 1168.9 381.3485 701.2134 6085.5383 2385.167;
	1746.2754 1133.5756 1983.5155 577.5 955.6746 1332.5518 1097.6824 351.2 631.3749 5692.9186 2186.657;
	1636.3801 1040.7634 1880.9405 550.7308 906.5804 1258.6063 1018.4465 312.4 595.8884 5280.707 2008.6;
	1559.5415 1031.7273 1817.2922 595.0544 871.1479 1199.821 980.4604 276.4812 577.5 5024.8685 1881.1649;
	1500.2256 977.6693 1754.138 583.7 845.0622 1171.5708 946.1799 279.0818 552.2522 4850.2429 1816.5495;
];