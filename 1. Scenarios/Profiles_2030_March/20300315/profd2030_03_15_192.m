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
	1417.2166 890.8488 1509.1807 544.7755 746.2427 1087.1 822.6071 221.4988 448.7562 4354.4279 1605.5645;
	1371.2401 882.9474 1500.8 539.3702 729.9719 1047.4483 801.3387 219.5 428.2493 4269.1023 1556.5216;
	1389.7671 901.1765 1554.6 553.5036 734.0146 1077.8727 818.3637 215.3 434.6961 4307.8015 1592.7899;
	1465.4281 956.7018 1656.2653 562.5279 802.158 1147.1036 861.4751 241.0135 469.0606 4518.1425 1683.2551;
	1594.2829 1032.1 1828.6787 575.3 895.0693 1295.9155 967.7 288.835 541.023 5060.3279 1891.4459;
	1690.1659 1109.698 1945.2445 591.8 941.1142 1369.4096 1029.6137 310.1535 602.0616 5580.6709 2027.3597;
	1746.8082 1120.7 1947.8582 606.8324 932.3512 1366.4141 1060.5918 310.8 628.4626 5875.7958 2087.2505;
	1808.877 1128.804 1971.0146 587.2691 939.6493 1303.3939 1061.5209 296.521 634.1862 6091.9641 1961.2313;
	1731.3968 1065.8593 1916.0868 572.7399 916.6489 1253.0532 1033.8475 279.7433 633.7738 5957.506 1718.5363;
	1762.4859 1067.1625 1889.0023 559.661 906.7306 1218.7577 1074.2065 289.9376 665.8756 6015.7212 1933.6818;
	1729.5178 1056.0446 1878.3144 548.7 898.1931 1208.0071 1080.5789 286.4253 665.7 6072.1447 1897.1636;
	1744.7942 1077.9 1950.3638 543.9471 911.0375 1215.5867 1073.8132 286.9296 673.1249 6090.2 2043.952;
	1771.0249 1072.936 1901.4073 551.5547 916.5 1264.7222 1109.976 304.513 676.1177 6200.5567 2066.444;
	1762.1553 1069.2136 1937.079 553.3 906.1891 1305.7 1149.5235 319.4829 661.3615 6368.4333 2187.4567;
	1775.8465 1075.2688 1887.1 552.6495 899.3401 1318.6 1086.4328 308.699 647.3893 6358.389 2243.247;
	1768.0 1077.1843 1926.8 558.9785 922.4452 1343.0263 1060.5847 311.8098 659.9546 6188.274 2205.0288;
	1787.4 1086.7008 1933.6277 566.3815 945.8 1370.8313 1101.4366 293.4961 667.1526 6156.4516 2288.9981;
	1833.3688 1145.2 1935.9178 585.2383 983.8464 1414.3 1165.134 309.0869 700.6363 6085.0313 2376.9;
	1878.8 1144.3053 1978.0031 584.1 989.4 1388.6 1167.1 301.095 694.9 6021.1997 2380.2595;
	1839.5813 1094.6285 1920.3098 580.7401 948.7 1349.2891 1136.2879 304.1 660.7199 5745.1 2254.5901;
	1730.0364 1039.4 1851.5004 559.7477 874.3 1244.749 1063.2543 264.5722 620.0777 5416.2051 2115.619;
	1639.7302 986.5212 1719.6168 543.9 812.9261 1143.3 972.8476 243.9454 562.0765 5040.2405 1935.6866;
	1586.3 950.3388 1658.0838 569.3 790.9361 1122.9934 924.0 255.1672 499.2303 4820.752 1823.7972;
	1542.6841 902.6869 1569.6757 572.1041 776.6118 1089.1412 877.053 237.1509 469.0777 4625.6648 1724.0288;
];