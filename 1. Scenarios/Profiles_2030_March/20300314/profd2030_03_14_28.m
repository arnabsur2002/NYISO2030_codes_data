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
	1539.3392 949.717 1653.4587 601.5714 824.4183 1167.5975 887.5023 279.583 536.0887 4505.9 1737.6558;
	1492.7 951.0497 1640.8421 592.1657 806.7006 1171.3971 900.7485 288.7 542.4078 4525.734 1744.356;
	1503.7 954.2667 1671.9155 600.9312 810.7153 1194.7595 898.9648 275.3 523.6 4528.5201 1739.5405;
	1591.8805 1029.7653 1775.7644 602.8236 861.6418 1244.0 953.2327 287.6673 570.609 4734.5722 1851.2907;
	1764.9387 1161.118 1997.5545 625.7447 962.2676 1396.1991 1055.0345 331.3553 633.3077 5185.9428 2057.488;
	1848.0577 1243.9356 2108.4896 630.0981 1017.6392 1493.979 1114.703 361.4 692.2 5798.2333 2255.5191;
	1868.4276 1237.0384 2135.3009 630.7923 1016.3 1460.1666 1120.7335 360.9866 682.4 6083.2106 2248.8481;
	1899.1272 1280.042 2144.4333 625.6087 1031.5258 1498.3117 1162.5363 358.7 709.2284 6308.2606 2301.3574;
	1892.5598 1285.268 2100.6309 610.0581 994.2252 1511.1949 1166.2532 357.7386 705.4367 6221.5795 2274.2041;
	1895.7979 1286.9652 2111.3506 616.3244 1005.9255 1522.4427 1197.3349 355.6394 700.4612 6259.1988 2371.1042;
	1880.0511 1232.2516 2053.8989 588.1411 991.7 1482.1887 1203.8947 356.5461 689.4 6195.9513 2301.6975;
	1837.1521 1228.4 1982.4551 580.299 959.1255 1468.806 1152.4183 315.3577 660.5612 6012.4592 2236.7837;
	1757.8533 1193.4719 1938.5 581.6199 926.4809 1419.6259 1102.6429 310.4 655.8 5457.8381 2123.761;
	1749.6945 1188.2513 1907.5929 569.9 915.6455 1452.7378 1105.3189 333.6 663.6849 5827.6697 2141.1288;
	1718.8207 1231.1784 1960.2809 584.6403 976.9262 1472.707 1084.8647 342.1 667.5857 6079.2419 2168.8871;
	1678.0716 1190.9474 1914.4905 593.6285 976.1549 1464.3762 1089.0234 342.0418 675.6894 6019.6565 2263.2593;
	1667.1 1186.7651 1913.5169 583.1 1002.0592 1474.9639 1143.3825 365.0382 677.7565 5950.3269 2280.5625;
	1741.3999 1231.0802 1947.6745 576.5986 993.3614 1477.1995 1176.6579 367.7602 714.9 5961.8852 2393.3846;
	1733.3222 1208.4991 1919.8804 588.4892 963.5 1475.2333 1156.8783 367.0 710.8144 5912.1311 2383.864;
	1737.0075 1181.0 1833.1 581.4 901.6733 1408.6989 1116.9556 348.4 687.7 5767.9437 2299.1647;
	1655.9369 1087.2 1717.5569 574.1549 823.3 1312.6143 1056.968 324.4297 643.527 5481.3589 2125.1851;
	1568.504 1006.4266 1615.6143 560.2612 779.8 1224.2821 982.7336 302.2903 578.8167 5091.4301 1927.9849;
	1472.6039 916.6515 1525.3904 529.9 777.1 1134.611 914.4465 274.9846 524.6789 4725.8575 1777.9;
	1472.3 888.4881 1488.8 525.3161 736.6108 1109.5377 882.1515 252.8 510.8994 4483.3257 1692.3588;
];