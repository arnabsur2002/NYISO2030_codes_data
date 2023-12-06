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
	1436.7596 900.2722 1535.0903 500.6274 685.9263 1059.4435 829.2251 203.6 494.3631 4424.5823 1627.8763;
	1472.5273 901.751 1547.5186 492.5853 689.3 1081.2252 833.7857 205.3927 497.2 4411.8573 1653.6752;
	1500.1437 913.7 1555.2545 490.0157 705.4 1097.447 838.0491 213.6558 509.2197 4465.5025 1663.0806;
	1582.4977 975.9237 1633.7807 500.9874 749.5949 1164.3 900.4653 231.2508 531.1 4678.4136 1775.6284;
	1725.9755 1096.3275 1841.9297 546.116 888.987 1321.1314 1016.3084 286.5 608.3845 5429.6186 2090.0368;
	1838.471 1153.6 1939.9 555.5655 926.1963 1398.0 1064.6 309.9153 684.7814 5845.5592 2215.9392;
	1869.3083 1180.0798 1991.9656 544.2 940.6 1410.836 1084.2993 315.2368 705.7846 6113.6761 2268.3985;
	1857.5757 1170.5574 2006.4765 546.4118 927.3281 1383.7859 1091.0274 324.0 732.1377 6229.0701 2315.2187;
	1914.2706 1191.1 2012.2817 540.6207 909.0284 1362.7987 1128.2741 328.4624 773.6867 6486.0231 2373.2226;
	1938.9742 1199.4021 2048.8201 530.1391 893.1 1323.9449 1120.4782 324.8319 742.1 6360.7348 2409.8;
	1973.5946 1219.818 2066.5273 539.1 898.1289 1327.8988 1129.5914 324.7923 755.7491 6426.842 2504.6357;
	1938.278 1190.2335 2029.8335 518.6905 863.992 1286.6212 1144.7155 312.1816 731.3582 6338.3011 2371.2874;
	1872.8056 1162.1999 1991.8639 514.5663 843.3058 1264.6799 1120.2646 296.243 704.3787 6207.5536 2307.7905;
	1833.6093 1152.2595 1965.2844 516.6 825.5876 1266.1001 1149.6883 301.5735 706.0911 6306.3155 2383.3569;
	1862.947 1170.143 1972.9956 510.5463 816.9283 1315.0437 1196.0971 313.5734 732.9811 6487.0567 2582.564;
	1817.4506 1199.6061 1996.006 502.722 856.3329 1290.7047 1187.6807 333.2 702.7938 6354.489 2442.9467;
	1789.5 1176.2815 1927.8713 531.9634 851.6181 1306.8 1116.9088 342.6 679.5 6253.1288 2504.5206;
	1832.7928 1204.0962 1954.8629 518.7565 887.0333 1320.9438 1162.112 340.6 703.7646 6041.7165 2617.5955;
	1855.7825 1187.4 1961.1333 533.7316 880.8946 1343.7663 1157.6277 328.3997 696.3 5885.0534 2630.1611;
	1812.841 1167.9302 1898.6867 539.47 867.2349 1310.5715 1093.5068 321.4387 683.4444 5750.7232 2567.5341;
	1728.3072 1083.9974 1790.4665 518.7294 824.5 1235.0 1017.4 284.4335 640.3884 5398.4889 2383.4678;
	1648.7861 1032.1198 1705.3329 505.2429 789.3048 1179.7583 960.5564 269.9358 611.7377 5397.9074 2149.725;
	1594.0105 1029.6001 1670.4919 547.3188 740.3451 1141.8308 908.7986 252.4224 567.4667 5313.8538 2125.0053;
	1541.0239 977.7272 1680.4961 552.3057 747.9681 1105.9905 886.8722 247.6 542.1093 5121.8505 1943.1569;
];