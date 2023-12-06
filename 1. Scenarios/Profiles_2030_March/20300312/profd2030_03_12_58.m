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
	1474.1345 983.7 1647.9081 597.6769 771.9407 1142.6922 911.9 256.4064 513.8682 4566.485 1730.4334;
	1490.1739 991.7682 1635.6523 598.0903 780.5258 1141.1161 904.7 258.6517 510.0208 4498.694 1723.0;
	1528.8869 1013.2999 1661.176 595.7866 787.4783 1156.9 901.4 240.2789 517.0558 4456.7407 1725.6368;
	1605.5594 1084.5706 1766.9714 617.0 856.2905 1225.9983 952.9706 276.3615 550.9125 4729.3598 1879.2758;
	1747.7562 1202.1 1972.0807 651.5151 972.9055 1382.6782 1048.3 320.2752 630.8696 5290.6718 2105.7093;
	1788.3967 1271.1684 2107.2795 672.861 1052.0439 1461.5672 1125.8515 352.5487 698.1438 5885.3511 2234.5855;
	1869.7774 1278.6253 2087.3 668.289 1053.2366 1446.0178 1140.3302 364.8276 687.277 6218.5733 2222.9897;
	1865.4172 1278.5559 2056.8348 651.9744 1023.2609 1388.2898 1115.2584 351.7908 685.1 6214.8888 2099.1522;
	1845.2263 1272.107 2019.6849 635.0214 994.2737 1312.8091 1072.1504 335.9178 642.4626 6123.4775 2073.7175;
	1833.843 1258.788 2009.3207 627.1213 975.4941 1235.8258 1044.9283 317.1856 639.7736 6170.1188 1987.8733;
	1778.1147 1236.8397 1970.9147 609.9212 960.8269 1156.9338 1006.2663 331.8831 616.6247 6056.706 1946.6671;
	1776.8209 1218.5593 1913.6099 602.6 930.5855 1137.2703 970.5129 317.8 603.8652 5836.7963 1873.808;
	1773.8482 1171.4387 1890.2023 586.2541 922.9765 1116.5313 963.8269 302.1352 602.2177 5937.3619 1823.0829;
	1741.8673 1159.1915 1921.3 573.5 913.1089 1098.0242 980.0749 297.6167 614.7992 5694.6357 1868.6639;
	1793.9393 1185.0465 1906.4752 584.2 950.628 1155.5403 1039.0 323.665 631.7247 5921.11 2152.3325;
	1819.6 1219.3888 1970.3987 610.3661 1000.4685 1239.6565 1064.001 324.5 664.3455 5781.4609 2197.3358;
	1865.9393 1287.2239 2034.6003 616.1 1030.0948 1425.8736 1094.3 364.3151 692.8708 5992.8714 2341.1984;
	1904.3544 1291.1278 2109.1045 638.4808 1064.555 1513.3492 1184.9 407.8226 720.3693 6127.2687 2474.3444;
	1914.5125 1290.7591 2131.3178 641.1651 1047.8068 1539.9907 1205.7 395.0 716.682 6130.7318 2489.7634;
	1874.6779 1237.0 2051.5506 623.3618 1006.9166 1462.2326 1182.3 364.7 692.0167 5741.8119 2343.1911;
	1738.0419 1114.2047 1865.4662 591.9791 917.6327 1339.223 1075.7356 329.4412 619.4 5276.1537 2113.6368;
	1635.8 1036.2 1747.1095 569.2552 857.972 1238.674 978.9616 317.2034 549.477 4849.0358 1919.2223;
	1518.5461 976.1777 1618.4712 582.4832 806.2136 1151.3332 892.463 273.9728 451.468 4531.1581 1785.7119;
	1478.9604 955.7905 1608.13 579.7736 812.6345 1163.5002 883.8785 261.9728 397.6168 4547.6265 1759.9799;
];
