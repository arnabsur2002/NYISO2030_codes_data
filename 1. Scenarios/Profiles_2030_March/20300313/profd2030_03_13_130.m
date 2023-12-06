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
	1539.3664 972.3711 1651.0336 598.3451 840.5 1173.7669 895.1148 240.2284 538.1 4706.0656 1791.1913;
	1559.279 990.5897 1690.1771 607.2598 829.4288 1179.0296 898.8344 245.9549 539.4579 4621.474 1766.0;
	1563.2916 1004.0565 1716.5492 602.6369 848.9348 1181.2853 891.4044 232.559 535.0732 4588.6 1795.3;
	1625.5 1060.0851 1800.1528 626.7786 891.6159 1252.1243 945.2841 253.0596 564.5799 4740.9551 1873.1936;
	1751.3 1166.8303 1982.6601 623.7 989.1929 1438.6375 1047.5 276.3 641.0 5334.4 2118.0;
	1826.1853 1255.3 2109.6724 626.977 1082.6151 1562.6269 1131.681 338.6409 710.1 5968.5517 2327.0512;
	1819.4058 1270.1639 2119.0556 630.5388 1075.8897 1542.7062 1129.6471 340.3 697.9329 6230.3315 2320.2997;
	1872.4102 1270.3769 2106.3381 619.9496 1069.0538 1523.9736 1133.0 349.3849 711.8654 6392.3306 2288.7889;
	1867.4819 1252.1302 2140.5756 605.3426 1083.5531 1508.3 1119.4565 357.2839 711.7 6429.2203 2280.1693;
	1866.5 1228.2 2100.1285 603.9206 1039.4088 1490.6211 1138.4831 341.6259 693.2 6391.143 2246.9969;
	1822.3256 1179.497 2054.3 606.9695 1040.6279 1503.4911 1143.4919 325.9922 700.9426 6508.9857 2285.7396;
	1790.2376 1175.497 2024.7942 604.951 1016.4749 1490.7 1130.0838 332.8531 700.7 6566.8043 2247.0473;
	1707.319 1122.2597 1967.939 599.6743 999.6331 1469.7736 1137.5851 324.8 696.9275 6568.3636 2296.1955;
	1598.4883 1073.4973 1923.7595 605.7126 943.8029 1393.3105 1094.7895 317.1173 688.4 6379.3432 2258.1863;
	1586.3703 1108.1015 1903.7655 595.4948 984.8276 1410.5659 1098.195 326.059 681.1794 6433.1614 2330.8636;
	1492.9783 1079.7836 1930.4878 584.3 964.9148 1418.1994 1133.1623 329.6257 705.2312 6497.9462 2513.9295;
	1512.0717 1162.4885 1942.0 559.7 972.7833 1468.3194 1171.4345 352.7806 711.8581 6308.488 2566.4296;
	1685.2912 1210.4 1969.5985 576.3 981.6281 1536.7415 1192.715 361.9964 743.2617 6363.7227 2579.54;
	1728.763 1217.5613 1954.6819 552.8051 988.6544 1503.3442 1181.1935 351.617 729.5 6120.84 2511.5219;
	1708.7122 1166.6 1881.4889 559.1779 928.8746 1439.5825 1133.5 339.3908 699.1611 5929.7832 2382.7725;
	1636.3053 1098.4794 1777.8727 548.9935 836.098 1331.874 1057.9179 310.2 656.6 5623.5981 2212.0852;
	1535.6738 1046.7488 1700.9404 539.4954 805.5209 1242.6661 1011.491 294.0428 602.1304 5323.8095 2105.2045;
	1471.0 959.4 1606.0672 528.0424 798.5739 1157.8273 946.4346 252.2825 558.9848 4851.6122 1970.0;
	1421.9774 925.6219 1596.2625 547.8 804.0 1107.3045 878.4934 226.109 514.7678 4586.8812 1779.2906;
];
