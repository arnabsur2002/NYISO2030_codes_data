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
	1522.8978 895.1414 1517.4 573.5438 690.8 1099.5757 850.9937 237.1887 506.3589 4584.3473 1721.6077;
	1501.205 884.9945 1510.9747 566.2293 681.1358 1095.2208 845.4062 241.1689 500.1265 4537.7459 1713.9047;
	1523.6479 893.3664 1507.3 568.1753 690.5292 1104.0951 848.192 252.5986 509.3 4561.6404 1721.0168;
	1554.4 928.2458 1564.3848 575.3695 723.8885 1145.027 864.5247 253.3296 515.1975 4721.6251 1841.6342;
	1593.4705 982.3 1659.0553 588.6617 760.1293 1220.4013 893.0469 277.8802 537.6904 4668.1 1871.7753;
	1652.6 1059.7 1775.8044 596.3999 829.7303 1288.7703 952.8912 303.7083 569.248 4947.7999 2021.4179;
	1698.5591 1074.8746 1829.9043 583.4327 875.2783 1341.5252 999.1567 315.4577 574.1 5201.6491 2054.0236;
	1740.6183 1097.256 1852.88 579.5776 886.2428 1365.1173 1048.6383 339.2395 613.4806 5582.8026 2106.7124;
	1701.0127 1103.824 1865.4905 577.0344 872.6527 1352.9916 1052.1724 336.6085 614.2 5738.4028 2129.5894;
	1704.9774 1124.0868 1846.9176 566.2895 855.7251 1350.0715 1067.907 342.1166 622.4208 5679.9405 2195.1073;
	1678.3513 1109.8183 1800.9 561.4105 821.0237 1262.8761 990.1692 323.1 587.5892 5504.1865 2002.1;
	1674.7 1082.928 1791.5386 567.8288 801.4322 1233.8952 1008.7 320.1089 565.7975 5555.4257 1937.97;
	1680.2 1101.0788 1773.4508 568.5058 794.9073 1260.2554 1042.9161 325.4495 583.4431 5798.4156 1987.1449;
	1636.1 1095.939 1733.8207 578.1654 802.0324 1232.7607 1014.3399 325.4407 577.3682 5500.0395 1943.283;
	1639.5266 1077.5 1718.4 586.4948 818.7062 1265.4924 1019.9466 332.6923 580.6246 5539.3551 1968.0426;
	1680.5696 1099.7017 1795.1895 594.7328 883.8251 1337.4876 1086.9318 320.8024 589.9 5667.8219 2103.0334;
	1703.1 1104.5721 1839.1336 598.8547 906.6262 1361.7723 1108.7426 329.7 578.2203 5715.7523 2154.7253;
	1774.2096 1167.8934 1879.6862 616.4409 927.3785 1404.775 1144.9112 313.1848 645.0369 5738.7056 2278.2053;
	1842.6234 1160.0 1888.5073 633.3502 906.5923 1443.9722 1161.4877 333.4189 646.3429 5870.8148 2297.8594;
	1818.2935 1135.5 1846.19 612.0279 885.404 1407.9 1148.9295 338.6803 621.4164 5684.4786 2268.1396;
	1721.4792 1070.4026 1745.3534 587.3976 824.6998 1318.0982 1081.1441 314.2236 604.6 5675.9921 2168.7746;
	1679.5584 985.804 1661.0 567.7304 771.4672 1205.2234 1011.2217 293.5038 556.1 5184.9583 1998.1796;
	1608.0777 924.239 1626.4385 579.0927 750.0233 1197.5477 970.9 282.9901 543.5 5029.463 1876.2991;
	1549.5362 920.3 1623.5 592.4274 692.6411 1171.7865 941.8122 272.3553 529.9685 4973.4203 1836.3364;
];