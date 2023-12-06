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
	1445.7344 872.9915 1517.9148 511.142 734.7547 1055.8084 812.6793 241.0 483.9392 3858.8571 1274.8717;
	1484.9296 883.6 1530.0901 514.7312 742.2629 1065.8117 806.2 236.8811 492.5 3857.648 1300.2661;
	1489.8378 893.9765 1549.9529 529.3 740.0484 1077.4964 801.4873 235.2 503.2929 3671.0239 1397.2774;
	1558.3485 945.5764 1645.162 542.508 812.654 1163.1789 861.7305 255.9947 533.1471 4170.2095 1512.9335;
	1724.9288 1067.381 1838.0 576.957 941.5 1318.8 971.9753 314.3933 611.0072 4804.0524 1835.9428;
	1820.8938 1134.255 1930.6 593.9363 990.925 1380.1109 1046.8891 326.3216 687.0027 5370.9227 1972.1629;
	1861.2513 1141.9 1932.9535 589.0091 1020.5088 1367.9 1066.7799 313.4011 716.6056 5523.4209 2101.1163;
	1951.8319 1177.2277 1959.44 579.6 1010.6922 1358.2109 1069.174 334.1428 737.8128 5891.5718 2201.7;
	1917.3917 1182.6298 1977.5155 563.5 1017.7959 1352.1 1103.8091 335.171 751.3315 5998.2 2184.1175;
	1918.9652 1178.265 1993.8033 543.2142 1032.3537 1332.504 1151.5284 329.8886 751.1888 6078.9361 2246.755;
	1911.6482 1163.5148 1987.2002 526.5301 1008.2651 1342.3168 1126.0884 329.0612 718.3629 5980.9442 2182.3933;
	1986.2097 1183.0895 2003.562 514.6034 980.1969 1334.6261 1144.1511 341.5731 711.7402 6018.5399 2279.5919;
	1934.9156 1148.7778 1942.8765 507.8195 946.4879 1303.777 1105.3292 343.8078 696.2837 6018.103 2283.5896;
	1949.4556 1139.2 1921.4623 506.9023 935.6484 1313.0671 1148.4547 332.8467 704.7439 6134.8408 2316.4103;
	1931.0399 1161.9618 1895.2399 498.983 930.3307 1303.8748 1106.3822 329.0416 691.9851 6098.1742 2350.6577;
	1865.5025 1124.0563 1896.7728 524.8 923.904 1308.8865 1099.4058 315.7504 689.7067 5996.9162 2358.3579;
	1880.5269 1161.8544 1922.5243 533.7 979.467 1339.4276 1157.2338 339.4053 676.0775 5943.7052 2408.8701;
	1958.7911 1202.9871 1972.9995 551.6 1013.0 1409.7687 1165.7491 356.2 718.9 6027.9456 2549.4091;
	2034.5712 1225.3312 2012.3803 550.3619 983.5498 1358.6515 1097.9759 346.3 702.9944 5825.7259 2399.3878;
	1884.8835 1123.9296 1849.1249 561.6 927.8959 1286.9183 1044.8045 318.4302 662.4132 5499.2124 2273.632;
	1829.6764 1058.8 1740.2395 543.4886 874.3 1217.029 1007.7 294.9182 622.0419 5327.4127 2171.3443;
	1721.4354 986.8229 1636.89 542.2731 816.1371 1124.6 947.1 274.9323 573.3 5018.3447 1968.4904;
	1770.0383 977.8633 1573.5 528.5262 741.7669 1091.1502 916.5 268.5133 547.2282 4770.561 1816.7129;
	1647.574 933.2314 1518.4086 534.4 729.3982 1039.7391 840.3703 228.9028 510.962 4451.9559 1696.878;
];
