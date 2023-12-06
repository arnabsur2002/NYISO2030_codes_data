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
	1435.4062 918.4596 1564.1254 561.1634 780.8021 1192.3264 839.4882 233.9308 453.8616 4448.684 1626.629;
	1418.2914 914.4606 1575.0799 568.5877 807.8 1175.6897 834.7067 233.9903 441.8827 4386.6732 1627.2986;
	1453.2433 942.2564 1628.2637 568.8 823.4157 1194.9468 837.0472 238.0165 452.6 4339.1304 1644.6965;
	1533.3392 1007.5 1718.3246 580.0 867.1112 1282.5105 886.3 262.0357 459.5471 4537.9712 1732.3417;
	1684.2972 1137.4671 1933.3386 595.774 957.481 1426.7334 1015.5 312.2728 561.9138 5141.2308 2006.7017;
	1796.8348 1212.4682 2041.7782 615.2644 970.2042 1483.9202 1083.9006 344.8665 643.3593 5729.8715 2166.5731;
	1805.7546 1217.1 2017.8644 602.0777 988.4107 1448.9897 1111.4286 358.6236 701.4969 6059.1992 2219.5717;
	1837.998 1217.2196 1997.8956 602.3513 989.9793 1442.6402 1110.4884 349.6 714.1609 6228.4417 2200.7851;
	1866.5 1221.8612 1993.55 589.3 1024.5 1444.221 1140.2292 372.9067 733.2413 6349.1989 2255.1;
	1826.5824 1201.6546 1977.3034 588.1651 979.5928 1390.8 1093.4396 393.9603 719.5 6505.9892 2221.1446;
	1851.9589 1187.032 1931.3 564.1908 927.601 1359.5402 1064.4877 365.6602 708.9044 6456.9 2127.6885;
	1820.0037 1168.8618 1901.5403 563.7706 921.2558 1359.4793 1040.2251 339.8 691.9153 6431.2407 2048.2942;
	1787.6322 1140.4429 1827.4434 560.3968 917.4 1370.9045 1069.8051 345.6779 684.4183 6498.0 2115.1934;
	1713.0475 1124.6471 1804.444 575.0599 909.2817 1327.7774 1071.6336 344.1 681.2785 6408.2946 2071.8702;
	1707.4442 1110.6866 1784.5023 557.8077 937.1733 1340.4334 1029.3232 345.0 660.0388 6312.3992 2031.5232;
	1673.3677 1141.0937 1867.9121 566.2004 980.7 1399.7446 1046.1038 373.5034 668.2111 6241.1117 2125.5201;
	1683.783 1155.8566 1883.0 583.172 981.9 1425.9695 1104.6 409.7291 690.5 6275.3884 2278.9265;
	1713.0405 1178.2968 1923.4407 589.0 1014.4 1436.3738 1115.9704 403.4587 694.8 6109.9976 2322.0121;
	1738.6908 1220.3242 1955.3783 582.0 1026.3 1414.4 1108.6 393.9817 685.6629 5984.1741 2345.4358;
	1732.7 1160.3 1883.3 580.6589 991.3845 1334.2081 1063.9413 356.9 656.1 5819.2861 2273.0335;
	1614.0033 1051.4997 1756.8253 567.1451 936.3294 1236.1906 983.8 332.7464 602.2688 5478.7353 2105.4126;
	1496.9211 963.3435 1621.6099 554.2132 888.3173 1142.6506 894.6548 300.6018 538.6265 5123.8627 1930.5533;
	1462.6348 930.2618 1579.5608 547.9 847.5735 1130.8591 832.5316 266.0 496.2593 4801.7765 1741.8512;
	1399.3224 907.3666 1544.4254 552.7 799.9783 1103.1 802.5046 246.4 462.9321 4592.955 1631.464;
];
