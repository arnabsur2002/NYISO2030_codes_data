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
	1548.9375 854.0084 1466.2136 539.4658 747.3 1038.9644 840.3425 258.3064 506.889 4520.5493 1742.7831;
	1544.2128 854.0952 1472.7 550.7244 735.3767 1056.9901 840.2004 261.8353 489.5934 4569.1798 1729.7817;
	1554.0103 863.3417 1468.4 557.9022 737.623 1038.7 839.5818 263.3848 491.6718 4449.8166 1708.5;
	1587.2609 903.122 1519.5 569.8031 778.9218 1085.8237 875.7571 279.9 515.4553 4514.0004 1748.2942;
	1598.5312 945.9 1588.3207 574.1932 805.7397 1133.5211 911.8181 274.5889 554.1 4648.314 1842.8272;
	1654.7376 981.4512 1636.1605 557.4545 851.8464 1180.0516 947.3641 278.4448 571.0611 4844.1249 1936.8367;
	1712.3 1035.2494 1715.7874 567.5196 921.7303 1236.6538 962.3652 288.3234 576.0873 5034.5313 2010.9138;
	1735.276 1026.0 1719.8019 558.5803 914.5795 1240.415 991.9287 269.4259 591.1673 5131.8184 2030.2507;
	1771.4017 1016.4235 1747.4605 571.4032 918.7 1180.7939 964.1947 264.2493 584.7846 5271.0 1992.4008;
	1719.3339 1032.2146 1730.7245 568.2779 944.6 1215.304 988.7856 264.8058 603.8296 5392.7819 2056.189;
	1701.5473 1032.2587 1719.8683 559.1 939.6368 1198.8115 983.1547 231.1376 604.3691 5356.2861 2050.7588;
	1687.2281 1028.2196 1687.4959 533.979 910.5 1184.863 997.3451 260.7311 608.3155 5325.3675 2151.4171;
	1696.3852 1003.115 1661.4154 547.4452 902.6467 1153.0122 973.1988 262.8 593.6198 5287.4187 1957.7;
	1697.8533 1051.4129 1720.9393 550.3747 932.0 1186.1111 991.3921 294.2 590.4 5374.9185 1974.4633;
	1718.7806 1080.4443 1727.8219 551.9881 931.8218 1208.3705 1021.3814 334.2693 619.4085 5394.3879 2133.3515;
	1663.492 1096.172 1780.5489 568.5722 1001.3039 1273.6375 1069.4051 343.4018 664.374 5586.3483 2203.0238;
	1726.2461 1123.2949 1826.2 570.7 1037.8455 1279.3745 1085.0163 337.7115 689.9281 5645.643 2185.9755;
	1760.6 1146.2859 1912.2 604.8964 1042.7 1367.8027 1179.7665 319.8 700.1571 5711.9768 2335.5037;
	1757.711 1145.2091 1939.2 605.4507 1037.7949 1360.0514 1190.1 350.1 741.3998 5759.595 2453.7099;
	1695.8157 1098.3 1812.8534 574.8045 987.2985 1302.9502 1118.0127 334.4339 682.0653 5415.8231 2253.812;
	1618.0195 1009.3821 1711.8477 554.2092 932.5439 1255.445 1068.0932 319.4276 659.0578 5355.487 2152.3548;
	1569.344 968.9674 1656.7782 547.8 875.3 1197.3615 1003.1 303.8671 628.3596 5061.6308 1996.1242;
	1507.4685 989.654 1705.8631 558.2 899.2115 1176.3 957.448 302.127 569.0288 5121.8872 1817.3823;
	1497.72 968.3322 1689.3456 580.4889 862.8485 1120.349 913.0 288.92 555.3653 4892.7232 1653.7473;
];
