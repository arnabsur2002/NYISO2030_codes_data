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
	1506.8413 895.7391 1651.0101 597.8472 855.5774 1240.6826 921.5009 283.4 525.8874 4552.7491 1711.5258;
	1512.4557 918.8026 1666.2669 581.5944 873.4275 1222.1717 924.2 279.5 527.1394 4508.8342 1735.7927;
	1533.6777 938.4543 1695.1083 592.9348 915.1316 1280.5658 955.142 296.0362 538.7 4582.5957 1800.4701;
	1588.3683 987.2946 1777.8063 621.1337 956.6593 1336.9654 988.0829 308.9193 560.4895 4789.8904 1871.573;
	1783.7516 1138.4643 1986.5774 651.6141 1088.4045 1505.226 1100.0206 350.2836 650.7702 5382.601 2144.6;
	1942.4562 1203.0795 2050.9647 663.5528 1119.26 1555.1728 1154.3787 387.0 709.0 5898.9671 2296.9873;
	1944.2566 1206.5746 2044.2675 651.47 1116.7581 1545.5571 1153.08 374.2951 701.5 6065.2786 2224.9;
	1940.4164 1224.5 2038.2 635.4303 1127.0617 1567.2462 1186.4 374.1465 714.1976 6420.3495 2292.9663;
	1944.5007 1223.0282 2002.4492 612.8 1122.5225 1567.739 1190.7038 378.0568 711.5109 6537.7204 2259.8032;
	1930.188 1196.0167 2026.7313 612.2003 1098.7897 1605.8395 1170.2323 376.466 693.9543 6578.0689 2201.1888;
	1898.0092 1165.9189 1994.0284 593.9269 1048.6376 1551.6118 1103.1805 354.0 667.2 6511.6303 2093.3539;
	1887.5089 1177.685 1969.5993 583.0 1031.0141 1521.9746 1086.4364 366.5629 637.4759 6475.179 2074.4926;
	1874.4653 1171.4311 1958.2512 602.8138 1018.9409 1489.4628 1029.726 356.337 640.7645 6357.8569 2015.2389;
	1829.6439 1177.8872 1942.6138 604.664 979.3331 1450.9593 1042.9359 354.1222 652.5 6384.2871 2077.9;
	1746.7811 1152.5 1950.961 619.6401 972.6576 1450.8051 1067.9329 349.6682 662.535 6347.3777 2170.6252;
	1770.5204 1190.4677 2045.3426 621.5653 1012.2945 1488.9771 1102.824 387.7841 666.6737 6327.9318 2284.9248;
	1747.8202 1198.7134 2050.9611 634.0677 1000.2674 1518.0616 1144.9 411.9682 671.1398 6139.9834 2392.8;
	1798.9834 1252.1749 2138.3119 643.5557 1042.31 1577.1475 1224.7 430.7915 721.783 6333.5162 2550.479;
	1802.1024 1240.9076 2132.0 645.1 1088.4 1582.165 1244.7 437.427 722.5304 6294.4 2519.7457;
	1817.5372 1208.2072 2074.0172 641.1279 1032.4218 1526.1295 1244.7 439.8452 704.8344 6093.7326 2446.1;
	1742.8982 1109.7755 1935.9 623.7 927.9865 1430.0754 1114.4 381.2214 630.4 5796.7 2237.8349;
	1679.4341 1048.5224 1807.6957 598.5227 896.3281 1391.3565 1065.3474 363.9993 602.0915 5512.1049 2076.876;
	1627.3886 1018.0103 1821.054 587.675 929.9322 1399.4803 1080.7725 325.7798 579.7915 5146.7631 2131.3093;
	1585.5483 993.508 1802.9036 601.7121 882.0926 1323.1231 986.4333 297.3439 547.9666 4941.2735 1930.6318;
];
