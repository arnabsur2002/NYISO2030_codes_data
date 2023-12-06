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
	3.6454 49.2578 89.8135 116.2566 15.2481 16.0869 14.7236 18.9312 26.974 24.4254 45.1499 67.3548 101.4023 7.4777 27.3836 10.3166 12.8002 13.5644 17.0104 33.0113 4.9079 37.5361 63.7652 87.4664 105.6246 75.7194 9.3512 685.6767 416.3293 416.3293 230.4477 40.4689 56.7014 84.9713 23.4437 177.6339 523.7278 60.6569 303.5141 282.9231 7.2485 178.4574 120.1147 207.124 529.1833;
	3.5309 47.7097 86.6326 111.7233 14.8333 17.4931 12.9963 17.7693 25.766 24.1639 44.6666 66.6338 100.3168 9.1762 15.2702 5.753 7.1379 7.5641 13.3684 18.9978 4.3321 40.8171 62.6648 85.2151 102.9529 74.0515 7.638 678.3276 412.3424 412.3424 195.4846 37.23 44.5615 48.9005 28.7686 175.9328 520.064 60.4481 299.6569 275.7667 4.1398 194.0562 110.7037 182.9428 525.4813;
	2.912 39.348 83.0803 106.9833 14.5749 13.0379 11.0649 17.7762 25.7018 20.4125 37.7322 56.289 84.7428 7.6032 15.0638 5.6752 7.0414 7.4618 22.2316 27.3583 3.6883 30.4218 46.3956 84.4405 98.4886 73.7999 8.7124 527.1946 345.3744 345.3744 159.5871 34.9443 74.1054 70.4203 23.8369 147.3598 370.5651 41.3529 229.2386 263.8087 3.7091 144.6338 82.2598 160.9402 374.4252;
	2.531 34.1995 84.6485 106.9057 14.3734 12.8789 10.911 18.4071 25.9028 21.6775 40.0706 59.7774 89.9946 10.8148 8.6443 3.2567 4.0407 4.2819 11.7377 25.0706 3.637 30.0507 61.3058 85.9896 102.4345 75.4401 10.5237 417.0422 241.6138 241.6138 151.8509 27.265 39.1258 64.5318 33.9059 103.0885 268.5466 30.9439 188.7074 274.3781 0.0 142.8698 73.1131 187.9395 271.3439;
	1.8883 25.5145 87.5731 111.1371 14.1357 13.9816 9.4814 18.8157 16.7535 20.5519 37.9899 56.6735 85.3216 16.2399 10.0326 3.7797 4.6897 4.9696 19.251 26.5276 3.1605 32.6238 53.0323 88.5024 103.1451 75.3495 10.7974 285.7518 184.0003 184.0003 133.3689 26.6708 64.1699 68.2822 50.9144 78.5068 138.5222 31.9522 172.3586 276.2815 0.0 155.103 70.0829 202.1062 139.9651;
	2.6058 35.2104 86.7143 111.7166 13.8517 21.185 10.457 18.7482 9.2929 19.1501 35.3986 52.8078 79.5018 28.8007 3.8245 1.4409 1.7877 1.8945 28.6888 26.5972 3.4857 49.4317 53.6258 88.3029 103.0258 73.1442 9.2009 226.3973 174.2583 174.2583 122.904 22.6403 95.6293 68.4614 90.294 74.3502 100.2865 26.7384 188.3029 275.9619 5.2689 235.0123 79.138 203.1186 101.3311;
	2.2158 29.9406 84.5094 112.044 13.9663 22.2207 11.6495 18.3449 11.433 27.025 49.9554 74.5236 112.1949 41.2382 4.1307 1.5562 1.9309 2.0461 31.4616 33.5802 3.8832 51.8483 64.8055 86.5298 102.9171 71.9611 12.6344 192.4323 219.2516 219.2516 106.7572 16.798 104.8721 86.4355 129.2873 93.5473 137.6445 20.7773 168.1097 275.6708 5.3924 246.5015 92.5108 200.2471 139.0783;
	1.5605 21.0858 69.5412 117.684 14.7583 19.7585 12.4771 18.8372 17.0231 27.1732 50.2293 74.9322 112.81 43.6387 17.8723 6.7333 8.3543 8.853 47.9853 52.8161 4.159 46.1032 68.0625 88.4257 104.5926 73.428 13.8283 90.2352 165.2931 165.2931 89.9935 9.1437 159.951 135.9488 136.8133 70.525 94.9464 17.4155 167.6939 280.1587 4.7653 219.1876 92.3916 208.4055 95.9354;
	2.4868 33.6015 80.1325 106.8665 14.1852 23.9628 10.4706 18.853 17.7611 26.9797 49.8715 74.3984 112.0065 42.4439 19.7896 7.4556 9.2505 9.8028 58.5473 54.1209 3.4902 55.9131 66.6634 89.7246 104.6566 75.4247 13.6651 85.4443 125.0308 125.0308 79.8191 7.3317 195.1576 139.3073 133.0674 53.3465 87.9126 19.8363 109.4678 280.3302 10.8355 265.827 78.627 230.2202 88.8284;
	1.897 25.632 77.6751 106.1087 12.5124 14.0836 10.5472 18.5679 24.2507 28.8613 53.3496 79.5872 119.818 42.2169 18.8573 7.1044 8.8147 9.3409 68.2159 46.2016 3.5157 32.8617 69.2678 86.4096 102.5507 74.418 13.2375 177.5474 207.7789 207.7789 86.4917 9.4885 227.3862 118.923 132.3557 88.6523 188.8831 22.3103 14.594 274.6895 1.315 156.2341 84.06 206.1214 190.8507;
	1.4585 19.7079 71.8073 98.083 11.1366 24.8746 14.1909 17.7907 25.8553 28.2739 52.2639 77.9674 117.3795 45.5554 27.3853 10.3172 12.801 13.5653 62.7988 37.184 4.7303 58.0408 67.8679 86.1005 95.4957 72.8173 13.1518 276.1948 275.1765 275.1765 144.56 12.869 209.3292 95.7116 142.8222 117.4087 280.5491 26.3089 165.9399 255.7921 0.0065 275.9426 88.7111 188.4282 283.4715;
	1.5642 21.1353 77.5858 89.6722 11.5757 29.5002 19.0655 18.6992 26.1361 27.7001 51.2032 76.3851 114.9974 49.8431 3.5781 1.348 1.6725 1.7724 69.4379 49.4898 6.3552 68.8338 69.5563 86.1221 95.7217 70.6657 13.5168 381.5076 346.2625 346.2625 269.5965 16.8304 231.4597 127.3868 156.2649 147.7387 390.3417 43.3792 186.2527 256.3973 4.5597 327.2556 106.2088 185.5367 394.4078;
	2.8998 39.1825 83.7091 90.8523 14.1247 31.6495 20.7344 18.3851 26.8387 28.2788 52.273 77.981 117.4 55.5624 50.1889 18.9084 23.4604 24.861 84.1445 63.6871 6.9115 73.8489 70.19 88.0618 100.7449 72.4625 12.8298 578.0384 420.4857 420.4857 306.0425 23.3539 280.4815 163.9308 174.1956 179.4072 562.9228 57.8374 210.8649 269.8523 16.2871 351.0986 140.1489 219.7762 568.7866;
	3.4992 47.2816 78.6092 106.3745 14.4114 30.401 21.2029 18.7032 26.3029 29.134 53.8537 80.3392 120.9502 55.7775 71.3112 26.8661 33.3339 35.3239 87.0713 59.7341 7.0676 70.9357 68.2658 86.727 99.5423 72.8227 12.6567 686.783 511.4264 511.4264 374.0342 29.354 290.2376 153.7557 174.87 218.2086 651.1485 76.6506 271.5152 266.6312 0.0251 337.2486 140.3345 251.7235 657.9313;
	3.767 50.9003 84.6762 107.71 15.0079 32.9762 25.6841 18.9162 26.8001 23.9465 44.2648 66.0343 99.4143 59.5692 94.829 35.7263 44.327 46.9734 80.7473 55.7917 8.5614 76.9445 43.691 87.7338 101.5048 75.3161 13.817 942.431 641.9237 641.9237 490.0863 34.8886 269.1577 143.6079 186.7574 273.8874 893.7654 106.0056 409.4021 271.8879 0.0 365.8163 158.0605 260.9183 903.0755;
	3.64 49.1841 84.1294 106.2793 14.884 32.6889 27.3369 18.675 26.469 20.2582 37.447 55.8635 84.1022 62.6985 138.2242 52.0752 64.6118 68.4692 89.145 69.5409 9.1123 76.2741 43.381 85.8649 102.3048 72.0467 13.3681 992.4492 702.1694 702.1694 687.6896 50.582 297.1498 178.9983 196.5681 299.5923 949.0718 162.2131 370.813 274.0307 0.0 362.6288 168.9564 251.7281 958.958;
	3.7197 50.2612 86.9202 115.1287 14.7147 32.9468 28.9031 19.0553 26.5828 20.1084 37.1701 55.4504 83.4803 65.9755 164.0185 61.793 76.6691 81.2464 90.4809 70.8986 9.6344 76.8758 32.626 88.1801 104.8181 75.8432 13.4915 963.0151 721.3896 721.3896 718.9299 79.6771 301.6028 182.4931 206.8422 307.7929 960.0015 193.6224 381.1282 280.7627 0.0029 365.4897 198.7525 266.6351 970.0015;
	3.8883 52.5397 89.8287 113.8746 14.9247 34.089 29.9934 19.0693 27.8777 17.528 32.4002 48.3347 72.7677 64.9921 177.1729 66.7489 82.818 87.7624 91.6432 70.1099 9.9978 79.5409 36.2401 85.8073 105.6055 74.9184 13.8953 1120.7375 769.9917 769.9917 747.9739 91.4292 305.4772 180.4632 203.759 328.5298 1088.973 230.4208 435.6656 282.8718 109.0227 378.1602 195.3139 259.7839 1100.3165;
	3.8892 52.5515 90.3581 116.6841 15.0891 34.4746 31.223 14.517 27.9325 20.1096 37.1722 55.4537 83.4852 65.261 172.8195 65.1087 80.7831 85.6059 91.8193 67.9871 10.4077 80.4408 51.9242 87.8246 105.8897 68.5186 13.4121 1182.3212 818.4309 818.4309 766.7591 112.5839 306.0645 174.999 204.602 349.1972 1160.4966 272.8544 454.8922 283.6332 118.2342 382.4385 205.6485 272.4764 1172.5851;
	3.9017 52.7208 94.5532 113.7412 15.0631 34.7666 31.2296 9.335 28.3203 20.6472 38.1661 56.9363 85.7173 66.7089 189.1802 71.2725 88.4307 93.7102 90.7958 68.5083 10.4099 81.1221 50.421 43.4502 51.8146 67.7986 12.2193 1148.853 805.0963 805.0963 756.1219 107.3454 302.6526 176.3406 209.1414 343.5078 1168.6365 274.6849 473.7898 138.789 119.8131 385.6776 208.97 258.4711 1180.8098;
	3.834 51.8058 94.6684 118.8853 14.9351 34.3855 30.9661 18.7011 19.4833 20.0103 36.9887 55.1799 83.073 62.9941 185.7434 69.9777 86.8242 92.0078 91.2578 66.8753 10.322 80.2329 37.463 81.7605 105.0213 72.2372 13.8326 1173.1096 789.8202 789.8202 755.6427 106.6607 304.1927 172.1371 197.4951 336.9899 1125.3199 256.6406 449.714 281.3072 119.7374 381.4503 204.0313 279.4723 1137.042;
	3.8034 51.3925 94.6935 122.4951 14.8032 34.1981 30.5616 18.0967 10.6913 21.6088 39.9436 59.5879 89.7093 63.4224 185.9368 70.0506 86.9147 92.1036 89.3172 69.4825 10.1872 79.7955 44.7529 87.5898 105.8018 74.46 13.6445 1263.3718 804.8139 804.8139 787.6371 112.4484 297.7241 178.8481 198.8378 343.3873 1266.9387 278.0304 443.8615 283.3978 120.5704 379.3707 207.1609 260.7437 1280.1359;
	3.6842 49.7811 94.0799 118.4118 14.5813 33.8498 30.7119 17.6367 18.7615 18.3731 33.9624 50.6653 76.2763 63.9404 188.1858 70.8979 87.9659 93.2176 88.7817 63.4118 10.2373 78.9828 44.9482 88.0144 95.5474 74.7881 13.5645 1212.9767 787.6673 787.6673 730.6055 107.079 295.9389 163.2222 200.4618 336.0714 1188.1754 253.7011 434.4783 255.9305 116.5685 375.5069 203.9789 267.0775 1200.5522;
	3.5593 48.0946 90.7643 114.6782 14.3257 32.1211 33.4765 18.0897 9.8782 14.5727 26.9374 40.1853 60.4988 63.6209 187.9242 70.7993 87.8436 93.088 89.0738 61.9043 11.1588 74.9492 41.9681 86.096 104.3036 72.993 13.5483 1242.516 786.4627 786.4627 763.2996 110.7445 296.9128 159.3418 199.46 335.5574 1191.0079 270.5743 451.5649 279.3845 118.1743 356.3297 201.0269 271.494 1203.4142;
];