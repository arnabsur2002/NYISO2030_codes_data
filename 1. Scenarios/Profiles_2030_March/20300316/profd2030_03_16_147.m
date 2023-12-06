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
	1534.0348 899.2871 1536.0671 534.7006 721.0 1051.3571 845.9629 267.342 494.2855 4505.5588 1689.1453;
	1521.017 904.5107 1577.1851 518.791 723.1056 1060.3359 847.0 274.7737 490.8041 4465.1546 1673.1019;
	1533.6631 911.8214 1566.6011 507.6041 716.3739 1060.4697 848.8854 254.7353 493.0705 4392.0548 1699.3843;
	1544.9922 936.2623 1612.1403 531.0 732.1384 1099.3932 854.0 253.6 515.2696 4453.8231 1742.8887;
	1579.4489 967.0994 1682.9 521.4 776.2788 1145.9 887.603 279.4 528.1 4575.7409 1851.8755;
	1619.3314 1025.5 1748.3889 551.9782 827.833 1180.18 921.8173 285.6 554.5129 4752.406 1914.7;
	1673.0347 1070.6946 1838.6073 565.1465 876.5825 1237.4542 978.2 308.5837 574.1685 4938.5515 1998.6;
	1683.6698 1108.0987 1859.4744 561.2266 920.7215 1247.5319 988.715 325.6729 594.3588 5159.6944 2046.9;
	1715.4744 1101.1 1868.5145 555.9953 896.8116 1242.9318 1003.2493 325.624 614.2 5286.4414 2092.9;
	1714.0721 1114.0125 1821.7 559.1 874.445 1241.0101 986.5076 306.1 611.7573 5222.0617 2171.7102;
	1764.7931 1115.3917 1838.3905 557.3011 855.2268 1230.4538 986.0 306.0 611.3 5246.6113 2068.4244;
	1723.2385 1100.2809 1796.2423 543.6845 849.1526 1213.0667 1009.1076 304.8195 605.5598 5321.6965 2090.6406;
	1697.2631 1073.9 1727.0331 536.7947 831.4898 1191.8656 999.6741 284.9574 596.6 5339.3532 2088.321;
	1703.9783 1067.3773 1763.4681 507.3841 851.4515 1190.5542 995.4 299.3 601.4448 5409.8 2173.6434;
	1687.8862 1078.1724 1724.3194 521.1212 825.1688 1206.6352 1016.8256 298.6868 593.1459 5460.6702 2172.7187;
	1662.3962 1110.6549 1713.9931 507.6038 814.9464 1290.689 1056.3313 302.9834 609.6687 5413.2897 2140.307;
	1727.0046 1107.4561 1749.8316 555.8292 851.5224 1291.0893 1093.7 327.1844 626.9952 5368.3493 2205.5;
	1763.1065 1150.8061 1846.323 591.6271 899.3973 1383.7906 1119.8126 344.8 651.2646 5448.9299 2272.2941;
	1743.0975 1146.8722 1839.8883 574.1 885.2166 1374.3941 1129.1 346.4382 657.4 5418.375 2313.948;
	1716.7075 1095.5977 1772.5469 556.5419 854.8454 1323.5279 1078.9376 336.3374 623.6051 5290.645 2202.8174;
	1726.5169 1060.3714 1714.8471 547.2489 796.7329 1241.6006 1030.021 320.898 610.0772 5111.5935 2120.233;
	1643.3887 977.1 1582.297 526.0594 737.0262 1145.996 925.4541 287.5718 567.0 4793.4642 1963.5949;
	1586.0195 936.6634 1590.9353 518.4473 756.373 1090.9263 861.1418 270.1717 540.2378 4828.6116 1849.4216;
	1553.931 918.2775 1565.5437 549.9434 743.3526 1009.4682 839.8715 263.5649 521.4 4653.8711 1771.2995;
];
