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
	1539.3248 915.3 1533.738 550.4814 715.6647 1082.2219 866.2081 234.0 530.0622 4542.3684 1710.578;
	1519.5 910.4686 1568.9542 534.9982 731.9627 1094.2 863.6898 237.8 522.1 4411.4998 1700.1675;
	1500.9002 926.5653 1603.3 542.8217 749.676 1123.4238 875.6237 244.29 523.4 4527.2587 1750.0678;
	1578.1614 1001.1678 1689.0991 561.7 798.6821 1191.6909 924.4505 273.0749 568.5795 4739.3707 1856.1;
	1737.5361 1138.366 1875.1588 586.6 923.4433 1346.3341 1020.9 321.6407 631.9919 5318.3 2116.9373;
	1872.8109 1217.5932 1976.6769 592.3174 972.629 1445.9064 1085.9313 361.6999 686.5143 5819.8128 2244.474;
	1883.5302 1200.3375 1965.5914 595.1 975.1947 1461.2124 1096.7628 357.9 702.3157 6049.7603 2255.4188;
	1857.8633 1202.4678 1938.6 592.5045 989.4999 1454.2284 1104.3074 356.5095 708.0613 6161.8007 2239.9027;
	1858.0 1220.2606 1960.4102 581.5714 972.9239 1491.9105 1141.984 343.1921 742.4 6232.3 2331.6882;
	1834.5062 1224.6464 1940.3838 588.4587 978.4808 1500.8307 1120.6535 324.9 734.198 6263.0736 2314.5047;
	1830.5455 1197.4582 1878.4826 572.6299 910.9746 1441.5774 1092.3149 299.4379 713.2 6092.2494 2160.0694;
	1808.0655 1190.1665 1835.3388 557.8857 900.5769 1434.051 1033.6394 275.3122 692.8965 6111.6682 2055.0622;
	1756.1525 1162.0415 1777.3493 542.4 874.8766 1401.8945 1021.2704 289.3851 702.5 6098.0247 2116.8867;
	1785.5025 1184.9327 1776.3 541.2472 870.2689 1385.3425 1025.5 288.2264 712.6491 6194.4316 2150.992;
	1763.1452 1182.0373 1837.1128 546.4 894.1152 1412.5285 1034.2938 302.0186 673.9621 6245.0817 2157.9156;
	1752.5603 1195.5577 1869.2208 555.3916 924.4855 1410.5329 1041.3 300.7602 681.0052 6240.1015 2217.2243;
	1794.7197 1244.9877 1932.5014 556.9706 956.866 1477.423 1069.3008 327.0342 709.9 6199.619 2349.1347;
	1818.1 1259.5111 2018.2594 551.9947 1011.2753 1530.5425 1126.4615 330.8027 725.0368 6140.6113 2408.436;
	1842.8 1255.8026 1997.2331 554.7 964.1561 1503.6224 1125.059 315.4123 711.6 6028.6152 2374.9484;
	1725.3761 1160.4032 1883.0806 562.8 873.2117 1399.2802 1070.1785 330.5907 692.0715 5911.5303 2300.8;
	1661.6071 1060.3911 1750.541 555.5667 813.1911 1277.1302 989.8223 308.1 632.8551 5396.2448 2097.7718;
	1557.4769 982.0857 1605.6482 539.7068 741.1283 1173.287 923.5726 277.8 592.7488 5060.493 1929.3;
	1540.3884 901.1483 1550.4892 531.2579 743.2078 1138.6713 847.3188 249.5774 562.6935 4594.1741 1784.0566;
	1472.3954 877.6452 1520.7643 536.9706 737.8484 1103.8617 810.0415 240.0792 520.3869 4471.9936 1689.5;
];