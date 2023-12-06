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
	1446.6876 952.0729 1523.2624 495.9036 779.7912 1117.8835 854.8975 230.8396 522.8694 4367.921 1739.086;
	1429.5 953.418 1553.3029 500.5088 782.6 1131.6 852.6054 233.5 527.3 4375.9251 1745.8543;
	1455.3835 977.7994 1564.7315 529.7273 764.8 1159.9 868.3131 234.9112 517.5607 4353.6774 1735.3611;
	1554.7088 1055.0839 1690.9314 537.6216 848.7 1230.1455 926.0281 264.3 545.9841 4595.8161 1861.1631;
	1731.612 1180.9789 1870.1121 549.4 979.1986 1399.9608 1028.8153 309.8263 611.9247 5102.0957 2084.7958;
	1843.7795 1270.2086 1980.166 559.5611 1045.445 1470.8 1114.7543 342.0 688.8 5660.4449 2253.0879;
	1816.0836 1269.434 1977.2133 524.3171 1017.7085 1502.8318 1147.3657 350.3406 742.1248 6071.742 2359.9147;
	1808.4 1235.4828 1961.6456 513.3307 1040.77 1463.7478 1173.4505 356.0207 740.3 6248.5637 2347.2152;
	1815.4 1266.7411 1985.8735 521.401 1054.0001 1433.283 1166.0106 361.8511 733.9946 6255.2962 2371.993;
	1805.2174 1234.1725 1900.8975 518.2605 1008.6759 1363.6608 1109.3 348.9938 719.9161 6175.1023 2299.9483;
	1788.7655 1225.1774 1929.149 502.3578 1001.3153 1394.552 1120.669 344.067 708.2143 6296.8158 2349.1233;
	1714.6018 1178.7 1841.5821 498.6882 948.3506 1331.3441 1067.1446 341.5978 697.0714 6380.7247 2235.1076;
	1691.8972 1165.9 1825.286 476.1268 912.45 1346.2416 1061.8457 354.2 690.9081 6260.1268 2203.8701;
	1691.4438 1186.3626 1849.5587 496.366 897.202 1321.0206 1050.9361 346.5918 672.6846 6219.9764 2201.1182;
	1642.0776 1163.5533 1780.427 483.6405 839.2182 1340.3596 1057.5 333.1397 672.5239 6151.4215 2210.7613;
	1672.6971 1182.9029 1762.012 466.5878 846.7036 1357.2477 1056.4614 320.0 668.5348 6184.8269 2236.5567;
	1651.0131 1184.3793 1791.786 476.2338 871.4344 1406.2818 1078.847 333.5147 674.373 6056.8893 2327.1952;
	1687.4567 1198.2 1823.4078 491.7516 904.7973 1421.9 1087.4033 333.3 693.1 5977.9831 2363.6425;
	1729.8431 1217.5722 1876.8267 503.2194 896.5399 1421.1876 1136.0187 362.9764 690.8686 5823.098 2380.2;
	1692.829 1143.7012 1776.2353 525.697 864.6151 1356.2675 1085.2978 330.3665 667.3959 5609.7959 2265.3754;
	1565.1247 1041.3 1647.6753 488.0305 819.9936 1235.632 991.7769 294.0974 613.245 5339.8279 2071.1701;
	1499.6707 976.286 1568.1496 479.3279 775.9899 1143.2 914.9498 273.0932 567.7186 5003.5076 1924.8426;
	1458.3293 913.2 1513.6626 508.2304 724.9077 1130.3753 866.201 248.7 535.6716 4686.8072 1843.2757;
	1397.8163 890.5 1464.2 515.5284 694.6666 1137.5393 834.4 240.4831 517.3 4467.5073 1736.7431;
];
