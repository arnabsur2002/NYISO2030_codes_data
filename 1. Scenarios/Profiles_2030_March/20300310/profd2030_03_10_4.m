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
	1512.3578 931.6377 1676.7139 570.3357 804.1623 1294.5981 921.1141 284.7 519.8096 4906.2401 1811.509;
	1471.6 907.4305 1606.4032 565.5849 772.4605 1262.902 882.9416 272.6464 494.4436 4619.268 1695.7132;
	1465.9598 901.8 1618.3 577.5266 752.3537 1248.4689 882.8286 276.3522 499.379 4609.0399 1707.6603;
	1490.5478 926.6282 1640.0968 575.1249 748.9814 1245.1 884.2 291.6262 490.7498 4620.4863 1631.7172;
	1527.3546 945.2754 1687.9957 596.7 781.2369 1294.5002 921.5 300.5079 509.012 4703.6859 1680.4962;
	1620.1276 1002.8262 1777.0794 604.664 856.3977 1373.9775 965.6617 312.2 560.3725 4762.9782 1495.3926;
	1678.8984 1040.5 1835.3354 617.9 898.3376 1409.2596 1034.3441 328.3858 577.3369 5039.9318 1505.1208;
	1713.7701 1062.6167 1893.7201 588.5085 958.5991 1504.8589 1106.6 362.0231 620.6715 5287.7469 1784.7236;
	1715.2744 1086.1001 1911.5732 577.4673 950.6901 1516.4109 1102.7796 376.0395 613.8624 5375.8 1798.8231;
	1756.0225 1119.2 1962.9476 600.6 922.7581 1518.3 1112.7875 382.5706 614.783 5411.8246 1506.6976;
	1739.013 1113.9 1970.6208 608.0892 925.633 1509.1852 1112.2516 388.7687 637.8511 5549.544 1786.7864;
	1775.5319 1156.5824 1960.8685 604.555 916.0756 1483.1742 1069.9281 419.1824 633.1814 5537.9507 1810.2732;
	1777.3536 1156.9989 1937.3985 570.7359 911.5 1467.4436 1053.6 390.9489 637.8 5492.1514 1777.2854;
	1732.8129 1151.27 1941.3261 573.8468 910.1836 1499.5409 1070.0561 384.1739 636.3 5434.421 1808.8926;
	1737.7143 1155.1501 1944.9273 575.7905 906.5788 1458.7591 1057.8399 385.7763 644.7627 5428.987 1626.2401;
	1762.7859 1157.0795 1926.9 591.0855 923.6589 1498.9119 1076.7047 372.5702 635.1 5454.1 1658.6159;
	1720.2705 1117.8791 1895.3123 611.3 945.4638 1506.2938 1051.4522 412.6114 648.8145 5511.1117 1962.7213;
	1815.7146 1163.2 1972.5218 616.9062 985.9832 1556.3 1115.4799 396.8722 656.2129 5587.2402 1834.626;
	1831.8459 1160.0492 1949.7871 626.3 965.8737 1539.1789 1120.5172 379.0 659.8699 5659.1518 2120.9171;
	1817.5929 1144.3776 1888.0629 610.2037 918.9179 1449.9793 1075.9255 360.5916 642.2762 5531.1342 2023.0579;
	1725.9752 1110.4977 1847.8533 567.2488 867.4844 1379.937 1003.9438 350.6 620.3936 5385.106 1990.8145;
	1655.4399 1023.4147 1740.9975 562.3369 839.7322 1303.3063 950.3128 334.4545 563.0 5142.9929 1848.7752;
	1581.4831 994.9424 1765.7062 583.4255 783.4054 1170.333 881.6268 301.0406 492.3071 4611.8531 1408.885;
	1522.2435 943.4 1656.0668 586.2223 755.1044 1122.1268 855.3164 287.5508 475.9807 4438.8277 1369.3926;
];