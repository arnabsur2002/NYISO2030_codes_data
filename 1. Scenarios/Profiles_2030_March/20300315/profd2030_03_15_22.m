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
	1389.0 851.1 1450.7 497.2 774.3311 1020.849 807.595 242.7409 487.6199 4305.1463 1657.5678;
	1362.6784 846.0 1444.6166 494.8333 756.0534 995.0656 792.6628 227.5475 452.8553 4235.8689 1603.8564;
	1390.5266 870.9757 1467.1032 505.637 770.5672 1016.6365 778.4136 224.7 460.5111 4131.7881 1584.5891;
	1450.7964 932.7393 1574.7921 504.3 825.2146 1074.0127 823.134 245.3961 504.1465 4442.7025 1719.134;
	1632.1 1045.2011 1735.058 527.0594 930.977 1232.0899 925.926 298.1148 577.8127 4888.6847 1932.9;
	1786.7103 1121.9555 1888.5947 516.9686 1003.3542 1312.5129 984.792 309.2241 636.9986 5333.9806 2089.5182;
	1860.2696 1159.9559 1912.7621 502.6499 1037.7593 1345.424 1024.2905 313.3563 663.5 5755.765 2188.9;
	1860.3446 1147.2468 1904.4944 495.4499 1028.6028 1327.8519 1010.5516 320.4936 667.0016 5860.1979 2246.7699;
	1796.3179 1134.2875 1865.2073 498.8065 997.6745 1279.1937 993.8708 311.8076 670.075 5624.78 2237.9052;
	1784.8777 1126.0512 1847.1773 518.1945 986.2976 1237.7614 961.5 288.9846 656.4673 5490.3395 2154.8799;
	1748.9934 1115.1339 1824.2381 497.6383 960.3221 1165.7699 946.4767 300.7 623.6227 5641.3634 2193.0032;
	1753.577 1108.3623 1864.0619 511.3291 971.5258 1192.4718 958.567 317.6 629.5241 5895.0574 2279.9663;
	1725.479 1096.155 1850.6013 509.5445 960.0704 1210.136 954.5558 316.917 627.151 5805.9387 2291.7007;
	1725.7 1123.9276 1864.0303 500.74 960.9852 1218.0171 977.3331 321.0 655.6188 5880.2827 2318.0603;
	1701.4792 1125.7021 1852.6967 498.6448 952.4401 1214.076 919.9477 319.0035 654.8272 5626.8536 2262.3374;
	1746.4358 1141.0231 1844.901 505.1994 946.024 1234.2933 930.2058 307.9226 624.0118 5821.6148 2259.6858;
	1755.518 1161.2388 1870.4286 530.3347 957.1888 1288.4408 1005.4201 335.7328 647.0779 5776.8214 2393.3007;
	1814.7952 1175.5656 1914.337 543.8258 966.7735 1335.6 1067.4543 340.6 673.3637 5711.6632 2424.3941;
	1807.8715 1183.7983 1908.4747 549.7512 997.2118 1324.1 1063.305 330.2502 658.5982 5639.8386 2412.7;
	1711.8386 1112.9276 1802.0855 532.6738 948.7 1256.9547 1011.241 307.7505 627.7898 5399.0036 2296.9677;
	1650.4827 1040.4438 1715.6929 522.3 896.2138 1196.6143 980.1029 296.0867 591.4 5195.7081 2211.5336;
	1531.5011 946.3923 1585.7475 499.4 837.1121 1086.9061 878.6923 270.8 540.0208 4767.0091 1987.9433;
	1486.126 896.9004 1543.0886 520.0 776.2335 1079.3868 871.4688 259.0 534.0 4602.426 1891.3765;
	1468.6798 871.5306 1483.657 512.8807 748.2476 1051.6586 849.1 251.519 520.5791 4513.5108 1787.4057;
];