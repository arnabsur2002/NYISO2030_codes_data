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
	1626.1581 980.3 1685.9396 619.2524 901.4 1200.2441 933.7621 302.8682 548.846 4790.243 1733.926;
	1615.5 972.3502 1677.7488 615.7893 883.4977 1208.0693 924.0465 312.5503 538.4517 4633.0985 1720.8748;
	1621.8409 1006.221 1717.4722 618.7299 904.1781 1246.6616 927.0216 295.0701 537.1522 4621.2232 1724.4935;
	1721.371 1069.2731 1818.7678 627.1394 964.6101 1317.0723 973.5207 311.712 566.4858 4838.7915 1841.4465;
	1808.3776 1171.8038 1967.1739 640.7265 1022.9391 1471.4088 1073.514 351.0216 651.3884 5444.7948 2091.7713;
	1889.4359 1252.9959 2110.2595 636.6791 1113.0633 1572.3201 1157.0863 383.2759 702.0522 5982.0945 2221.883;
	1887.9616 1257.8661 2095.0057 622.656 1103.0 1524.1 1160.461 393.4662 695.5697 6317.312 2231.587;
	1877.9373 1236.61 2062.5439 617.34 1104.2085 1496.9009 1184.4421 403.083 730.3734 6594.9795 2255.7859;
	1874.8655 1234.0 2005.9681 606.807 1056.8306 1445.9216 1162.9746 383.9019 726.7641 6613.8818 2243.446;
	1860.9777 1216.2122 2010.9296 590.4 1024.0889 1412.244 1164.3905 368.3365 722.1 6543.9 2178.6064;
	1821.1698 1206.1508 2010.5869 609.2249 1044.4521 1463.1171 1185.7771 399.758 709.8137 6634.7102 2226.035;
	1811.1773 1208.7426 1961.4367 592.8337 1013.6 1413.1998 1107.9531 357.2676 685.6 6550.267 2161.2322;
	1756.0225 1198.9267 1959.4314 595.182 1009.5528 1406.5128 1126.1789 372.9833 686.7864 6646.0949 2277.2239;
	1725.7811 1176.7307 1939.0436 603.6576 984.367 1386.8 1119.3024 375.2826 705.7684 6532.5584 2203.217;
	1738.4507 1191.823 1956.219 603.8862 976.4088 1429.3337 1150.6604 366.6048 707.3905 6470.4837 2225.9201;
	1780.2465 1185.4557 1962.718 620.5302 984.0786 1455.5716 1207.3962 355.7488 726.7 6424.0234 2281.0974;
	1758.3199 1190.9493 2002.3824 610.8896 1034.0484 1458.0113 1195.6072 365.0349 745.605 6274.4638 2333.3837;
	1854.6341 1277.1709 2112.5174 620.5 1060.3 1527.1605 1223.6727 387.9624 763.3453 6284.3475 2484.6918;
	1906.3184 1308.3 2124.787 632.4846 1063.3585 1576.0529 1265.6155 383.4115 764.0585 6277.3563 2528.4294;
	1808.543 1215.3263 2023.254 615.7895 1031.6038 1468.4995 1172.9966 354.6549 716.6 6061.0053 2381.5203;
	1735.5023 1114.4132 1858.2421 607.5043 938.8396 1343.9404 1048.9 315.3214 647.4864 5631.9648 2123.6227;
	1622.6229 1039.5193 1729.6 578.9 895.4 1267.7746 969.5 282.0927 603.7155 5217.3881 1931.3892;
	1539.8036 966.9993 1632.1654 545.479 849.1 1181.5063 912.5689 261.7898 532.3987 4942.3823 1817.197;
	1502.8694 957.618 1636.6 554.3389 833.8 1176.291 881.7321 268.6859 522.8 4924.6915 1779.6347;
];
