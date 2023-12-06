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
	1689.0723 979.7193 1633.941 558.2267 830.0042 1105.5 882.6464 226.7534 461.3896 4193.0441 1691.1304;
	1665.9681 969.3834 1612.4781 558.2723 830.698 1096.446 884.5736 238.3 466.5 4312.8644 1700.4779;
	1646.9879 988.5 1638.8585 565.7649 822.3 1114.3366 901.4 234.5319 455.4599 4283.1102 1708.2259;
	1698.073 1047.1627 1761.4635 600.6439 904.0978 1185.7834 963.0783 271.7771 506.1349 4617.3607 1849.7352;
	1816.6085 1169.1532 1964.1938 626.7441 1033.259 1358.6192 1070.7987 340.4154 581.8642 5330.5 2096.8;
	1913.6 1252.5719 2100.9448 642.3445 1135.3207 1471.9932 1154.9334 361.7 675.845 5867.9004 2257.5634;
	1908.361 1253.5792 2093.4587 617.0357 1122.4038 1473.4414 1169.9741 378.6221 685.0995 6237.0908 2259.8998;
	1891.5585 1255.6189 1984.1352 608.4696 1062.5803 1448.2575 1139.066 367.7 677.14 6312.3526 2145.638;
	1942.4261 1272.678 2024.9927 604.9 1062.2088 1377.3 1131.2127 375.4733 693.6002 6434.2331 2099.6041;
	1922.4067 1282.3659 2013.5714 601.4 1045.8881 1430.0154 1166.7702 388.0374 701.8275 6532.6 2130.9683;
	1900.6763 1269.6875 1957.1444 589.1 1025.4525 1368.1504 1139.8052 363.9243 699.0733 6503.3 2049.1392;
	1885.8531 1254.7321 1976.6092 578.3 1011.9928 1357.5561 1157.2711 353.2 686.0882 6515.7619 2013.9401;
	1868.4278 1244.93 1930.0 577.693 985.3464 1393.5656 1176.6571 352.1151 689.6662 6543.3164 2086.8724;
	1889.4 1268.2 1893.5281 587.3255 975.1455 1426.9848 1181.4341 342.6048 668.7127 6543.3506 2108.8004;
	1917.1377 1308.96 2011.5 585.4598 978.7076 1480.3405 1287.0118 353.244 687.4781 6602.5135 2219.9266;
	1891.0064 1290.1156 1984.2974 589.2 991.8544 1468.353 1269.1532 345.6948 730.4785 6574.4593 2293.2246;
	1912.5671 1267.9311 1943.7337 601.1041 993.4618 1527.6179 1291.5887 362.7426 727.968 6531.9564 2391.5472;
	2009.194 1334.1169 2066.0155 633.9 1061.4188 1591.2261 1341.6 398.5793 762.0197 6542.599 2546.6665;
	2053.5161 1365.7387 2084.341 640.5449 1064.5408 1597.693 1270.1243 387.3285 734.9 6312.7208 2466.7844;
	1998.5787 1300.729 2032.769 624.9677 1040.4554 1533.5 1218.8304 370.8444 699.0511 6109.3757 2368.7535;
	1873.2031 1197.0538 1844.6713 586.1 940.5 1394.396 1096.2 325.7619 649.3601 5657.3028 2165.5968;
	1783.9312 1104.5569 1737.2344 589.4187 900.7239 1285.5021 1022.2533 314.0 590.0913 5233.7289 1967.2806;
	1815.3676 1080.7936 1695.2697 571.1518 876.704 1246.207 991.9008 293.5 572.2 5054.9425 1887.3059;
	1707.0945 1045.9577 1686.7 587.4 843.6791 1204.1496 959.4887 277.1 550.6112 4749.1322 1805.5952;
];