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
	1510.1884 932.0 1523.7784 581.4 830.5101 1232.1722 887.9055 276.1931 531.8 4542.6324 1818.3;
	1492.9054 903.1 1491.9279 560.1522 787.216 1213.491 874.4589 277.9154 512.1202 4483.7104 1725.8336;
	1477.4455 907.4893 1488.4613 570.3863 800.7533 1202.1975 895.2 286.1826 520.3641 4502.7794 1772.1333;
	1491.7103 922.335 1524.0036 582.9729 803.4388 1219.3128 901.9272 294.0125 524.0072 4514.474 1776.4915;
	1529.1196 945.5627 1573.1663 583.0 845.7 1242.5489 925.4293 289.1761 558.1516 4567.9595 1889.2917;
	1545.2546 975.8054 1613.1927 592.908 900.9026 1329.513 974.8772 320.5096 575.4 4691.6489 1940.351;
	1593.0806 1010.3884 1667.0089 612.5253 925.2226 1385.1572 990.6577 335.9468 608.6 4830.7874 2014.0594;
	1622.0 1041.655 1727.3364 603.2152 993.0241 1446.7 1033.4646 361.1187 645.5722 5002.1028 2090.7437;
	1634.1 1072.9618 1791.7142 603.4 1019.5 1482.9019 1055.2942 390.4547 657.9424 5231.2 2127.8;
	1633.6719 1103.661 1798.4392 583.6284 988.3481 1496.7816 1048.0045 380.2344 650.4639 5341.4866 2068.311;
	1659.7438 1118.6 1786.5426 592.6568 950.5803 1480.7504 1101.6362 373.6724 665.7 5434.1545 2194.3003;
	1629.5757 1115.2031 1792.4149 588.1 991.538 1476.4795 1074.518 384.1835 665.3 5355.4963 2144.3423;
	1590.2746 1085.2425 1766.461 591.3 1001.8302 1435.5002 1105.489 408.0098 695.5958 5477.3958 2185.6403;
	1578.2299 1068.9246 1731.5739 567.0466 978.3 1393.3777 1083.1393 408.3387 695.0561 5490.3044 2174.9375;
	1615.7472 1100.8219 1775.664 568.1 968.0974 1403.9972 1090.3476 394.1498 675.5551 5527.7043 2227.143;
	1611.7611 1102.3 1792.2621 573.5489 980.4064 1453.8834 1116.2334 417.1218 683.4878 5470.6894 2265.2583;
	1654.4517 1131.9 1868.0374 600.5473 1017.229 1503.6 1192.1001 435.2038 714.3095 5625.4982 2392.5266;
	1715.0644 1188.6883 1937.7284 609.9 1077.6946 1558.3794 1250.1103 463.0339 723.3031 5716.0652 2466.7026;
	1751.5953 1177.3959 1931.9 619.8721 1064.2826 1529.5784 1233.6864 450.5719 716.3989 5679.6525 2401.1;
	1708.5769 1133.7 1872.1584 589.0 1048.5 1477.7033 1181.079 412.718 690.1 5452.1816 2322.9782;
	1659.9199 1075.9 1743.0333 569.5423 969.2667 1421.9861 1112.9566 373.9139 650.2769 5223.2084 2167.9798;
	1568.4594 991.3 1632.8659 536.8817 904.4673 1339.3235 1050.3034 383.6332 618.5146 5055.298 2013.6424;
	1533.0219 904.5871 1522.2 559.8471 816.9745 1150.3217 925.7755 335.5299 544.2359 4650.8 1775.5475;
	1505.7124 909.9393 1530.8945 563.3983 809.4319 1127.1 893.1337 306.3205 525.8543 4478.3371 1711.2275;
];