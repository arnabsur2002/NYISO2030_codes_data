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
	1459.2587 850.2551 1451.2479 435.1742 741.0301 1031.8581 804.1016 254.3206 502.3215 4276.1423 1643.5016;
	1447.2112 863.0886 1475.0511 439.0453 762.3194 1049.1202 817.5654 252.9 500.0234 4209.0 1660.7504;
	1482.8 876.8406 1516.724 475.9516 790.3602 1071.8 827.2431 260.2543 511.4936 4256.3046 1666.6789;
	1544.4637 926.4828 1602.6098 466.2481 811.91 1118.066 858.8 272.5 555.2681 4371.8827 1746.0916;
	1706.1224 1051.6927 1775.9599 515.0123 905.4444 1279.3288 968.7 312.6034 634.8242 4813.5358 1953.124;
	1869.3965 1137.9884 1905.44 521.164 971.9219 1356.1398 1044.5751 342.625 693.0 5366.3653 2128.3421;
	1883.9 1153.3225 1908.4834 493.8522 940.6 1331.0401 1044.6054 340.0 692.5699 5565.1541 2133.7328;
	1915.752 1147.8 1904.6148 499.8246 943.1168 1288.8063 1043.6941 339.6 702.6 5945.6514 2149.0593;
	1915.462 1145.8105 1877.8696 489.8451 938.5981 1230.0994 992.6487 334.8688 690.4 5930.4801 2153.4917;
	1920.402 1140.5918 1891.2423 504.9574 938.0205 1191.4681 962.4884 331.4 665.0749 5890.9278 2064.489;
	1891.4565 1102.0665 1836.3084 514.3311 911.9375 1165.6998 935.4732 332.9879 649.6 5931.6869 2082.4456;
	1873.3174 1096.9168 1872.9614 507.4949 910.3753 1221.2199 936.0876 330.8185 653.883 5964.4018 2154.5473;
	1880.6287 1066.7868 1839.382 505.6578 899.4202 1219.8333 956.423 319.6147 650.265 5986.6367 2130.3017;
	1839.5499 1046.8 1832.2038 510.985 896.3305 1219.7551 967.3829 325.7 677.5796 5994.2028 2155.7776;
	1792.6591 968.6487 1820.9725 498.1211 868.9893 1207.4172 961.0659 338.7359 694.4309 5991.7257 2210.3576;
	1820.8827 998.861 1815.175 530.6345 869.7616 1260.8881 933.0625 329.7 665.8129 5842.7709 2174.9603;
	1703.1 982.9458 1790.5 530.0546 905.674 1298.2117 977.3758 358.2 681.5 5731.0586 2256.2379;
	1785.5 1076.5179 1860.2136 551.5679 965.5564 1325.1364 1011.0212 344.5702 697.6 5636.1405 2360.0937;
	1763.3151 1084.3446 1836.071 555.6555 932.9527 1311.8377 1003.4178 304.2634 676.8 5503.7691 2266.0079;
	1711.6942 1037.216 1777.7225 534.5 896.9964 1255.2655 975.3635 318.7603 626.4177 5331.5113 2190.7505;
	1637.9708 974.9866 1682.9 524.8546 834.9637 1162.2744 877.8931 291.4276 566.2669 4969.4794 2038.0654;
	1560.7029 913.768 1598.0756 507.77 804.907 1087.0911 821.0345 262.4298 508.2837 4477.5157 1744.8075;
	1517.809 862.6136 1529.3979 517.268 819.5228 1055.4333 851.3915 247.7 450.9788 4162.4683 1629.6075;
	1543.8271 834.9139 1501.2925 518.0655 772.0455 1026.2825 815.6692 247.6 448.8727 3856.1957 1522.4311;
];