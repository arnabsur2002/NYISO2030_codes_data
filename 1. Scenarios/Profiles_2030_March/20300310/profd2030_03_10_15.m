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
	1419.942 917.8586 1613.5949 559.7 785.8029 1218.8 897.1621 255.8 553.7504 4691.1776 1792.1116;
	1406.2115 907.558 1580.5912 560.2578 752.3873 1201.5914 882.016 236.9561 515.9838 4521.4227 1721.4658;
	1405.2683 916.865 1595.407 560.0582 753.2652 1186.9408 884.43 239.5711 526.6982 4488.119 1732.0926;
	1394.2207 928.1321 1618.8687 591.5 761.5882 1182.0247 880.1003 237.5403 532.4 4466.4739 1740.1226;
	1422.1082 966.5718 1684.2529 615.0853 831.0415 1213.6883 918.7044 255.4 555.313 4531.2898 1820.8174;
	1478.3758 1000.4369 1749.456 622.3 891.4 1279.6649 954.4838 252.4468 586.4116 4342.4417 1817.6743;
	1530.6821 1017.2655 1787.4161 622.9767 946.29 1349.5494 997.7 275.3603 624.8494 4755.0045 1926.3806;
	1574.7524 1007.046 1848.4014 597.5 989.4547 1395.0 1048.8082 294.7198 666.213 5063.6721 2033.3025;
	1590.7568 1013.1588 1881.9446 602.3711 1030.2342 1421.2738 1067.7732 313.7055 704.7746 5188.9581 2064.466;
	1598.8938 1048.4171 1881.1967 594.1953 1003.8068 1410.1 1078.6792 320.5166 706.7597 5391.8174 2205.4478;
	1616.7097 1076.8336 1851.7615 601.4 982.2174 1415.876 1126.979 332.8312 740.1758 5462.9318 2311.6038;
	1657.8913 1084.2362 1840.95 597.6911 964.1962 1429.9987 1124.511 325.5219 741.7365 5530.0687 2292.6665;
	1652.165 1076.7544 1812.8155 588.9283 966.6303 1383.3257 1103.7127 336.938 723.4831 5500.6013 2192.3638;
	1683.6467 1102.1236 1841.9372 587.4914 938.3452 1448.8503 1107.2277 328.4 672.4763 5454.1738 2200.8362;
	1666.0255 1114.6831 1846.3073 575.734 956.4 1459.4487 1095.499 334.4085 679.794 5419.8013 2155.0282;
	1663.4341 1116.0107 1864.455 575.8 961.2 1410.73 1103.8 355.2 688.7548 5516.6044 2208.8548;
	1608.7218 1110.3314 1902.311 595.4 987.0207 1472.3502 1144.2061 362.243 706.9561 5682.3927 2303.9234;
	1667.0129 1171.6 1986.6613 613.5 1013.0246 1495.0892 1157.2896 354.5 716.9 5753.1675 2355.314;
	1677.7201 1182.3826 1951.5918 619.9755 977.9248 1462.329 1135.4918 354.1 711.6989 5714.0896 2361.1915;
	1635.2077 1119.0631 1886.4426 577.5 909.7395 1391.3365 1090.0729 324.2 712.7662 5571.5416 2278.633;
	1564.2509 1033.7887 1764.4532 541.4719 825.6324 1295.1736 1006.1354 292.2539 661.3 5335.7693 2116.2528;
	1510.7349 991.1986 1693.6656 522.0445 791.8086 1206.621 956.0995 284.6783 638.6902 5140.9116 1969.4636;
	1395.3729 939.6307 1634.9652 572.7421 738.4159 1115.5598 930.3083 264.5 594.809 4884.9448 1780.1174;
	1375.9041 897.9206 1549.5847 575.9959 719.7771 1068.0 907.4112 253.3439 580.0894 4648.6352 1692.5441;
];
