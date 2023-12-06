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
	1481.1494 932.0605 1615.9397 578.1577 829.0383 1240.1529 908.9325 279.1147 547.5559 4762.4441 1844.7035;
	1449.4607 911.9156 1583.3315 570.5986 807.7787 1212.3651 880.6856 267.419 522.7802 4571.1004 1765.7436;
	1448.2955 910.6667 1585.3394 573.4332 806.9543 1214.7706 881.7111 266.3579 520.5872 4541.4433 1759.5456;
	1462.0239 926.1716 1610.1105 579.1512 825.235 1232.3866 897.0079 271.9647 530.8166 4580.3153 1784.4583;
	1504.9652 963.7501 1676.5923 592.9473 875.533 1283.8767 938.4696 286.6488 555.878 4698.1857 1864.1945;
	1556.1142 1005.8161 1742.0912 605.247 924.5695 1334.8516 985.6136 304.0023 585.8027 4844.4726 1934.4146;
	1586.1946 1030.2942 1787.2815 612.4316 967.2665 1389.6004 1038.7405 320.0856 611.7939 5017.994 2012.7388;
	1619.724 1055.266 1821.3799 618.0422 999.7505 1436.9693 1088.7839 335.133 639.1431 5193.498 2081.2456;
	1639.8125 1069.0046 1838.3058 615.3452 1007.7832 1452.9399 1114.1765 343.971 655.7569 5342.1427 2119.1401;
	1652.4636 1079.5996 1839.9642 610.908 1002.8781 1453.529 1124.253 345.4848 664.1646 5438.2392 2125.8179;
	1657.1312 1084.5342 1835.7412 603.6578 989.666 1445.752 1121.6186 343.7986 665.3375 5480.6262 2126.0553;
	1656.0841 1079.8267 1818.1095 593.8023 968.2966 1426.4335 1109.2728 340.5104 661.3928 5479.1138 2116.229;
	1647.5207 1073.6341 1795.6837 586.2823 948.7459 1406.0796 1096.2786 337.2395 656.1024 5450.7422 2106.352;
	1641.726 1074.3227 1792.0002 580.5437 944.3735 1399.4651 1087.71 334.6709 651.1701 5438.8959 2110.2905;
	1657.133 1088.4352 1814.3927 580.5407 956.9723 1425.2577 1099.2295 336.6462 654.3922 5455.4106 2149.0696;
	1675.4245 1111.1227 1849.0598 590.0993 978.3811 1459.767 1118.8721 340.9194 664.4299 5491.6971 2214.1925;
	1684.8708 1123.2048 1872.8285 597.1566 997.3727 1488.2985 1138.6836 352.0374 681.6503 5554.4202 2286.9544;
	1734.9463 1163.5863 1938.9697 610.9307 1040.0234 1541.8805 1187.3736 366.0638 715.424 5675.8488 2400.9383;
	1759.2378 1170.6111 1931.3478 605.7424 1028.0347 1520.7267 1173.6849 363.9804 713.4225 5666.6485 2382.4077;
	1718.555 1119.9042 1851.7911 585.5915 968.9016 1442.7445 1117.9999 347.9779 684.4738 5547.7927 2287.1868;
	1659.7236 1062.4246 1758.9038 560.2093 902.051 1352.6485 1045.0914 323.9263 641.1496 5346.7084 2141.7069;
	1590.6763 1004.548 1670.6106 540.6887 843.1987 1266.7168 969.478 295.8911 590.0746 5075.1341 1972.3499;
	1519.3065 937.9171 1594.7848 543.7055 797.6335 1145.0296 894.535 269.1927 526.8872 4716.2301 1760.6428;
	1493.3651 915.9536 1572.2432 546.0126 778.7259 1118.063 866.3395 258.8613 505.2307 4528.2611 1687.3325;
];