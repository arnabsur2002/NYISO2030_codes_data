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
	1449.883 912.6 1516.6864 595.4043 763.6 1170.2452 820.5775 246.5 490.7866 4503.54 1682.6841;
	1421.8512 922.3 1513.5038 595.5594 778.9 1210.7559 824.6244 261.1865 481.0718 4497.7962 1695.7;
	1443.7561 932.1 1541.5886 589.2783 779.1762 1208.0673 831.124 257.054 482.9542 4505.9188 1711.9469;
	1513.8462 995.4691 1644.3428 605.0319 868.4 1288.0118 877.6 285.2117 501.171 4692.831 1814.7;
	1647.8554 1117.9554 1857.511 623.6997 975.4665 1435.8851 978.5791 321.4604 599.5922 5231.2049 2008.7301;
	1764.2418 1208.0 1950.6648 629.8339 1053.9337 1514.5946 1066.1 352.4398 673.0565 5786.8683 2192.7928;
	1769.2263 1222.1915 1970.8334 643.5311 1046.0445 1532.8846 1097.8756 360.6427 671.9529 6094.4071 2232.3079;
	1796.9 1230.1609 1986.8414 623.2193 1036.9177 1503.0713 1099.4047 364.6977 633.0727 6292.7921 2209.9;
	1802.3307 1243.7673 1966.7075 619.2532 981.1846 1448.7059 1059.852 339.5646 632.6611 6244.7341 2090.0194;
	1798.0467 1221.2106 1935.5484 606.0728 977.951 1426.03 1055.602 323.6 611.9439 6186.9009 1949.2581;
	1775.2337 1207.5594 1954.7591 580.9 1021.4275 1507.6406 1095.1384 340.4813 635.7383 6298.0127 1979.0705;
	1820.8182 1210.229 1964.3436 588.4497 1020.1373 1491.0662 1096.4183 344.9402 608.2888 6309.0876 1931.0779;
	1800.6548 1199.6018 1935.4033 596.9229 979.7298 1460.5461 1019.0365 364.1659 613.9736 6196.9656 1922.7812;
	1797.3776 1207.4 1882.4643 593.9 985.9039 1495.3074 1067.1414 359.3411 667.9 6253.8955 1948.3541;
	1751.2146 1186.6206 1858.425 591.8092 982.0266 1498.3865 1080.7348 353.0658 667.4 6223.4801 1908.2015;
	1758.8144 1208.6259 1894.6258 578.0 970.6501 1478.1005 1069.4 341.1596 665.9 6223.8 1843.0671;
	1754.8 1199.1783 1927.3088 594.9623 942.3447 1529.877 1096.3215 355.9365 666.603 6122.5539 2149.4493;
	1816.794 1234.3622 1993.2921 608.5601 1020.5469 1602.0443 1143.2 387.6754 699.1 6173.0824 2303.0722;
	1831.4453 1263.8414 2033.3172 605.4434 1014.2173 1572.9037 1142.2463 382.6706 696.5334 6060.8324 2321.6598;
	1782.6476 1188.7246 1907.5783 586.2631 963.3009 1481.0521 1082.2743 362.1122 658.9 5881.6544 2243.4763;
	1671.3799 1079.8285 1767.04 583.6568 901.0616 1379.8292 1011.4412 329.4887 614.2622 5558.3706 2118.1468;
	1580.0111 1018.2724 1694.9412 569.4537 853.0981 1258.0764 931.2 302.2669 576.7 5166.1772 1940.3261;
	1474.9794 940.3 1566.0648 600.1442 801.0344 1162.8914 845.7 265.0109 516.9099 4571.2857 1804.5629;
	1451.1085 912.5 1553.6401 566.8307 790.3986 1116.125 812.1122 245.033 503.5 4331.4497 1737.6254;
];