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
	1441.0826 863.0048 1451.1696 481.4494 725.3979 1079.5533 784.4287 233.497 493.7553 4292.1743 1689.9612;
	1462.2833 864.4548 1467.8647 440.734 730.269 1055.7798 765.9472 237.6 474.1 4257.0654 1662.3;
	1449.0053 870.9454 1478.1087 478.983 732.8351 1058.289 758.9159 236.0813 478.8 4215.8508 1682.5;
	1534.6434 920.4332 1538.1497 483.52 765.6334 1112.2519 806.371 260.7437 512.4975 4453.3126 1757.7909;
	1676.7396 1009.8228 1747.3323 513.5055 865.8975 1274.8857 932.0758 310.5205 605.182 5012.1615 2028.2358;
	1818.7147 1106.8553 1856.5839 553.1228 977.5131 1406.3858 985.8213 336.8413 675.3078 5478.7662 2193.4438;
	1868.9884 1133.9447 1875.7381 538.7 983.3 1398.8682 1000.571 345.4242 703.6386 5820.4108 2245.3739;
	1897.3824 1153.7657 1848.0006 537.3756 1008.8396 1403.7596 988.9139 342.3 717.7439 6040.8529 2304.181;
	1894.903 1170.7405 1868.0873 553.5476 1006.8159 1410.6633 989.7383 356.4395 718.8 6147.1753 2397.8305;
	1918.7747 1203.2771 1933.2153 546.2419 994.1635 1459.1903 1027.4334 375.2791 726.1004 6173.5134 2468.2718;
	1874.0547 1168.1289 1870.9245 530.8974 962.2 1425.3565 1017.8522 380.2989 707.7 6155.3149 2402.3309;
	1823.3333 1152.7697 1838.1569 526.0301 961.3423 1427.9646 1043.9546 391.45 719.2924 6206.1424 2446.9863;
	1842.2429 1155.2979 1806.8489 522.159 973.5562 1433.8504 1071.9408 377.4129 701.9594 6204.4798 2426.5035;
	1786.7622 1150.5189 1805.3515 519.3 972.4383 1424.8161 1039.4053 357.3 687.2 6122.5946 2407.4378;
	1824.7085 1143.568 1815.3677 525.7825 950.0679 1451.9355 1059.7794 337.4194 698.5162 6185.8827 2331.2252;
	1801.6686 1140.1244 1808.6933 541.2252 917.7369 1460.9483 1044.4808 344.2013 681.28 6069.0715 2358.5351;
	1829.4738 1154.041 1840.3 565.1 976.6129 1428.9921 1050.4665 358.556 685.9206 5879.4398 2274.8729;
	1881.4043 1183.5811 1862.0929 571.2 959.4811 1483.7071 1105.586 352.954 710.5 5842.9484 2347.595;
	1948.0565 1217.9771 1905.6924 574.9 999.6853 1474.8537 1124.0973 347.0 707.2289 5807.051 2359.7243;
	1834.2979 1128.2114 1824.7 562.0 964.2984 1407.4651 1040.8 345.0297 656.1 5573.7638 2167.8806;
	1783.8704 1080.7507 1732.8715 546.3423 908.1592 1317.708 1000.4097 331.3291 622.9591 5406.7722 2044.4;
	1730.8311 990.6 1596.7858 541.8133 806.858 1191.5095 915.8 293.181 551.2576 5038.143 1934.284;
	1622.4855 949.4754 1544.2878 551.6 739.5475 1155.9839 902.0064 269.4965 503.5083 4823.9285 1867.08;
	1568.5505 897.2757 1482.3292 531.2 733.7824 1094.4 852.352 261.9216 478.5492 4606.456 1722.4054;
];
