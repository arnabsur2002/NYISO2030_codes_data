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
	3.455 46.6842 90.2447 103.1697 14.5317 30.3546 26.4911 10.7327 26.8727 28.226 52.1753 77.8353 117.1806 63.6395 191.1892 72.0294 89.3698 94.7054 88.0717 70.8199 8.8304 70.8275 68.7722 88.8445 93.8888 63.141 7.5379 1163.2493 722.9501 722.9501 729.8396 110.7509 293.5724 182.2906 199.5183 308.4587 1083.9827 283.7746 443.5939 251.4878 111.894 336.7341 175.5759 222.0699 1095.2742;
	3.4338 46.3988 87.84 103.6319 14.0887 30.7022 25.2391 11.0496 26.6994 26.1406 48.3206 72.0848 108.5233 63.9601 187.7258 70.7246 87.7509 92.9898 88.814 66.988 8.413 71.6384 69.6455 87.4117 97.0583 65.8818 7.5406 1141.9593 683.2514 683.2514 750.908 113.2748 296.0466 172.4273 200.5235 291.5206 1107.4336 273.8621 441.4647 259.9776 113.6433 340.5894 174.7333 233.7955 1118.9693;
	3.5206 47.5712 88.491 87.58 14.0742 31.1399 22.4129 9.9855 25.8277 26.9468 49.8108 74.3079 111.8702 63.2858 194.3059 73.2036 90.8267 96.2492 90.9572 70.1659 7.471 72.6599 67.0909 88.2015 85.9796 62.9443 7.9373 1129.182 711.0267 711.0267 753.5831 113.2331 303.1905 180.6071 198.4094 303.3714 1054.1081 261.5445 430.5131 230.3026 114.8267 345.4457 152.6467 232.3567 1065.0884;
	3.579 48.3596 85.2711 87.6579 14.0924 31.8124 20.3245 10.8564 26.0591 25.5901 47.3028 70.5665 106.2375 61.4425 192.7297 72.6098 90.0899 95.4684 91.1287 69.4616 6.7748 74.2289 59.2601 87.083 78.8413 59.5975 7.7129 1127.513 757.0338 757.0338 757.003 112.7673 303.7622 178.7944 192.6307 323.0011 1085.7125 249.3283 409.5502 211.182 109.2305 352.9055 161.5 224.4356 1097.022;
	3.6939 49.9131 86.9283 80.0441 15.0312 32.1419 17.2285 9.539 22.3146 27.5717 50.9658 76.0309 114.4642 64.4574 190.9882 71.9537 89.2759 94.6058 92.1789 71.3625 5.7428 74.9979 67.1122 89.9618 73.4601 57.2604 7.5951 1101.038 735.0995 735.0995 699.4828 101.2729 307.2629 183.6872 202.0825 313.6425 1064.1432 244.1361 360.412 196.7682 104.1125 356.5613 187.4363 218.3003 1075.2281;
	3.7936 51.2605 85.8539 81.4725 15.2396 31.6614 16.3191 7.7228 25.3025 28.5595 52.7918 78.755 118.5653 62.8372 189.1162 71.2484 88.4008 93.6785 92.0096 70.3694 5.4397 73.8765 70.3327 90.1292 63.3918 41.6259 6.4387 1127.3771 684.1146 684.1146 618.777 83.2974 306.6985 181.1311 197.0032 291.8889 1035.8314 210.1389 348.8444 169.7993 100.938 351.2302 173.2724 187.8016 1046.6213;
	3.5353 47.7699 70.6514 62.5867 14.9324 29.0832 13.767 5.2807 19.3931 28.4677 52.6221 78.5018 118.184 65.7751 186.4518 70.2446 87.1554 92.3587 92.6362 67.9721 4.589 67.8608 72.0039 85.719 47.7546 26.1077 4.6028 1244.3226 676.0927 676.0927 549.897 62.5068 308.7875 174.9604 206.2137 288.4662 1110.2441 202.0065 285.5033 127.9142 73.8218 322.6294 153.4853 125.1011 1121.8091;
	3.6675 49.5562 68.322 67.5398 14.502 29.2903 14.8621 5.3126 16.8511 22.6049 41.7848 62.3347 93.8445 67.9657 187.1017 70.4895 87.4592 92.6806 91.9926 67.0653 4.954 68.3439 57.2142 87.347 57.1961 16.3378 4.003 1249.0122 703.2197 703.2197 643.4276 64.8232 306.6421 172.6264 213.0817 300.0404 1122.1057 208.3011 227.1516 153.2039 75.4029 324.9265 148.0088 135.9919 1133.7943;
	2.9574 39.9612 54.4071 60.5479 14.204 23.553 13.3928 3.0208 19.1347 19.9776 36.9283 55.0897 82.9372 63.7672 176.9314 66.6579 82.7051 87.6427 92.366 63.6651 4.4643 54.957 47.0161 86.1381 55.9492 10.1184 2.7084 1175.2089 771.1293 771.1293 744.9807 87.0385 307.8867 163.8742 199.9189 329.0152 1081.468 247.4148 202.6687 149.8639 51.5169 261.2813 129.1321 146.0552 1092.7333;
	2.7712 37.4454 44.9247 56.5003 14.6256 19.058 17.6225 1.9145 21.2211 18.2462 33.7279 50.3154 75.7495 67.1662 166.9073 62.8814 78.0195 82.6773 91.538 62.0101 5.8742 44.4686 41.4477 78.1841 37.6253 5.7525 1.1856 1098.375 796.598 796.598 776.7278 107.1186 305.1265 159.6141 210.5751 339.8818 1128.948 240.2505 323.2632 100.7821 44.617 211.4166 122.6167 128.6828 1140.7078;
	2.2732 30.7155 34.4596 41.6946 14.1414 13.5065 17.7788 1.2062 19.6774 15.3055 28.292 42.2061 63.5411 66.7482 163.9855 61.7806 76.6537 81.23 91.9916 67.0823 5.9263 31.5152 33.689 63.3482 23.8449 5.2152 2.06 1159.7315 797.156 797.156 758.5083 107.0412 306.6387 172.6701 209.2646 340.1199 1128.9959 246.626 351.2646 63.8704 31.3707 149.8325 84.8909 98.3461 1140.7563;
	1.8142 24.5137 30.627 27.0322 11.185 11.8671 18.9183 1.3494 18.6395 17.4064 32.1755 47.9996 72.2631 67.5091 161.0816 60.6866 75.2963 79.7916 90.6143 65.4988 6.3061 27.6899 42.6217 47.0542 20.9759 7.944 4.7052 1045.0828 744.7334 744.7334 733.7563 105.6323 302.0478 168.5941 211.6503 317.7529 1077.1589 213.1003 382.3924 56.1856 23.2641 131.6455 69.8356 87.1827 1088.3793;
	1.1301 15.2696 27.9751 26.1031 9.2928 8.1154 18.4265 1.8718 15.4657 14.9347 27.6066 41.1836 62.0018 67.2066 174.0113 65.5577 81.3402 86.1963 91.2351 64.9033 6.1422 18.936 39.3297 45.8202 23.3245 11.6503 2.655 957.9418 766.3387 766.3387 729.582 95.8906 304.1169 167.0612 210.7017 326.9712 1076.1306 223.4212 406.5186 62.4764 19.2776 90.027 54.0655 59.6637 1087.3403;
	1.0788 14.5775 26.4138 33.3442 8.78 8.9456 13.3091 2.4232 13.7968 18.8229 34.7939 51.9057 78.1437 68.6623 185.522 69.8943 86.7207 91.8981 90.8617 67.4904 4.4364 20.8731 50.3364 46.4439 26.4228 12.8997 3.8087 968.9734 708.5717 708.5717 693.754 81.2168 302.8724 173.7204 215.2657 302.3239 911.6382 209.3691 402.3877 70.7755 29.0204 99.2369 42.7079 62.7761 921.1344;
	1.0618 14.3472 24.3685 19.3388 6.6477 7.9807 10.5409 1.8355 12.6866 16.9272 31.2897 46.6781 70.2736 68.7775 159.6274 60.1387 74.6165 79.0713 79.8512 64.7611 3.5136 18.6215 50.5539 55.2666 25.805 8.1019 3.4484 816.7804 615.9784 615.9784 605.1039 72.4059 266.1707 166.6952 215.6266 262.8175 786.9307 188.4703 326.2752 69.1206 28.3935 88.5322 38.5487 51.1631 795.1279;
	1.5168 20.4954 19.1813 31.4654 7.4249 5.7805 5.3745 1.335 10.1654 14.562 26.9177 40.1559 60.4545 69.745 170.695 64.3084 79.79 84.5536 83.4115 66.8323 1.7915 13.4878 44.4868 49.0186 24.318 4.3435 2.3859 798.1217 544.6494 544.6494 542.5078 77.4572 278.0385 172.0265 218.6599 232.3837 644.4422 185.1872 215.3803 65.1375 33.3725 64.1247 49.5162 25.9325 651.1551;
	0.6825 9.222 62.5282 33.8185 6.3474 2.7305 3.7291 1.2425 12.2327 17.6766 32.6749 48.7445 73.3846 66.6652 167.4045 63.0687 78.2519 82.9236 85.2024 58.4397 1.243 6.3711 48.4576 43.8326 17.478 8.6263 1.6375 740.7256 532.5611 532.5611 569.0158 73.357 284.0081 150.424 209.0043 227.2261 737.355 181.6655 223.7614 46.8161 36.6945 30.2898 85.8354 23.5009 745.0358;
	1.0842 14.6499 2.8066 1.2333 2.4006 0.0115 0.0604 0.0589 0.3816 20.2111 37.3599 55.7336 83.9066 66.915 126.8101 47.775 59.2763 62.8152 82.1095 45.3902 0.0201 0.0268 63.5544 36.9861 14.782 3.7076 1.6264 698.1729 535.9377 535.9377 616.73 86.9254 273.6985 116.8345 209.7876 228.6668 725.9449 207.3925 317.9375 39.5947 67.1107 0.1273 5.3296 0.0 733.5068;
	0.4325 5.8442 24.1911 37.9371 0.4101 0.0 0.0296 1.8276 0.0 23.4075 43.2684 64.548 97.1766 66.1048 98.6294 37.1581 46.1035 48.856 0.0 42.3412 0.0099 0.0 68.5363 44.963 21.603 9.1577 1.8981 760.1136 525.822 525.822 639.3127 86.7203 0.0 108.9862 207.2474 224.3507 710.0102 204.8323 324.5128 57.8653 78.1436 0.0 4.2173 0.011 717.4061;
	0.1181 1.5957 26.7925 53.5592 1.4245 0.0 2.2552 3.0626 2.5443 26.3175 48.6474 72.5724 109.2574 63.9284 86.0825 32.4311 40.2386 42.6409 1.6832 58.8581 0.7517 0.0 69.7889 62.0379 31.3384 20.7818 2.4868 597.0079 376.0743 376.0743 614.0478 72.7219 5.6108 151.501 200.4242 160.4583 571.5844 201.582 18.9426 83.9423 77.4458 0.0 0.0549 0.0015 577.5384;
	0.628 8.4851 45.1736 76.1104 5.3276 0.1455 2.4074 4.7004 6.5771 26.968 49.8499 74.3662 111.958 57.0984 110.5934 41.6654 51.696 54.7823 78.5879 65.0006 0.8025 0.3395 71.6316 74.2385 35.8224 14.4767 2.0631 507.2652 379.4053 379.4053 526.6922 54.8132 261.9597 167.3117 179.0111 161.8796 601.2386 198.7295 108.4391 95.953 89.7614 1.6142 5.0486 36.7836 607.5015;
	0.4477 6.05 44.5245 66.5392 0.1603 0.0242 0.2444 2.9324 1.2551 23.8336 44.056 65.7229 98.9454 37.8605 126.7264 47.7435 59.2372 62.7738 73.4994 66.8937 0.0815 0.0564 71.2255 65.2248 32.4796 16.8614 1.0609 342.7713 356.4932 356.4932 470.2318 50.7548 244.9979 172.1846 118.6976 152.1038 638.3165 161.2244 19.2637 86.999 71.6689 0.2679 0.0043 28.1415 644.9657;
	0.6263 8.4629 44.5195 64.0967 7.99 2.1863 5.3073 3.214 8.7898 19.3079 35.6904 53.2431 80.1572 22.3794 144.7407 54.5302 67.6579 71.6971 79.7461 70.5326 1.7691 5.1013 52.7188 63.478 30.0528 30.691 1.586 295.6445 413.5463 413.5463 516.848 53.9189 265.8204 181.5512 70.1626 176.4464 500.7255 144.7095 287.6598 80.4985 59.7079 24.2529 7.4331 0.0337 505.9414;
	0.973 13.1471 52.6507 69.8601 13.745 23.7106 5.878 5.8802 12.798 22.4769 41.5483 61.9819 93.3134 7.5956 158.6114 59.7559 74.1416 78.568 82.882 69.6786 1.9593 55.3248 71.6774 72.8321 42.0024 38.3869 3.1077 278.9414 320.8803 320.8803 398.9714 52.49 276.2733 179.3529 23.8134 136.9089 370.6017 117.5419 296.4404 112.5064 60.0008 263.0299 49.5696 58.8893 374.4621;
];
