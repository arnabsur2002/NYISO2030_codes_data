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
	1580.6337 944.7427 1654.1218 590.8 842.7607 1142.1046 852.0906 242.0334 495.7875 4503.046 1724.4419;
	1569.905 947.0 1687.4159 593.4 851.6515 1169.7 874.5103 252.2341 492.1139 4471.8977 1709.9368;
	1552.0061 949.8 1702.1583 586.6582 869.7607 1167.0068 885.4102 258.8 508.615 4518.2997 1728.5027;
	1664.2 1016.7288 1818.7884 605.3622 934.8722 1226.0917 928.003 281.9687 534.4518 4732.5054 1843.2258;
	1811.2573 1143.1789 1994.0593 628.6536 1047.0042 1367.8168 1039.3 332.4763 619.5859 5342.9675 2111.1947;
	1926.5757 1209.5742 2113.3288 620.1842 1093.2973 1454.3386 1100.9433 355.1792 697.8329 6011.5 2295.5738;
	1877.5472 1181.9907 2104.3851 619.5166 1103.421 1414.1793 1101.7 350.2992 700.1 6268.6434 2309.6758;
	1864.2 1215.6 2086.7931 600.3652 1104.6404 1337.1931 1097.0714 333.9526 718.8272 6495.9013 2260.6;
	1876.566 1245.9774 2116.9013 585.3816 1132.7541 1363.3 1097.0838 344.012 730.2 6594.4811 2243.674;
	1856.4873 1242.9514 2057.382 590.9626 1107.4797 1345.8153 1060.8091 343.7443 708.6282 6515.6526 2227.1452;
	1838.3678 1220.1236 2025.0311 596.6287 1087.8023 1310.8192 1045.1192 336.8557 699.4763 6596.4509 2174.2924;
	1807.5736 1203.0985 2021.2131 591.1061 1067.3977 1363.2554 1065.0316 345.4067 700.392 6705.0823 2195.5732;
	1758.1813 1175.7316 1944.794 572.3576 1051.6057 1329.5376 1037.5741 345.1598 677.7488 6523.8708 2192.8283;
	1742.479 1166.2486 1913.4 561.0 990.2631 1299.3748 1018.3459 348.8102 659.7117 6361.9241 2102.5376;
	1729.3508 1170.7641 1937.2029 559.9396 1006.7 1367.873 1071.7279 355.7515 675.8325 6452.2129 2241.5956;
	1771.2336 1162.4983 1942.9677 574.6 1010.1205 1407.9626 1086.6408 353.6896 685.4037 6364.558 2250.6778;
	1738.4759 1184.6607 1978.3619 559.0 998.3551 1449.6203 1110.5173 374.7 702.2629 6172.9129 2351.8;
	1797.795 1203.3 2059.1235 573.0 1051.0744 1477.6059 1169.4 427.6619 734.6 6265.6812 2487.9364;
	1855.9883 1201.8534 2059.9335 569.1006 1052.6497 1465.3527 1155.4726 401.7696 729.9 6156.2997 2451.1646;
	1802.7232 1149.731 1984.3241 562.9094 979.6807 1374.6937 1148.0 409.1209 711.5157 6008.9 2389.3335;
	1739.5021 1103.5829 1884.4393 536.4293 966.4396 1283.078 1079.5292 375.4422 656.9006 5800.7734 2223.597;
	1608.4178 1021.6 1726.9 536.9225 869.7145 1149.2649 987.6 329.2424 602.0746 5355.0484 1985.9214;
	1570.9 968.9 1607.0631 569.5655 819.1365 1056.8744 903.9 309.5 544.5593 4914.0463 1819.4712;
	1574.5462 949.3363 1582.0619 574.5 799.6855 1065.9873 885.6022 300.5675 498.9155 4690.6077 1781.4568;
];