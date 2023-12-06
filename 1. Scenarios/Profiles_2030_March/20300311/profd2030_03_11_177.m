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
	1477.9 922.2792 1564.1 534.2596 789.5215 1133.3499 860.1045 241.1758 472.2471 4432.0578 1627.5993;
	1497.0196 937.4319 1588.7 527.8656 822.662 1156.4307 849.2332 248.8 454.6776 4362.6842 1635.3;
	1520.4147 960.5391 1623.8579 541.7 826.9736 1169.3464 862.1 267.5225 456.0139 4368.853 1659.6759;
	1599.5843 1031.3285 1726.9281 549.1 884.9025 1237.1 910.284 284.7 510.5791 4663.6333 1773.4245;
	1763.8122 1141.6951 1934.5592 587.1 998.6922 1354.3113 999.1231 321.801 580.5817 5255.495 1987.5477;
	1900.739 1225.4647 2065.8 586.0518 1043.3702 1430.4 1076.0646 365.5033 632.8141 5821.4523 2153.3979;
	1960.5317 1234.3084 2043.4063 584.6 1038.4956 1406.9369 1087.7489 359.0596 620.6942 6046.1182 2140.0518;
	1931.2508 1219.7758 2011.8845 576.292 1053.9057 1432.6735 1107.0859 359.5 639.7499 6313.4658 2130.1964;
	1959.5179 1249.2 2072.0 555.8114 1090.8168 1461.9132 1108.7049 371.6364 612.0645 6369.0433 2038.5197;
	1962.9344 1264.6258 2042.8213 540.3022 1083.1359 1415.5796 1075.2 383.0923 616.0657 6194.7623 1979.5498;
	1941.6764 1253.8991 2009.5938 549.2413 1075.6401 1385.3247 1085.3328 401.5029 635.9528 6294.8134 1979.0399;
	1934.4642 1232.9 1967.281 553.4202 1042.5195 1349.4711 1066.5054 373.6951 619.3167 6199.7338 1898.8211;
	1963.271 1268.964 2021.9021 557.9 1023.4765 1405.7098 1092.4059 393.218 645.4517 6281.9494 2080.4984;
	1906.9788 1291.207 2005.0842 547.062 1023.0226 1375.3875 1080.852 363.0218 643.8248 6290.4192 2099.8147;
	1888.157 1255.3093 1981.7932 547.9048 1005.994 1365.4947 1079.2527 387.2782 647.2668 6315.416 2124.6183;
	1861.5944 1242.1789 1992.8485 565.8266 1054.127 1399.4501 1098.6469 372.3087 664.5618 6385.8741 2262.2993;
	1835.4783 1260.178 2006.4 571.7812 1081.3437 1426.33 1124.877 378.5524 670.2068 6254.9289 2359.5657;
	1952.3652 1308.6289 2050.6192 583.7652 1108.2924 1483.989 1153.6039 371.7571 704.5096 6255.8961 2464.0319;
	1929.647 1288.2476 2013.6 584.1058 1082.9905 1450.523 1134.034 368.797 712.6749 6129.9 2432.3998;
	1882.201 1226.3 1937.1 571.5 1026.9002 1397.9 1084.9195 351.5387 673.5294 5933.2064 2310.272;
	1822.3654 1152.5 1817.4503 547.7 957.6 1286.3 1023.0055 325.3 627.9331 5653.3367 2156.0461;
	1753.3666 1064.886 1715.928 534.2363 895.1851 1193.6839 969.2 306.8418 581.8513 5250.1047 1956.9947;
	1615.9276 980.3355 1647.448 549.7 857.0812 1162.5124 912.0 272.3885 513.295 4970.4416 1853.1732;
	1611.2963 989.4469 1640.5717 551.2043 844.34 1131.1247 889.6513 258.4 496.7661 4866.3856 1816.8668;
];