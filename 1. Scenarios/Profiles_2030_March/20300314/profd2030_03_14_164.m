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
	1452.4748 885.5079 1518.9275 537.1255 767.6271 1080.133 810.0146 255.9734 476.0616 4470.7 1683.3318;
	1435.7285 883.9 1500.7498 526.0967 765.4372 1068.905 813.5665 248.618 473.3642 4441.9255 1673.7;
	1448.1905 902.8 1541.2773 517.0067 764.1343 1095.6127 845.2748 256.1623 482.2 4481.2103 1723.9543;
	1521.4157 979.1281 1633.3148 506.0878 832.1316 1186.5165 911.8307 281.1 531.5074 4737.942 1856.425;
	1660.8 1093.8144 1823.1594 542.6491 943.7962 1338.3562 997.9617 314.5667 594.5312 5235.388 2059.433;
	1789.7169 1157.1 1914.3764 549.4163 946.9697 1391.196 1051.6589 325.1449 668.6 5787.8863 2170.2374;
	1829.8114 1169.6935 1959.478 542.3287 940.0125 1385.601 1041.5349 307.8915 664.4193 5923.6575 2089.7968;
	1835.2442 1157.7508 1900.9855 554.9557 934.7223 1400.1298 1031.8146 312.9815 680.1659 6205.7142 2112.7868;
	1820.5032 1144.3084 1905.682 556.8627 937.3081 1345.6806 1023.8363 316.6 679.9692 6257.9661 2132.0197;
	1803.9668 1147.1 1871.4942 547.6802 957.5 1314.5134 1026.2447 321.7 661.4661 6345.9524 2156.2641;
	1780.3864 1101.8801 1823.2812 537.4933 915.3055 1251.1837 1015.0577 341.1684 636.8415 6369.9219 2113.4559;
	1785.4422 1099.2038 1797.5298 521.3217 908.5106 1267.1709 1072.2041 336.1047 656.5112 6363.2817 2171.521;
	1762.0545 1084.3339 1750.5861 529.8337 915.8968 1277.9159 1031.3752 322.8592 629.1749 6250.9848 2098.2072;
	1699.4512 1016.5333 1752.1174 523.5774 907.2708 1334.321 1035.5352 317.8985 632.2251 6224.1844 2082.848;
	1739.6194 1076.8439 1728.3 528.2215 912.9484 1345.4117 1028.0741 328.9626 654.306 6317.1025 2144.5904;
	1678.1985 973.8645 1697.2986 525.2 894.6019 1321.9 1025.6052 309.8684 647.3 6240.873 2185.1302;
	1677.6644 977.3373 1709.901 525.2032 886.633 1379.3587 1058.3599 346.9044 656.0918 6105.5773 2273.6438;
	1698.1959 1063.1787 1707.5521 541.8044 924.5006 1379.8601 1080.8243 349.3 675.6537 5989.9404 2332.7149;
	1728.062 1084.1739 1778.9515 546.2167 926.6569 1396.0861 1079.4919 344.6786 664.3246 5877.3872 2288.5231;
	1680.3826 995.3567 1689.8734 542.9559 863.2726 1241.9224 1015.173 331.1 635.6979 5619.7618 2172.8006;
	1569.0029 927.7042 1522.3581 536.0088 813.0313 1177.4609 965.4 296.907 597.2245 5406.7464 2001.3495;
	1474.7629 857.1224 1447.4682 520.8 730.3803 1106.5551 890.7419 265.6571 549.6351 5005.6563 1868.6;
	1444.8438 856.5445 1426.4749 509.7606 714.4065 1066.0423 812.5908 248.2366 469.6695 4708.4707 1723.0421;
	1458.6402 833.5571 1408.4518 495.8566 718.9559 1057.0 790.9 237.0402 426.34 4375.2339 1652.5923;
];
