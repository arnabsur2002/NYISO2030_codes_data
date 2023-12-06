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
	1441.5098 971.7314 1692.834 568.7 819.3342 1090.2 868.8956 280.2919 510.4087 4444.7524 1708.0;
	1457.4484 977.3316 1695.1545 568.0 819.0453 1121.2433 859.9872 276.7 499.5 4396.0072 1700.7;
	1492.2986 991.7399 1717.1774 583.5091 843.3 1162.567 872.6369 281.1 506.5353 4410.0064 1710.1617;
	1589.1141 1064.7 1844.1893 610.9649 900.9518 1239.3129 911.4 300.6329 544.2 4644.2411 1838.5628;
	1713.7 1182.8166 2004.3407 645.2188 1015.9995 1379.4734 1001.8994 339.2 619.4316 5178.7003 2054.7429;
	1827.351 1236.5919 2103.1334 634.9 1038.5928 1447.2576 1070.9109 372.6 695.1093 5734.3858 2189.8927;
	1817.1873 1248.0 2132.2 641.567 1041.0421 1454.096 1092.9209 379.2913 711.2899 6039.4095 2189.9546;
	1823.2015 1238.9 2139.9623 647.6718 1067.2049 1428.1 1111.2 386.5018 730.6165 6342.4687 2162.3187;
	1778.3531 1194.6912 2094.9983 629.9937 1034.2408 1385.4468 1093.3777 372.9277 710.8 6437.1062 2103.6622;
	1821.9841 1200.3269 2093.7826 601.9 1033.5949 1402.8512 1112.8163 393.8799 712.7307 6515.0135 2081.356;
	1781.4914 1191.0 2050.729 617.9398 1015.0855 1316.0111 1025.9823 364.5 698.4309 6420.807 1963.3976;
	1791.8139 1197.864 2050.6602 609.4035 977.3051 1338.5073 1009.1335 356.3 692.7141 6394.3841 1952.9598;
	1721.6138 1211.8667 2071.713 621.7428 985.7582 1349.6524 1000.2321 356.5883 672.6 6266.838 1925.8445;
	1653.634 1179.0998 2021.7828 620.7 973.3905 1318.22 1006.4918 346.6622 662.9 6227.0072 1963.8482;
	1635.6435 1210.8783 2042.1219 614.6202 988.7329 1377.9495 1051.3148 365.5233 677.6781 6276.7512 2117.4838;
	1645.0142 1231.663 2083.2651 616.6592 1022.5886 1454.0235 1071.651 380.2 677.8 6276.7197 2201.527;
	1688.1817 1247.5503 2109.3922 647.7269 1033.7314 1474.213 1111.2 374.6737 684.6 6122.8741 2352.1214;
	1816.2453 1300.0322 2130.4771 650.1357 1080.949 1541.1526 1172.7054 411.392 747.78 6197.0369 2489.977;
	1870.1192 1293.0919 2171.3557 649.2913 1088.7226 1511.5141 1175.2637 410.5 732.3157 6014.7839 2493.5126;
	1803.8 1210.9 2048.1689 622.3965 1008.5698 1415.5222 1126.2585 386.4332 701.1792 5741.5527 2383.5776;
	1708.697 1137.9093 1915.3 594.6619 923.6933 1329.2336 1039.5329 353.2678 656.6659 5426.7603 2192.9829;
	1602.0301 1060.7236 1843.5 591.1 856.7016 1267.7748 991.2529 313.8682 604.5 5136.9178 2040.5284;
	1510.3387 989.9416 1733.9024 606.3734 854.1432 1170.9719 907.2963 287.9465 532.3456 4846.4734 1865.2785;
	1467.402 973.3732 1710.7 592.5673 798.4838 1112.1541 857.403 274.8798 524.8036 4549.167 1778.6278;
];