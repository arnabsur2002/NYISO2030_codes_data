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
	1584.7084 891.3766 1491.2612 569.9134 701.627 1105.7643 836.9959 236.0133 504.1305 4453.548 1700.7125;
	1570.6799 884.5912 1479.5397 555.9381 693.4593 1104.4294 819.4038 235.4007 481.2 4388.2679 1660.9416;
	1554.557 891.6976 1517.6836 561.6856 720.8291 1122.3322 832.3208 233.1871 483.9304 4366.3749 1655.247;
	1579.6143 925.3172 1561.0113 567.9 731.0299 1148.6912 848.3391 230.0 497.4721 4419.1228 1697.4992;
	1646.7457 973.5529 1633.6227 582.9724 800.6093 1226.842 899.8463 258.9 546.9387 4608.1112 1852.3;
	1703.6873 1021.0 1726.5772 601.9175 869.0448 1240.181 935.6 276.5 572.7205 4811.6374 1918.9289;
	1765.0 1083.1421 1792.9862 606.8477 905.7912 1298.3582 980.8948 286.3247 615.7197 5004.7273 1996.6925;
	1750.1206 1071.895 1842.3851 628.9864 905.3804 1326.0284 985.6701 302.7142 623.3696 5061.923 2027.9177;
	1738.4725 1083.0307 1848.3146 635.4157 922.2391 1348.7 977.5 304.1314 626.7661 5188.0916 1998.7208;
	1767.7 1084.8 1857.6671 621.6569 915.0904 1386.7008 1012.6152 314.9 646.5442 5309.5483 2102.6552;
	1722.5609 1047.3008 1796.9874 611.6384 880.078 1304.8247 953.1534 302.8 639.7779 5277.3965 2077.2611;
	1765.6241 1039.4692 1757.9 606.3535 850.2062 1303.2163 996.2 328.8358 652.502 5349.0048 2065.3882;
	1717.5308 1031.3688 1716.5731 606.8559 861.1645 1309.5674 945.5073 342.3042 596.5964 5157.8921 1900.9561;
	1698.3492 1012.8 1694.3 599.9513 837.7999 1294.2065 957.3607 333.3 594.0138 5231.5777 1922.4249;
	1695.406 1029.1624 1742.5405 604.0762 888.9524 1338.3761 970.1786 355.3329 575.32 5217.5384 1876.4846;
	1666.8159 1035.311 1805.5477 608.5775 896.59 1314.2553 984.6458 353.0512 569.0748 5299.6379 2018.7679;
	1688.2 1046.3 1799.8479 602.6389 903.054 1349.0055 951.1491 351.2972 586.1494 5272.1356 2061.8768;
	1732.3884 1083.7 1883.7418 613.5082 945.7 1415.5228 1070.1 361.7946 626.1507 5342.5788 2167.3154;
	1763.5472 1084.0622 1883.7208 590.5198 963.4886 1433.9399 1064.7242 335.3 633.3528 5123.2065 1750.1953;
	1727.557 1044.2978 1817.8129 589.5515 895.4596 1361.0192 1036.3482 312.2782 605.2535 5177.958 1789.2808;
	1694.5224 990.8619 1720.6958 552.968 842.5793 1274.4 989.7656 288.6 596.2245 5033.7312 1871.072;
	1651.5307 940.003 1623.5932 566.3278 811.6929 1217.4022 919.1305 272.6 543.8586 4593.5971 1606.1751;
	1553.5543 932.6033 1584.1955 587.5362 739.4763 1148.6 806.5149 247.5736 519.0537 4589.5309 1527.7154;
	1493.4337 920.781 1550.5123 595.0195 741.9413 1090.2085 832.6975 234.9843 501.0495 4476.1084 1603.8312;
];