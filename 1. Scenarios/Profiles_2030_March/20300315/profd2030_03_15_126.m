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
	1463.7167 894.6325 1455.9724 530.5 681.8737 1050.6641 816.5378 253.743 450.7168 4285.254 1657.5854;
	1451.2 873.3674 1457.4913 533.6874 675.8135 1025.657 798.6649 248.4871 425.8446 4112.891 1605.7468;
	1448.4274 876.9 1477.7622 529.3 691.9571 1050.7724 808.5 252.5318 446.0621 4211.7978 1645.3;
	1528.9539 932.9829 1560.0013 543.8 751.503 1107.7894 859.951 270.483 488.4535 4446.3175 1742.327;
	1648.6 1021.9163 1706.0229 556.9 823.2544 1241.2942 939.5191 312.3 559.4642 4771.6721 1901.0473;
	1752.1771 1107.6465 1848.2276 580.1401 913.0326 1339.8202 1034.4 345.4 653.4056 5458.0124 2075.9479;
	1756.8392 1132.0433 1849.1744 572.6471 910.3186 1337.0659 1064.2 355.4044 682.85 5801.4469 2127.7227;
	1765.868 1167.0 1899.0046 566.6 941.1707 1346.9982 1091.9577 375.4261 698.8195 6048.6119 2208.3142;
	1786.7685 1171.9851 1909.6909 556.8 932.8273 1310.854 1074.0942 367.4 692.6726 6049.6734 2187.2767;
	1807.7978 1163.6 1887.9016 537.5363 941.6668 1303.2345 1066.5545 373.1 701.3859 6161.2126 2268.4184;
	1739.0894 1149.3524 1872.5246 545.6643 962.8031 1308.1633 1104.3448 369.7981 720.9879 6162.3999 2305.1224;
	1755.6727 1140.8489 1843.2 539.7491 936.7 1307.9607 1044.6486 374.4872 723.4024 6217.8517 2362.5445;
	1769.3429 1146.1 1897.5 538.3 950.2348 1362.1248 1100.9825 387.4324 702.8612 6487.133 2436.4711;
	1721.9903 1109.7 1808.1197 507.2847 897.9 1291.483 1086.3766 389.2734 697.0836 6404.8619 2406.9518;
	1770.7251 1093.5646 1781.9768 492.1657 892.9896 1296.2798 1076.3077 391.7574 699.5281 6352.9203 2500.4954;
	1736.2093 1099.9542 1770.9322 503.7579 874.2876 1306.3556 1034.9312 353.9639 676.911 6302.0975 2380.9857;
	1730.0302 1081.3046 1778.4224 495.5372 867.5165 1254.9358 1006.0 346.8575 665.9 6018.2428 2339.4614;
	1784.7447 1145.1315 1875.5332 534.6282 948.7941 1318.5026 1070.2758 361.0772 701.3 5991.0923 2489.4423;
	1791.3 1115.4293 1849.2483 545.9342 936.4778 1328.8921 1092.6174 365.0792 685.1601 5819.6982 2412.7;
	1746.4203 1052.4002 1759.2452 509.5269 895.1718 1275.3162 1038.8 354.1618 654.6519 5676.7515 2339.4717;
	1636.5519 1007.1581 1684.062 495.6365 868.0022 1208.8082 975.7109 354.6141 619.9136 5550.5813 2271.5639;
	1548.0167 914.3294 1527.996 489.1 800.6 1130.9974 919.0 357.3415 582.9584 5177.7092 2056.5252;
	1533.6442 862.8165 1451.7256 522.3016 736.2145 1082.359 891.5 297.396 539.3 4864.0323 1904.3318;
	1458.7488 835.5905 1403.3677 551.7198 669.0228 1050.5743 847.8915 272.6152 508.5425 4615.3759 1767.2334;
];