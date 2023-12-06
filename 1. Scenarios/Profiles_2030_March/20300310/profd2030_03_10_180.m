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
	1510.621 916.9561 1616.5629 590.8266 878.6736 1327.1721 949.7998 299.3472 539.8576 4810.3773 1881.8349;
	1481.5887 895.7564 1585.7145 587.7047 881.3399 1274.3352 920.4758 278.7437 502.2 4633.6384 1841.4994;
	1507.383 902.2294 1583.1726 598.5628 856.1221 1273.0025 899.5893 279.0996 497.9794 4542.9451 1787.0867;
	1530.8842 895.9196 1598.9 596.8 871.8301 1279.6293 905.8037 285.7586 506.8739 4549.4539 1809.1;
	1539.6652 923.9123 1675.1667 607.9 922.088 1335.3945 951.572 298.9758 528.8655 4684.4018 1876.2753;
	1649.0882 979.7292 1730.3319 641.887 941.1784 1407.7618 1029.2 331.1566 589.3948 4883.5927 2004.1627;
	1647.2964 1029.974 1796.1 650.6262 952.4481 1489.2876 1130.8879 380.8659 627.8469 5124.7206 2138.5326;
	1655.1915 1030.8878 1848.6409 652.2723 976.0 1540.8667 1192.2183 385.8802 653.3406 5200.5228 2211.7984;
	1642.3244 1054.1 1899.5048 631.3278 968.5783 1534.211 1254.6618 402.7546 684.7361 5396.8673 2302.0147;
	1677.5057 1101.2047 1968.5584 649.0144 979.8919 1580.9585 1280.7175 413.8441 703.1998 5434.1705 2325.4721;
	1699.7168 1107.8687 1963.4523 609.6327 995.877 1629.8749 1342.2923 431.2256 715.9782 5629.2858 2444.6092;
	1718.5284 1110.2 1936.2635 620.7274 1007.2074 1618.1007 1375.8359 424.466 706.4816 5687.4504 2328.5672;
	1765.1888 1150.7441 1940.9006 617.0813 997.3259 1587.8626 1365.4604 413.473 707.0879 5798.4937 2472.1453;
	1767.0262 1149.4669 1960.6239 613.6969 994.6 1588.6257 1363.025 415.9901 710.5244 5695.2458 2527.1245;
	1734.2134 1151.7168 1938.3487 625.8424 969.4916 1572.6583 1301.7998 390.757 693.1913 5616.5225 2488.031;
	1761.6003 1193.0998 2016.6092 676.2199 1030.3207 1627.119 1363.772 417.5689 712.9066 5703.2383 2633.9022;
	1750.8988 1193.0449 2024.5761 637.8382 1038.4821 1631.5553 1341.3 385.2379 726.3027 5625.5082 2558.3;
	1761.8008 1197.8 2035.4418 651.3 1068.6824 1672.2103 1345.3218 390.7721 732.2252 5633.2575 2582.7351;
	1791.3191 1181.6 1986.974 632.8497 1046.9457 1660.4464 1345.9476 383.4487 724.3127 5650.5368 2508.7149;
	1736.0022 1121.8618 1911.2104 606.5195 971.526 1565.0612 1255.7178 374.8815 710.6139 5598.4304 2398.9168;
	1705.2144 1047.3 1801.652 588.8909 898.6032 1468.0 1184.6499 341.4744 661.3 5441.4083 2299.9053;
	1632.9453 987.7262 1668.5984 573.2427 826.9081 1340.1292 1050.0109 294.3331 611.0 5076.8399 2010.5108;
	1507.2741 922.8 1582.4475 574.0 809.7584 1235.1978 928.0 262.4 526.3239 4704.5707 1790.2421;
	1486.9362 906.2 1569.3548 573.0487 792.3 1215.4742 908.1478 262.5406 504.3506 4558.2 1716.6341;
];