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
	1566.784 906.7 1573.2993 569.1313 780.6203 1115.7567 842.4364 249.5 483.1073 4440.493 1684.6655;
	1518.4603 859.4093 1554.2909 580.0982 782.6455 1126.2066 851.4 246.6 474.3475 4382.2874 1656.0764;
	1547.1 889.9973 1558.4919 574.8 788.9 1103.7717 847.1027 244.5 469.5563 4347.2031 1677.7856;
	1641.2046 956.3526 1685.6175 588.2298 846.7613 1190.8963 920.5274 269.4067 523.3745 4650.3865 1797.6983;
	1796.0004 1059.0571 1871.8148 600.9515 965.5897 1352.3736 1025.1497 318.4 617.2 5251.0841 2035.5702;
	1867.685 1105.0404 1907.4954 610.0016 982.6252 1395.3392 1064.2117 330.5691 667.5757 5718.4368 2108.2987;
	1844.7049 1104.13 1930.373 606.8 991.039 1399.6 1092.9 328.4 651.671 6063.6595 2099.7182;
	1842.2723 1162.4617 1905.6431 606.6926 986.9563 1385.7385 1113.6 317.0253 652.3647 6231.9536 1969.6129;
	1824.1389 1167.0146 1885.5631 588.7082 986.9086 1371.0 1130.2887 322.6495 673.6726 6265.7425 2013.0225;
	1775.2467 1147.6622 1813.8975 570.8504 944.3036 1319.5387 1061.0542 318.2 647.2158 6195.58 1846.5521;
	1784.3387 1141.7551 1785.1635 571.7 938.573 1330.9845 1068.5743 314.5385 624.4127 6134.7141 1867.3482;
	1735.3163 1137.8784 1763.8517 586.0771 962.7808 1343.0659 1079.4284 317.3255 650.6754 6086.6 1903.7414;
	1716.1386 1123.7407 1743.7904 575.1549 912.4955 1275.8731 1052.7203 310.0539 592.3715 5999.859 1937.3833;
	1677.0241 1130.6438 1778.4733 578.3378 949.1 1338.6658 1037.5321 301.255 605.4 6027.6037 1965.4759;
	1660.032 1131.3668 1799.3039 564.8337 942.6 1355.8 1055.0 300.1334 622.3317 6091.442 2074.9075;
	1689.9983 1140.6 1794.0108 559.1436 927.5 1370.0 1070.4 303.2 663.0405 6094.4907 2199.6411;
	1684.2372 1130.7 1838.0481 570.613 973.9647 1418.0133 1141.3019 314.8 655.7092 6030.8375 2261.5095;
	1758.5775 1160.7112 1873.1022 560.3074 975.755 1427.6327 1111.1598 327.9304 675.0222 5833.9242 2332.1123;
	1801.111 1150.5483 1877.3117 567.8257 969.1151 1422.726 1115.4082 327.8282 654.2722 5712.6912 2126.7252;
	1745.1807 1073.1951 1757.5836 561.642 894.2322 1342.3291 1040.6265 302.9021 617.8804 5470.4395 1932.6026;
	1612.4571 978.0688 1614.3043 544.8 849.7715 1234.4189 969.3261 279.4191 556.1641 5166.1164 1766.4926;
	1530.4816 909.9029 1548.3414 540.2829 796.2137 1129.3112 864.0474 240.3641 499.4286 4890.7223 1528.2354;
	1543.2486 861.0954 1489.1319 526.8658 796.4856 1105.362 858.48 262.0908 452.5557 4542.1014 1301.4135;
	1507.5482 841.2121 1491.6 533.4235 763.3382 1073.7857 817.5887 247.633 372.5067 4460.0486 1583.1663;
];
