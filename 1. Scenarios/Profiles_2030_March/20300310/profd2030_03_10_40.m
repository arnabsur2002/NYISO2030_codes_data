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
	1452.5079 917.7352 1548.596 570.3511 776.6247 1181.156 889.3288 258.0298 495.6966 4790.6637 1828.3734;
	1439.4113 902.7 1520.4672 555.766 767.213 1165.2691 834.8554 247.3402 427.0367 4545.6975 1722.8206;
	1447.0243 908.142 1544.3386 572.0835 759.6287 1141.8889 855.9555 248.4459 429.4529 4599.1816 1721.0087;
	1448.5965 909.0834 1567.0622 574.7406 771.8252 1162.9576 868.8852 261.9933 442.8073 4624.7318 1728.0736;
	1527.8017 958.9962 1620.8615 595.1638 764.7735 1182.9236 888.2684 277.1856 473.3949 4792.0242 1777.9858;
	1582.9321 1010.7163 1735.3 619.0469 839.3022 1301.9936 959.0 302.4798 518.6715 4934.2224 1873.6664;
	1641.9 1047.7868 1809.4396 639.0754 875.0676 1376.0518 1030.5524 336.7901 571.9 5180.5447 2016.5;
	1679.9991 1064.832 1825.8166 640.5 942.1518 1433.3789 1065.044 346.1058 613.9757 5376.6044 2105.8665;
	1725.5705 1092.4 1879.3499 623.5551 961.6 1419.6035 1108.9064 358.2 626.6165 5476.381 2140.1407;
	1715.2195 1105.7485 1863.8 627.4969 962.5032 1454.6241 1142.6314 344.4704 619.5853 5545.1732 2129.5845;
	1721.5 1125.2 1874.0718 616.2244 941.0087 1445.5369 1125.4 350.0 624.9 5549.0884 2206.9554;
	1786.2531 1162.6559 1866.8885 607.708 923.9 1428.9797 1130.0995 347.5288 617.1507 5508.8901 2205.4264;
	1713.1232 1151.6574 1845.4999 591.1 934.0279 1435.2694 1091.8609 335.9974 594.1013 5397.7205 2153.4429;
	1742.6027 1183.4335 1807.4486 584.611 916.4 1410.676 1026.8187 320.8 585.4 5448.6233 2107.8111;
	1746.1008 1150.7012 1826.4412 594.6035 908.5395 1403.5698 1020.4728 311.4702 509.6263 5360.5284 2116.4703;
	1757.4543 1142.7842 1864.934 617.6197 923.6645 1423.7961 1052.984 310.3102 562.4652 5382.7937 2149.2707;
	1715.3856 1159.992 1831.8221 606.1001 941.835 1448.3853 1073.1823 310.2612 624.6372 5404.9851 2203.8487;
	1778.5461 1248.9071 1958.2025 634.897 1001.612 1511.2799 1126.0285 326.1896 662.225 5552.0169 2358.9197;
	1786.5 1238.0043 1934.5257 618.0 998.4861 1473.0079 1083.077 319.9149 649.8527 5498.5334 2360.3702;
	1729.9513 1180.3218 1821.7072 610.3595 926.3127 1384.6373 990.0849 291.7363 531.2263 5231.8312 2203.6073;
	1695.5279 1124.8296 1719.7522 593.022 855.4972 1310.7605 931.0247 263.0143 517.3416 5048.9755 2061.409;
	1627.3165 1047.5413 1588.9069 557.2254 750.8607 1215.1371 861.1929 248.4705 484.8728 4958.3032 1915.4571;
	1536.5 962.7435 1529.9582 572.4598 738.2598 1062.8992 762.6631 192.2912 357.543 4697.8846 1681.9959;
	1494.2762 925.526 1483.1822 579.0 687.6842 1067.0171 820.0109 183.8908 347.2832 4503.3379 1647.7138;
];
