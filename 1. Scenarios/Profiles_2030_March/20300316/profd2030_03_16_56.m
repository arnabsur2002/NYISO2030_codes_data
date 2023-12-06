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
	1464.5828 888.834 1626.3265 540.3552 735.978 1101.3 840.0 244.2581 546.7587 4460.2709 1715.0764;
	1457.6164 882.7771 1578.1251 549.9726 738.5667 1114.2585 830.1966 246.3694 546.1438 4471.6871 1707.3074;
	1456.8896 881.0548 1570.4629 551.7281 707.7 1090.4 835.7353 242.2965 552.3039 4385.0035 1702.6232;
	1511.7939 923.4791 1621.2924 559.6 745.0708 1142.9117 860.1698 256.7219 572.7235 4435.8653 1753.4;
	1560.3907 974.6282 1713.4454 549.1 783.047 1202.8179 898.2236 269.8961 600.3546 4613.3686 1840.7902;
	1639.7987 1046.2818 1817.0591 587.6654 877.3 1258.0 958.3308 290.7 640.7177 4846.3 1947.0961;
	1651.8551 1076.166 1854.5689 586.9619 913.2775 1323.491 1017.0676 296.8822 642.678 5067.868 2023.0965;
	1740.8669 1113.4022 1913.0 595.7079 954.2419 1349.7 1053.8901 311.934 677.7103 5244.9167 2088.4212;
	1750.8453 1133.3938 1909.8135 599.9127 963.483 1390.2782 1079.9168 313.9748 662.732 5336.0619 2095.7331;
	1755.7065 1142.7782 1905.4982 616.5785 1003.8735 1452.7006 1074.5382 331.7473 659.819 5412.2824 2024.4998;
	1736.1347 1158.3954 1905.9863 608.5246 997.4622 1452.4564 1040.8 324.4687 676.1791 5372.0026 2022.4798;
	1719.8916 1125.5126 1885.2147 612.4921 975.5297 1419.8767 1032.5416 319.9 656.6606 5341.2923 2006.4954;
	1678.8652 1105.4041 1863.4267 604.3771 935.2337 1394.0551 967.3172 317.3 652.1501 5252.299 1935.6572;
	1652.1597 1109.9442 1868.1997 606.8858 919.7946 1380.5319 1012.2419 308.4348 698.0808 5325.3991 1962.2028;
	1656.5379 1119.1389 1861.1012 613.452 951.7697 1373.5779 1019.2717 296.7566 674.9222 5341.0403 2045.04;
	1650.4035 1104.0871 1901.8332 606.645 972.2889 1370.7939 1040.2437 300.4193 757.2215 5575.1978 2146.3922;
	1636.2909 1090.2574 1905.1854 612.6 1005.4969 1406.7528 1037.115 325.993 684.3671 5519.0018 2130.2279;
	1682.7511 1168.0793 1966.5304 617.5609 1030.9246 1477.4947 1113.5752 344.8 752.6107 5717.8289 2272.2;
	1783.5428 1200.7179 2002.7 613.6986 1006.5262 1502.3163 1143.5376 346.8062 745.0901 5511.7797 2257.4722;
	1744.3171 1150.7602 1936.5999 619.893 965.7853 1430.7584 1108.0 342.9 739.2123 5563.1 2264.7739;
	1697.2199 1072.2 1834.7196 590.4636 917.8578 1330.2778 1060.4 323.5629 692.1877 5318.0724 2178.1648;
	1628.131 1000.7547 1715.6 583.1 875.6585 1271.1707 995.5877 296.0281 652.2236 5062.6537 2046.1919;
	1566.0254 955.3915 1649.4341 598.2 841.3 1238.2065 946.0729 273.0 619.3997 4917.5394 1898.4358;
	1541.2553 924.7896 1597.6042 600.5367 815.3844 1176.2 898.0521 256.3541 560.5306 4781.3513 1826.4813;
];