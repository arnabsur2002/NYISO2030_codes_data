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
	1518.893 956.3337 1583.1491 583.0593 825.7 1161.8864 865.7763 263.0123 547.1791 4691.0941 1794.4328;
	1513.575 946.7691 1606.3791 570.4934 823.5496 1172.5 852.4733 257.9475 539.0504 4594.2339 1762.8;
	1494.3229 962.2992 1606.9256 579.1343 829.9193 1159.3165 857.7201 264.2124 531.7 4553.4671 1764.0508;
	1560.5445 1047.4568 1746.7233 581.7 902.4133 1268.7696 941.6624 295.1 575.5367 4859.387 1897.9;
	1711.5293 1154.8397 1911.5435 612.4 992.2826 1420.868 1021.7 319.0699 639.0 5386.4018 2101.8747;
	1828.9098 1251.4 2063.6 626.8458 1069.1186 1523.6395 1114.6791 370.6 721.6376 6008.2073 2267.975;
	1810.5912 1213.1109 2026.4911 609.269 1080.763 1468.3586 1129.8752 372.8752 726.7479 6325.8212 2209.2692;
	1821.8055 1198.7565 2006.5813 583.9926 1038.5821 1420.3847 1119.3356 366.128 742.4 6492.3 2114.6281;
	1835.0 1156.5122 1995.4534 575.4397 1019.3402 1401.487 1144.318 360.5882 749.0177 6423.1614 2135.1804;
	1856.6723 1133.6243 1988.9 565.6996 1028.9 1373.3757 1110.1543 362.2495 710.1 6368.5547 1968.8124;
	1855.0 1086.4287 1896.5084 514.9751 977.5683 1305.8977 1015.9372 350.2559 674.8 6261.5602 1860.6339;
	1852.3485 1089.508 1878.2964 569.3466 955.2065 1284.5257 1000.3131 355.8 658.6519 6126.3001 1781.3529;
	1829.931 1026.0448 1827.0804 547.2439 901.4595 1219.6414 964.7713 349.2633 653.0688 6148.497 1778.4769;
	1752.5882 1052.2605 1794.2522 551.115 880.3 1214.0677 977.1408 348.4248 668.1121 6157.2889 1741.3439;
	1730.342 1024.1311 1786.7979 553.7465 914.995 1295.325 1023.5411 363.9 675.1748 6170.7456 1981.1552;
	1760.922 1114.5487 1865.2487 540.4558 946.9404 1306.4626 1049.4791 371.1 675.0854 6111.6139 1915.0452;
	1754.4215 1076.9851 1839.9037 532.2467 924.9336 1355.5982 1029.5207 353.5078 673.0008 5889.5011 1956.9306;
	1826.1 1154.7 1918.8153 569.386 946.5056 1451.5403 1091.9704 371.7166 720.6 6100.3899 2287.0572;
	1799.2821 1169.1195 1912.7939 592.7592 943.6642 1428.3852 1056.713 351.0 685.9 5855.4297 1944.4879;
	1762.9253 1111.9 1869.9369 576.1861 888.3302 1294.3781 1016.4056 328.6193 671.9654 5587.7631 2017.0554;
	1717.4166 1033.1453 1751.4298 590.8023 836.87 1231.3812 962.2275 300.8659 637.9 5311.3511 1935.7306;
	1626.0638 977.9383 1707.6913 578.2 798.2072 1149.7001 918.2235 288.7924 586.9045 5064.7056 1899.1903;
	1501.6952 902.5553 1617.9 557.5 799.5 1068.3801 874.1795 257.3699 538.5858 4692.1765 1789.5726;
	1450.9485 861.2149 1571.0566 573.67 765.5596 1005.4148 827.4 234.5447 504.0335 4410.9421 1702.4047;
];