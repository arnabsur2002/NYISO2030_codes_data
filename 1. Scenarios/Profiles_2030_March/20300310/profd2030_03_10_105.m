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
	1470.9147 968.1396 1640.2148 596.4898 856.4101 1229.7033 927.9437 288.1884 571.5496 4930.1273 1892.065;
	1459.3071 949.8696 1610.1139 587.0729 812.6117 1218.6416 898.5932 279.5 536.2151 4673.0388 1828.7769;
	1450.9788 946.4277 1636.0925 598.1 838.4589 1230.154 889.5 274.1 530.4173 4615.9617 1788.1219;
	1466.9294 964.3008 1660.3888 603.2551 858.9399 1229.2524 902.3634 281.5 539.2115 4632.8804 1819.1;
	1492.0279 995.5157 1703.736 609.9 913.5892 1283.3536 928.6 278.8 544.0749 4626.3 1841.4376;
	1565.618 1036.6566 1802.9998 615.0 963.0506 1334.8 968.4471 312.3568 564.5506 4802.0268 1907.851;
	1583.3721 1048.1039 1834.4482 617.3667 987.8411 1353.6581 1032.7713 320.9561 600.1 4988.8 1983.4326;
	1612.162 1073.5118 1848.6968 619.3841 1007.5 1362.359 1074.6034 338.5382 631.1191 5192.8352 2042.0407;
	1606.6 1075.5702 1848.5638 625.1 1038.8772 1399.3151 1096.7718 348.587 643.2 5307.5278 2061.1528;
	1611.8271 1108.5988 1869.4 626.3211 1019.1749 1367.6747 1097.8811 348.3661 640.4227 5370.8886 2105.9;
	1631.9955 1101.6791 1838.5181 617.1666 1003.6262 1368.9867 1115.8058 346.0 643.8982 5390.0647 2087.2345;
	1626.9337 1086.5927 1791.5213 587.7315 987.9092 1376.5909 1099.7252 340.3007 664.5524 5346.4951 2138.1571;
	1635.9254 1059.8459 1775.9206 595.2 951.8 1333.4011 1086.5 339.8 651.8195 5245.8646 2034.3295;
	1661.046 1064.0376 1791.9218 574.9057 929.5 1286.4569 1059.4543 333.8772 611.5201 5131.3347 2009.4171;
	1752.4702 1113.4 1846.9581 583.9387 957.9 1350.2806 1075.0953 328.8811 597.1201 5140.9344 2050.398;
	1727.3231 1135.3455 1876.6 596.6627 942.4775 1393.1914 1073.4272 317.6467 630.2097 4949.3599 2098.0824;
	1734.0 1163.3389 1898.2652 614.0 951.3851 1430.5564 1108.9618 329.9563 662.1667 5131.76 2202.8477;
	1756.1604 1218.5312 1986.6761 623.3623 996.8 1498.693 1146.0243 350.8665 689.5 5186.9187 2292.4922;
	1756.8385 1209.3561 1980.0 617.9 1012.4853 1500.3953 1160.6449 363.4288 710.6287 5556.149 2362.4102;
	1725.3679 1177.3139 1921.5549 607.5805 956.0404 1433.8898 1111.7696 346.9573 696.9908 5543.1046 2278.6071;
	1641.5613 1100.976 1823.1524 581.3174 920.7391 1383.6131 1070.1872 325.2904 654.6 5372.5125 2157.7032;
	1564.118 1043.5567 1718.4181 561.5805 863.6523 1262.7 967.9133 296.5536 598.0928 5110.955 1999.6523;
	1486.631 960.3574 1618.8934 549.3 793.9 1131.9607 942.5 276.5023 537.9142 4793.2603 1762.6539;
	1483.7191 941.6792 1594.3435 561.2 800.144 1155.4183 952.4328 262.4 517.4198 4636.1806 1716.8171;
];