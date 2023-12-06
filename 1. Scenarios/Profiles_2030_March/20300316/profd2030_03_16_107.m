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
	1558.8627 913.1269 1531.4323 566.9 687.7964 1111.6177 843.3053 236.7399 490.2 4484.5132 1668.0271;
	1538.4801 900.2446 1503.3824 549.954 652.567 1107.6 835.702 224.1463 473.6551 4333.076 1645.2142;
	1537.2092 901.6827 1502.6742 567.2954 674.192 1113.4112 839.1 230.3481 483.4606 4349.664 1661.8;
	1571.8368 930.0005 1564.7531 578.0 705.9112 1155.4687 854.6468 232.3 493.4 4375.4816 1693.5567;
	1600.0744 970.8329 1644.7491 575.7253 799.9134 1239.4281 920.6541 246.238 542.17 4543.7317 1818.9779;
	1637.1217 1001.9478 1732.0238 598.4786 864.5656 1278.9393 963.2483 251.7464 564.2701 4706.626 1883.5653;
	1684.8142 1058.9668 1826.5 584.5 933.1275 1352.2799 1019.6573 274.6585 611.5186 4979.7 1980.2451;
	1756.5 1091.3 1883.9793 587.1512 987.7 1398.4395 1045.9179 293.9 617.6987 5160.8725 2006.5245;
	1741.719 1104.1 1883.581 584.4025 980.8661 1391.1941 1056.7912 306.3202 622.7733 5298.7106 1972.0697;
	1767.3345 1131.7538 1888.6396 584.3038 1002.6821 1412.2252 1084.0643 305.0994 634.8854 5325.8872 2024.3;
	1695.763 1113.6 1856.7898 570.2875 996.4 1421.3347 1068.5747 314.4995 643.6 5434.827 2031.1618;
	1678.0 1068.117 1784.6607 567.6501 961.1641 1371.2805 1027.1784 313.4697 614.5452 5377.9806 1899.5833;
	1693.4857 1060.1 1790.9892 570.4 962.8491 1351.7929 957.7187 311.6505 584.3738 5352.2572 1813.2343;
	1677.3124 1050.846 1775.0318 575.1358 972.5405 1367.2164 980.7789 315.4473 587.2067 5314.3372 1853.064;
	1654.8515 1043.8738 1798.7967 574.1 983.6914 1412.5016 1033.1346 307.3763 595.246 5323.2244 1888.1915;
	1703.1714 1064.195 1838.7236 571.0855 1018.2074 1473.7569 1111.1327 318.8 611.7928 5414.6 2026.2903;
	1747.4309 1078.7789 1866.6086 592.3638 1045.5704 1487.0868 1155.0548 307.3433 649.5735 5453.3126 2124.9867;
	1808.1863 1135.1119 1921.9475 599.7654 1055.4239 1508.15 1227.5781 316.0436 690.5575 5636.8875 2231.9104;
	1816.7672 1140.7433 1951.1914 589.5101 1034.7832 1475.2692 1149.5315 313.4427 667.6609 5522.1108 2224.2;
	1826.6912 1116.8 1899.4618 601.2366 970.8199 1418.7209 1094.7891 285.6941 653.1 5374.0689 2176.6419;
	1700.0295 1026.2065 1775.2759 583.5972 899.7146 1309.0321 1023.0293 282.2 630.7901 5183.9912 2087.381;
	1615.6093 947.2034 1636.4676 582.8701 812.6415 1190.1 940.2333 258.6533 587.2225 4890.2302 1889.2471;
	1570.9 912.1105 1586.5894 599.1744 804.0041 1176.2146 911.0401 262.8739 539.1746 4726.886 1778.4524;
	1511.2299 889.8332 1615.5 599.876 767.3895 1150.4 877.5185 250.5171 528.379 4538.4402 1678.5249;
];
