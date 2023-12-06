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
	1496.3241 942.7042 1656.1125 607.42 867.0363 1213.3 905.0075 257.4 533.1 4602.9759 1644.1789;
	1485.8852 939.3938 1614.4731 596.5728 839.966 1200.5949 887.6 248.7169 526.1 4532.9 1584.3794;
	1546.518 973.8 1668.7387 609.7016 858.1114 1231.2431 907.5 260.4956 533.7946 4636.2048 1699.9205;
	1610.1971 1021.129 1744.1552 630.8 899.0584 1310.9 959.6 278.1244 577.0 4840.3938 1773.4117;
	1777.7062 1163.8221 1912.7479 644.7448 1015.3508 1489.9954 1079.627 321.7968 652.2912 5355.7 2059.3646;
	1897.2616 1217.1058 2013.7577 656.267 1036.1747 1556.9597 1159.0588 358.1738 712.7362 5981.9389 2258.6038;
	1895.7139 1232.3012 2003.5266 650.4868 1056.2574 1530.5978 1194.4 359.9 721.6884 6329.1816 2327.4063;
	1863.7577 1219.3001 1973.1707 640.8258 1013.1693 1482.2 1213.1445 359.9 707.5 6455.2022 2305.081;
	1867.4003 1192.59 1940.3263 630.5893 970.0263 1453.4788 1152.9887 320.7025 710.96 6370.9492 2242.0893;
	1891.3 1172.6562 1949.0407 629.6047 993.5804 1451.8816 1176.9949 326.5098 690.5087 6358.3789 2293.1705;
	1825.6038 1170.0795 1878.2194 600.7513 973.8 1357.1233 1064.0223 293.3707 659.4086 6270.2938 2111.0;
	1777.0 1114.3132 1813.6066 593.0 964.8 1317.1935 1046.4907 292.2944 622.6455 6185.6352 2043.9209;
	1747.5319 1111.125 1801.549 583.6 942.0763 1321.0635 1066.6929 283.7694 632.0707 6239.5554 2081.4375;
	1773.0312 1124.4656 1780.2699 575.4743 984.0496 1323.3907 1070.7198 283.9751 613.4852 6218.3118 2078.4972;
	1759.6 1131.6287 1799.5221 575.0 979.2 1346.4997 1038.0281 272.2331 648.7012 6268.0008 2129.3838;
	1777.0221 1158.2653 1860.0093 595.3 1024.746 1382.4343 1097.2586 283.8611 666.8943 6343.8546 2246.7635;
	1710.9268 1145.3702 1867.8651 610.6 1039.6195 1450.9976 1110.3821 300.4892 684.4419 6251.6727 2319.931;
	1744.2621 1195.7378 1915.957 601.412 1052.0 1489.7144 1163.2864 320.8123 692.6673 6267.9502 2384.336;
	1730.0 1177.47 1886.2144 611.0915 1007.9285 1461.3 1128.2899 266.2441 674.394 6094.8616 2352.2845;
	1743.814 1159.0732 1798.8087 607.9664 954.3215 1429.6646 1100.5959 286.838 673.8904 5871.6429 2286.0939;
	1672.5506 1074.4127 1693.0802 582.0996 916.2696 1336.5753 1018.0384 279.1177 627.0073 5578.1301 2081.9259;
	1559.0242 996.7 1616.4921 574.1134 859.2763 1255.1788 941.7963 260.9319 579.7948 5165.2149 1854.7089;
	1500.08 919.3152 1582.274 588.0 815.2013 1197.7554 899.2251 237.5195 538.3748 4851.677 1765.2427;
	1523.5909 918.4881 1595.4133 581.9512 833.9285 1237.5454 895.7753 240.7 517.3 4641.0897 1700.5208;
];