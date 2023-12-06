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
	1446.8862 913.1805 1698.8353 580.9993 879.7131 1221.4732 919.4261 292.2269 567.1131 4748.1182 1827.8076;
	1406.0581 891.5 1637.7 585.5507 823.0423 1186.1075 881.2754 283.1 542.2766 4610.8489 1744.757;
	1415.9859 896.9 1634.8513 591.4927 839.5 1188.7363 896.1837 280.9 542.7459 4506.5678 1727.6768;
	1416.9246 934.5887 1669.1999 587.5407 863.3654 1232.1665 918.8708 295.2 550.9657 4605.6247 1771.2468;
	1462.0493 988.5647 1734.1 617.9889 929.6958 1291.8037 962.474 307.3214 562.0899 4676.7 1872.7692;
	1522.3 1031.721 1783.3223 620.5189 984.9754 1340.1587 997.3261 330.1 572.5385 4854.1 1947.7378;
	1547.5517 1069.2566 1869.3878 644.8228 1055.5327 1415.7708 1073.9208 349.4093 599.9053 5037.8562 2045.7323;
	1588.5962 1060.7147 1879.8239 642.1302 1078.2949 1456.6159 1116.5 354.4532 622.9998 5261.4407 2132.5;
	1597.0929 1066.5558 1909.3727 624.4 1084.9661 1472.0796 1126.4511 385.3475 646.4383 5377.9632 2190.9865;
	1658.1747 1079.0214 1871.3203 614.8088 1061.2465 1428.5687 1136.4916 354.7093 662.8064 5383.9788 2176.8611;
	1636.3 1080.929 1885.4911 607.5 1045.9423 1423.2218 1140.7779 362.8811 655.3981 5390.2 2204.2302;
	1630.2484 1080.5364 1901.5792 611.7 1038.6292 1411.2728 1124.6391 364.1757 642.6573 5408.2033 2155.8039;
	1625.9472 1070.3609 1867.1607 604.6 1005.8769 1387.1446 1097.3 374.0244 661.4045 5456.8683 2182.3168;
	1682.4 1093.9 1913.2532 602.4 1015.6849 1377.7 1108.5877 365.8318 664.9588 5499.2577 2196.4698;
	1679.8915 1113.7191 1964.5156 610.661 1040.1 1419.254 1157.6872 345.3502 697.4495 5554.2754 2238.3231;
	1656.0 1134.608 2007.0708 622.5073 1064.1171 1445.3964 1162.0674 363.5633 738.6662 5579.5475 2301.3214;
	1631.6332 1136.0 2018.5154 626.7844 1072.9804 1460.2666 1181.6 368.3648 724.8741 5601.1574 2372.4949;
	1682.9892 1162.2 2033.1172 633.2594 1141.3762 1526.9034 1236.2844 362.7 774.3522 5661.6974 2656.0959;
	1712.7629 1172.2466 2024.7346 632.3744 1075.5315 1501.8772 1232.8834 380.2965 780.5061 5735.95 2547.4466;
	1673.0888 1117.296 1890.7904 612.5941 1014.1847 1405.8089 1145.0692 363.226 715.3681 5548.7436 2388.3923;
	1629.4529 1082.9439 1848.3302 585.0916 945.1 1329.9152 1054.8338 347.5622 670.6365 5484.1851 2277.425;
	1539.9336 1017.341 1738.874 559.1 873.3024 1227.1109 991.7696 314.4589 622.4928 5250.6957 2075.2321;
	1462.59 952.9918 1632.9312 540.6019 815.6 1124.4925 927.6139 273.2 549.7284 4806.5219 1831.8663;
	1483.833 932.5978 1617.179 540.0032 820.5821 1109.7385 941.2235 255.8189 516.4474 4581.7116 1707.1488;
];