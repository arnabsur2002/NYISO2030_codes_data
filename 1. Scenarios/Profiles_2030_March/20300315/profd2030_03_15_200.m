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
	1441.058 888.9628 1516.38 534.2513 747.3433 1068.57 832.1394 260.9462 470.5597 4533.6434 1629.202;
	1432.15 895.8 1507.014 529.7 748.7914 1065.9 831.0099 282.3079 477.5 4438.1006 1638.7;
	1443.7626 891.6665 1510.3034 536.2 740.2374 1049.7703 824.3653 264.9422 487.7 4503.0751 1674.6584;
	1560.6336 953.7218 1603.2506 545.1 772.5263 1109.7462 866.1 277.0885 525.4 4625.8123 1774.8478;
	1695.7602 1077.226 1821.5989 576.9 921.8733 1284.7018 993.1322 332.7194 606.6578 5209.1678 2000.1;
	1805.3344 1160.9 1942.1744 571.9 1005.7653 1384.5474 1084.2313 358.3504 684.3762 5792.1633 2223.1432;
	1828.141 1197.0594 2006.0557 561.8929 1044.8464 1413.5166 1150.6482 353.121 700.4242 6122.7643 2315.5128;
	1900.1151 1209.4985 2050.5529 560.8416 1058.8144 1396.9053 1187.1335 370.4 710.1335 6436.7103 2364.0665;
	1946.3983 1265.658 2097.7126 583.0547 1078.0568 1417.4357 1230.549 427.5052 735.7154 6649.111 2455.3134;
	1954.4351 1232.7611 2076.7563 568.5 1059.6315 1420.7 1199.0719 396.455 747.7276 6605.2919 2457.7339;
	1930.0051 1224.5495 2062.013 557.2764 1031.1907 1438.1422 1235.0506 375.5626 750.2276 6581.1082 2491.9491;
	1927.2547 1204.8554 2053.7907 549.6341 995.9524 1386.6196 1180.3481 356.502 724.3233 6485.0264 2398.5;
	1937.072 1220.9294 2118.3066 543.7419 981.7715 1398.1 1247.073 374.7944 745.2877 6535.3247 2449.6617;
	1854.7047 1179.5343 2105.1338 535.2328 961.3 1396.9782 1236.8884 367.1144 724.2585 6669.7456 2560.0808;
	1861.6794 1148.1575 2006.5311 532.3862 900.4 1351.2865 1196.981 336.0585 685.02 6398.5331 2353.923;
	1820.8855 1130.0538 1998.3712 542.3657 915.6358 1334.5631 1146.5398 332.8458 672.7176 6358.6085 2430.0772;
	1793.3363 1115.5959 1909.3317 549.2295 930.2216 1334.6041 1124.681 341.0667 667.7841 6043.5411 2402.1752;
	1842.8002 1151.8427 1973.344 576.3043 973.1703 1372.5184 1151.0226 367.8986 690.3 5932.9211 2567.8389;
	1881.8807 1177.6028 1944.7501 582.1 967.5 1396.8844 1180.3464 375.2619 693.4 6027.1361 2624.535;
	1828.495 1123.3957 1865.9171 578.5355 904.1616 1355.232 1143.1981 366.8509 670.8108 5939.0911 2588.0025;
	1729.3755 1045.8824 1763.8579 564.6 868.6 1281.3025 1072.814 345.2366 641.6 5761.0288 2402.9154;
	1635.5 964.6 1667.6836 543.9 809.538 1179.31 985.9831 328.7496 570.0584 5243.9789 2150.3328;
	1548.5685 918.521 1593.2126 551.3 740.029 1145.2339 924.6667 330.5515 541.8951 4804.4075 1864.489;
	1582.6885 896.5 1557.404 548.408 746.7158 1118.9 904.4728 291.0881 513.4628 4648.0285 1809.9;
];
