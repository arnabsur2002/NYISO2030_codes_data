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
	1501.8 965.3921 1644.6148 586.0 840.575 1268.059 906.8 283.4186 548.8635 4830.4764 1849.1;
	1472.5498 939.9718 1586.6857 571.0293 809.0055 1244.0738 875.0772 276.0517 526.2945 4630.7406 1771.0436;
	1473.2705 945.8171 1598.4852 562.768 802.5151 1250.9967 882.6183 268.6 525.7 4612.7636 1783.6622;
	1506.9047 970.3203 1629.7843 574.5 843.3969 1268.9959 897.1 282.7878 537.7 4690.1969 1821.1876;
	1586.091 991.3212 1694.3338 578.6905 876.2359 1320.4315 916.2309 287.4447 558.1018 4782.6572 1894.7811;
	1650.1309 1031.4424 1754.1136 598.378 917.7941 1353.0932 972.3661 321.5917 581.5 4938.1403 1997.0585;
	1665.85 1046.9095 1801.7973 588.1468 946.4 1415.8391 1030.1925 343.2519 608.3185 5121.5206 2072.5452;
	1667.4448 1058.9 1830.7538 592.048 972.1474 1434.904 1050.7778 360.3 636.8 5249.018 2200.8502;
	1690.1089 1072.5419 1845.8321 611.5347 1023.8796 1479.1271 1081.1124 375.0 651.5357 5436.139 2264.6226;
	1658.6977 1048.9621 1844.4696 605.4 978.6661 1500.2089 1063.0801 371.2092 657.9258 5537.4255 2246.8435;
	1654.4543 1033.992 1844.8321 599.4592 951.3536 1524.4634 1092.5011 379.7076 645.1437 5608.2343 2247.3344;
	1676.608 1041.9321 1804.6235 588.511 932.3 1502.3583 1066.0995 387.4177 646.7265 5522.9842 2182.4292;
	1668.5432 1055.4614 1801.2047 590.6637 910.2726 1516.1 1075.2911 364.9973 647.5924 5500.6534 2215.6154;
	1684.0538 1053.6745 1744.7389 593.9932 896.2619 1490.0755 1040.0414 364.2841 632.9747 5432.0041 2145.3956;
	1619.4428 1010.3465 1739.566 603.2713 913.7491 1485.4 1065.7263 349.1218 632.2586 5476.4868 2134.8121;
	1633.307 1071.4928 1809.6263 585.8652 930.2277 1503.2932 1091.9116 391.1108 655.5 5528.7298 2221.9524;
	1654.4798 1078.4166 1817.2519 588.3 931.8066 1497.3266 1098.8379 424.6736 656.6973 5600.9313 2240.7577;
	1693.6038 1093.5442 1889.4259 605.1 979.5149 1546.2 1131.5963 412.7 681.2 5701.7962 2316.8534;
	1781.511 1130.0931 1940.3294 598.6067 998.8447 1558.0 1149.1054 395.4933 682.3704 5876.9088 2330.3464;
	1738.2029 1075.7337 1830.6765 571.9741 923.6827 1477.9626 1100.9557 359.7514 641.1491 5663.9297 2252.7134;
	1681.12 1025.323 1727.2114 559.4 825.866 1380.6754 1036.5507 331.0737 608.7601 5427.612 2107.9019;
	1648.2853 982.4361 1636.2 551.3811 774.2948 1283.3521 949.8938 302.7 564.7233 5297.3275 1935.2453;
	1496.0398 913.787 1523.3244 555.7421 762.1402 1156.0 855.2 258.4 518.0 4765.9798 1726.3519;
	1564.7118 909.399 1579.7 547.8817 779.6842 1153.7651 865.3331 269.2972 517.0294 4582.0682 1696.6439;
];
