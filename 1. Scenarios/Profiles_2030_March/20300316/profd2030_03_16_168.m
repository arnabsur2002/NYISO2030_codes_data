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
	1556.9647 880.0617 1509.6285 529.8 685.1244 1087.6166 816.6659 222.0304 470.6 4232.6954 1661.5693;
	1542.5182 883.7852 1532.8835 517.041 687.1799 1118.2869 821.9247 230.6 452.5902 4265.0476 1650.8629;
	1549.4555 878.3305 1495.4928 525.6 689.901 1102.9 808.4391 217.5357 440.4552 4068.5939 1607.2;
	1568.6984 912.2133 1590.0602 541.1552 735.3174 1140.5222 840.5 230.536 477.808 4251.1336 1642.3393;
	1614.8129 947.8259 1646.8753 551.627 773.4418 1180.0244 890.0 248.1 513.9538 4424.6484 1728.8384;
	1667.8 989.2 1735.2 569.6698 819.3673 1230.5865 954.8783 268.5311 543.2556 4680.9144 1867.4061;
	1728.7632 1030.5635 1806.9 573.9018 875.2232 1292.4648 1012.1862 261.2 586.1683 4862.5729 1916.603;
	1745.1059 1031.6206 1832.439 573.3047 863.898 1279.7176 1034.3543 276.2 604.9 4965.8926 1949.6141;
	1749.0937 1038.7048 1858.9335 585.3019 884.4968 1224.4072 1012.7505 264.2035 585.7224 5023.6486 1911.1892;
	1696.2182 1016.4718 1849.8008 577.9635 893.6536 1232.7 1000.8214 275.9453 588.3813 4948.453 1774.8461;
	1684.0014 1008.6646 1854.7809 573.7396 889.9889 1238.6 961.8089 268.0599 605.1475 5010.1039 1759.4157;
	1633.0465 996.3914 1775.7 555.738 829.744 1182.4469 939.7454 267.4157 612.0454 4745.9623 1700.7231;
	1619.9228 988.7042 1796.843 557.4 860.0468 1178.636 953.7804 278.3469 596.6 4946.2828 1757.263;
	1624.1569 1039.8035 1844.6904 556.8154 860.4 1224.4452 964.4091 276.1994 593.4064 5083.6941 1790.7175;
	1619.9111 1034.0186 1836.8675 561.6406 844.9258 1219.9953 971.1743 274.7517 600.0743 4800.9022 1791.9071;
	1636.4802 1063.3371 1868.6593 578.2334 921.0984 1286.8864 1041.0476 290.9159 619.2 5250.2321 2069.2384;
	1688.9297 1095.9667 1904.3148 567.1 903.9503 1312.7127 1080.3271 318.0704 621.2091 5330.0277 2142.782;
	1729.6 1123.5539 1981.0334 587.6 946.644 1370.4598 1116.1388 340.0177 634.6929 5461.2709 2254.322;
	1783.8035 1136.9922 1986.761 579.4 957.0139 1381.4112 1129.7506 331.1004 654.6 5402.4167 2265.4616;
	1762.6892 1098.2033 1879.2426 574.6872 914.3475 1305.6828 1071.8619 302.0258 637.0309 5249.109 2130.733;
	1692.1506 1045.0931 1783.3 558.8 864.3113 1257.0 1021.9206 322.1 629.6119 5196.7447 2068.2283;
	1651.1796 971.7964 1681.6837 559.2 825.2285 1189.4652 965.358 291.2 583.5845 4968.9936 1929.6428;
	1619.4 930.8 1643.1203 593.4978 828.9 1157.2886 933.4 270.5 567.6 4791.4824 1808.4999;
	1569.8195 895.2342 1593.2 603.2677 762.1514 1106.8832 882.5 250.8 533.2905 4474.0661 1689.8734;
];
