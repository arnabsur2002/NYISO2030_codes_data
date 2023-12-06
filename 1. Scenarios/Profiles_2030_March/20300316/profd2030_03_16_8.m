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
	1463.2481 878.0511 1459.8863 573.7778 702.1 1044.546 810.8 223.4 494.2237 4344.0701 1680.3617;
	1442.0746 868.3262 1418.2761 567.2341 684.9 1023.1624 789.9792 221.1814 481.2 4099.0518 1629.1939;
	1427.0863 871.0477 1445.0601 574.2 695.1194 1050.7358 815.3238 224.0 485.8012 4207.8369 1662.1169;
	1483.5687 901.9833 1501.4354 580.0524 741.3094 1078.3856 817.4831 239.3954 501.9835 4097.5869 1667.7002;
	1498.2637 930.8676 1575.1842 596.2594 784.6 1160.2623 887.6 255.8873 538.0179 4410.1819 1756.9589;
	1560.164 993.6408 1703.2 597.7376 847.1936 1213.1508 942.8396 263.1354 566.665 4622.3415 1832.2727;
	1597.9213 1046.9 1799.9219 619.6125 908.575 1283.0 1001.6747 265.2174 581.5043 5064.0269 1980.7599;
	1667.4365 1069.5687 1820.2613 617.4924 900.4535 1270.6639 1001.7099 253.7698 599.3608 5309.5968 1993.0;
	1708.4745 1074.7 1781.5911 607.7084 899.3816 1252.0353 1020.0263 242.181 622.7715 5402.7124 2055.0047;
	1669.8027 1039.8782 1774.2664 595.9181 859.5758 1185.6958 963.673 228.4708 596.4509 5383.3379 2012.4564;
	1710.0445 1061.1051 1779.1271 577.4724 859.4613 1165.674 956.9012 247.9715 603.1522 5576.8313 2063.5;
	1706.5844 1051.6033 1757.082 582.155 828.4544 1180.6976 976.5858 269.1226 611.5414 5572.5282 2030.6272;
	1710.0339 1040.0 1723.7793 585.9261 840.9 1198.1402 951.5566 273.7559 591.6546 5518.7111 2056.0098;
	1703.9136 1032.767 1722.1247 585.4405 831.461 1209.5426 963.3407 267.8 608.6223 5551.3274 2156.7537;
	1679.0819 1025.8206 1710.1922 584.827 820.887 1246.1983 993.9791 262.4067 598.1427 5430.7452 2170.9877;
	1744.0397 1076.6556 1778.5379 595.8014 860.2371 1309.6525 1027.4 264.6683 620.7356 5421.8479 2157.3419;
	1686.0222 1067.5753 1787.0254 587.4286 856.8831 1333.1617 1040.6183 252.4666 618.8334 5313.3148 2221.3378;
	1761.9756 1097.178 1861.6079 599.6865 907.6379 1370.0198 1081.0992 277.2298 655.9 5422.1267 2293.7174;
	1803.4549 1113.2778 1894.3767 607.5 949.779 1390.7556 1116.3584 282.3518 669.0105 5465.3172 2330.477;
	1779.6 1091.1 1852.3934 577.0984 928.1718 1320.2 1083.6357 269.1149 647.9 5332.9959 2247.8503;
	1711.8155 1024.792 1743.3 565.3285 875.3797 1269.7996 1061.3783 273.4341 645.2006 5306.7715 2172.8638;
	1625.7791 947.3424 1649.7251 559.3 831.6293 1223.4092 978.3286 255.0843 616.1013 5061.6277 2029.8517;
	1563.4618 921.39 1598.7644 602.6838 790.2703 1167.9906 929.6564 263.6 582.7235 5001.4703 2011.7;
	1527.3162 918.2 1588.3921 593.7073 742.1073 1157.1672 895.7 249.4 552.0431 4828.4067 1966.3107;
];
