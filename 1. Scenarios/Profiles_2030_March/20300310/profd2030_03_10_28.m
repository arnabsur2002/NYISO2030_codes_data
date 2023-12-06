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
	1522.4601 943.3098 1632.6956 488.9944 785.9328 1194.229 918.8 287.548 571.8341 4897.2345 1897.3961;
	1447.1389 918.4906 1595.5247 444.1137 740.334 1160.9567 869.8606 272.8 541.4718 4615.5 1764.037;
	1466.4118 919.0951 1629.1959 489.748 746.3582 1175.0861 879.0959 294.5648 540.8215 4592.9684 1761.1807;
	1482.5293 924.5378 1626.5511 509.6393 759.6433 1195.5573 888.9671 287.4561 542.2004 4596.4295 1739.3222;
	1493.4593 942.0 1694.6993 523.7257 830.4191 1256.3 938.5 301.8 572.8071 4682.0 1824.932;
	1548.6382 978.3787 1787.1827 533.2821 859.6386 1307.1476 972.034 328.1505 601.9238 4782.438 1861.9561;
	1572.7 1001.7354 1837.9764 544.7328 893.6572 1349.1171 1023.8845 316.1 645.3822 4948.4411 1912.9455;
	1569.7156 1023.6 1860.5931 584.1154 928.1429 1371.7172 1075.1 348.3957 686.4892 5245.5537 2049.5525;
	1633.1716 1036.1818 1889.4964 588.1712 974.235 1413.635 1121.3833 377.6759 744.5291 5460.7439 2176.6099;
	1677.9104 1073.6161 1903.3025 587.6626 988.2312 1407.0466 1128.9134 390.9593 737.5763 5512.7486 2099.7866;
	1700.443 1118.4652 1932.8725 607.8878 997.7783 1396.1 1128.0062 391.5883 736.9875 5572.9506 2118.3255;
	1628.8688 1121.7784 1937.1633 580.965 945.7368 1350.9629 1129.6767 379.3872 715.3613 5478.7744 2158.9809;
	1617.5823 1090.591 1857.9536 598.0 913.6294 1313.1047 1091.9605 359.852 709.8574 5404.4973 2146.9932;
	1577.0907 1066.0083 1821.0337 609.4049 896.0934 1326.4104 1074.3644 339.0386 706.3374 5418.4725 2130.2436;
	1619.8396 1073.2236 1821.2763 610.7408 899.9749 1362.0618 1065.9073 341.109 695.1265 5474.1823 2273.701;
	1637.1613 1085.4 1841.8761 635.8794 912.1854 1398.1134 1087.9082 342.6013 693.9346 5461.0132 2257.9613;
	1622.175 1100.2789 1848.1878 637.5578 928.8561 1477.7786 1126.4671 339.7981 691.7368 5527.5606 2261.5065;
	1708.7216 1183.5335 1985.5787 633.7596 997.6662 1557.916 1205.4 389.6494 725.5383 5739.326 2426.836;
	1719.2768 1149.817 1953.0731 635.6649 977.0842 1538.8304 1174.1688 377.7111 719.7 5667.1691 2401.1;
	1690.3775 1115.5144 1886.4 602.6034 923.0488 1479.1 1107.9864 347.1 693.8353 5608.2551 2320.2017;
	1654.8479 1068.0 1812.5943 577.9378 869.3 1381.8862 1039.2046 313.4677 660.3931 5427.5357 2140.5471;
	1536.0902 994.5176 1709.6 536.7164 797.6625 1284.0 975.256 280.8 623.0745 5230.6632 2017.7021;
	1559.1396 929.3493 1653.938 476.2522 740.7683 1138.9 887.2608 260.8295 514.6654 4890.7174 1747.9461;
	1560.9126 903.7463 1602.6225 482.0091 741.9726 1112.5333 879.4416 253.3 493.9312 4819.6062 1670.6;
];
