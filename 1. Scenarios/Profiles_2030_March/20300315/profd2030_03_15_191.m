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
	1413.2471 886.6403 1529.3944 514.5919 711.6462 1102.0388 848.8 226.3683 538.3045 4497.9917 1823.4473;
	1468.2512 896.9 1530.3967 523.1111 726.8249 1111.7615 830.0044 217.6857 549.4056 4445.8693 1776.7572;
	1436.959 900.2 1541.3599 519.9091 725.488 1115.4168 823.4582 218.8 527.9526 4419.7642 1726.6194;
	1512.5971 968.7 1645.5017 534.7066 777.7871 1203.7163 885.9007 251.2463 596.5745 4752.1688 1908.9067;
	1649.4047 1086.1 1849.9256 575.0 912.6961 1349.9226 988.4611 300.8 642.888 5513.9407 2260.1087;
	1758.9439 1148.8 1938.8424 584.6429 952.2032 1412.9608 1053.4 319.7 693.0458 5853.8012 2213.5812;
	1816.5874 1178.0692 1967.477 584.176 932.9762 1396.1 1071.2894 328.2 698.8299 6056.253 2274.9;
	1818.6865 1193.5463 1952.1178 578.4 910.6985 1342.0 1070.25 314.3 735.6728 6152.0238 2274.922;
	1830.8587 1229.2623 1956.1496 567.9836 920.3778 1310.6275 1113.1618 324.331 725.0 6167.3622 2283.3673;
	1821.0823 1198.5157 1930.9021 559.6 928.6431 1312.5952 1154.9072 326.7848 727.0344 6224.6476 2268.1407;
	1802.0 1214.0147 1897.2777 557.4496 923.2293 1271.1462 1152.1 313.9761 738.966 6306.9 2263.9435;
	1802.2 1191.7899 1874.5853 553.2812 906.2 1323.9079 1154.0 308.5024 726.9083 6193.2914 2193.2605;
	1832.8527 1186.8892 1856.6123 537.6 906.8892 1287.772 1098.6018 296.0164 739.0378 6116.8414 2229.1;
	1769.5 1160.8823 1788.9343 535.7486 894.5 1307.9 1048.6053 285.1194 712.6783 6029.2259 2144.4355;
	1741.0921 1181.8924 1829.9 525.4068 888.1614 1313.5601 1064.1471 285.8434 707.7222 6024.0094 2242.0433;
	1758.7606 1208.6944 1833.6874 536.1584 901.017 1347.3426 1093.7259 267.9541 749.444 6015.0789 2293.5322;
	1751.3979 1186.5664 1867.9 530.6527 914.1435 1353.5056 1066.0322 281.4372 691.7691 5876.5687 2315.6082;
	1784.7527 1209.4493 1911.7573 544.8422 953.65 1378.077 1086.7481 293.1507 710.5 5857.1926 2386.3323;
	1826.2377 1206.9227 1915.1994 544.9732 957.3517 1415.8936 1139.2728 289.5834 704.6184 5824.9578 2379.5471;
	1784.9125 1136.673 1829.528 553.5 921.6427 1360.8037 1065.5886 281.9768 678.1471 5591.2531 2292.7755;
	1731.9179 1074.9438 1760.719 522.659 857.0644 1284.4066 1014.7314 242.1088 665.8135 5405.282 2196.5478;
	1609.5242 1005.2714 1685.5837 537.284 833.5352 1217.6122 963.3072 228.1404 632.5365 5115.6505 2077.06;
	1549.7882 1049.6522 1635.8656 544.0759 751.9954 1206.0141 927.0741 225.8851 607.6133 5180.4627 1907.4854;
	1460.2196 941.0 1546.4736 536.9 693.3022 1161.8 895.9303 224.9335 569.5349 4706.855 1889.687;
];