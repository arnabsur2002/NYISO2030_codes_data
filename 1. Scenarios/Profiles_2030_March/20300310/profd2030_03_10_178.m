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
	1408.1505 926.0 1593.3335 601.6464 781.5162 1231.9 865.5737 277.7 483.4278 4718.7863 1792.2916;
	1357.2487 903.7671 1556.5275 584.0 739.2084 1205.9297 840.8468 264.5935 472.1643 4499.5886 1697.5486;
	1367.0055 900.9909 1548.4715 589.9943 753.7406 1229.7705 854.6728 262.4811 461.4622 4470.2578 1638.5974;
	1381.7657 914.5426 1576.6119 590.8266 761.603 1256.1825 891.2 269.6634 484.4282 4544.6999 1727.501;
	1471.3361 970.2664 1661.5 613.2449 826.4471 1308.0972 922.1 291.8337 494.6859 4612.0195 1814.956;
	1539.6598 1033.3362 1714.1078 626.6385 859.5672 1354.1 959.8945 307.0 525.8745 4744.3381 1859.964;
	1559.1564 1040.9879 1719.8233 611.3926 899.9215 1394.0067 1021.2192 301.2 539.3437 4924.8928 1919.8946;
	1584.3003 1048.8061 1738.1082 606.3949 917.0594 1447.563 1119.934 327.9 609.8 5179.1966 2012.3387;
	1584.6126 1042.4 1689.9875 597.8207 875.9105 1434.7471 1137.8675 326.5 627.3522 5320.6418 2056.7501;
	1631.3026 1062.5839 1696.0288 572.1235 894.1404 1413.4771 1173.9643 318.8105 653.7635 5417.6877 2116.5324;
	1616.3688 1071.839 1714.4142 570.975 886.7241 1371.2539 1156.9531 314.4594 641.6 5513.4846 2085.0352;
	1689.8583 1099.6194 1708.6651 569.8746 864.574 1383.1819 1189.2 328.0342 644.5358 5529.2043 2115.3838;
	1705.3862 1113.8779 1722.6025 551.649 880.2076 1399.3 1232.3873 332.8811 656.5825 5598.0601 2204.2386;
	1697.679 1141.2 1727.3421 542.2998 876.863 1417.6785 1219.665 342.3 646.7 5603.5997 2207.0204;
	1675.1338 1108.0 1760.0412 548.004 884.8908 1436.6861 1140.7828 309.0 601.8781 5493.4746 2166.6429;
	1714.049 1122.3645 1756.7832 561.0923 859.9404 1462.0 1170.4723 333.6141 618.3931 5524.5547 2252.1729;
	1726.8251 1166.8059 1848.0268 564.0341 913.2751 1495.1559 1188.4365 339.453 652.1373 5601.1305 2344.2275;
	1735.4681 1192.1209 1945.7 568.6704 955.5176 1578.8 1225.2373 353.1552 683.8249 5785.8111 2428.5827;
	1763.4747 1176.3791 1899.1 552.2698 929.7312 1544.5 1199.9383 358.5312 672.8449 5750.7429 2417.6853;
	1721.8154 1128.2914 1843.8744 541.7102 871.2312 1470.9151 1171.3554 349.9238 669.1 5548.9477 2313.3194;
	1715.1233 1089.2737 1752.9862 519.2393 806.3205 1388.8 1104.6284 333.6041 626.8026 5351.3613 2242.1669;
	1656.3297 1037.7 1663.3052 491.3004 766.6305 1314.2499 1034.9129 309.0771 591.8018 5108.893 2044.4311;
	1537.4561 960.8548 1588.0 499.8421 748.2339 1155.3672 928.3901 266.0 522.4 4455.1125 1786.2701;
	1500.653 944.1067 1623.3527 485.309 741.1689 1123.3301 917.4662 272.3903 521.791 4456.6612 1751.2383;
];
