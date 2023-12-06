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
	1522.4856 929.0834 1628.3303 560.0477 782.7263 1133.4824 828.634 281.6252 479.3977 4426.1512 1617.0928;
	1529.3055 919.5388 1623.1 561.4429 780.9713 1147.6757 852.1326 284.8428 499.4238 4420.6316 1680.1402;
	1524.6165 928.6529 1669.7388 564.4889 785.3148 1165.3667 873.0492 281.0915 498.7 4409.2982 1710.3951;
	1626.8062 1007.0161 1780.6253 598.2856 863.4302 1204.7022 934.651 318.2275 545.8751 4741.3142 1833.0059;
	1762.9065 1122.2263 1994.559 614.7673 976.7298 1347.5533 1033.5712 336.4221 617.7 5305.7276 2055.2447;
	1844.2932 1196.3696 2113.3112 627.8529 1041.7748 1437.4674 1114.1 363.4686 701.3605 5942.0531 2226.3868;
	1841.9584 1204.1903 2120.6547 622.2 1067.0489 1433.3945 1149.4541 378.0 710.8729 6354.4074 2271.4125;
	1922.3571 1247.2163 2176.6491 617.3609 1073.5632 1403.7929 1172.1896 375.5693 716.6262 6540.6489 2323.3157;
	1935.0968 1264.3306 2238.3586 616.1479 1115.7319 1384.955 1195.4293 398.3949 770.3223 6720.8819 2389.0929;
	1864.6332 1215.8133 2170.7649 621.079 1093.6726 1340.7459 1153.6446 369.4429 737.8 6618.3493 2307.6784;
	1816.7782 1206.6601 2194.6202 630.3595 1066.3576 1279.5672 1105.4777 380.1442 712.7815 6599.2218 2276.4367;
	1800.5052 1175.5184 2168.0823 624.3147 1027.9 1248.2726 1090.2771 384.8537 710.8209 6455.8079 2229.1655;
	1799.7686 1174.6137 2146.0783 617.2419 990.8469 1232.6717 1032.174 383.9 695.9168 6338.4421 2157.1;
	1766.1 1176.3771 2060.0051 610.5686 979.1479 1119.4248 1014.3786 373.914 690.6 6329.9747 2098.3557;
	1718.5496 1129.7049 2013.8521 599.3727 970.8206 1138.3119 1040.3542 405.2339 679.1074 6287.5315 2131.012;
	1759.7262 1180.1816 2068.6878 614.4483 996.9056 1183.4296 1064.6072 428.3995 671.4212 6401.4293 2284.6953;
	1780.2286 1201.0015 2125.9 609.7 1012.0271 1277.1922 1099.7363 440.3248 710.5246 6262.3438 2404.6875;
	1870.5 1232.2148 2163.1361 632.811 1035.0997 1436.594 1181.1086 411.8991 717.5135 6318.7878 2521.0348;
	1866.3694 1256.0788 2147.9335 618.0 1046.2985 1372.4504 1181.7193 408.0 722.6965 6279.9951 2525.4819;
	1797.4206 1184.7 2047.248 603.3812 960.5007 1326.6347 1133.7132 390.5217 676.7818 5941.8394 2369.0081;
	1702.8216 1093.906 1907.1 589.1 918.2611 1222.0994 1042.6224 346.3 613.253 5604.485 2147.4941;
	1598.4996 1013.3665 1789.735 573.6512 857.1732 1174.5468 964.3303 313.6892 557.0306 5232.0975 1958.5056;
	1519.5742 999.4 1750.2 583.2643 895.3897 1174.773 943.9991 296.0999 555.2 5043.7097 1979.3796;
	1469.5918 979.3418 1711.2 603.3 876.9548 1166.7088 916.2409 274.8408 531.6743 4740.2559 1853.0765;
];