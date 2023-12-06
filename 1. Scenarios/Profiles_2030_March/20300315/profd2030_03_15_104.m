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
	1421.8296 897.2 1551.4073 516.4 731.3553 1124.4304 840.6074 262.6978 481.219 4424.0828 1607.9101;
	1397.0505 877.4726 1522.0032 486.8386 717.4012 1134.2698 832.6924 257.7 480.4952 4407.4774 1598.9746;
	1437.83 907.5296 1560.1314 508.2 719.5162 1131.1445 828.8 255.0615 477.4835 4432.5417 1620.6178;
	1507.8643 971.0 1650.8886 521.8482 786.0841 1210.0958 883.0 271.5258 519.6907 4651.6802 1720.5915;
	1671.1077 1080.3445 1834.1485 557.3623 913.5039 1375.0841 967.7 311.9614 594.9863 5074.3047 1932.0778;
	1751.5414 1148.1564 1972.3846 589.0 1010.3572 1434.5391 1041.4753 344.7408 661.9498 5550.929 2108.0544;
	1781.2948 1154.0 1999.9445 584.7342 1009.8 1420.9892 1047.9853 339.8493 688.635 5905.3943 2127.9184;
	1799.5874 1165.426 2006.5474 589.6277 1018.2148 1434.8085 1084.2 351.6137 731.7171 6164.0167 2129.9512;
	1811.9873 1204.0746 2039.2741 574.9756 1022.8441 1451.3218 1083.1582 337.2903 754.2407 6241.8584 2100.8;
	1835.1546 1183.6547 2009.5355 583.1677 986.3943 1413.1897 1048.1943 330.4592 726.2924 6148.3912 1981.4727;
	1818.4588 1153.4045 1985.099 565.1553 980.6486 1369.218 1068.2087 347.2703 732.4514 6154.0 2017.1199;
	1769.8105 1135.6 1929.9899 535.1959 937.0 1353.3666 1048.3072 326.448 697.9593 6046.4336 1916.1296;
	1774.4 1125.806 1872.0817 548.7834 917.9455 1299.716 1049.6781 321.841 707.885 6033.3165 1968.1365;
	1775.617 1106.3996 1826.6627 544.5787 895.8289 1247.0305 1022.5 328.298 716.9938 6034.5127 1993.4;
	1799.5059 1111.4335 1835.7274 539.8936 925.7138 1272.8004 1007.1782 333.3466 694.2099 5973.4316 1988.1923;
	1847.5531 1158.8395 1876.6304 555.7139 961.5385 1292.6527 1010.101 325.77 692.5127 5915.1747 2051.4683;
	1911.5501 1197.7371 1915.4184 556.6771 956.4026 1318.8212 1015.8145 305.2848 675.6 5682.2352 2127.0607;
	1865.1279 1180.1962 1958.4659 570.0387 998.0893 1361.6279 1076.5656 325.3 702.1164 5709.3381 2282.4547;
	1860.9894 1176.1081 1980.6996 574.6812 1005.8436 1372.1111 1092.3889 351.424 696.3 5633.7845 2229.0333;
	1798.6 1091.0313 1847.8956 560.7659 944.4833 1292.4837 1020.581 320.2801 665.7685 5504.9567 2173.3683;
	1732.5 1056.943 1772.5242 534.0581 914.1 1238.6303 957.3 294.3717 628.6 5269.8537 1968.2203;
	1648.7489 961.2764 1634.7963 532.9 820.2657 1144.2173 872.6657 261.6 572.6574 4876.5234 1719.2711;
	1571.2447 912.1 1529.6 544.1296 747.0327 1152.1 858.086 242.4 534.4 4670.7579 1619.1017;
	1564.8373 880.9 1511.8217 522.5541 720.0 1122.6897 829.882 246.1659 504.9601 4576.7021 1659.5144;
];
