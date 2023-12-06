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
	1524.2882 959.9742 1607.8765 575.6036 895.9862 1228.7152 891.7711 276.7331 534.8695 4671.7922 1725.2426;
	1526.35 966.2929 1619.2089 567.2252 897.1238 1234.3 891.353 283.3283 527.488 4609.3932 1711.2017;
	1515.4933 981.1625 1655.2408 577.2672 912.4198 1244.6911 891.8 283.1 527.2283 4606.5961 1742.3949;
	1569.6787 1037.2 1732.1868 590.2083 949.1417 1317.8 952.826 298.5635 569.124 4805.4714 1841.1084;
	1721.2909 1149.9198 1929.8192 611.2504 1056.6525 1450.8672 1063.7504 347.3 647.1 5351.0272 2028.1409;
	1816.1989 1216.7217 1993.4661 625.5745 1083.8601 1531.9192 1126.3372 365.9989 708.9369 5956.3743 2205.2896;
	1868.7785 1252.2621 2012.8886 609.3701 1109.5314 1523.9123 1154.2699 376.9079 725.391 6260.6158 2280.2547;
	1896.5 1253.6618 1989.9354 596.0217 1086.5165 1477.609 1137.6639 352.2 735.3163 6348.1984 2223.8756;
	1889.5403 1256.5187 2000.7464 578.4591 1083.4199 1429.5821 1140.8343 350.1 743.462 6491.346 2230.4995;
	1847.4308 1240.1013 1958.4318 565.8588 1037.3207 1385.732 1078.5625 345.6933 730.3292 6444.0436 2186.0939;
	1812.9 1206.3229 1896.7587 574.2183 999.5078 1351.5794 1016.7158 326.6066 719.2307 6352.375 2103.1596;
	1779.5265 1166.4773 1841.4217 562.2547 973.9312 1285.7307 980.1175 315.733 691.6 6178.0929 2054.7532;
	1806.6284 1192.2194 1866.8073 585.137 972.999 1304.0275 993.902 329.3984 680.6157 6090.4954 2073.7;
	1781.524 1186.8031 1839.2506 600.027 940.4 1253.6 1004.6631 318.7 667.4312 5907.608 2062.0505;
	1828.691 1211.327 1906.7563 605.3 979.2 1362.3571 1061.38 329.7297 686.6 5990.9322 2154.7208;
	1820.5009 1203.1339 1887.1961 606.1827 950.7 1372.9889 1047.7 333.0712 666.2 6145.2946 2197.3255;
	1758.439 1165.1 1903.0508 598.3 970.5551 1405.9571 1082.5 342.175 688.3144 6065.1834 2296.5348;
	1826.0939 1206.7 1945.3 614.2219 971.7957 1436.8745 1151.1937 344.6512 720.7012 5980.0328 2446.6945;
	1802.0739 1204.0575 1940.7529 599.0 975.079 1408.1557 1140.0 369.5348 705.1951 6005.7058 2397.8194;
	1778.3086 1155.8 1817.6081 589.5 919.7264 1364.7308 1089.4615 332.4 671.5118 5602.1024 2226.7695;
	1694.2881 1075.7 1760.3544 568.3691 888.8 1288.4106 1017.9 317.9115 624.2968 5397.7394 1943.9036;
	1569.4496 998.365 1602.372 553.516 805.4148 1201.1112 943.6741 283.4776 568.545 5144.4229 1786.3294;
	1481.0658 948.1 1534.4894 536.1951 821.2811 1152.9495 846.3745 267.7553 488.5788 4827.0 1769.6297;
	1493.3152 936.3408 1546.4545 547.6282 811.7247 1141.4648 864.3539 263.9567 501.1222 4672.8444 1746.1;
];