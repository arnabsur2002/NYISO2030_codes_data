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
	3.7113 50.1484 92.5319 117.0193 14.5234 33.2389 29.5243 17.7406 4.7424 16.9813 31.3897 46.8272 70.4981 54.3412 204.7482 77.1377 95.7079 101.4218 89.099 71.8491 9.8414 77.5573 22.798 85.7526 100.117 74.075 13.5422 1234.1442 790.0735 790.0735 739.5938 106.5387 296.9967 184.9397 170.367 337.098 1073.0804 270.0254 439.2225 268.1706 121.2035 368.7297 210.8595 280.5617 1084.2583;
	3.7147 50.1932 90.9079 112.025 14.4919 33.7556 30.5615 17.5245 11.2354 14.9036 27.5491 41.0978 61.8725 64.1794 202.6877 76.3614 94.7447 100.4011 92.4665 72.9961 10.1872 78.7631 29.3777 82.5798 96.3195 71.5378 12.9251 1255.6574 830.6458 830.6458 776.2391 113.4665 308.2215 187.8923 201.2112 354.4089 1232.9375 272.5785 460.4706 257.9988 122.2361 374.4621 208.8762 280.3226 1245.7806;
	3.6505 49.326 86.8534 109.8002 14.3028 33.336 32.3043 17.3676 23.7903 15.7202 29.0585 43.3496 65.2625 62.827 179.0304 67.4487 83.6863 88.6825 91.2449 69.4834 10.7681 77.784 28.0168 83.5129 96.7336 71.4804 12.8263 1216.2961 819.1327 819.1327 758.8262 113.4254 304.1498 178.8505 196.971 349.4966 1198.0558 289.0876 462.4839 259.1078 120.786 369.8075 205.5535 263.8576 1210.5355;
	3.6398 49.1814 88.1773 114.151 14.5072 34.2603 31.8942 17.4418 28.2552 30.1214 55.6789 83.062 125.0494 68.8467 195.5699 73.6798 91.4176 96.8753 90.0925 66.1267 10.6314 79.9408 27.5009 83.3791 97.5752 73.2796 12.9156 1239.798 823.2333 823.2333 756.727 114.0687 300.3083 170.2104 215.8436 351.2462 1190.169 304.717 473.8112 261.362 122.0 380.0614 179.6839 262.9959 1202.5666;
	3.1475 42.5302 89.7852 117.9524 14.6541 33.0278 31.5432 17.7701 28.2579 30.6381 56.6341 84.487 127.1947 68.7074 198.6261 74.8312 92.8462 98.3892 87.0646 67.7584 10.5144 77.0648 74.6221 85.8987 99.0682 73.7077 13.2116 1243.3083 820.2355 820.2355 780.9572 108.8387 290.2154 174.4103 215.4071 349.9672 1160.8403 306.5766 476.3494 265.3612 123.145 366.3883 184.5538 271.3231 1172.9324;
	3.62 48.9135 89.0862 113.3606 14.6177 32.9005 18.7341 17.7108 26.8238 31.103 57.4933 85.7687 129.1244 56.2353 201.6208 75.9595 94.246 99.8726 59.5944 70.2909 6.2447 76.7679 75.6709 85.465 98.398 73.9135 13.4781 1178.8643 812.3548 812.3548 773.1185 110.3249 198.6479 180.929 176.3054 346.6047 1136.3457 300.7308 472.818 263.566 121.7516 364.9767 160.9075 265.8867 1148.1827;
	3.7465 50.624 91.4314 116.9305 14.6421 33.6739 13.3258 18.438 26.214 30.8145 56.9601 84.9732 127.9267 68.5692 199.6135 75.2032 93.3077 98.8783 87.8201 71.974 4.4419 78.5723 75.2427 87.8906 103.207 74.4214 13.9929 1218.9958 820.4718 820.4718 749.4694 109.3982 292.7335 185.2613 214.9737 350.068 1141.0161 298.0973 437.0025 276.4474 122.844 373.5553 175.299 272.4353 1152.9017;
	3.7012 50.0116 91.0179 115.1502 14.6851 33.13 2.2152 17.6996 3.0992 29.0807 53.7552 80.1921 120.7288 46.9504 203.2495 76.5731 95.0073 100.6794 89.742 70.9076 0.7384 77.3032 72.4746 84.0602 99.3983 72.2427 13.561 1228.3193 782.123 782.123 739.0515 107.8662 299.14 182.5165 147.1958 333.7058 1158.4165 297.9557 180.9076 266.2453 122.0014 367.5216 198.4729 270.7727 1170.4833;
	3.7535 50.7187 90.1826 117.279 14.4871 30.765 4.6997 17.4572 3.6334 29.997 55.449 82.7191 124.5331 27.8869 202.1385 76.1545 94.488 100.1291 90.1074 71.8369 1.5666 71.7849 74.371 83.7375 98.9698 73.1958 13.1566 1156.5729 700.1503 700.1503 732.559 107.1047 300.3578 184.9083 87.4293 298.7308 1044.7914 275.5124 75.0518 265.0977 121.1655 341.2861 182.2662 272.0993 1055.6747;
	3.8252 51.6866 92.0893 118.8501 15.1307 30.0775 6.7428 18.314 8.0658 27.9546 51.6737 77.087 116.054 26.9294 203.4341 76.6426 95.0936 100.7709 90.3837 73.2836 2.2476 70.1809 56.5234 86.3722 103.766 73.8857 13.5517 963.8625 658.4525 658.4525 632.9716 104.3495 301.2789 188.6323 84.4274 280.9397 821.4374 258.3293 308.6439 277.9447 121.9069 333.6603 160.5 276.2424 829.9941;
	3.6969 49.9526 93.3001 117.5768 14.8293 26.679 6.7946 18.0319 6.6509 29.5162 54.5603 81.3932 122.537 55.8102 202.1795 76.17 94.5072 100.1494 84.9914 72.1493 2.2649 62.2511 73.6764 86.6704 101.9781 71.2284 13.4722 814.1894 712.636 712.636 569.0216 110.8143 283.3046 185.7125 174.9726 304.058 754.8835 213.1545 407.5514 273.1557 121.2065 295.9593 138.5402 271.8984 762.7469;
	3.3152 44.7952 94.13 117.9656 14.8975 18.5925 2.3465 18.4917 9.3711 28.0147 51.7848 77.2527 116.3035 30.6562 203.8459 76.7977 95.2861 100.9748 41.6089 72.2718 0.7822 43.3825 73.1873 87.4521 103.8757 76.177 13.6885 605.6759 770.9878 770.9878 582.4373 114.9543 138.6965 186.0278 96.1114 328.9548 806.9952 227.0309 354.8641 278.2384 122.9005 206.2527 131.5095 278.0979 815.4014;
	3.6551 49.3883 92.2367 114.4239 14.6686 18.4874 0.6852 17.8271 26.5037 24.099 44.5466 66.4548 100.0474 55.2139 200.4208 75.5074 93.6851 99.2782 62.1167 72.0423 0.2284 43.1373 70.0395 84.4476 103.5202 74.3748 13.5064 601.1085 734.2668 734.2668 561.8212 112.855 207.0556 185.4372 173.1031 313.2872 578.8293 241.4331 252.5723 277.2862 121.8753 205.0871 130.4359 270.0584 584.8588;
	3.6183 48.8913 92.1238 112.014 14.3783 17.5918 0.1837 18.0269 19.5831 23.0787 42.6606 63.6413 95.8116 34.6679 199.728 75.2464 93.3612 98.935 59.6703 72.5715 0.0612 41.0476 71.0241 84.9365 102.8928 73.8316 13.2593 530.5828 704.1815 704.1815 521.488 101.661 198.9012 186.7993 108.6886 300.4508 657.0923 253.4349 292.8768 275.6057 121.7223 195.1522 146.1607 266.803 663.937;
	3.756 50.7521 90.3905 112.4162 15.1237 17.5661 1.356 18.3571 22.7018 26.3766 48.7568 72.7355 109.5029 30.7205 195.6781 73.7206 91.4681 96.9289 76.265 71.9077 0.452 40.9876 72.3177 87.7483 102.2929 75.3593 13.6268 382.9803 687.5523 687.5523 479.2265 90.0418 254.2168 185.0907 96.3128 293.3556 579.9668 242.1774 325.3355 273.9989 121.3402 194.867 158.2564 245.5352 586.0081;
	3.2217 43.5319 89.7837 112.7756 14.5293 7.9866 1.8507 18.2568 7.0461 28.5488 52.7721 78.7255 118.5209 22.9632 182.1764 68.6339 85.1569 90.2409 66.914 72.2816 0.6169 18.6354 69.7921 86.7694 101.3135 76.1302 13.9215 445.4443 578.0549 578.0549 441.7912 93.2394 223.0468 186.053 71.9926 246.6368 483.1224 228.5857 134.0731 271.3754 120.1693 88.598 150.6317 249.0213 488.1549;
	3.3632 45.4437 91.55 112.7952 14.4139 17.8216 3.5071 18.4056 19.2179 29.0644 53.7252 80.1474 120.6614 33.2357 180.1571 67.8731 84.213 89.2406 67.949 73.4964 1.169 41.5836 70.8868 86.3086 103.3392 75.0248 13.8157 995.0407 502.3486 502.3486 325.0618 86.7063 226.4968 189.1798 104.1986 214.3354 817.7295 232.4571 124.7215 276.8015 117.9652 197.7004 129.6453 247.9707 826.2476;
	3.1633 42.7434 88.5332 110.3632 14.8267 19.6548 2.0436 17.9808 10.6703 28.6042 52.8744 78.8782 118.7508 58.2919 183.8536 69.2658 85.9409 91.0717 75.8486 71.6856 0.6812 45.8612 71.3218 84.5156 99.9516 72.9208 13.6106 1233.9914 590.3121 590.3121 230.3822 67.9865 252.8285 184.5189 182.7531 251.8665 1000.5963 199.2264 145.443 267.7274 120.1871 218.0374 173.7623 264.2939 1011.0192;
	2.3038 31.1298 87.7877 110.3015 14.2476 30.8699 0.4745 18.3499 1.7996 24.8095 45.8601 68.4142 102.9972 65.606 184.7725 69.612 86.3704 91.5268 47.994 72.3475 0.1582 72.0298 49.3041 85.325 98.4481 73.0113 13.7861 1271.1024 725.3192 725.3192 323.043 59.7824 159.9799 186.2226 205.6837 309.4695 1206.5821 134.8797 262.7383 263.7002 118.3641 342.4502 157.9016 262.8273 1219.1507;
	3.6877 49.8289 91.5523 87.2021 14.75 32.9241 1.9512 18.199 2.9484 13.4412 24.8459 37.0652 55.8014 65.7047 195.5025 73.6544 91.3861 96.842 31.8244 71.6829 0.6504 76.823 35.3264 86.0077 103.3489 75.0621 14.0771 1296.2745 739.0124 739.0124 394.9923 52.8328 106.0813 184.5119 205.993 315.3119 1167.9656 108.4974 78.3368 276.8275 119.6396 365.2386 193.0036 271.785 1180.132;
	3.8148 51.5462 93.7364 119.4061 15.207 32.9288 6.5548 18.6931 6.2863 11.9734 22.1327 33.0176 49.7079 66.9328 187.9695 70.8164 87.8648 93.1105 45.9969 68.0416 2.1849 76.8339 55.7554 85.3267 104.0411 75.6933 14.01 1297.746 733.5325 733.5325 656.1479 51.0336 153.3229 175.1392 209.8435 312.9739 1254.0101 159.7292 83.2396 278.6815 118.1391 365.2904 199.8466 283.7734 1267.0727;
	3.7408 50.5459 94.8809 120.2393 15.1595 33.4645 10.2427 18.5068 27.9928 29.0073 53.6195 79.9898 120.4242 67.8712 192.1166 72.3788 89.8033 95.1647 61.9677 68.07 3.4142 78.0839 72.622 89.088 105.003 75.657 14.071 1307.9292 724.231 724.231 560.0492 76.7651 206.5589 175.2123 212.7854 309.0052 1263.1156 219.9253 446.5896 281.2582 123.608 371.2331 209.0593 273.3534 1276.273;
	3.8433 51.9319 94.5916 120.4116 15.3388 32.5471 14.3539 18.966 28.3628 29.9067 55.2821 82.4701 124.1582 69.2623 192.2242 72.4193 89.8536 95.218 61.3451 69.1922 4.7846 75.9432 73.3905 89.0198 104.3027 75.6736 13.9701 1336.8791 816.0851 816.0851 656.95 117.0611 204.4837 178.1008 217.1468 348.1963 1279.4327 251.918 473.9424 279.3822 122.811 361.0555 210.0238 277.1811 1292.7601;
	3.8462 51.9702 94.2426 120.7966 15.278 33.4525 30.5491 18.7873 28.2701 27.8148 51.4153 76.7015 115.4737 67.1083 190.9233 71.9292 89.2455 94.5736 65.9014 68.4507 10.183 78.0558 72.822 88.6663 106.2695 76.4314 13.8088 1307.2257 791.1468 791.1468 603.4687 112.4978 219.6712 176.1922 210.3934 337.556 1212.6642 235.7863 472.8645 284.6503 122.503 371.0994 200.7947 278.3732 1225.2961;
];