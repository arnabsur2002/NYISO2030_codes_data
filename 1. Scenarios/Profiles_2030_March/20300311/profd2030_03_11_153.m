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
	1444.6086 932.5822 1553.4794 505.4621 805.3106 1116.6861 878.9982 244.6847 449.9911 4446.5678 1611.6924;
	1441.0489 932.8083 1554.7608 508.9345 794.7823 1114.0011 866.9197 244.5 451.5263 4424.5814 1615.6013;
	1484.474 953.6981 1593.4088 534.4301 801.0205 1125.3061 877.3 248.1622 456.0131 4452.399 1635.7668;
	1568.0575 1029.8442 1705.6564 536.6328 864.7898 1209.639 931.9976 280.1085 503.7219 4727.0545 1758.5291;
	1748.8751 1171.5498 1937.9734 582.9 980.7618 1373.0314 1060.9938 327.494 580.0645 5320.3709 2048.2232;
	1866.257 1239.5 2017.8104 599.4 1037.0 1417.8157 1090.8 349.7357 605.7821 5737.6918 2144.2906;
	1888.4076 1247.359 2019.4231 592.9767 1064.2959 1398.4808 1099.3128 346.1734 613.1072 6054.0942 2126.4296;
	1876.7321 1229.3 2018.0374 590.4802 1046.1 1422.3289 1149.5201 357.5128 645.9316 6385.5001 2194.1413;
	1899.7 1253.3245 2008.1073 600.7791 1061.5046 1420.7621 1174.9063 348.4737 654.6 6486.7579 2262.9074;
	1895.5039 1240.77 1951.9872 584.2118 1056.4575 1401.1806 1156.0558 356.7104 656.2809 6498.2963 2236.1023;
	1933.0181 1270.9003 1988.7214 585.6 1064.8312 1412.8931 1156.0567 352.6497 644.6904 6496.0 2234.0735;
	1903.9 1268.3642 2003.3513 584.2 1045.7472 1449.1257 1141.2852 360.8476 615.829 6476.4286 2237.5642;
	1918.4887 1255.9187 1955.1714 583.872 1030.1993 1370.0833 1104.9386 365.9416 633.4557 6433.9387 2359.9148;
	1832.6833 1244.6936 1917.3922 558.1322 1009.8684 1387.0696 1097.9832 352.1711 607.4667 6625.2156 2466.01;
	1903.5765 1279.0322 1958.1522 560.9377 1018.6641 1419.9205 1128.0196 344.2718 594.6271 6641.2451 2378.146;
	1903.3587 1312.0825 2020.7668 570.5738 1014.8324 1446.786 1196.9526 382.9518 630.8182 6812.1873 2476.5456;
	1909.1 1316.5114 2081.3445 589.0553 1060.3 1508.5168 1190.6602 406.8 634.1 6501.8208 2412.8566;
	1982.6435 1359.72 2196.6037 593.2323 1074.1706 1559.6643 1257.8841 418.9986 696.7663 6426.7669 2515.3698;
	2035.5666 1367.7818 2162.5907 616.5458 1068.3068 1500.659 1255.8835 408.3617 684.4996 6456.2494 2489.2;
	1938.4071 1297.697 2026.6248 585.6 1009.0 1429.5695 1196.5787 394.2441 649.4068 6173.8635 2356.586;
	1843.8325 1199.8547 1938.8945 553.9602 980.0476 1325.4011 1102.4249 367.6702 619.0495 6035.5012 2192.4864;
	1781.4236 1110.1618 1806.3417 540.6347 889.5 1225.0 1006.1658 322.0179 574.4824 5480.8942 1968.0;
	1629.3881 1055.6042 1678.2775 556.8964 842.3305 1183.2405 930.6044 285.4417 540.0 5027.5005 1852.9416;
	1595.3 1027.1414 1680.3 559.6773 814.6618 1155.082 922.9261 293.7298 535.9345 4846.6489 1787.2748;
];