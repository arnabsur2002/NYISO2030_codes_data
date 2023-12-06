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
	1399.5546 915.2114 1553.5 550.111 725.9486 1095.2 855.3 223.0106 520.9237 4466.2568 1594.3018;
	1376.8881 904.4 1543.0231 550.2274 701.6005 1091.1179 849.1938 217.1242 526.6313 4424.6428 1553.9872;
	1392.5654 932.2587 1559.8 550.5565 707.2661 1088.1627 854.4139 207.8953 524.3 4424.1647 1577.553;
	1503.5391 1011.0583 1697.352 554.0507 781.558 1176.2 917.3669 226.74 558.5621 4689.6209 1702.3655;
	1660.941 1160.3178 1898.2363 578.4743 911.7963 1337.029 995.1697 249.8214 619.6801 5146.3681 1876.3694;
	1725.2903 1247.4661 1970.476 579.2243 931.5707 1381.7046 1025.7857 286.7209 674.2102 5508.6403 2001.2643;
	1775.3029 1231.4513 1929.1313 596.9815 921.6673 1385.4631 1046.3425 286.0709 687.3 5891.9742 2131.0165;
	1783.3971 1216.8 1942.422 584.9 932.2585 1369.2165 1058.329 306.2 689.1704 6062.2179 2119.9097;
	1801.7764 1218.3501 1912.7244 571.8718 913.8677 1355.2151 1045.5194 285.5192 697.75 6002.8912 2098.8;
	1804.9309 1194.5255 1890.1427 562.3 903.8981 1309.1786 1038.8975 285.9051 704.8 6134.3223 2071.7302;
	1765.6 1146.1 1836.8979 553.6151 888.5852 1220.0057 1012.2388 259.8165 685.7546 5980.2962 1965.4358;
	1725.0814 1087.8094 1770.7946 538.3572 842.7085 1183.1563 986.1812 258.9869 676.3104 5964.5251 1902.8156;
	1696.8844 1055.0571 1753.4953 539.9 835.2272 1137.0525 985.0714 249.291 667.7968 5953.9711 1920.2704;
	1687.2625 1043.3508 1712.1812 538.0 821.8447 1067.0495 966.5233 257.9326 663.1 6012.5272 1934.9848;
	1706.6129 1080.3638 1740.0281 536.8 813.3338 1072.9248 971.9378 239.9136 681.3363 5993.5636 2056.2967;
	1689.5457 1073.9577 1752.3067 536.3928 869.1822 1188.1053 1020.1253 237.4087 688.583 6020.3987 2143.8332;
	1751.3996 1102.607 1734.8819 551.639 870.6469 1162.6927 1022.0415 224.506 688.7055 5905.8509 2183.244;
	1779.4321 1117.8078 1766.3967 560.5519 901.4295 1254.2108 1083.6181 232.6671 728.4239 5937.0923 2303.2954;
	1803.2955 1146.1404 1760.9896 548.8875 894.3498 1276.7615 1080.516 240.6576 711.6 5828.3919 2297.4047;
	1765.1916 1098.4903 1705.468 535.6026 847.6292 1238.7558 1041.9374 225.5383 690.8 5683.7152 2134.4787;
	1647.322 999.7707 1610.7815 526.7 816.4792 1179.0407 979.4234 206.1429 635.3483 5371.9015 1827.8026;
	1470.2058 919.2382 1487.2 521.6 706.7298 1108.7473 885.1509 170.6678 567.9 5029.0846 1713.2469;
	1392.5476 811.8347 1415.1066 495.1461 673.5569 1028.1686 835.9839 195.384 530.3 4707.4863 1624.4048;
	1330.3783 785.6731 1374.4103 489.8034 636.8908 1030.4032 796.8748 197.0 499.8016 4514.8282 1594.7977;
];