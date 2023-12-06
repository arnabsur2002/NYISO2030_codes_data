function windprofile = ex_wind_profilesh1
%EX_WIND_PROFILE_D  Example wind_load_nyiso profile data for deterministic unit commitment.
% 2022.03.12
% Andres F. Ramirez


%% define constants
[GEN_BUS, PG, QG, QMAX, QMIN, VG, MBASE, GEN_STATUS, PMAX, PMIN, ...
    MU_PMAX, MU_PMIN, MU_QMAX, MU_QMIN, PC1, PC2, QC1MIN, QC1MAX, ...
    QC2MIN, QC2MAX, RAMP_AGC, RAMP_10, RAMP_30, RAMP_Q, APF] = idx_gen;
[CT_LABEL, CT_PROB, CT_TABLE, CT_TBUS, CT_TGEN, CT_TBRCH, CT_TAREABUS, ...
    CT_TAREAGEN, CT_TAREABRCH, CT_ROW, CT_COL, CT_CHGTYPE, CT_REP, ...
    CT_REL, CT_ADD, CT_NEWVAL, CT_TLOAD, CT_TAREALOAD, CT_LOAD_ALL_PQ, ...
    CT_LOAD_FIX_PQ, CT_LOAD_DIS_PQ, CT_LOAD_ALL_P, CT_LOAD_FIX_P, ...
    CT_LOAD_DIS_P, CT_TGENCOST, CT_TAREAGENCOST, CT_MODCOST_F, ...
    CT_MODCOST_X] = idx_ct;

windprofile = struct( ...
    'type', 'mpcData', ...
    'table', CT_TGEN, ...
    'rows', [1:45], ...
    'col', PMAX, ...
    'chgtype', 1, ...
    'values', [] );
windprofile.values(:,1,:) = [
	3.5335 47.745 89.4487 108.0667 15.0527 30.794 25.6615 9.3711 26.3387 27.1779 50.2379 74.945 112.8293 68.1686 182.8782 68.8983 85.4849 90.5885 81.9185 65.6527 8.5538 71.8528 58.2616 82.2306 91.0493 54.2505 6.9367 1074.7439 733.0684 733.0684 716.9813 110.7513 273.0616 168.9903 213.7178 312.7758 1077.0663 291.1199 437.125 243.8822 113.5051 341.6085 189.6495 224.1841 1088.2858;
	3.7104 50.1358 88.6992 108.794 15.2526 31.5519 27.6406 10.4044 27.7358 25.647 47.408 70.7234 106.4737 67.3384 194.633 73.3269 90.9796 96.4112 78.8139 66.3109 9.2135 73.6211 64.1753 84.4506 99.4227 55.2171 6.8899 1117.086 776.099 776.099 785.9381 116.3356 262.7131 170.6844 211.1149 331.1356 1175.1093 290.6758 457.0166 266.3108 113.7309 350.016 202.1526 240.1903 1187.35;
	3.6896 49.8551 89.773 98.9047 14.7507 31.5202 25.4923 9.5342 28.1391 27.2173 50.3108 75.0538 112.9931 67.2274 192.6134 72.566 90.0356 95.4108 84.2931 67.1533 8.4974 73.5471 58.3222 84.103 89.696 54.692 6.9349 1149.5661 784.0483 784.0483 775.9909 118.9285 280.9769 172.8529 210.767 334.5273 1136.466 279.9447 466.558 240.257 114.6955 349.664 181.7514 252.1163 1148.3042;
	3.7451 50.605 90.485 109.2414 15.2619 32.3857 23.36 11.2443 28.1438 27.0691 50.0367 74.645 112.3776 65.844 179.9897 67.8101 84.1347 89.1577 84.1409 63.0372 7.7867 75.5666 67.1907 85.9179 92.1407 50.3353 7.7817 1130.1941 795.6191 795.6191 739.1415 113.104 280.4696 162.258 206.4299 339.4641 1151.8535 258.0037 452.7551 246.8054 112.2267 359.2652 190.4636 246.1996 1163.852;
	3.6456 49.2602 84.5039 91.9493 15.2257 31.3526 19.7987 8.8161 24.9425 26.863 49.6558 74.0767 111.5221 66.724 180.0113 67.8182 84.1448 89.1684 84.7935 64.6202 6.5996 73.1561 62.5579 84.0464 74.5676 42.679 6.9457 1155.4923 775.7111 775.7111 691.1683 106.3332 282.6449 166.3326 209.1889 330.9701 1128.0657 257.6025 418.687 199.7346 107.8894 347.8051 197.1783 218.8175 1139.8164;
	3.7506 50.6788 80.4129 81.0958 15.3209 31.8033 17.6526 6.234 26.359 28.3551 52.4139 78.1912 117.7165 65.4391 176.9683 66.6718 82.7224 87.661 87.0972 63.3738 5.8842 74.2078 68.2129 81.4963 56.0813 24.9036 5.5501 1189.6241 737.0892 737.0892 640.8661 97.1895 290.3239 163.1242 205.1605 314.4914 1150.5376 233.4716 378.237 150.2177 96.4218 352.8051 195.6714 174.3531 1162.5224;
	3.4119 46.1026 66.0522 62.2258 15.1553 30.0665 15.5266 4.5183 20.3825 28.5539 52.7814 78.7395 118.5418 66.5865 176.5879 66.5285 82.5446 87.4726 85.4607 65.1296 5.1755 70.1551 69.6835 70.9612 45.7269 0.0 3.9831 1137.3437 685.1176 685.1176 523.1669 60.7481 284.869 167.6437 208.7578 292.3169 1072.1707 197.7966 302.5571 122.4829 74.4977 333.5374 168.2139 118.3352 1083.3391;
	3.4995 47.2859 67.3976 67.4402 14.7791 28.716 15.1472 3.4391 17.0745 24.3298 44.9732 67.0912 101.0054 67.3144 179.7664 67.7259 84.0303 89.0471 85.6582 63.6388 5.0491 67.0041 54.4431 77.3553 53.3707 5.0182 3.2636 1128.1869 668.6618 668.6618 568.7534 63.6084 285.5274 163.8065 211.0397 285.2957 1009.3552 202.9318 268.1821 142.9573 78.8831 318.5564 157.1645 126.9603 1019.8694;
	2.9789 40.2518 61.229 66.0773 15.0466 25.5234 15.3298 3.4381 22.3514 23.3995 43.2537 64.526 97.1436 66.1906 175.7085 66.1971 82.1335 87.037 87.0075 65.9705 5.1099 59.5546 52.395 80.0611 54.3742 4.0413 2.689 1036.83 754.2488 754.2488 649.1477 85.8635 290.025 169.8082 207.5165 321.8128 981.5743 235.8184 269.0403 145.6453 55.5472 283.1394 145.5736 156.3001 991.7991;
	2.7124 36.6509 51.2419 61.221 14.2468 19.4245 19.7647 2.1893 22.9687 20.4361 37.7758 56.354 84.8407 67.0212 173.2651 65.2766 80.9914 85.8267 89.0609 66.6831 6.5882 45.3238 44.5615 69.5047 37.0054 1.6422 1.5044 1037.8053 727.4323 727.4323 635.1009 100.7302 296.8695 171.6424 210.1204 310.3711 1054.7593 228.1029 379.593 99.1216 45.788 215.4821 125.8322 124.0433 1065.7464;
	2.157 29.1457 36.9395 42.6635 12.9668 13.5411 18.3625 1.185 19.7544 15.4043 28.4745 42.4784 63.951 67.848 155.3676 58.5339 72.6253 76.9612 88.6409 65.9053 6.1208 31.596 35.1491 52.1894 23.764 2.09 3.5416 1064.1421 700.9283 700.9283 546.2737 95.2126 295.4696 169.6404 212.7126 299.0627 1045.326 226.4922 392.461 63.6535 38.7374 150.2164 86.7249 88.3592 1056.2149;
	1.2017 16.2373 26.5395 24.6151 8.9135 9.3125 17.7992 1.0733 17.148 16.3799 30.2781 45.1689 68.0016 65.742 165.8306 62.4757 77.5162 82.144 87.8169 66.9644 5.9331 21.7291 42.5044 35.8343 19.6531 1.1617 1.858 927.7842 597.8631 597.8631 492.7388 89.2311 292.723 172.3664 206.1101 255.0883 899.4415 189.345 354.2661 52.6422 25.3585 103.3062 55.3894 72.1204 908.8107;
	1.0028 13.5498 25.2809 24.9971 8.2134 7.7852 17.0952 1.8569 15.1508 14.0824 26.0312 38.8334 58.4635 65.3819 172.7263 65.0736 80.7395 85.5598 88.412 68.9775 5.6984 18.1655 41.5225 32.8547 20.7452 6.2291 2.5854 877.708 665.2825 665.2825 543.8468 85.3266 294.7067 177.5483 204.9811 283.8539 944.7645 204.3881 384.5943 55.5676 22.5438 86.3639 48.2239 51.4903 954.6058;
	0.7546 10.1964 22.9961 30.4617 7.6748 7.8764 8.1324 2.5656 12.1473 18.572 34.33 51.2136 77.1019 66.3173 182.746 68.8485 85.4231 90.523 89.1143 69.364 2.7108 18.3782 53.523 37.3639 26.1699 9.3343 3.7877 841.5131 625.627 625.627 545.5539 76.3097 297.0475 178.543 207.9138 266.9342 780.2709 197.2889 335.9357 70.098 24.9631 87.3754 38.1472 59.9923 788.3987;
	0.832 11.2422 23.5771 11.5608 6.7138 7.9844 8.8765 2.3573 12.4382 16.9779 31.3833 46.8177 70.4838 64.4946 179.5191 67.6328 83.9147 88.9246 79.8248 70.9323 2.9588 18.6302 53.4059 43.0713 26.3805 5.3959 3.6128 643.2105 556.5277 556.5277 516.6148 76.0726 266.0827 182.5798 202.1992 237.4518 707.7626 182.7291 292.9113 70.6622 27.0356 88.5733 37.0031 44.9697 715.1351;
	0.9051 12.2297 20.1101 30.9688 7.5432 1.442 4.9961 1.5908 9.3718 15.7636 29.1389 43.4695 65.443 63.0357 161.9953 61.0308 75.7234 80.2442 80.1209 69.717 1.6654 3.3646 57.6382 42.6368 26.663 4.3824 2.5852 558.3522 475.5358 475.5358 496.8147 73.0422 267.0696 179.4518 197.6254 202.8953 550.5657 177.9888 207.2583 71.4188 29.2183 15.9961 10.7963 18.2157 556.3007;
	0.5028 6.7941 20.8967 9.6696 6.3706 0.5199 3.4635 3.2069 11.5862 19.9598 36.8954 55.0406 82.8634 57.7991 163.5355 61.611 76.4433 81.0071 80.2928 67.0046 1.1545 1.213 55.4685 35.8392 16.924 6.0224 1.7639 634.5277 481.1538 481.1538 530.6177 74.1467 267.6428 172.4701 181.208 205.2923 641.0658 179.5739 221.0395 45.332 32.4547 5.7669 3.6461 0.401 647.7436;
	1.0583 14.2993 31.5509 39.2438 2.624 1.1236 0.6529 2.8827 3.8988 20.2457 37.4239 55.8291 84.0504 59.7316 129.6791 48.8558 60.6174 64.2364 83.0115 57.1992 0.2176 2.6217 62.1094 38.5478 19.6106 3.9751 1.8439 474.2397 481.6236 481.6236 584.5466 80.9045 276.7049 147.231 187.2667 205.4927 564.7801 196.4784 333.9554 52.5284 78.6082 12.4643 0.3801 35.6422 570.6632;
	0.5425 7.3306 24.737 41.1227 1.4262 4.3337 0.0 2.4366 1.8994 22.7729 42.0953 62.798 94.542 59.7651 115.6221 43.5599 54.0466 57.2733 3.3161 65.3651 0.0 10.1121 69.5383 49.2186 25.3307 9.1427 2.3088 601.7301 438.1834 438.1834 569.3406 79.5715 11.0536 168.2498 187.3717 186.9582 559.0006 190.1252 322.986 67.8501 84.8447 48.0757 16.3702 51.5006 564.8236;
	0.3185 4.3032 31.1795 57.2415 2.4079 4.0644 0.6293 3.7273 3.1348 25.2374 46.6509 69.594 104.7734 57.878 94.0516 35.4334 43.9636 46.5883 3.2202 66.5708 0.2098 9.4836 70.7392 69.2239 39.4472 22.1498 3.1912 598.7541 302.7357 302.7357 536.7516 66.4183 10.7341 171.3534 181.4554 129.1672 473.9365 182.1318 42.2394 105.6622 93.3013 45.0877 5.9401 40.2529 478.8733;
	0.7462 10.0833 46.3034 78.3754 5.3945 5.6348 2.3231 5.8204 3.2867 25.5386 47.2077 70.4246 106.0238 47.7268 117.3171 44.1985 54.8389 58.1129 83.0244 71.2629 0.7744 13.1479 70.972 81.7421 45.1598 16.2989 2.5957 518.9066 330.7763 330.7763 495.8779 54.871 276.7481 183.431 149.6299 141.1312 568.9058 182.5657 40.187 120.9638 90.1999 62.509 0.318 45.5027 574.8319;
	0.5195 7.0202 42.1159 71.309 1.8162 9.64 3.4562 3.4371 6.0209 21.9326 40.542 60.4808 91.0535 39.5889 139.3123 52.4851 65.1204 69.0082 80.6474 68.6517 1.1521 22.4932 69.5909 71.4626 40.2641 17.4856 1.4029 374.4793 305.4889 305.4889 437.8901 50.0913 268.8245 176.7097 124.1166 130.342 593.7671 154.8967 22.4221 107.8502 71.9007 106.9392 6.9617 28.2922 599.9522;
	0.6318 8.5364 40.2755 65.7054 7.6858 5.3147 4.5097 4.0817 10.9476 16.6993 30.8684 46.0495 69.3273 23.3285 125.4896 47.2775 58.6591 62.1611 81.1339 68.9448 1.5032 12.4009 43.3567 65.1614 38.4759 32.3501 1.7607 353.8842 363.8379 363.8379 491.4285 52.4715 270.4463 177.464 73.1381 155.2375 486.9612 139.178 49.9173 103.0604 51.9436 58.9574 1.1769 2.4406 492.0337;
	0.1276 1.7235 49.6254 69.511 5.854 5.5508 2.2982 6.5042 6.2624 21.0584 38.9261 58.0701 87.4243 8.8129 146.1186 55.0493 68.302 72.3797 85.5705 68.0608 0.7661 12.9519 65.8244 72.8908 47.3452 39.7832 2.9688 305.1466 303.2333 303.2333 394.6292 48.5389 285.2349 175.1886 27.6296 129.3795 368.3254 122.8174 71.8219 126.8176 50.7578 61.5771 5.2889 54.6944 372.1621;
];