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
	1530.4933 920.7948 1559.891 538.2 741.6904 1146.5585 890.96 232.9062 571.7221 4403.378 1625.7;
	1480.4421 914.4272 1549.9697 523.0 738.1504 1141.5911 893.1226 226.3 547.8028 4365.4916 1619.3701;
	1544.2975 954.3651 1600.9132 532.6452 756.81 1178.0936 909.9374 235.2787 564.9794 4444.3109 1655.8783;
	1609.6936 1003.4511 1708.7324 557.0621 839.4 1247.688 941.9096 255.8506 577.1473 4673.5761 1747.433;
	1752.888 1139.041 1905.2071 573.1856 959.5667 1371.9337 1027.8039 306.7451 653.806 5169.2137 1974.8853;
	1854.0681 1222.7107 2017.7186 605.1 1009.6887 1459.047 1088.2135 325.9405 715.7528 5712.8893 2165.2289;
	1868.4928 1255.3835 2098.028 616.2777 1068.7 1499.2864 1121.3725 353.9654 717.421 6191.6389 2203.8428;
	1857.3324 1255.1403 2110.259 609.8682 1093.4 1515.5825 1175.2857 349.5384 733.2025 6473.5844 2235.2;
	1881.1302 1246.7676 2116.9 598.8 1099.8656 1518.3359 1214.6396 342.5602 759.3128 6685.4519 2233.7027;
	1899.7247 1280.3205 2177.3103 600.4509 1130.2078 1522.6863 1192.9305 336.9315 758.4613 6706.9131 2212.4994;
	1876.4119 1271.1886 2123.6 587.6043 1085.0459 1489.2273 1143.5602 323.7135 720.8081 6640.1088 2150.3048;
	1896.9413 1266.2 2088.9663 584.2 1072.5544 1483.9395 1102.7293 317.5096 720.5714 6591.2871 2141.3988;
	1858.0925 1219.9539 2021.7125 573.553 1053.3822 1500.7123 1118.0 330.8463 697.599 6567.4402 2135.3301;
	1875.6979 1224.5721 2018.1021 568.9517 1041.6908 1438.9149 1072.5339 337.2497 670.9297 6405.2475 2049.3931;
	1887.3846 1218.5329 2002.4864 585.3964 1044.9818 1495.0297 1098.1644 364.2759 694.8736 6644.2062 2138.5461;
	1858.6335 1232.2847 1992.9509 604.3427 1043.8873 1482.2777 1098.3 351.7476 704.7309 6557.3348 2237.3105;
	1895.3722 1246.6851 2032.1301 624.1158 1068.3798 1526.2662 1152.3 354.3372 727.9449 6479.0088 2349.7;
	1896.5299 1279.2 2070.6938 623.4627 1106.4 1626.219 1236.6546 397.2895 768.4198 6529.8267 2470.4682;
	1888.4482 1245.9856 2045.1746 616.0 1080.2404 1557.3664 1213.7 389.1258 782.8762 6327.5 2431.3803;
	1892.7051 1190.6408 1965.3393 615.4047 1025.3991 1491.1322 1163.8771 378.2369 724.9528 6189.3788 2344.7137;
	1822.2616 1120.9586 1871.7062 597.1067 959.2774 1386.1694 1084.3661 366.8487 691.5442 5781.7312 2181.1041;
	1694.9968 1049.1645 1763.7353 577.8 901.3567 1331.417 1006.1963 328.2923 623.2474 5392.4087 2006.5113;
	1612.7196 991.7838 1691.5866 566.1817 854.7 1262.0823 950.0974 297.7446 612.5162 5189.6683 1916.0042;
	1536.0679 951.7455 1605.9422 569.0 810.9273 1232.8081 911.4218 278.6 582.8678 5212.0184 1912.9926;
];
