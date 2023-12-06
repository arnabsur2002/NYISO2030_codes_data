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
	1446.5858 856.1 1418.3565 559.2567 648.9068 987.9555 768.8097 242.9808 470.9002 4321.1269 1557.5818;
	1449.3015 862.4344 1404.544 549.9748 622.2562 1005.1787 781.4996 229.9054 460.0621 4287.2959 1604.5164;
	1459.148 871.9022 1445.0145 541.7 668.5829 1028.7083 782.7244 237.9701 458.8203 4303.7917 1619.7111;
	1461.3379 889.0578 1490.0136 563.5116 691.6638 1065.2 808.0269 237.3 450.4331 4303.2406 1604.3487;
	1556.3 945.2858 1589.1795 573.6 714.0274 1111.7873 841.0797 240.4 448.1598 4393.9845 1649.1596;
	1655.5053 1013.6325 1695.8 602.9803 797.051 1165.2527 904.7464 285.5955 520.4419 4748.3647 1856.8482;
	1676.1682 1046.4113 1725.6656 615.1655 855.131 1264.944 965.1074 299.2 549.1 5063.507 1985.0419;
	1684.163 1061.4539 1750.0822 607.733 881.8975 1282.475 995.1 310.3543 548.1897 5261.8941 1932.5116;
	1750.8938 1091.7 1765.2128 590.0708 886.1458 1281.9397 977.5 327.787 538.8397 5329.6101 1914.2397;
	1770.143 1107.1424 1769.4556 590.5519 876.7947 1279.7167 965.647 326.1 539.6799 5335.1477 1906.9881;
	1727.7051 1081.0219 1732.395 570.1596 832.1249 1211.3722 947.8 320.9933 511.4398 5346.264 1819.6014;
	1778.6392 1079.7831 1709.9114 585.5885 821.6088 1202.4441 937.3168 322.571 551.8159 5411.6157 1914.006;
	1768.6827 1102.1784 1680.2084 608.1619 787.7612 1203.6154 967.4195 322.7995 577.609 5479.5039 1990.2585;
	1763.0523 1074.9028 1664.9766 586.7604 780.5363 1190.1705 950.3 314.4 544.8699 5326.2515 1922.5037;
	1809.4557 1078.9585 1707.8 590.8681 790.1379 1213.9755 959.817 312.6779 556.4222 5322.086 1983.0731;
	1838.8966 1126.1326 1730.7276 583.3 790.4249 1253.1591 968.6442 313.5911 589.0711 5350.0575 2048.1689;
	1802.0831 1130.3727 1790.038 593.1394 852.0515 1324.3351 998.1584 318.6275 614.6215 5505.9737 2158.8153;
	1798.6 1161.6776 1844.9405 606.5 891.6035 1346.7149 1057.9324 341.5 649.6762 5629.5023 2298.5826;
	1820.3331 1166.9 1796.5812 591.7 879.5738 1331.2607 1065.5487 340.1797 660.5 5518.3904 2267.1321;
	1836.0779 1135.5019 1759.5 588.1704 863.0054 1310.1436 1028.4632 348.1 647.7439 5420.4853 2199.5621;
	1753.1599 1070.4167 1702.791 552.6396 808.7826 1255.5334 986.9118 334.5478 629.1 5421.0397 2102.5;
	1657.4841 1002.7959 1613.0191 543.1563 743.501 1142.1802 904.0654 316.7042 594.9 5064.2695 1927.8682;
	1564.8067 984.3965 1610.5866 538.1135 715.0169 1166.2118 925.4789 275.509 578.6175 5310.9343 1900.4089;
	1535.9198 969.5362 1596.6467 530.494 687.6083 1136.6802 902.2268 267.366 542.0015 4898.9148 1833.4807;
];