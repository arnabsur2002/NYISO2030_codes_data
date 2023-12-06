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
	1510.2816 917.6148 1547.4297 561.287 775.3042 1078.0193 818.7711 244.4 492.5212 4326.5499 1609.982;
	1486.3423 915.9 1572.7262 552.9361 778.7 1078.2567 817.3231 233.985 503.4 4346.3291 1600.9753;
	1538.2469 949.2733 1628.2746 560.1216 781.6059 1063.9826 818.3404 232.5164 506.9452 4363.502 1607.7967;
	1613.4539 1016.231 1704.4 578.1873 845.5289 1157.117 865.0925 239.1999 527.1764 4569.6518 1699.1;
	1713.5961 1122.1255 1891.8763 596.7515 966.6402 1302.1098 968.3212 263.7114 614.2676 5096.2725 1971.3;
	1816.3076 1204.9928 2000.1176 634.3863 1063.0638 1427.4555 1072.9293 320.5639 687.0482 5688.6253 2200.1423;
	1818.2107 1207.7 2008.3161 616.2 1041.8 1411.8593 1091.7498 323.8 700.1316 5991.4376 2184.4359;
	1844.7708 1213.8577 2008.948 605.5142 1044.3699 1401.7301 1084.1993 313.683 680.5073 6040.1602 2093.978;
	1822.1899 1185.0835 2054.0869 599.0077 1074.7837 1457.248 1119.4257 337.8846 700.2 6362.4085 2252.6764;
	1866.5736 1198.3211 2084.2785 594.8904 1072.8 1460.2874 1113.4451 328.3575 703.8219 6395.5186 2303.5837;
	1870.8628 1179.3468 2066.8947 594.1 1063.2915 1420.1907 1069.7282 321.8768 677.8423 6417.8429 2211.0247;
	1865.0825 1223.6028 2071.6809 596.1277 1083.1555 1460.1773 1083.8761 331.9384 679.3 6501.295 2305.998;
	1872.3484 1188.0769 2021.79 561.7291 1024.9719 1405.6077 1082.6993 334.9 679.2902 6387.6543 2237.0991;
	1801.5045 1193.3516 2047.5654 564.9031 1044.0305 1429.6871 1085.8736 332.4 682.2 6360.1692 2186.8141;
	1837.2152 1192.1053 2038.3321 575.7605 1046.8417 1430.008 1076.9833 341.8 691.7907 6319.0263 2255.3243;
	1793.3269 1200.6274 2058.4068 592.0821 1062.0702 1438.3815 1113.5262 359.888 721.1206 6401.4915 2381.4759;
	1784.5477 1174.2018 2057.4042 613.7 1091.8373 1482.7438 1152.0887 378.5 757.887 6288.4751 2470.126;
	1839.2183 1232.6377 2115.0111 628.8378 1087.3194 1526.2708 1189.2929 402.0533 769.3427 6322.9091 2577.6885;
	1861.9123 1242.462 2114.4065 634.8143 1069.0052 1500.1527 1184.2166 391.9 729.0 6107.6689 2509.1515;
	1807.7919 1142.0584 2021.5247 608.3017 1014.0162 1394.1422 1110.1 355.7 686.8087 5888.0974 2337.1;
	1709.7554 1026.4837 1865.3094 565.9228 975.954 1307.4 1025.6895 333.3585 637.4024 5548.3734 2133.8;
	1593.8938 955.8482 1730.0964 574.6261 914.8841 1214.4 940.8168 288.4044 591.9 5097.4405 1927.5898;
	1569.176 924.8688 1643.5946 569.2044 858.8197 1137.5022 908.0915 252.8237 554.6918 4834.8453 1812.2664;
	1569.2313 928.5229 1644.052 590.0362 853.212 1129.8961 888.7164 247.9209 527.0705 4675.8329 1757.0686;
];
