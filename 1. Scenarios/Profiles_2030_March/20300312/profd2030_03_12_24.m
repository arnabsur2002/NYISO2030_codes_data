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
	1494.2044 909.6301 1616.4279 554.8 876.8764 1173.8959 895.4296 267.3364 510.7005 4481.8543 1721.0758;
	1521.2869 911.093 1634.8737 560.2273 901.5335 1177.8736 891.7595 259.5245 505.0 4382.7513 1684.5414;
	1525.2155 946.8 1678.0576 570.7086 888.8 1211.9135 902.5314 263.6458 508.9163 4426.423 1716.434;
	1639.8484 1022.2 1781.9286 590.7904 926.7985 1273.6322 951.0 286.5528 552.0274 4663.8291 1830.0061;
	1731.5511 1161.6666 2002.3168 623.4 1057.049 1451.0407 1052.8798 328.6 628.9824 5148.9196 2060.4077;
	1879.2 1248.3446 2134.615 654.0766 1092.9205 1542.9895 1142.4658 350.0 708.4478 5695.1689 2227.2181;
	1922.4011 1240.3988 2107.4677 633.1035 1103.1669 1513.1738 1119.1 336.2963 703.0826 5842.1903 2137.0754;
	1927.3774 1214.2872 2082.24 637.3668 1078.0828 1516.8465 1089.3515 331.4674 682.7804 6106.4355 2003.6588;
	1916.2643 1205.4685 2041.2537 626.0566 1059.8902 1456.8856 1033.5169 333.4798 673.628 6282.9054 2016.8281;
	1915.0324 1201.1125 2049.9936 613.9189 1082.5226 1441.2206 1008.1919 347.3079 663.3208 6187.3455 1890.8688;
	1872.2333 1199.4045 2010.6861 597.8887 1038.4 1360.4897 985.6441 317.767 630.4515 6050.3236 1439.3215;
	1841.0459 1205.6917 2032.9 600.8597 1061.5746 1399.5095 997.648 327.87 650.4474 6058.618 1603.2356;
	1811.9401 1175.8 1970.0051 597.3 989.7427 1382.1353 989.8926 330.0337 653.3061 6025.5321 1661.6842;
	1816.2421 1184.1 1997.0164 594.0497 1002.9 1345.1 1021.5975 314.9531 666.0718 6125.5601 1906.3276;
	1770.9997 1156.3854 1969.401 594.0694 997.8413 1356.9435 1028.4198 293.8865 677.8314 5999.0982 1996.1845;
	1731.2872 1163.1999 1950.2377 597.6769 996.8084 1362.2578 1037.3755 303.8859 650.9558 6088.4458 2159.604;
	1613.1581 1116.0604 1978.3323 602.4 1034.5036 1425.5656 1100.3903 322.6867 686.6948 5941.2095 2352.8386;
	1783.8361 1226.8223 2109.369 614.1586 1107.5552 1509.0172 1158.6271 317.5648 719.7 5941.1129 2488.2187;
	1805.8984 1229.669 2067.682 625.1729 1069.7439 1488.7 1163.3 264.0992 725.6326 5857.5116 2459.8767;
	1785.747 1180.2455 2016.3223 604.0034 1033.5427 1452.7456 1139.4952 268.4816 708.715 5822.8046 2389.4325;
	1685.3491 1113.0374 1901.8198 590.4096 957.4779 1339.3268 1071.0908 288.5374 654.7286 5589.9451 2223.1074;
	1577.5724 1045.8847 1794.0983 581.0278 899.6466 1264.1264 994.3919 272.1456 593.6364 5258.4668 2062.0868;
	1510.5481 985.3754 1745.031 580.686 928.993 1220.0579 952.6 277.9 562.3112 5063.3964 1980.6001;
	1509.3828 961.481 1700.9526 593.2773 934.6897 1206.4676 917.3709 248.4404 538.9305 4731.0321 1834.8555;
];
