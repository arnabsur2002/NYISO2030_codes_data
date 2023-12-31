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
	1588.7334 978.2367 1642.359 596.5 835.9849 1182.9452 924.2 281.6603 552.0768 4604.903 1761.2656;
	1596.8135 983.9471 1666.8 599.3 843.2 1204.0599 936.0 287.7799 569.6916 4622.772 1777.8;
	1610.5277 1015.5 1715.0374 603.7 871.3 1222.843 941.2154 284.9759 568.793 4652.0558 1809.0403;
	1656.5241 1082.3 1804.8232 612.9757 891.6571 1280.8331 975.6439 307.5004 603.329 4879.8182 1938.264;
	1785.3 1201.319 1994.432 642.4946 1025.0081 1457.1424 1097.5 366.0631 684.0876 5466.1259 2185.9352;
	1837.1347 1273.899 2084.7739 639.1205 1027.4864 1523.0 1150.0 395.2041 756.1782 6029.3492 2341.8758;
	1805.7666 1245.5366 2024.4 616.6941 1004.6908 1507.1 1169.3082 386.6306 747.7175 6314.3824 2320.6499;
	1759.4941 1215.2437 1947.0671 599.3225 993.347 1435.6052 1158.4808 365.3592 727.105 6383.5588 2218.1537;
	1742.2886 1203.3715 1961.1079 610.1621 997.6771 1412.7314 1163.1277 363.7943 711.2465 6367.1153 2195.2278;
	1733.1225 1192.1791 1948.1768 595.3068 988.8751 1420.5299 1189.2034 366.521 701.2579 6476.4683 2159.5065;
	1681.4951 1184.5228 1929.5729 591.2 968.0792 1399.7129 1173.8966 340.4 681.4966 6431.2411 2006.0621;
	1775.1374 1186.4366 1888.6507 594.5 992.0 1449.5752 1166.1204 325.536 684.3 6382.7556 2000.4859;
	1747.2507 1190.9673 1872.851 595.9679 932.1119 1382.6165 1098.5265 331.836 670.9057 6390.0538 1978.3461;
	1715.3227 1168.8403 1822.8282 586.8 925.6 1358.9273 1044.6823 323.9829 669.6051 6363.2673 2053.1153;
	1704.8496 1176.8 1842.5161 583.7 907.7188 1346.5166 1057.8836 327.2 662.7343 6261.5745 2079.7943;
	1698.4729 1152.0062 1802.8643 589.8 902.4782 1398.7138 1048.5831 340.8003 642.9786 6177.849 2147.8092;
	1716.8167 1152.9 1828.2921 598.6517 956.1119 1490.5394 1124.1444 363.4155 694.9689 6227.5028 2314.363;
	1750.7989 1173.586 1886.6122 595.1733 973.0923 1533.7946 1191.3157 382.8 744.0 6315.375 2462.1076;
	1754.7505 1186.6764 1852.1637 594.0 974.822 1481.4875 1161.0377 362.5 716.6882 6094.3736 2366.9556;
	1711.6526 1159.7824 1796.6909 598.5189 927.4208 1388.8757 1109.4919 359.7535 689.0 5884.9 2278.0638;
	1678.1707 1080.4775 1721.956 557.3182 852.2735 1274.4603 1029.5725 342.4296 670.125 5712.5818 2143.5687;
	1584.2643 1018.234 1633.72 555.1 809.2 1179.7313 945.8841 305.5997 594.95 5263.3557 1954.6;
	1527.7516 965.2109 1601.5199 578.5879 772.226 1166.0904 956.6719 300.5144 560.3725 4994.6332 1864.5246;
	1510.8243 924.0047 1542.0155 577.0083 766.9307 1145.1399 901.4037 271.1793 543.6205 4682.9712 1805.5336;
];
