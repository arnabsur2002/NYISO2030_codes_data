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
	1527.0855 923.8341 1607.0033 608.6025 792.7822 1283.429 877.6607 260.6 523.5886 4693.334 1827.5927;
	1511.559 893.9608 1548.5664 596.4501 772.4363 1258.3 860.069 254.0128 506.3729 4539.7314 1764.0;
	1491.6757 886.6226 1544.5588 600.5 759.3278 1248.0237 855.7216 247.4126 512.2 4494.0865 1747.2011;
	1495.2455 902.3301 1560.6689 599.689 794.5798 1259.0505 889.2332 261.6018 530.3656 4606.3106 1795.7288;
	1531.7725 949.3543 1638.2136 606.711 831.0844 1290.7665 918.2855 275.7783 555.1527 4671.8598 1868.7753;
	1550.3098 946.5963 1675.72 620.621 889.0522 1347.0 919.9717 256.342 552.8 4701.1522 1884.3265;
	1556.3 970.4412 1714.861 625.5533 949.4191 1394.0387 984.1613 282.0 569.9244 4665.3521 1951.3471;
	1610.5363 1018.1263 1775.6 647.8387 1009.7752 1462.7 1029.5098 312.3306 589.0784 4966.9809 2013.2158;
	1619.7 1019.124 1808.4483 658.1904 1005.8751 1457.5584 997.5408 296.8624 556.2849 4844.7288 1941.0014;
	1607.3979 1014.763 1742.1678 655.6205 969.6081 1354.11 962.3001 310.6188 570.0464 4951.7674 1941.4664;
	1629.4855 1012.8147 1697.3189 637.7005 937.4482 1346.8227 999.1023 299.7166 601.9237 5194.9298 1946.6201;
	1670.6236 1037.596 1742.8474 610.2316 932.5514 1328.6395 988.2858 326.8 543.2366 5300.6538 1958.7652;
	1658.5547 1063.9395 1709.0658 604.6 913.349 1348.7 1004.2465 374.9 612.3503 5427.6224 2095.8863;
	1636.579 1048.7013 1769.0524 606.7975 985.4019 1364.6236 1005.9034 393.4485 596.6685 5462.4473 2123.2885;
	1612.4986 1035.3354 1741.5272 585.8 1001.6999 1375.8659 1014.955 396.0016 628.3868 5445.6979 2209.1515;
	1635.6741 1055.6 1735.5348 597.6 1000.7813 1383.8689 938.7746 388.8518 594.5423 5401.9394 2195.602;
	1664.5725 1104.9144 1809.6147 622.7957 1002.2094 1431.8115 990.2308 394.0885 629.2277 5432.512 2197.0938;
	1712.4978 1134.2755 1877.0427 651.8 1024.5517 1494.5517 1064.3964 399.7 671.2 5568.7114 2308.0459;
	1756.386 1157.5287 1865.185 636.169 975.4137 1462.3865 1042.0065 377.527 670.5865 5536.2934 2344.1892;
	1716.701 1122.8 1808.9 606.4 948.5004 1394.402 982.1449 349.6977 653.1022 5244.4879 2193.7239;
	1691.9839 1081.5 1754.3328 585.5923 905.315 1319.3586 985.2855 331.2478 635.3969 5133.4246 2127.6654;
	1603.6937 1012.2147 1620.2999 566.289 857.222 1234.9216 927.3043 307.183 576.8057 4923.1245 1939.9905;
	1504.1307 941.9 1571.4 562.9224 791.2581 1126.2928 851.7919 248.2166 517.418 4470.3128 1664.7726;
	1450.6194 900.3141 1543.2762 567.2689 719.904 1116.4 842.5962 244.0245 504.1993 4385.069 1604.534;
];