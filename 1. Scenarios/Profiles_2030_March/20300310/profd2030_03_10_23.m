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
	1558.3742 942.3432 1670.0401 557.2766 847.1183 1235.4 893.2117 306.0276 550.9 4698.9663 1896.1199;
	1527.0113 914.4315 1642.3242 555.1242 834.946 1228.4925 879.52 302.478 535.9 4530.6546 1877.8871;
	1507.7529 924.4559 1651.6154 539.4174 839.5572 1237.3933 875.9 285.6015 529.908 4445.1328 1787.0958;
	1519.1 939.9173 1638.5535 582.0 851.9897 1262.1512 901.1169 285.3 542.4 4553.673 1846.8657;
	1580.9 981.1874 1703.8572 598.7535 914.5851 1322.0291 947.2 308.1 563.6292 4667.9116 1933.8668;
	1643.07 1017.1354 1756.0487 611.3405 994.4449 1369.0547 992.3436 317.8083 576.2601 4790.9232 1978.5718;
	1652.9114 1045.0169 1814.9858 634.4 1007.6794 1417.6364 1042.2014 324.4 597.8659 4918.2055 2038.8263;
	1661.3721 1055.008 1857.3096 621.5288 1032.9373 1461.8323 1067.7937 337.9 623.2286 5021.3889 2037.406;
	1698.4832 1060.7236 1853.3561 610.163 1017.5632 1473.1 1072.4566 342.8 614.5709 5129.3776 1974.8614;
	1687.4868 1076.679 1879.0333 594.05 987.708 1476.6771 1073.6641 343.9217 603.3085 5182.1923 2004.7216;
	1692.1252 1093.0154 1901.5653 600.3468 999.2834 1481.0729 1090.6993 360.7041 615.4 5348.5025 2036.7765;
	1698.2 1115.9497 1889.4251 584.7372 978.1601 1453.9322 1067.1148 371.857 633.6585 5308.7266 1997.2028;
	1691.2548 1115.936 1843.0425 575.8852 968.0328 1425.0435 1050.9104 359.7292 614.0235 5259.9897 1974.33;
	1712.2061 1099.1412 1817.8936 565.5421 913.7008 1412.3393 1046.1098 348.9916 619.8329 5277.1182 1990.9003;
	1723.6 1111.7 1812.7877 568.1 927.3662 1448.4729 1020.2603 342.9623 598.5624 5218.3756 2004.4018;
	1761.4411 1109.2393 1871.0098 564.531 948.0854 1466.4412 1047.6151 351.8951 580.7606 5323.542 2123.0453;
	1757.3709 1079.5946 1850.446 577.8522 969.3605 1486.2207 1080.8227 373.7079 660.2192 5499.6179 2192.8251;
	1836.9949 1132.5921 1943.2656 596.7255 1040.7517 1535.5 1150.5646 369.6 695.5491 5605.3121 2309.117;
	1815.0269 1127.9 1896.8926 598.9027 1028.1714 1503.972 1151.0742 363.2 714.1 5592.7474 2307.3425;
	1810.3437 1101.6 1854.5491 578.1992 970.0965 1424.043 1088.879 360.4 691.8 5452.155 2242.1669;
	1706.6782 1056.6619 1787.9467 559.2138 910.6944 1350.9094 1037.3468 346.8671 666.2261 5308.5303 2109.2771;
	1644.9597 1012.3179 1751.1852 564.2 882.9784 1319.7104 988.2558 308.704 622.3874 5066.4482 1944.6878;
	1562.5377 921.1 1643.1747 534.9215 805.8567 1112.3343 868.1607 280.9632 531.4419 4688.8126 1673.3665;
	1498.7719 888.7614 1617.516 545.5625 760.2 1053.8712 848.3268 265.0034 504.9371 4431.0665 1673.2;
];
