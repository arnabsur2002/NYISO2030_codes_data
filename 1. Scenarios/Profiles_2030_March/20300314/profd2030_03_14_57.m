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
	1466.5923 955.1615 1736.9513 561.9 805.5 1130.9313 849.4372 261.4179 465.0206 4491.3201 1690.1427;
	1453.0142 943.2456 1681.3818 561.0837 781.9411 1134.0476 847.3361 265.8226 469.0898 4473.2127 1703.4907;
	1471.6228 966.2925 1697.4333 562.3144 785.0258 1136.6252 860.1 275.6595 476.3 4511.4209 1748.1442;
	1532.8714 1007.5 1792.925 574.1 826.0466 1208.1417 907.2223 282.8409 504.4276 4705.1826 1845.4;
	1682.3214 1150.5169 1961.1046 590.3672 962.1203 1367.3369 1014.8574 307.2496 583.7716 5190.9557 2065.8039;
	1809.9222 1227.8053 2042.5318 604.8263 994.4581 1403.4555 1072.3 326.6 649.1131 5778.6311 2206.5122;
	1820.1782 1220.5158 2027.9577 602.8 1004.9732 1386.1315 1064.0224 311.3849 664.5571 6058.3671 2218.1396;
	1830.5614 1218.9608 2023.2287 590.9523 965.6518 1378.4361 1100.0 331.9 682.4675 6326.9556 2264.0275;
	1804.1413 1210.2971 2002.8362 559.0 942.2083 1321.577 1082.5082 320.3 668.1399 6444.6664 2269.8561;
	1798.5516 1212.4784 1977.6 563.4027 903.6524 1298.9717 1110.1848 324.5009 673.1541 6622.8577 2234.8712;
	1788.4743 1218.3176 1987.1228 550.8377 885.9881 1319.5328 1144.4914 337.4 671.603 6808.9276 2326.7265;
	1746.5845 1190.2043 1924.7 539.5505 880.6228 1304.6855 1143.0277 316.7 672.0 6819.3972 2284.2379;
	1757.3166 1191.1 1904.1424 542.0327 882.1 1294.1691 1102.8086 307.1204 666.0 6730.2837 2294.247;
	1736.604 1196.5351 1882.5048 552.0 858.2608 1336.7133 1105.2263 303.8987 667.0765 7010.0083 2287.4074;
	1751.8229 1194.9781 1867.8387 547.6792 873.2264 1345.346 1171.1807 338.3232 688.1237 6934.4123 2436.4756;
	1798.9131 1237.0881 1908.5974 539.7162 918.5206 1387.2939 1175.8309 350.1518 712.3517 7028.167 2544.5283;
	1785.7735 1244.6677 1986.9723 530.2239 943.0056 1432.4414 1149.9477 355.6 725.9831 6764.841 2494.7604;
	1843.1709 1291.1432 1983.4714 531.193 978.5296 1506.4 1176.8663 376.5593 723.7811 6357.6076 2475.4994;
	1853.8215 1304.5968 1995.1452 544.6537 972.4398 1491.6267 1165.8135 371.2 717.9455 6212.079 2532.2674;
	1796.5798 1231.1721 1874.3327 541.2899 916.7399 1417.8879 1126.154 356.6455 683.8 5926.8281 2321.9;
	1685.6834 1132.3897 1786.7681 522.9 877.6026 1304.6626 1078.7226 336.465 639.375 5801.5202 2157.3191;
	1579.8008 1060.1893 1687.5 529.1488 825.6494 1234.8 1009.1799 368.9608 582.5047 5596.1572 2028.2141;
	1481.4818 977.1035 1602.9 502.8698 770.4 1174.7951 977.1228 273.718 534.8 5231.3077 1843.0909;
	1415.1426 917.9985 1568.5448 437.9814 718.2346 1117.8953 889.5936 267.8802 499.1371 4788.0766 1756.0382;
];
