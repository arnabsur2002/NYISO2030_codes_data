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
	1478.3217 865.8 1452.1659 550.4208 745.3446 1104.1041 834.949 254.3696 485.5344 4505.1198 1691.0351;
	1456.5 850.2963 1445.8431 540.6555 727.0977 1096.1464 830.4748 254.9682 490.1722 4501.3 1650.2182;
	1478.0721 860.3515 1476.9999 549.3387 749.6798 1117.0162 837.9525 244.2641 497.5527 4425.2637 1668.5;
	1523.7803 891.884 1539.9 576.7382 792.2639 1113.0081 843.4015 259.5 497.6617 4517.4416 1692.9556;
	1607.8135 965.4037 1670.8577 588.4 864.2767 1212.2106 895.9739 289.6781 537.8141 4706.6506 1800.3348;
	1651.9713 1020.8 1755.3851 601.3507 913.3311 1264.9321 957.1298 300.0 563.7 4945.1 1931.5573;
	1684.3187 1046.6164 1846.3447 596.8748 974.5 1326.6781 1010.4 305.8264 588.9542 5180.2733 2015.7768;
	1662.4914 1047.7981 1859.2828 579.5 980.3317 1369.9572 1043.4 315.2 625.5723 5443.1938 2080.9287;
	1730.8483 1083.8328 1891.5223 601.3821 975.0361 1421.9851 1090.3872 339.3204 649.1467 5846.763 2192.4965;
	1748.4 1073.0404 1895.2651 602.5 979.8307 1397.3326 1062.7631 348.0404 641.8005 6002.5509 2155.866;
	1756.0532 1074.0652 1912.5827 589.2852 949.2423 1402.2115 1046.8146 352.2579 629.77 6041.7778 2138.6643;
	1713.2505 1049.7729 1860.501 585.2897 941.8982 1349.5234 1055.0156 333.8995 610.1082 5740.6444 2050.7679;
	1667.2874 1053.4 1865.9946 580.3039 930.9 1341.4751 1013.7937 333.3426 602.3211 5629.9262 2076.7648;
	1660.3826 1047.5 1823.5981 556.7593 904.1927 1278.4408 1001.7787 311.4914 581.0718 5550.8941 2011.9945;
	1681.3267 1082.0321 1853.5094 559.2447 917.5278 1306.0579 1014.5 332.2859 585.6746 5468.0751 2066.5188;
	1656.9656 1103.8381 1910.3783 547.4437 919.7664 1326.3701 1035.5965 320.2659 598.9836 5387.1377 2136.5496;
	1594.4264 1076.5193 1878.3164 566.1152 920.289 1377.8797 1048.0733 333.6303 607.8212 5497.4155 2228.4508;
	1696.8552 1099.286 1905.9 574.7565 902.0456 1405.6 1108.3394 327.6 637.6786 5583.1207 2371.8863;
	1756.8203 1109.8476 1920.8247 587.0004 909.7295 1404.797 1115.1923 326.5322 628.3 5487.6279 2337.6596;
	1702.1109 1039.9505 1822.0847 566.8764 905.6191 1335.4 1051.1201 307.8035 592.8868 5350.1455 2257.8348;
	1683.8769 1006.2911 1756.1939 545.6267 869.737 1279.1959 1000.0844 288.6 581.6576 5257.7 2136.9044;
	1604.9903 926.1454 1628.6 533.282 813.5956 1199.3322 933.7897 274.5304 542.8736 5044.9347 1985.306;
	1572.8825 900.31 1586.9988 544.8646 815.7 1187.8412 902.3848 242.1777 496.0165 4749.9744 1861.9391;
	1533.3062 897.4261 1598.4 555.3725 792.3262 1166.4547 862.942 251.664 475.1178 4646.8817 1779.0087;
];