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
	1588.6659 959.33 1626.1055 563.6487 810.691 1206.4128 896.217 238.806 513.3809 4606.7988 1727.7701;
	1600.2959 987.9344 1661.0199 556.4458 812.0866 1237.3135 896.368 246.5337 504.1929 4532.7468 1690.8943;
	1635.2404 1004.5684 1709.6668 555.5029 845.8143 1227.9037 894.7945 249.7808 503.9 4546.1 1699.7;
	1688.2588 1059.3633 1801.1725 569.7105 869.2682 1291.3066 953.4 272.5 546.9133 4798.4389 1838.0049;
	1855.3768 1182.2416 2004.5 608.1397 1022.6377 1448.1 1055.6142 311.7724 622.0 5341.753 2076.932;
	1937.342 1246.4 2069.4641 622.9387 1063.7779 1520.6771 1105.3832 329.7651 692.6776 5832.6326 2177.0876;
	1911.2493 1252.5374 2101.6393 627.1638 1084.0194 1514.7654 1083.7289 343.4947 695.3 6167.2147 2170.5346;
	1920.5096 1266.7019 2136.256 611.5623 1070.4836 1529.3777 1088.7481 347.4996 702.4 6430.7898 2152.0396;
	1903.8636 1259.2412 2164.5457 593.0139 1087.0204 1536.7103 1106.2483 349.2 703.6251 6520.4909 2217.7985;
	1892.2925 1256.1394 2143.4841 586.4507 1071.8942 1506.9 1093.4062 344.2 704.2486 6520.5574 2153.3876;
	1847.0672 1238.2295 2097.6183 584.0034 1043.1163 1429.5725 1025.5555 329.6817 684.2689 6444.1 2003.9803;
	1860.6277 1238.8054 2096.5861 589.6573 1056.5723 1429.4296 1009.379 326.882 696.9 6510.7259 1997.5905;
	1830.9625 1220.4258 2099.8158 573.8 1058.9 1425.5019 1025.7022 345.4841 694.7 6517.4305 2056.9161;
	1796.7676 1171.9618 1992.1735 547.5935 1040.7857 1411.0342 1012.8451 326.0967 692.8907 6344.7628 1988.2688;
	1793.0077 1157.2585 1984.4363 562.0691 1009.3156 1410.0498 1051.5031 334.8 685.2 6416.2053 2117.4148;
	1792.9435 1137.8087 1968.1749 566.1488 1045.3429 1438.4497 1073.3572 327.1513 694.6189 6577.3898 2212.3293;
	1793.8279 1095.0378 2001.4315 591.8043 1026.5755 1476.4206 1105.4312 347.2039 704.9591 6390.8235 2329.8;
	1856.1596 1175.6996 2096.566 605.6369 1091.022 1517.7856 1143.7623 368.48 730.3983 6371.1059 2413.1871;
	1895.8391 1209.8627 2136.0639 605.9418 1078.6609 1504.5344 1192.6267 356.4389 740.4117 6335.8887 2458.1572;
	1857.0 1142.7 2015.6046 596.7714 1041.9882 1468.496 1133.7009 340.1897 698.4659 6129.5756 2318.788;
	1778.6608 1077.6873 1935.9 571.0584 983.5063 1372.7836 1033.3406 306.2989 637.0082 5760.1964 2131.3389;
	1678.6 997.7 1784.0148 547.6197 905.9855 1251.8 940.429 270.7515 578.4343 5317.1269 1879.7768;
	1675.0883 982.2857 1736.5962 551.6927 894.6989 1256.0429 950.7794 270.3 555.1647 5017.8357 1832.0859;
	1598.5484 942.0052 1680.044 556.3 851.7 1174.4078 905.8566 260.5172 529.0502 4768.324 1695.072;
];
