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
	1426.7927 873.1 1474.7956 524.3732 699.4444 1096.2 751.1435 231.0929 472.5159 4141.8829 1552.421;
	1407.7287 861.9815 1443.2396 532.7077 706.4491 1065.5276 749.2883 229.6609 451.0392 3884.9452 1472.9756;
	1405.7597 871.4504 1460.4713 532.6755 690.7289 1076.1457 754.5998 234.6413 455.3744 4091.0958 1538.6632;
	1446.5418 907.3074 1516.4998 549.4726 748.5 1112.5918 755.3098 248.4377 476.8746 4217.6235 1611.7405;
	1547.6251 973.0976 1619.6856 565.0871 798.9013 1170.7764 774.6549 251.2183 511.8 4512.7509 1764.8151;
	1557.8648 992.665 1625.6078 596.2777 838.1544 1227.6325 835.1294 264.2949 538.9 4706.458 1828.3708;
	1599.4951 1020.3592 1700.2711 597.9 857.4896 1309.9769 885.4856 282.0932 570.8 4917.5246 1910.0293;
	1623.5089 995.2812 1713.2974 585.3612 864.7658 1297.0952 824.4084 278.747 588.8059 5014.3534 1840.8871;
	1621.807 988.3139 1751.527 579.9214 853.2782 1323.5191 827.9428 274.8727 599.0 5164.5521 1867.9422;
	1610.4251 982.0048 1730.7754 581.7 834.0304 1308.7947 908.802 273.6671 617.0692 5296.9229 1964.865;
	1572.602 976.3917 1695.7618 576.9 790.4822 1270.5848 864.067 266.8 577.9054 5320.6073 1845.555;
	1527.6001 966.1432 1705.8762 561.9798 816.4914 1294.2 863.7821 277.1778 589.7 5287.0239 1869.2742;
	1547.8389 933.024 1651.2142 570.8388 792.0492 1294.6483 805.2508 267.1277 571.1157 5259.0474 1833.6046;
	1565.7879 920.3962 1602.4447 552.3569 792.0178 1223.8062 652.7335 254.5393 575.511 5205.483 1826.2096;
	1587.0715 918.9729 1692.3336 548.1844 808.767 1327.9123 810.5525 265.9077 580.4625 5244.9702 1913.9271;
	1608.6977 939.8927 1741.8 548.6244 817.9832 1284.2499 837.7751 283.8508 569.8045 5224.3264 2013.4135;
	1682.7538 1024.9992 1797.8232 560.7845 853.7805 1350.3173 957.4302 301.6 616.8595 5331.2709 2156.9903;
	1768.056 1092.9643 1870.6 573.794 881.8257 1436.5797 1043.5902 317.8 645.8008 5437.2355 2284.7777;
	1772.3635 1107.9806 1892.9048 555.1554 893.9201 1413.2 881.5818 294.7465 603.1292 5212.9832 2177.9199;
	1689.7835 1077.6396 1849.3327 549.7238 845.2809 1384.4666 962.8086 292.4276 608.9439 5224.6548 2145.7325;
	1613.3657 980.758 1680.3172 517.2851 802.1411 1270.1 878.3609 260.2 587.2496 5019.5775 2028.1842;
	1522.082 881.3173 1552.074 498.1972 736.8773 1167.0701 804.7165 241.9997 545.7136 4824.6211 1888.6474;
	1480.1676 910.3748 1624.7868 540.3015 776.6245 1159.8354 726.8076 265.5 519.2804 4765.8394 1843.0713;
	1463.9569 878.1 1581.4964 530.0423 731.0 1106.7168 707.3457 244.9159 458.5896 4545.7105 1736.1648;
];