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
	1599.0503 942.2713 1625.7 595.3773 846.8547 1183.8141 955.9254 290.6689 567.7669 4522.9522 1941.8679;
	1592.4358 947.8919 1642.5 588.2486 837.7141 1193.6857 953.5803 284.4582 543.5716 4445.8535 1839.029;
	1619.6011 977.039 1686.4 599.0 860.0289 1226.8789 985.7169 302.6365 549.6378 4554.0301 1960.8637;
	1662.4509 1038.4086 1776.7236 605.8 918.0841 1297.3154 1006.3586 310.4758 576.7 4739.2711 1988.6567;
	1818.8896 1170.3366 1966.1949 614.2812 1053.8938 1451.7428 1095.9 353.4925 652.5484 5214.3805 2204.0172;
	1886.9162 1249.1 2088.0 621.5194 1114.1872 1542.609 1158.5634 372.3225 710.0 5732.2226 2300.4243;
	1911.5889 1237.0898 2060.1271 612.8666 1141.9404 1520.1475 1161.5384 375.6704 718.9124 5991.595 2336.211;
	1874.6007 1223.8013 2007.2721 584.2153 1078.261 1471.6 1133.0 347.5268 717.5 5978.9606 2257.4;
	1909.2386 1228.4129 2015.8 563.6802 1064.2996 1456.1779 1107.0086 347.8172 695.4 5875.0733 2281.3547;
	1898.5 1213.0 2014.6651 572.5762 1074.1292 1433.7 1081.7574 367.3 687.1113 6246.2873 2292.3469;
	1849.328 1165.0256 1962.7425 560.0688 1043.1214 1362.3449 1021.9958 364.5872 674.3591 5910.2595 2225.9986;
	1863.6 1187.0122 1976.8518 586.4433 1063.6041 1382.7635 1050.5569 356.7196 678.4073 5898.7012 2270.5852;
	1806.0067 1148.1171 1902.3944 581.9303 1020.908 1306.4521 1021.5428 340.1219 684.7593 5568.6556 2178.005;
	1788.2405 1134.6221 1872.1032 591.4163 1013.0901 1260.8786 1017.0808 337.9322 674.2338 5694.3355 2229.7518;
	1786.9227 1119.1145 1863.4276 591.5393 994.7298 1297.9364 1030.3 327.2 672.0964 4790.2035 2178.7929;
	1859.2 1157.6 1904.5971 595.3453 1030.1094 1396.8894 1084.3885 365.1051 692.0296 5674.702 2316.4832;
	1847.7323 1162.866 1920.445 593.5 1003.1 1435.6451 1081.0608 355.5276 685.878 5651.026 2383.533;
	1916.8 1193.7009 1966.1479 582.7675 1049.7313 1486.6566 1149.8431 367.9749 699.8905 5540.5022 2489.5;
	1933.5826 1214.0 1949.4424 590.13 1061.3632 1480.833 1161.1711 368.5923 720.1001 5700.1729 2501.3753;
	1867.8248 1165.7426 1869.8486 590.8693 1001.8693 1422.9913 1105.0977 327.8138 689.2872 5398.07 2352.1151;
	1766.0916 1101.4997 1765.0526 575.1 965.7025 1324.8952 1044.9222 315.2513 644.8403 5240.7001 2161.7011;
	1644.3636 1010.6774 1647.7182 562.3716 917.4182 1249.7579 988.8819 295.8 593.5792 5014.9643 1923.6989;
	1547.9863 971.3247 1570.9011 572.4523 862.1 1186.9108 944.9 282.0012 561.5617 4728.9579 1829.7799;
	1495.0264 937.8815 1555.3836 564.7906 824.3 1159.5972 913.7877 257.8558 535.6471 4533.7793 1766.0039;
];
