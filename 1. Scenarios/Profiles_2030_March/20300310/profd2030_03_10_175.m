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
	1462.4425 873.566 1571.3858 563.0553 781.9053 1200.5587 851.1572 298.4729 544.9519 4619.2594 1795.0732;
	1459.2721 820.271 1519.3383 556.3074 749.2617 1167.1209 833.9975 279.8908 521.1 4424.3719 1708.4513;
	1470.1 846.0334 1520.5938 556.6334 757.9735 1164.0145 824.2533 272.7 503.6935 4239.8146 1690.2849;
	1457.1102 861.6196 1576.6309 562.4343 782.7119 1183.7491 846.9469 283.0 518.3274 4407.734 1681.821;
	1490.2314 898.2429 1679.8783 588.5 844.6 1228.0072 870.2451 296.9983 527.7334 4483.2651 1705.7393;
	1576.4292 947.1 1742.2204 599.7209 897.0758 1301.383 931.6005 329.5 571.3934 4766.1836 1865.7984;
	1618.0794 1001.7635 1813.601 611.1278 951.3258 1380.7894 1004.3868 344.0492 578.141 5010.5515 1944.8004;
	1645.6742 1045.2757 1879.5331 615.5025 1027.5359 1446.7008 1035.669 359.576 636.8 5219.0521 2060.6214;
	1715.0699 1057.8094 1862.2178 593.6775 992.1964 1464.2318 1038.7535 364.1638 654.275 5341.6 2049.8483;
	1762.8621 1079.004 1928.3678 600.4911 1012.2961 1531.7224 1064.8024 371.2059 659.7885 5533.9 2051.0527;
	1802.8639 1078.3 1916.1729 602.5474 1001.8125 1501.3932 1056.8515 362.1 666.6 5551.4 2012.9209;
	1782.2279 1074.0185 1896.0567 587.6713 969.1285 1450.5642 1034.6124 366.1636 654.6988 5488.781 1975.1356;
	1728.8538 1076.1057 1878.0058 579.5242 918.5868 1435.4177 1054.7139 366.9127 650.9 5436.8122 2070.575;
	1700.3777 1046.9933 1816.2341 571.0979 903.7075 1402.3 1030.0643 350.3427 639.0972 5389.3315 2123.1548;
	1691.8127 1076.0861 1844.0971 557.8921 919.741 1454.5 1069.8044 357.8406 633.7408 5448.8176 2223.8648;
	1746.6402 1105.988 1882.8373 564.3396 935.4146 1482.5055 1093.9662 349.8 646.5 5466.8256 2251.5212;
	1800.2259 1158.6056 1939.5109 587.6 965.1445 1532.2611 1180.3213 376.6114 692.9388 5684.2868 2410.5971;
	1859.2148 1191.8763 1972.5 599.7634 991.5613 1584.1917 1200.6872 373.9 729.6473 5842.9321 2486.5308;
	1846.321 1197.9 1958.638 594.3082 956.0296 1585.4414 1186.0212 366.4 727.4452 5974.813 2521.6279;
	1771.7469 1155.7471 1909.0 567.0981 894.5227 1496.3284 1134.283 360.3651 693.864 5868.9615 2394.3992;
	1695.2843 1082.2171 1794.0923 541.6062 841.2926 1383.6 1057.443 327.18 644.6408 5562.2517 2248.7077;
	1654.8525 1008.4 1721.1256 515.5794 816.3985 1283.3178 973.9624 309.5766 585.5 5254.7169 2008.5899;
	1552.1284 883.1993 1598.2804 526.4038 733.5737 1113.9615 877.5935 297.253 508.9436 4701.5734 1791.1;
	1539.2399 826.7359 1561.1271 529.3476 733.6072 1097.8249 850.5429 293.2 482.0502 4365.0431 1693.2721;
];