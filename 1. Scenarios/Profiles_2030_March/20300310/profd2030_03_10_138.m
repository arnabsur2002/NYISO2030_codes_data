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
	1482.7082 937.1169 1633.7431 552.4593 792.1048 1246.4 932.2625 255.5922 559.4747 4702.1633 1836.7559;
	1444.9924 909.7711 1602.6898 522.0494 778.7031 1220.6154 903.0478 250.6082 524.7016 4498.5532 1749.8493;
	1466.6281 913.0893 1574.5923 526.0538 758.7598 1205.454 895.7762 245.5029 520.0029 4415.9972 1720.8873;
	1456.8 910.3209 1606.8388 529.6732 790.8 1247.4188 912.5446 254.317 529.5803 4479.7894 1743.1531;
	1514.7735 943.9024 1663.6 560.9008 819.1734 1275.7313 937.5 274.2684 555.1 4649.2919 1830.1174;
	1548.6747 966.6138 1714.1647 566.3003 857.1309 1316.7609 965.5 279.7233 590.3933 4834.4688 1929.3557;
	1590.9205 1001.3249 1777.4976 603.2187 915.5446 1352.891 1006.3 288.8873 609.6 4862.0188 1969.431;
	1639.1675 1050.0282 1834.9204 611.1048 911.9797 1400.155 1074.9449 314.5204 630.8101 5169.1349 2115.7782;
	1637.3598 1061.8248 1862.8865 618.8 922.6885 1401.7233 1093.0461 326.5427 655.3 5340.8629 2206.4815;
	1646.3023 1050.9256 1840.7557 599.5329 913.2236 1437.2884 1090.5764 310.6491 662.8 5359.4611 2150.6;
	1634.1823 1049.1291 1804.89 588.0769 886.7085 1371.0682 1039.8067 313.7208 656.5902 5448.9 2126.037;
	1628.4632 1072.3492 1743.2398 590.9 864.5578 1343.7247 1029.4 319.3422 634.0192 5387.6558 2047.0445;
	1589.7446 1028.7458 1676.5883 587.8096 838.7214 1337.2638 1048.2111 323.8576 647.2359 5470.7128 2056.017;
	1641.169 1046.7179 1684.7642 572.9734 825.6519 1344.8128 1045.9176 319.4136 628.743 5383.507 2037.6791;
	1650.9301 1059.7425 1714.0677 572.7 844.6465 1360.3528 1028.8331 301.6199 601.9156 5235.1293 1915.7024;
	1620.3147 1078.3857 1739.5099 591.0664 909.0805 1393.1185 996.4897 306.0168 601.3046 5003.0215 1845.8658;
	1604.7175 1091.0 1688.0336 594.4079 923.5563 1424.3762 1051.2394 319.9 610.9295 5139.7372 2014.5363;
	1697.0388 1122.5673 1765.0812 605.0646 955.5153 1472.2829 1120.7548 341.0248 637.3233 5326.4698 2195.5469;
	1718.9269 1159.4719 1803.2254 601.7127 969.9479 1491.5614 1121.2299 345.5658 683.9311 5278.3596 2202.2796;
	1737.2105 1111.0607 1734.828 581.4 911.7395 1413.5632 1083.5465 337.0691 666.5807 5153.3714 2006.9988;
	1680.7 1045.1396 1629.5601 556.3587 833.6403 1329.5236 1014.8964 304.5039 620.4368 5072.9608 1979.797;
	1620.6089 976.8218 1552.0257 536.1731 755.8163 1228.291 916.4663 268.4 571.5703 4702.8415 1819.4249;
	1511.376 902.6363 1550.735 532.0824 705.1523 1088.3764 818.3959 237.2354 475.9374 4234.0832 1430.1649;
	1491.3223 897.6194 1554.6551 534.9 681.709 1073.6211 825.229 235.375 466.0971 4335.2619 1336.7343;
];