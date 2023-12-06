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
	1381.1097 851.6575 1497.3918 502.3 761.5 1046.2 857.5776 263.174 477.3684 4436.663 1633.0;
	1427.3 878.7 1516.9 491.757 769.0339 1045.4082 849.6361 259.0023 479.3432 4362.2867 1616.3203;
	1431.7744 888.2826 1552.99 487.8779 800.1609 1074.4745 859.1163 267.0313 489.3 4428.2971 1649.5389;
	1469.9247 941.8682 1641.1189 505.902 841.9342 1126.5937 894.743 288.0487 515.8438 4628.3298 1782.2159;
	1662.0 1048.1577 1817.4628 509.2475 978.5028 1282.2121 984.11 327.3699 588.277 5133.6918 2032.539;
	1712.636 1111.8263 1939.3 536.3685 1037.2411 1362.2581 1053.017 337.8062 642.8907 5612.5806 2208.2061;
	1715.6698 1128.1561 1947.0 545.3085 1032.9713 1370.9977 1103.4 335.8662 679.7 5977.4944 2261.3346;
	1756.8 1150.6384 1909.8855 540.9755 1014.8838 1382.5 1129.4171 325.8951 703.5 6137.5359 2290.9415;
	1761.1471 1166.4194 1898.4257 540.3351 1020.5 1321.3427 1128.2636 330.921 711.2 6321.5013 2323.453;
	1780.3451 1173.2052 1897.439 571.7619 1023.6503 1296.9844 1116.3354 337.1 710.5253 6308.8171 2427.2421;
	1736.433 1168.8266 1869.857 567.3826 1003.7265 1317.9407 1115.6073 327.6657 702.2 6271.3357 2344.5916;
	1766.0948 1155.6697 1848.8105 541.7 962.0 1334.041 1094.2397 329.4 699.3 6331.7623 2329.9545;
	1723.7823 1140.2 1793.4984 537.7555 927.5476 1283.3921 1087.8046 328.6974 682.8995 6396.3817 2351.8766;
	1695.9698 1122.7 1762.0328 526.0884 866.4718 1268.6497 1065.98 322.0048 674.8806 6305.808 2276.776;
	1689.1363 1080.4793 1752.5938 523.3587 874.5768 1277.0939 1074.9685 308.1 675.7 6206.205 2352.6308;
	1692.3494 1099.4865 1833.4184 524.6 891.854 1261.1 1042.8812 308.7933 663.2642 6106.7147 2335.631;
	1674.6632 1086.291 1834.5437 546.3938 944.8486 1308.0673 1044.8084 317.8507 658.7 5992.4322 2320.5189;
	1711.9 1145.8067 1940.3865 565.4027 1032.8838 1376.3147 1111.2384 329.1427 692.5 6106.3478 2539.6774;
	1766.8 1164.7 1948.4237 574.4505 1044.4426 1402.9145 1123.3176 330.9188 687.519 6268.931 2625.3269;
	1712.1634 1087.6 1915.3387 565.7485 984.8591 1308.9 1047.2809 310.5082 634.8452 5743.1127 2321.3011;
	1654.5139 1031.1 1801.7011 546.9 905.0943 1246.3214 1020.1713 296.2492 593.544 5532.7487 2180.3449;
	1577.7822 964.1 1663.4265 529.9834 846.6321 1168.3139 979.7507 277.1 570.5889 5239.7837 2064.1167;
	1436.5451 856.4155 1529.4566 532.1 783.2749 1102.7353 911.0 267.1158 507.802 4782.3679 1824.4254;
	1390.0676 835.0415 1478.3571 541.2184 743.7629 1063.2398 866.4406 254.3 492.6695 4636.1206 1751.246;
];
