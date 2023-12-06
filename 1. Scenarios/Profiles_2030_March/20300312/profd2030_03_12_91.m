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
	1441.1361 950.889 1606.6922 529.8788 836.4072 1101.4939 886.4888 248.2572 502.1106 4488.1323 1700.641;
	1458.0609 952.8 1609.5851 518.8746 834.0022 1101.2023 890.6881 258.6 514.8121 4445.9954 1729.6891;
	1476.8864 975.3356 1636.039 530.4584 839.3 1119.8272 885.4234 248.3586 493.861 4448.3848 1730.3976;
	1544.3569 1046.5 1754.2065 522.8858 900.1369 1217.4468 943.0948 274.662 552.7 4717.3369 1856.5593;
	1714.5752 1176.5872 1983.7 568.7682 1011.8 1358.1153 1040.0875 310.8082 614.3775 5207.8633 2095.062;
	1786.7293 1246.6357 2073.4141 563.9612 1025.0598 1424.3913 1086.7742 327.2862 670.5971 5797.6126 2201.3204;
	1844.2722 1281.0403 2150.0869 562.6318 1084.2646 1468.9 1119.1376 339.6771 685.7653 6227.0202 2238.9275;
	1925.6344 1299.0701 2159.3266 564.4562 1089.9062 1446.8485 1102.7333 335.0302 677.9798 6215.1749 2163.7973;
	1908.5848 1280.0475 2151.9 547.1345 1086.5 1384.5145 1078.7736 314.1834 688.6548 6260.4358 2162.8467;
	1865.7304 1240.4592 2112.6915 543.9211 1035.3356 1306.4442 1039.9759 315.9 679.3 6102.7034 2225.4936;
	1880.2704 1245.7692 2119.8241 553.8753 1005.9 1301.6 1019.5796 316.7863 670.8154 6175.5873 2237.2442;
	1860.688 1212.7131 2108.4056 556.5972 1010.4851 1252.5902 990.2084 304.3107 670.1887 6187.0463 2143.0354;
	1810.4489 1178.5067 2047.481 556.1335 991.5869 1249.4598 980.0594 292.2046 628.2434 6030.8232 2063.8668;
	1837.4697 1204.1581 2028.7001 570.1806 1005.1453 1286.9911 998.4 302.9036 657.7845 6145.1954 2099.7;
	1862.2521 1237.4061 2041.6948 569.8758 1049.258 1360.4711 1043.31 325.1909 678.3197 6287.8432 2219.0;
	1849.7043 1247.4 2067.3936 587.8 1083.8871 1398.3468 1012.7253 320.4118 680.0978 6346.2892 2291.3432;
	1880.5094 1298.467 2086.1714 589.132 1080.4725 1462.0813 1041.4401 357.5743 687.0638 6283.7308 2403.0183;
	1946.1709 1328.7939 2176.1066 601.9335 1121.3857 1518.2019 1131.7306 381.409 725.1265 6360.1995 2521.0766;
	1939.0 1316.9767 2134.1977 603.6663 1120.5 1513.7 1126.7614 388.852 690.5117 6111.617 2471.0743;
	1868.9484 1228.188 2012.9671 565.5786 1054.2897 1357.8253 995.6816 357.2417 649.3704 5906.3492 2394.017;
	1783.5328 1143.7195 1908.6464 560.3798 997.8145 1307.8138 1008.4915 358.2725 620.9416 5662.4221 2222.3391;
	1681.1528 1054.9765 1759.6253 524.7949 894.1134 1205.8163 937.0887 328.3703 581.02 5286.5278 2040.6279;
	1552.5141 999.4317 1707.0425 554.9363 887.6654 1104.2987 894.131 288.2863 499.4615 4841.132 1836.8878;
	1495.4714 949.703 1685.9995 572.4 889.7457 1099.7254 878.5781 282.7 509.0688 4773.541 1773.5768;
];