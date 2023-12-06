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
	1507.8 928.8 1552.2406 533.4 752.4 1102.5026 833.9032 274.7542 511.4 4380.1478 1658.1368;
	1485.8727 924.0465 1516.5347 517.9872 750.6 1099.7526 802.5594 254.8849 493.317 4251.6135 1620.679;
	1486.0725 954.9254 1581.9 526.5474 782.076 1145.7712 820.0 259.8221 504.8 4305.7397 1646.4;
	1595.0459 1021.8354 1691.0955 557.0 849.3211 1205.4433 877.8 274.3 525.8 4564.291 1766.2824;
	1725.4501 1117.3 1873.1764 588.8624 942.1 1336.6 985.6 319.3 612.4 5119.0363 1999.5007;
	1864.6305 1212.2 2006.2493 610.3011 1001.5272 1390.696 1056.596 350.0635 698.0 5705.569 2180.8288;
	1886.0294 1250.8256 2007.5579 600.3614 1006.8763 1363.2746 1033.3382 343.7569 713.737 6039.307 2226.7229;
	1894.0362 1250.7102 1990.2 582.4487 1016.282 1360.2 1040.604 337.2211 717.9385 6311.7376 2214.7031;
	1879.019 1245.2935 1992.9737 591.4866 1043.5937 1309.9619 1026.3544 333.7605 735.4679 6328.2772 2163.6851;
	1844.2625 1227.4047 2018.1822 576.846 1064.1306 1320.1707 1020.3718 325.5117 728.1711 6390.4221 2199.5;
	1873.9312 1256.6102 2014.764 589.2 1073.4616 1315.5823 1017.0658 329.2778 712.5122 6444.0894 2282.8809;
	1886.1587 1263.726 2006.1879 571.0966 1050.543 1326.9909 1038.5011 324.7768 691.6842 6411.7 2200.8956;
	1810.3258 1231.5 1975.0673 589.6466 1049.6205 1349.5903 1036.7345 327.8907 674.4 6389.8867 2254.0285;
	1822.6 1228.2 1925.7202 586.7455 1023.9681 1355.9674 1068.2487 304.0651 667.9 6357.9959 2212.0846;
	1794.7415 1216.9199 1947.0159 581.0039 1010.748 1390.9911 1077.5369 298.9 666.7469 6374.7594 2288.6169;
	1819.4818 1223.5 1931.9725 578.6 991.5 1445.2094 1127.0657 320.9858 685.6188 6470.5396 2362.1687;
	1802.5193 1246.3336 2003.2021 593.4 1072.8012 1510.9183 1149.9458 349.7279 706.1288 6220.9852 2495.3821;
	1843.0322 1306.9022 2093.9104 603.5827 1122.6543 1552.1146 1237.9318 366.0145 759.9 6275.6381 2532.1574;
	1850.588 1305.3517 2103.4422 584.2864 1070.1005 1502.4071 1200.8004 355.8862 734.81 6104.0448 2484.6795;
	1814.0184 1240.6784 2016.8677 571.7257 1019.9709 1418.0 1141.4607 330.0726 723.4183 5946.9126 2394.8882;
	1731.7304 1131.3334 1842.9762 549.802 915.4511 1320.0913 1050.3269 297.4947 655.2177 5483.2565 2174.4;
	1608.9238 1027.4495 1729.3 548.7148 825.3 1228.3 963.0218 262.2515 588.3 4802.1781 1922.7047;
	1573.3144 995.8 1697.0 582.0568 774.0193 1164.7908 915.9 250.6805 568.0289 4738.3 1847.6546;
	1555.204 981.3682 1709.9138 579.5 791.8803 1165.5718 915.4 261.145 567.4182 4629.6439 1820.403;
];
