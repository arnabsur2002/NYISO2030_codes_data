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
	1420.086 848.1 1504.066 524.3 736.0 1072.5698 820.027 226.3083 486.3581 4374.6632 1668.1331;
	1423.3853 847.65 1495.588 540.7 710.0 1048.7656 793.3143 209.8362 477.5727 4219.0105 1624.4533;
	1419.4726 837.7325 1487.3495 524.3912 729.2784 1061.1 797.335 218.4 480.254 4262.6948 1628.4204;
	1446.1063 880.4842 1543.873 544.9 754.8336 1093.7617 816.3978 223.8977 473.0314 4314.3396 1696.0279;
	1544.0202 953.1482 1632.3 559.5055 816.8315 1168.5599 865.1003 246.6589 471.0634 4436.1 1780.1834;
	1608.9358 996.0438 1738.4201 558.898 866.2 1223.375 913.6529 279.8 509.1093 4647.6948 1901.9932;
	1644.63 1067.7116 1851.0639 579.3821 932.2193 1284.9982 999.5 296.4 567.2993 4962.7949 2066.9559;
	1738.2 1102.1 1912.4987 584.8075 983.0 1354.0211 1062.4098 320.7632 595.4438 5173.0813 2233.9968;
	1749.8981 1112.5 1931.3052 583.61 993.955 1364.3013 1090.6354 334.0431 629.9 5311.0998 2339.6076;
	1748.4 1101.0 1932.0063 598.6 1004.7626 1404.7 1106.5397 330.531 627.1332 5391.7001 2365.4421;
	1707.5573 1080.5 1865.9927 602.8 959.1239 1369.5 1053.042 311.5223 618.6 5428.0001 2169.514;
	1663.5672 1042.8677 1837.9649 602.2 965.5039 1339.1739 1085.6584 350.4608 641.3719 5431.2937 2266.8425;
	1659.2678 995.526 1741.4211 599.3953 912.905 1290.504 1045.5984 344.3817 619.4 5338.9716 2200.7891;
	1669.5468 1021.3959 1763.1602 620.9362 921.1 1329.986 1091.5569 328.1914 621.8765 5355.6189 2154.9668;
	1666.79 1027.1289 1769.4717 613.5149 917.8121 1313.7966 1070.155 322.6 604.793 5346.8388 2228.6633;
	1626.3911 1046.6 1805.3069 615.817 922.6762 1385.6364 1172.3 336.6575 630.2631 5419.7558 2325.4556;
	1637.8455 1057.7158 1875.4858 614.0 955.6 1439.7113 1163.4279 342.3005 625.9671 5456.4058 2394.836;
	1660.0427 1085.1031 1939.3088 633.1 1024.9072 1507.1 1149.7298 341.3127 628.9586 5438.5371 2287.6645;
	1746.9745 1111.9138 1915.2942 630.1704 1015.4 1461.4491 1158.664 356.6895 648.7604 5425.8888 2290.513;
	1731.371 1081.4088 1882.9618 602.5014 989.9435 1435.134 1149.7344 343.5315 641.7815 5385.461 2208.1185;
	1659.169 1020.7797 1766.5 594.3856 927.5 1340.613 1076.3 330.2936 627.4422 5194.7616 2104.849;
	1571.0276 965.5033 1638.862 590.4229 859.5457 1235.7868 1023.0074 306.3538 590.3002 4937.3114 1974.434;
	1564.597 928.516 1616.3742 572.0496 839.5694 1179.5976 940.7329 284.7841 555.7054 4753.3515 1892.776;
	1511.499 900.9994 1577.2022 589.3 814.7524 1170.9 923.9504 257.8 518.7 4538.7962 1775.7538;
];