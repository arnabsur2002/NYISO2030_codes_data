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
	1510.307 946.0786 1630.7249 513.927 782.5424 1092.0598 856.1 237.054 470.1 4426.6129 1619.6992;
	1504.341 935.7212 1602.9357 527.4706 786.6656 1066.8406 829.8021 233.9615 452.0302 4306.7386 1580.7901;
	1529.7744 969.969 1630.6058 524.0602 794.5322 1100.3239 851.6537 235.7128 452.8499 4358.2888 1662.7187;
	1605.5522 1033.2 1742.4041 541.7638 880.2717 1176.904 911.4603 221.4409 495.1219 4605.981 1754.2794;
	1742.1258 1146.6916 1965.2348 588.0918 1012.4296 1335.5396 1024.673 311.3572 585.3901 5207.1318 2067.4223;
	1805.5392 1187.3835 2046.9594 568.1654 1036.1005 1398.2959 1078.0456 316.3762 673.2641 5651.3098 2196.863;
	1769.5476 1159.1114 1971.6087 549.6646 998.0762 1295.8488 1065.2497 326.3093 673.2883 6039.3999 2170.9013;
	1810.1 1167.0468 1969.7721 583.8513 985.9744 1300.5573 1062.8 341.6 687.1181 6333.6887 2188.1065;
	1867.9724 1190.9638 1976.3683 587.6616 1004.6777 1331.3222 1099.7917 338.1297 700.035 6433.4352 2154.0671;
	1875.8 1217.0782 2017.3174 601.924 1031.7721 1352.0093 1071.4711 333.014 680.1946 6429.5289 2117.846;
	1888.3327 1233.9863 2003.7558 599.7584 1015.8755 1337.4147 1136.4 326.1244 690.6 6466.0931 2189.9466;
	1896.5317 1212.8 1970.4257 580.9704 1011.0669 1303.1338 1104.7589 316.3262 676.4 6341.4418 2052.8172;
	1876.3586 1191.8843 1919.7641 584.6839 972.8412 1248.8207 1075.1953 318.8501 651.2115 6255.5415 2026.725;
	1836.4037 1192.6 1938.0076 604.678 1006.0377 1327.1678 1092.2298 341.2 654.6707 6276.6234 2072.3247;
	1856.7 1200.1517 1933.4593 610.0175 1037.3512 1349.3579 1101.211 357.3688 662.6277 6256.2658 2121.7531;
	1864.4825 1217.2477 1984.5206 623.0953 1045.0985 1380.8212 1122.5733 358.4446 667.1 6310.6754 2225.9534;
	1860.4 1237.9 1940.8399 628.4469 1033.2526 1380.7 1118.4021 379.7784 666.919 6215.3268 2327.446;
	1843.7 1271.5806 2032.197 637.0 1067.427 1423.9372 1183.9736 400.2 703.1889 6361.139 2483.2122;
	1882.4211 1275.2522 1998.3955 628.1 1019.9308 1439.1059 1189.0323 383.801 698.8328 6230.2449 2342.2773;
	1851.7 1238.3217 1990.7857 615.5997 976.585 1348.7716 1150.5447 386.1769 677.6915 6044.7836 2329.0312;
	1735.3 1143.2843 1840.1421 587.6073 936.8 1259.6111 1080.5 355.4972 650.4489 5782.1 2186.8;
	1645.704 1082.7279 1735.8342 565.936 886.4076 1190.5369 989.6681 318.1979 590.0014 5331.784 1981.5499;
	1627.9023 1052.6 1711.7941 562.5877 855.564 1154.1036 938.2998 300.5407 540.9593 5081.5773 1867.1647;
	1559.5305 978.1 1663.1848 568.7745 850.3 1121.9294 893.4 289.4 502.3043 4770.6213 1738.1542;
];
