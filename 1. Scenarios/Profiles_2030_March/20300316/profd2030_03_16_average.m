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
	1507.6039 880.8336 1498.6846 543.351 720.1897 1080.293 828.0181 235.6467 491.6264 4414.6237 1683.5891;
	1495.0336 875.8582 1488.9842 540.804 712.9833 1071.314 817.8266 232.0293 482.0399 4336.3921 1656.0363;
	1499.6735 880.7532 1500.9909 543.5305 720.1946 1078.7556 820.8992 232.8734 482.7774 4311.0417 1661.7502;
	1531.4457 909.1468 1550.8791 552.1137 750.7408 1106.6875 840.0729 241.5718 493.8294 4372.4065 1704.2598;
	1599.7047 965.7882 1649.5342 564.898 816.0606 1174.8186 890.6452 259.4592 521.855 4545.532 1808.9306;
	1664.7395 1020.5698 1740.2324 577.3543 872.7435 1234.2903 940.9036 277.5913 552.7473 4755.0527 1896.221;
	1712.882 1056.2214 1807.0834 583.6445 920.5488 1289.6171 989.5896 291.53 583.9224 4989.2891 1988.2589;
	1752.4675 1087.078 1856.5565 588.2425 949.962 1323.631 1023.4596 300.682 607.0623 5185.8469 2036.9334;
	1770.5769 1097.8367 1876.3493 585.5688 955.7077 1327.652 1035.408 304.1662 618.8464 5318.4802 2051.6347;
	1770.2801 1096.2698 1871.7988 584.1758 950.0519 1325.8263 1038.5849 306.6894 621.1747 5380.2556 2062.4391;
	1752.5742 1083.3296 1849.5904 579.9713 930.5433 1305.0537 1025.7631 302.8915 617.4305 5400.1065 2036.452;
	1738.279 1066.5245 1816.7634 573.1929 909.0713 1280.6699 1010.5968 298.8694 609.4432 5365.6524 2006.6883;
	1717.6097 1051.2954 1784.2609 569.8417 890.5304 1259.3386 996.2035 295.5898 604.2394 5328.0211 1992.8576;
	1701.0152 1045.7646 1773.6278 566.818 888.2733 1253.7171 995.0228 295.0779 600.6946 5304.1786 2000.203;
	1707.899 1054.5624 1789.7473 568.8004 902.9876 1278.3016 1008.1378 298.9323 602.7111 5303.8244 2039.2326;
	1722.7605 1073.051 1822.4039 576.2854 926.563 1318.8198 1035.8501 304.1417 612.3405 5331.332 2109.8043;
	1736.5135 1089.2067 1850.4111 584.4066 948.5387 1352.0738 1060.5714 314.4626 622.454 5381.2404 2180.1587;
	1793.385 1134.4594 1926.4153 597.0949 989.2801 1413.7218 1116.649 328.3419 654.1634 5494.4293 2305.7213;
	1831.2515 1150.1929 1937.6494 597.9052 985.2794 1406.411 1118.367 328.3873 652.9927 5473.2539 2295.4556;
	1793.689 1101.3104 1865.5336 587.6124 940.1583 1352.5534 1084.151 320.3741 636.2581 5355.3858 2223.3918;
	1730.3121 1042.0141 1771.6788 572.1872 887.176 1285.5765 1031.9965 306.4173 614.0314 5193.0951 2117.5824;
	1649.3113 980.3001 1676.4796 562.8049 835.3709 1215.772 972.5097 287.1811 582.7811 4990.3745 1988.6427;
	1601.0073 952.756 1646.2539 575.9394 824.8722 1180.7101 934.0714 269.4672 554.1764 4861.2398 1876.3233;
	1565.7176 927.834 1620.7296 579.2161 803.9417 1152.2138 899.8915 258.5748 530.5951 4686.1005 1796.1847;
];