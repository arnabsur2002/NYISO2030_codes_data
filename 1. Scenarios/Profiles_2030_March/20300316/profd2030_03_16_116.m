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
	1509.7301 896.1451 1540.1512 542.6212 760.9118 1101.8594 832.0477 233.8226 481.7 4399.0434 1725.5411;
	1454.0262 882.4 1511.5615 536.2764 759.4079 1088.2626 830.0833 226.2538 474.6 4381.2778 1711.7587;
	1434.32 879.4 1505.4725 539.2865 745.0 1088.1593 838.2444 226.0007 461.5596 4290.1982 1664.5261;
	1462.7474 911.2076 1570.5934 541.6 779.5 1112.7635 857.7568 232.8914 485.0 4430.2898 1730.7828;
	1555.5947 986.9 1688.0622 548.3144 841.4017 1172.4093 913.1933 246.8904 503.72 4622.0756 1848.1465;
	1627.227 1029.1 1777.932 563.6582 879.7447 1224.6246 971.4271 257.5749 538.9 4871.9846 1943.3115;
	1659.2 1063.2882 1818.6 568.8541 913.5334 1296.2022 1052.5031 283.5274 580.7025 5193.4495 2091.5882;
	1768.5511 1106.0706 1920.4704 588.6 960.2517 1338.291 1057.5443 294.0 595.7297 5364.7257 2151.2623;
	1783.4193 1138.7 1949.7797 593.596 930.905 1317.1204 1069.8856 291.5889 595.8944 5491.8754 2147.4035;
	1785.5989 1118.3149 1931.4716 575.9294 939.8484 1330.0502 1101.9904 305.5831 594.3044 5546.489 2125.6078;
	1769.4964 1085.1222 1882.8455 569.5387 902.3 1305.2992 1052.7682 302.8 580.0038 5490.8951 2063.5;
	1720.5229 1072.8526 1869.0742 568.7298 898.9 1254.3965 1016.7837 312.1056 577.8456 5459.0411 2094.9226;
	1736.0229 1055.0577 1828.2967 570.1019 879.7557 1257.705 999.9232 301.3899 567.8412 5463.5 2061.9517;
	1725.0776 1080.8 1862.0518 553.1 886.3447 1271.1652 986.9511 298.0411 579.711 5472.6212 2114.6634;
	1737.3414 1085.8019 1877.0383 547.6267 916.0477 1324.4667 1038.9702 319.9 578.2564 5374.6944 2078.4323;
	1750.6 1086.3414 1858.5111 560.2237 913.0466 1331.1591 1040.4495 330.94 580.3447 5213.7504 2136.9;
	1732.8873 1087.7562 1875.5709 561.3125 919.7993 1384.4 1137.8324 330.1485 616.3187 5343.6256 2287.6445;
	1809.04 1138.9273 1951.5342 576.9247 967.5922 1430.3455 1192.5569 375.5087 659.1 5443.7016 2415.3777;
	1871.1 1156.4606 1956.3 589.3 959.7436 1431.1807 1186.3581 368.2723 671.2761 5444.5078 2434.2626;
	1813.2993 1129.0357 1881.788 587.5 935.6676 1377.805 1172.2392 380.6695 657.9 5406.1629 2415.9176;
	1775.0906 1071.7 1797.3739 578.9069 885.7223 1310.2101 1106.1509 357.4801 639.3143 5192.1299 2245.5892;
	1657.8063 990.591 1681.1441 559.0878 852.2437 1221.6 1035.7915 322.7659 583.1936 4906.1202 2026.7;
	1627.7118 977.0706 1670.3 577.4313 857.1577 1220.1753 998.9816 299.4568 573.0008 4915.2131 1971.0123;
	1639.0968 955.0633 1689.8375 571.2236 845.579 1199.629 929.5829 280.1514 546.937 4653.4591 1834.3446;
];
