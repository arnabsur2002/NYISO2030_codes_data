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
	1488.334 954.0491 1620.8211 575.8291 856.4728 1172.7961 849.5665 266.5933 501.7242 4323.3647 1667.8;
	1497.6581 961.3987 1605.9612 564.9584 829.4485 1166.6548 853.5771 267.4898 500.9 4261.6359 1662.8;
	1498.5156 958.2804 1653.1804 581.2 847.0743 1205.6819 858.422 262.1371 503.7298 4321.7725 1675.4806;
	1566.5 1028.1911 1739.0238 597.5747 909.3631 1243.1105 890.6837 272.8115 535.2 4551.3857 1771.7;
	1703.9842 1146.1901 1920.5092 626.5 1013.6073 1372.2467 956.7937 294.6541 589.6 5082.2402 1986.5396;
	1874.446 1253.4915 2043.7714 651.8842 1069.0706 1473.0246 1051.2699 337.1765 669.5077 5683.4729 2148.3;
	1917.1498 1274.5621 2075.6562 643.4367 1077.7868 1455.2636 1041.6183 349.6859 680.3964 6023.2396 2193.4829;
	1924.9177 1287.9771 2052.6085 621.8672 1061.8882 1439.3254 1048.8394 352.0195 694.6512 6180.3302 2244.1731;
	1910.141 1280.0585 2073.0507 617.078 1064.3596 1418.0208 1055.9519 359.0717 704.8687 6238.591 2262.6812;
	1919.5489 1283.6603 2071.2617 619.4496 1083.0497 1438.4192 1074.0531 373.2175 706.7833 6310.8684 2266.7456;
	1883.3794 1278.6049 2058.0229 606.99 1066.4 1448.8406 1074.745 375.6194 740.2708 6352.9524 2313.3638;
	1888.4267 1291.5776 2064.5411 599.8098 1075.3923 1410.0814 1013.9507 390.7565 720.5 6323.9689 2295.1942;
	1888.3552 1279.9233 2032.9825 583.5424 1050.9976 1368.6956 1027.0539 377.6545 704.811 6352.4708 2274.3659;
	1821.2 1242.631 2005.193 591.1412 1043.1704 1367.4003 1043.7462 397.2641 742.1063 6363.1029 2433.8863;
	1849.8542 1248.2503 2072.9514 576.4911 1084.8891 1417.8618 1042.9373 422.1691 712.6 6453.658 2520.1356;
	1894.4354 1253.2118 2107.0968 597.1688 1095.825 1490.8192 1065.0073 401.3221 717.7853 6436.2282 2463.3236;
	1876.3702 1249.6 2177.5963 594.392 1109.4138 1524.9673 1114.2991 429.5587 748.5041 6435.0561 2632.7902;
	1937.1487 1306.8267 2249.442 611.5678 1166.8171 1612.5083 1191.1616 441.0863 775.6226 6416.9365 2811.994;
	1937.5507 1321.1449 2235.8053 607.0 1196.1839 1629.0297 1219.6167 445.188 757.8203 6368.3222 2673.4267;
	1897.6736 1247.5579 2067.4612 589.6866 1090.7621 1489.6777 1162.0587 396.8 709.1 6165.514 2469.38;
	1792.5 1151.0001 1973.4255 570.4382 1013.4341 1362.7528 1068.6291 355.8795 659.9748 5840.2716 2211.9542;
	1692.1185 1089.2708 1896.2484 572.9682 963.6962 1292.8759 992.545 318.574 607.662 5357.2179 2015.5557;
	1620.6766 1047.7642 1792.4905 601.1527 889.8456 1234.7971 943.6 307.35 546.2483 4978.1279 1857.8098;
	1543.8764 988.5 1743.8456 599.8049 866.2269 1161.5914 902.552 289.1719 522.4706 4644.1791 1794.5294;
];