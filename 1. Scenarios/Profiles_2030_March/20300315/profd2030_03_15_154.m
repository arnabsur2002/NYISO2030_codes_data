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
	1470.2228 933.134 1529.8354 488.0524 853.4724 1089.5 840.8 247.2865 479.5169 4517.3108 1686.8;
	1450.1351 909.8463 1505.0694 504.0809 814.8823 1063.5875 826.8 235.3 466.0894 4361.5445 1647.9357;
	1468.1776 919.1225 1539.7044 494.7 803.2684 1080.7384 826.2 237.3106 472.3886 4373.8334 1678.0572;
	1526.5435 975.9201 1616.9917 511.7586 836.441 1121.7826 852.3172 260.6 499.604 4541.532 1743.8189;
	1674.4747 1094.9017 1772.9104 537.1701 917.6217 1259.7282 945.6913 297.2 563.7679 4990.6408 1966.2342;
	1800.0975 1157.1053 1849.8048 515.4775 935.0383 1335.0799 1013.5546 330.6 644.382 5442.6892 2094.0496;
	1863.8 1190.5399 1927.3711 515.6706 978.5065 1349.6 1009.324 318.6 641.0 5729.964 2117.3569;
	1938.7561 1206.279 1972.3712 518.7669 959.6681 1324.623 1027.5462 328.0934 664.4552 5962.411 2127.1201;
	1958.7 1211.4803 1961.4871 549.2 943.3173 1286.9273 1033.2634 321.8 679.542 5971.4116 2172.7875;
	1959.858 1210.6803 1929.0647 541.4846 922.0014 1257.5784 1047.6435 317.049 703.2202 6040.7306 2197.3915;
	1949.762 1195.9 1944.2 533.6 905.9 1176.4681 1009.7145 312.974 684.7139 6081.8611 2079.8226;
	1928.2418 1163.0045 1932.7 523.9926 869.3177 1201.4964 1030.4615 318.4019 680.4735 6042.2675 2051.6983;
	1926.8 1177.1814 1883.1362 525.5706 865.3687 1206.4107 1056.0823 328.3552 678.4676 5941.1863 2056.3761;
	1897.3138 1134.1775 1863.2862 509.0572 854.964 1227.3 1032.6878 318.8616 690.2613 5906.4327 2038.9111;
	1858.5594 1145.2265 1819.2945 519.3 853.7547 1207.0 1010.7462 340.5246 675.7646 5938.7313 2131.4937;
	1910.9824 1179.8161 1816.3424 520.5317 862.4837 1259.135 1038.8985 344.8663 671.9848 5956.2867 2159.2188;
	1878.6578 1144.2339 1836.9573 523.7359 914.0663 1289.0698 1045.0786 345.6625 670.3 5778.9271 2217.2741;
	1864.9168 1178.5538 1894.1784 520.1752 951.8076 1328.9 1121.3255 341.8765 702.9359 5787.2992 2341.5361;
	1851.0219 1164.7 1900.7866 499.0356 965.0 1318.2655 1117.7017 332.1054 685.9 5621.785 2263.236;
	1801.7419 1109.7667 1816.0256 513.5991 900.8496 1255.3945 1052.968 315.9 655.3207 5341.0186 2145.5867;
	1725.0231 1010.9029 1709.7109 477.0733 850.8996 1144.2499 962.3949 289.3186 594.1236 5053.7183 1885.9818;
	1629.4399 938.5279 1625.1535 467.2149 812.1868 1083.813 918.5 269.8302 560.8161 4763.7708 1686.2511;
	1597.5443 938.6793 1574.14 498.9936 795.0687 1086.0932 894.5583 267.7 522.7 4613.7454 1707.5959;
	1575.2063 915.3696 1561.0159 515.2556 740.0 1062.8594 870.3414 250.3901 499.8 4376.3815 1615.6036;
];