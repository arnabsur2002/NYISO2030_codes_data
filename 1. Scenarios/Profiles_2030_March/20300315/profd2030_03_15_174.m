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
	1421.6427 878.4349 1524.2081 531.9 763.2115 1014.0346 817.7287 259.8432 579.1954 4419.3137 1663.9305;
	1434.9269 874.7 1537.1792 526.63 765.8356 1040.0313 835.8463 264.3498 586.3771 4384.4906 1688.412;
	1426.052 886.9684 1584.3355 525.2 774.7278 1068.9879 856.6119 262.6311 586.9097 4427.9099 1727.1541;
	1524.9984 958.611 1681.0858 547.9361 827.9248 1115.2 902.5317 291.3234 608.4202 4605.6076 1821.9981;
	1672.0 1087.664 1887.9016 588.3472 974.3398 1298.6202 1029.9581 342.8623 680.3906 5160.8394 2105.4537;
	1727.2041 1157.5475 1984.2851 591.1962 1025.5 1373.3069 1084.0983 353.1043 756.6991 5636.746 2219.5889;
	1805.5085 1212.6446 2052.026 598.4328 1025.553 1395.7021 1129.3033 387.7312 791.2189 6133.399 2322.0984;
	1839.4 1226.6349 2007.0 591.154 999.8172 1386.2116 1136.2684 365.2022 799.5902 6320.4177 2368.3015;
	1858.912 1205.1302 2010.199 575.6398 971.0 1335.442 1114.9904 351.8123 795.9192 6275.422 2394.8873;
	1845.9021 1192.4336 1999.9653 555.3327 992.2565 1334.8439 1140.3 363.2659 803.7004 6295.9115 2457.2832;
	1829.1668 1152.923 1951.0625 564.1 943.4631 1314.5799 1128.704 335.4852 797.0674 6292.4248 2421.6335;
	1850.8274 1133.6569 1925.3103 542.2 936.2237 1241.5429 1126.2326 337.3358 816.2511 6286.6431 2366.5655;
	1795.1468 1131.2811 1914.7985 530.6168 906.6 1215.3502 1082.0625 332.3248 786.6015 6218.0673 2303.4737;
	1765.8371 1096.1085 1882.0184 529.2396 908.6587 1180.2013 1102.7405 337.9139 805.4128 6356.8522 2362.0;
	1740.1212 1083.5628 1877.8257 529.0678 912.09 1205.7662 1030.226 321.4308 730.3 6219.5281 2298.8926;
	1752.2395 1073.739 1834.0975 537.1354 886.4 1217.0343 1002.4559 314.2683 710.5684 6152.3401 2267.5108;
	1746.48 1083.0143 1840.8618 529.8574 884.06 1269.8278 1030.1236 331.2634 738.7973 6089.4512 2299.2431;
	1816.7698 1135.6568 1943.3067 542.4086 947.5101 1331.7028 1085.7777 352.507 747.7756 6208.9636 2475.2165;
	1750.1085 1119.3565 1919.7625 532.6724 951.1 1348.5776 1092.5802 352.9928 770.0527 6274.9977 2437.955;
	1680.7824 1069.2474 1845.2 536.873 900.6195 1290.5666 1041.3212 351.0874 709.0688 5907.839 2330.1622;
	1659.9119 1041.0 1842.0832 516.1691 908.1194 1248.3282 1034.7669 324.5926 653.197 5678.7991 2263.6622;
	1528.8302 964.5573 1710.971 523.7811 795.1717 1126.2698 941.1726 293.6274 615.6649 5376.2448 2072.7733;
	1497.5279 923.6 1651.3811 533.7778 760.864 1107.5432 910.6088 282.3401 547.0438 5195.5626 1852.4115;
	1456.9115 894.3072 1559.3058 516.5602 733.9772 1059.1784 853.5758 272.7848 554.8125 4824.9389 1787.9366;
];