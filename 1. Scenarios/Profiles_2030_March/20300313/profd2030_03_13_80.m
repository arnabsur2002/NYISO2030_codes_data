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
	1493.1761 983.7159 1697.9895 582.5544 849.9 1192.7931 893.3 259.3042 507.6836 4593.9261 1753.7207;
	1499.2 984.9527 1699.2 580.5 866.6185 1190.2549 898.9 252.599 513.3169 4513.4218 1743.4021;
	1513.2204 1007.0061 1704.7377 588.1785 859.3 1201.1 918.9417 257.6991 514.057 4554.0072 1794.9;
	1584.7507 1064.7575 1816.1024 607.56 929.4 1296.9416 966.4 290.2 554.0179 4783.7417 1904.4662;
	1729.2673 1172.8951 1982.6477 629.9 1029.9139 1443.1891 1074.284 331.1791 628.7593 5385.0 2159.9228;
	1831.087 1236.4709 2084.8877 648.6635 1067.0925 1507.0893 1136.7 351.1768 672.5211 5940.5768 2285.6478;
	1798.6134 1211.8387 2026.3618 630.7 1026.6 1483.0807 1087.4179 337.5 643.2615 6160.8504 2195.3358;
	1841.5074 1202.9782 2000.8455 625.2326 1018.1 1421.0665 1065.2726 327.0 670.8231 6312.3098 2109.891;
	1840.8869 1185.8708 1971.9166 601.3086 1008.8578 1360.0521 1027.7464 313.696 652.6019 6278.3012 2045.188;
	1823.0602 1170.0255 1931.5683 587.9409 1041.2 1334.8466 1037.8311 290.8166 677.8743 6190.8859 2030.5254;
	1778.5754 1170.5517 1934.8545 587.5 1022.1246 1331.0967 1004.756 275.8265 657.8402 6268.1388 1992.8644;
	1745.1913 1143.1878 1975.1822 594.5 1008.9 1370.269 1032.9397 276.8952 674.8524 6291.523 2127.6047;
	1696.6525 1131.0501 1950.7612 604.8705 1010.0 1335.9712 1004.487 287.0 662.6 6267.3662 2166.0327;
	1717.2851 1154.8121 1928.0579 600.9434 1000.9823 1390.8545 1015.6641 284.6766 652.5694 6213.8288 2176.147;
	1718.2773 1157.5319 1933.0639 582.5 997.3039 1391.6 1020.3681 303.4566 656.2 6306.3178 2245.6;
	1704.581 1171.0436 1953.8707 588.2698 1003.6584 1401.6 1030.1306 315.7588 624.4952 6343.1787 2341.5256;
	1732.8801 1185.5984 1972.1331 596.3 1037.798 1432.6709 1060.6152 310.3212 635.1 6145.9772 2445.7479;
	1754.9568 1245.088 2058.9614 602.4366 1052.421 1504.5965 1117.5201 336.3864 682.7965 6203.6486 2565.3787;
	1788.911 1255.3924 2057.2328 610.3 1051.731 1522.3517 1143.6453 353.2465 688.6 6210.6477 2510.9722;
	1767.6718 1177.4509 1960.533 590.4943 981.7325 1403.3402 1096.3077 336.2903 675.6854 5933.7956 2404.3267;
	1729.1736 1106.039 1845.7352 577.0 888.9034 1312.1 1051.2651 325.8 633.1782 5815.4852 2262.6846;
	1651.418 1034.5598 1769.5137 571.8832 875.7635 1224.0125 963.9619 298.2 573.2 5380.1275 2059.6111;
	1510.9502 949.2005 1644.6 568.1364 756.0525 1128.5798 878.5363 259.2 516.0327 4807.5385 1837.9932;
	1461.2082 909.6052 1601.1342 549.9495 727.6696 1069.7222 855.5333 270.4596 468.5949 4572.6891 1749.7928;
];
