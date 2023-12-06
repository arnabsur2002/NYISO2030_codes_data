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
	1508.4398 911.1201 1508.8007 531.9 790.4748 1084.9413 851.8626 241.9745 522.5 4451.4418 1676.8637;
	1503.4941 909.53 1517.7628 535.4547 783.5296 1087.4 842.0103 247.233 508.1525 4432.9006 1643.9528;
	1544.0794 947.5303 1557.3 533.389 806.1445 1104.1953 848.164 262.9574 504.5792 4441.0981 1682.2887;
	1593.764 985.3891 1632.1327 547.4151 820.1783 1153.4618 870.8 270.736 530.4341 4604.4443 1776.0546;
	1715.7 1094.8165 1812.0775 580.0298 913.3 1287.7333 977.7929 300.9783 603.6884 5045.0 1980.6507;
	1811.9004 1162.1 1905.4138 588.3 960.692 1385.8109 1033.3 307.2144 645.7432 5400.2624 2108.5945;
	1801.6565 1164.3267 1899.6925 548.292 937.5609 1411.3 1080.3937 312.1897 677.9 5755.0535 2173.2143;
	1866.7981 1206.6982 1932.2777 574.0597 948.7777 1394.127 1134.0896 299.8994 710.1741 6007.5043 2210.1492;
	1890.1841 1186.7865 1905.6978 553.9524 937.9466 1407.5428 1159.138 293.975 721.472 6029.0253 2249.0291;
	1907.3543 1189.8 1863.0468 546.7228 902.1269 1345.2282 1127.6347 274.2656 719.8107 5963.3596 2183.8167;
	1880.9577 1109.2721 1776.7598 523.2017 876.1301 1340.2184 1059.7116 281.6078 694.3 5852.017 2068.4214;
	1907.5359 1128.8 1762.9825 520.9167 913.4804 1364.1017 1094.2899 303.3104 698.6497 5843.3569 2060.5757;
	1899.5 1111.2195 1745.2387 507.9 873.2581 1350.1819 1054.8033 297.8392 692.4696 5865.9028 2081.1572;
	1841.7609 1138.8742 1744.2399 524.4417 870.1432 1302.5869 1019.8954 312.8 688.1 5786.2489 2180.3523;
	1808.912 1122.8235 1725.4008 534.3033 907.0923 1310.4112 1032.3948 334.5999 714.8124 5976.5824 2315.1934;
	1755.6543 1094.9476 1745.2199 546.2 939.2861 1308.8 1049.9827 342.3 706.9203 5900.4998 2285.2027;
	1768.0925 1107.7444 1763.5889 555.0309 987.1203 1304.9 1052.3136 336.2523 727.709 5798.4274 2337.8197;
	1793.0384 1106.3 1776.6841 561.0216 951.441 1337.9043 1067.8383 322.0532 722.6864 5715.5524 2399.697;
	1843.049 1106.0152 1787.4426 567.4 949.9101 1355.4081 1081.0128 324.0507 723.1016 5717.9025 2430.8317;
	1801.3059 1058.1945 1726.7836 548.8129 916.3015 1282.6774 1037.9 324.2306 663.1009 5532.7885 2294.4267;
	1734.1938 1003.3234 1673.9027 533.3161 865.5058 1227.7915 990.4792 294.8 638.9742 5321.1525 2184.9889;
	1640.9366 941.5265 1500.2434 514.4368 789.2755 1132.3637 899.0468 263.5 577.8746 5038.0121 2000.708;
	1661.3709 953.8845 1530.9704 551.4362 768.6503 1096.9689 885.9 268.6107 532.3945 4880.1 1881.3625;
	1610.784 907.9535 1517.7645 557.9 747.0623 1048.5996 855.5157 252.5674 526.6392 4653.1139 1825.6625;
];
