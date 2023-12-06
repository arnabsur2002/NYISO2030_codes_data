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
	1517.008 978.0248 1627.8437 572.7689 878.3015 1154.5623 892.4588 216.2687 495.2223 4375.9091 1775.5917;
	1507.9219 974.8 1634.55 571.3924 876.852 1178.5493 900.5663 225.7491 495.6767 4416.0279 1770.3767;
	1524.5753 1006.1913 1655.7768 578.7638 899.5 1189.9649 914.8 238.8917 492.6016 4454.4708 1788.8196;
	1592.7453 1068.1 1764.4154 571.4723 946.0473 1261.3231 978.9983 271.6 557.9196 4715.4877 1927.4491;
	1712.2014 1166.6505 1911.2654 577.6942 1053.1333 1393.5886 1072.6519 299.3891 631.4724 5311.0238 2146.7777;
	1808.4246 1243.3 2044.9096 611.4066 1093.2 1499.7 1158.4497 337.1204 716.3 5931.2238 2308.8719;
	1853.6073 1249.1 2012.84 589.5 1061.5576 1489.1982 1168.2833 351.6094 710.337 6246.0486 2309.1736;
	1872.8 1258.7503 2039.4566 585.0191 1054.7121 1488.4 1199.9758 366.4671 724.4 6485.4032 2344.5441;
	1861.9351 1228.4124 1996.5955 595.5 1062.4894 1465.1 1202.1655 365.2 719.0 6581.229 2410.7289;
	1865.0931 1240.5683 2018.7 592.8921 1052.8456 1443.3635 1237.5665 392.4237 726.7691 6613.7201 2502.6078;
	1851.4 1217.1854 1974.9747 584.4186 1004.1763 1479.834 1224.0981 373.8845 753.0658 6806.2227 2607.6038;
	1835.6 1234.1816 1982.9124 568.4 1021.8419 1526.684 1286.811 376.3337 752.5503 6942.8223 2672.9803;
	1802.1831 1189.7805 1911.8817 561.6624 972.8866 1472.5621 1228.096 361.4072 726.5064 6767.5063 2615.3036;
	1819.8403 1190.2923 1885.8248 572.9 990.1382 1437.8499 1314.8968 375.3174 782.4309 6962.0587 2670.8737;
	1813.0627 1199.7078 1895.5616 581.7732 983.701 1491.3547 1290.8282 383.6468 764.4197 6871.55 2724.107;
	1850.0752 1194.4 1888.8907 592.317 965.7556 1529.6847 1310.6579 395.2 764.795 6919.3286 2841.6396;
	1829.657 1175.8699 1918.123 613.444 992.613 1531.8933 1300.3926 377.6 820.6753 6812.4245 2914.1777;
	1829.861 1200.6808 1978.6441 620.5 1060.1 1591.5965 1324.1265 391.1231 792.5804 6608.728 2995.3226;
	1880.2179 1217.9379 1979.2698 611.4231 1054.8082 1527.9223 1263.936 386.8246 782.8681 6286.4054 2812.8815;
	1804.5204 1136.6441 1887.6467 606.4 1006.1737 1440.3304 1230.8 369.8 736.5646 6028.9348 2615.6129;
	1722.7648 1039.9074 1737.0556 579.0 932.3265 1322.964 1111.8336 341.9855 690.023 5686.5238 2401.94;
	1645.0799 986.8 1703.5438 565.9784 885.2058 1239.4881 1037.4157 298.9645 620.8971 5263.2435 2210.154;
	1585.3522 944.7981 1564.1033 568.7145 816.3085 1233.9464 973.6 266.7 571.445 4817.7361 2071.6318;
	1580.2422 920.196 1505.7756 574.3 801.9 1160.7203 890.2514 237.2142 527.6488 4483.0382 1801.4925;
];