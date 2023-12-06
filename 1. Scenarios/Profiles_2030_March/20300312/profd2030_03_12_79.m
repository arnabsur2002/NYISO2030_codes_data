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
	1478.9843 955.5 1623.6947 577.4 821.0897 1096.5541 896.3829 283.4 478.3656 4576.7093 1741.3304;
	1447.7443 955.4423 1635.4184 575.4839 811.9199 1105.3971 907.3 285.1948 469.8332 4499.4639 1741.5977;
	1479.7991 980.883 1665.6484 575.2682 822.2843 1127.004 917.1 290.1716 481.3 4550.287 1807.3502;
	1552.8238 1058.6624 1799.7351 589.8186 897.8316 1206.2061 974.7819 310.1 522.5947 4773.2474 1897.4292;
	1695.9225 1167.3957 1987.7843 602.6 1002.1392 1344.5131 1070.351 339.4 609.3943 5330.5 2118.916;
	1813.9368 1273.1 2123.2286 610.7228 1100.0 1417.6402 1153.3 379.7 697.4724 5957.8591 2304.8531;
	1808.4727 1311.238 2155.4905 618.5509 1127.9147 1455.7018 1202.3247 363.1 697.2577 6262.9276 2319.5511;
	1811.7095 1327.9414 2156.5 592.9435 1137.4464 1428.9039 1202.1218 369.3 705.3 6524.9185 2430.026;
	1810.7567 1303.6456 2155.726 604.4346 1127.4007 1368.4341 1177.4028 371.2 732.3014 6574.2426 2460.8159;
	1794.2081 1297.1334 2136.4208 594.6 1100.7111 1349.1984 1224.1032 385.0802 715.723 6634.2285 2439.5339;
	1749.6069 1265.9 2100.8053 588.3178 1069.3804 1337.8066 1160.4775 352.8 692.0409 6540.0997 2351.862;
	1749.3466 1268.1 2106.9191 587.7906 1066.6752 1350.0044 1182.5769 376.7131 711.1363 6678.5239 2426.616;
	1762.4929 1243.8213 2070.4382 592.4452 1033.444 1315.1362 1135.7777 371.9124 696.7572 6542.143 2298.5214;
	1759.6974 1251.8299 2044.9237 598.0887 1006.454 1308.5858 1146.9747 345.851 688.8232 6534.8352 2228.0675;
	1765.3173 1259.5654 2083.8829 614.3633 1055.2533 1424.5507 1203.3261 361.9 695.0544 6680.4947 2347.5386;
	1782.3071 1284.6753 2082.8143 605.6338 1052.2 1447.9714 1180.5942 372.1103 701.6421 6719.4803 2383.3517;
	1781.4731 1258.2353 2089.7 604.9 1049.2649 1469.9498 1174.437 380.6855 692.9 6483.5203 2480.5979;
	1821.0943 1276.7262 2090.8697 634.8 1063.4202 1489.5379 1199.005 399.6906 709.7116 6401.4 2554.1203;
	1904.4586 1297.9061 2094.1 640.2 1066.8328 1489.0428 1199.0791 386.5168 703.0863 6195.574 2505.7477;
	1804.5858 1210.9084 1967.2416 616.6 979.7812 1397.8687 1141.0314 353.723 657.8937 5990.0584 2405.0321;
	1739.8372 1123.547 1855.6933 605.9987 930.6938 1310.2937 1055.9 333.3834 616.2807 5531.3771 2187.2863;
	1607.7487 1041.8 1745.3467 597.1922 895.3367 1241.4212 988.8716 289.3606 576.9643 5048.1994 1980.248;
	1519.9616 992.3961 1664.8129 598.1885 880.5 1189.5166 957.0131 284.4658 551.3 4982.1685 1964.9354;
	1503.0766 993.3 1708.6619 608.7 915.2425 1188.8764 936.3378 293.6852 539.3374 4798.1444 1825.2844;
];
