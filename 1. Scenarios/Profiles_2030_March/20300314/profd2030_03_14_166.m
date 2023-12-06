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
	1529.2712 920.4625 1502.6044 512.2571 768.3122 1076.0632 836.2279 261.5 483.1635 4486.5819 1703.3261;
	1544.7152 927.6 1538.8368 502.6768 778.9 1094.6541 849.2 265.0204 488.1796 4498.3376 1728.054;
	1555.1439 954.137 1574.8 519.9783 801.744 1117.9161 860.7494 277.9755 501.2 4479.1646 1745.1653;
	1634.4 1020.0786 1690.8596 529.8325 867.78 1212.6931 912.5117 287.8834 532.2169 4696.6 1850.8213;
	1751.8248 1154.2793 1898.7 531.1404 978.1054 1367.6562 1018.1562 349.9198 611.2974 5260.6 2074.4548;
	1855.0267 1231.9 1990.3085 541.2624 1027.7443 1419.3713 1087.4613 386.0772 685.3117 5825.8796 2208.5442;
	1872.8 1245.9921 1982.4661 513.4161 1010.7249 1430.2 1114.8559 376.5523 693.7816 6111.2235 2273.5595;
	1864.7345 1235.7124 1948.0985 536.3586 1004.0989 1417.7237 1124.7035 368.252 721.4131 6314.2807 2275.6885;
	1886.395 1246.3877 1946.2456 552.2674 996.8977 1390.1919 1102.9473 368.8862 715.8193 6275.6 2218.9278;
	1873.0431 1249.9264 1952.1006 543.0984 968.8 1341.3206 1108.9458 372.5965 700.6074 6345.1844 2195.191;
	1896.1952 1274.7579 1947.2344 542.8 943.3872 1308.7672 1050.6781 358.5822 675.6106 6345.8531 2186.687;
	1865.5003 1252.9206 1957.7883 539.8996 968.5326 1299.7681 1068.5037 343.085 689.9 6433.2205 2131.1741;
	1812.8056 1226.5603 1931.0372 536.3 931.5694 1318.4815 1088.9227 353.082 679.4331 6263.507 2147.6522;
	1834.7622 1244.8746 1911.1763 546.3 924.8897 1289.323 1053.3052 344.8775 662.0 6256.8372 2146.3083;
	1861.84 1227.1307 1901.4402 534.8797 932.1015 1288.3125 1049.5357 334.1336 676.8211 6317.1 2213.1391;
	1828.08 1194.9538 1886.2 539.7068 940.0932 1316.8115 1049.3691 344.1643 673.6663 6277.6682 2199.1;
	1843.4395 1183.5521 1884.8715 555.6 967.5304 1329.1909 1080.8635 352.8428 690.5 6214.3753 2299.61;
	1902.5364 1208.4723 1961.6653 560.2856 954.6482 1370.821 1120.6433 359.9 708.3 6095.9662 2387.1402;
	1948.1131 1197.3745 1910.1 552.14 944.2868 1358.3802 1120.368 348.0 718.5889 6153.4178 2457.4422;
	1894.1417 1136.0962 1820.888 543.6052 893.1817 1325.1596 1081.4 336.9287 697.9 5884.3384 2327.6067;
	1761.5 1045.2564 1699.0237 488.6402 832.8 1232.846 1014.5108 323.1147 679.4908 5727.1268 2175.0768;
	1677.2405 995.0113 1608.6202 484.9864 793.9 1137.0914 941.2543 289.5356 606.4928 5486.5097 2063.7218;
	1633.2324 948.4372 1543.1 499.5 763.3982 1100.0909 885.2001 264.5 557.4555 4820.5012 1868.3722;
	1572.9755 907.8254 1468.6925 500.3 717.4 1060.8 844.5404 242.022 538.6302 4519.9683 1766.0127;
];