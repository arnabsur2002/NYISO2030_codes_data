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
	1541.7534 969.4004 1650.9114 588.8 847.138 1205.7449 925.698 261.2901 567.2446 4596.2278 1757.9412;
	1539.5899 973.3797 1642.6927 602.3 847.6449 1215.3 923.096 268.7528 569.2726 4606.0635 1772.3915;
	1539.2829 985.7289 1687.2863 599.8 884.6899 1275.4502 966.2735 282.3781 591.1078 4691.2675 1850.907;
	1601.7705 1050.2638 1772.2037 618.2 924.3465 1317.855 997.0 295.2192 603.5685 4891.2589 1914.9651;
	1740.2301 1156.7392 1952.2173 637.8573 1056.8 1496.9741 1099.3903 355.2883 699.687 5406.7488 2163.9969;
	1825.5898 1223.9258 2051.9669 643.598 1094.2877 1550.1128 1147.6119 375.7 749.3717 6044.0044 2292.3513;
	1767.4846 1207.6 2001.2786 630.7181 1077.4359 1523.9619 1137.7884 356.5 732.0088 6205.8 2252.3815;
	1776.7904 1201.5281 2010.2207 611.1894 1063.8356 1470.6285 1118.0949 344.4 722.4707 6412.7 2199.5358;
	1765.9899 1185.7518 1979.4367 597.2123 1079.0349 1491.5937 1098.5855 341.7 714.8 6487.298 2245.963;
	1746.9768 1187.356 1989.2277 575.3332 1067.3778 1489.9242 1095.7013 329.5626 701.2306 6476.6713 2270.7751;
	1746.4121 1199.9908 1994.0678 576.0637 1034.7253 1468.7373 1116.6011 327.102 723.8691 6563.0375 2245.231;
	1782.592 1209.5203 1959.7589 581.8708 1018.8543 1420.2605 1101.0398 331.1232 730.4873 6634.3 2216.0431;
	1750.8839 1182.7721 1904.5307 581.5 1002.1609 1375.1 1074.3421 321.1439 711.7879 6591.1627 2210.3546;
	1704.3216 1124.1074 1841.9416 574.1495 970.1808 1343.9348 1046.2329 308.5454 713.8 6394.7613 2056.3465;
	1675.6056 1097.7238 1797.8743 577.8 980.2871 1390.2757 1069.4896 305.0022 703.7443 6418.8584 2118.6313;
	1705.7081 1148.9107 1850.4818 596.2782 1005.809 1436.3062 1075.7381 306.9 717.3 6404.7902 2237.2931;
	1703.6898 1145.8056 1889.8751 614.5364 1042.0876 1467.8 1123.3985 322.3688 765.8865 6310.7062 2355.4996;
	1739.991 1160.5641 1954.2772 618.2 1045.3313 1533.3984 1194.0958 323.7014 780.8154 6270.0343 2465.8895;
	1795.8196 1210.2172 1968.6 609.5 1045.0718 1543.8369 1224.5772 346.9606 794.1271 6195.6849 2476.4095;
	1737.1839 1123.5583 1847.5458 594.7994 962.6066 1476.4914 1150.6191 330.1218 716.2865 5920.5506 2349.1703;
	1673.2209 1043.1399 1760.298 592.8 906.8013 1388.7815 1102.3364 314.1 693.727 5645.737 2227.0805;
	1565.1 974.6924 1638.9259 584.9273 837.8393 1258.8391 990.99 271.3474 621.9916 5154.4501 1984.0117;
	1509.5322 926.9862 1562.7133 595.2057 744.4445 1178.2846 903.0 256.8 563.3056 4525.0283 1750.9931;
	1483.3 903.5773 1548.5848 593.8665 769.5 1185.8601 898.4 248.9985 565.3905 4511.1 1718.8649;
];
