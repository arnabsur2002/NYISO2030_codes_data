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
	1504.4778 945.7009 1520.313 549.5457 784.5 1113.9569 860.5 198.1662 490.0 4346.2319 1667.0061;
	1477.2 937.3445 1522.4829 526.198 777.7631 1125.908 854.0699 199.5101 479.074 4184.4022 1666.7656;
	1501.7259 954.84 1555.4266 552.2699 789.4933 1146.2583 861.4 189.3321 498.9421 4275.7109 1726.6904;
	1564.5908 1024.5565 1643.2855 575.5599 822.4693 1208.164 920.5756 208.441 539.2921 4543.6365 1821.7;
	1712.1883 1151.8 1812.8335 584.9 934.0799 1342.3 1001.1083 212.3234 587.468 4918.1169 1995.4948;
	1779.0105 1224.9899 1926.5036 579.5269 978.7809 1441.5184 1060.9142 288.0573 650.2152 5539.0205 2154.5076;
	1748.8541 1217.0 1904.4987 567.9244 969.3768 1435.8402 1066.4738 267.3273 665.5713 5805.9039 2142.153;
	1745.4532 1203.6193 1888.5802 536.9961 983.4591 1453.1543 1087.564 314.7668 686.0157 6099.8189 2082.1888;
	1737.3849 1201.428 1850.2163 540.7921 963.2 1390.1744 1078.6389 291.6993 688.9638 5874.7389 1927.7703;
	1778.7674 1203.9893 1862.4694 547.179 973.7 1389.7211 1131.5561 298.8669 690.3381 6071.7164 1968.8901;
	1726.1633 1161.3713 1783.4432 534.0157 944.9737 1382.3644 1104.7014 306.8216 669.9 6104.8188 1900.653;
	1763.9018 1173.947 1764.7481 550.0 918.721 1400.6 1086.5734 299.419 659.0994 6015.9494 1803.7391;
	1731.8305 1140.5825 1737.3581 546.2982 921.0209 1331.9704 1093.1137 305.2 666.3904 5958.901 1887.3255;
	1689.0 1148.6291 1701.9336 550.4181 895.1852 1304.7 1043.9794 295.1567 655.0156 5734.4584 1907.3105;
	1656.7608 1153.0943 1706.7331 548.3706 895.6682 1308.6813 1035.4428 302.1503 650.3583 5991.2139 2070.6602;
	1674.2171 1154.9349 1762.1 562.0207 907.4364 1356.1 1055.3328 322.0315 668.9549 6039.819 2134.2;
	1652.4783 1156.5059 1766.8425 568.0 897.2211 1344.0372 1054.9115 330.8894 630.1831 5940.4639 2146.6696;
	1676.8639 1167.9 1813.4291 576.3372 960.8076 1424.878 1131.329 368.9 657.3 6002.9028 2238.117;
	1697.8631 1183.0884 1815.4274 581.7 927.3017 1424.5 1119.8353 350.2297 636.4282 5579.6896 1966.7345;
	1632.7467 1115.2159 1730.7559 567.4 891.9552 1350.0314 1059.0821 339.3632 616.6075 5467.4968 2025.6096;
	1576.5 1045.8621 1596.7314 558.7066 786.6643 1241.022 967.5877 305.3 547.4097 4974.7133 1683.5909;
	1447.6562 952.4 1497.1029 554.4238 737.8629 1164.5138 893.1973 282.7 508.7786 4571.3979 1638.5359;
	1427.4922 891.2658 1450.0122 516.3499 668.7118 1092.6492 828.1889 263.3 466.8255 4044.2248 1443.3256;
	1424.6432 870.3448 1430.6569 525.2539 690.3919 1079.1729 806.8875 254.6 456.9748 4161.9603 1631.6974;
];
