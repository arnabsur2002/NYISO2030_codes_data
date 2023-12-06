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
	3.7716 50.9631 86.4138 112.3101 15.3173 35.17 30.2259 8.1286 27.1357 11.8649 21.9321 32.7185 49.2574 34.1179 186.5625 70.2863 87.2071 92.4135 77.6849 71.1184 10.0753 82.0633 31.6143 39.368 49.0776 29.0001 5.1439 1176.5284 795.3257 795.3257 652.4152 76.9862 258.9495 183.0588 106.9642 339.339 1167.6973 186.3623 441.8552 131.458 111.7023 390.1526 203.0577 113.0189 1179.8608;
	3.1743 42.8914 77.5266 41.0374 15.3687 28.9063 30.0709 8.1043 10.5702 13.1074 24.2288 36.1446 54.4154 37.1211 177.3488 66.8151 82.9003 87.8495 73.1602 71.4979 10.0236 67.4481 27.9096 37.9668 41.1705 29.1961 5.8307 1181.6333 819.1703 819.1703 717.492 70.4297 243.8674 184.0357 116.3797 349.5127 1201.4901 189.476 452.5944 110.2781 112.749 320.6677 204.692 96.3386 1214.0056;
	3.1379 42.4001 88.5597 38.2727 15.4199 25.3168 30.75 7.1102 9.644 11.9874 22.1585 33.0562 49.7659 37.2519 180.3251 67.9364 84.2915 89.3238 83.6712 60.8109 10.25 59.0726 27.542 40.8726 39.0949 29.1232 5.9502 1221.0236 828.5856 828.5856 748.9367 87.1314 278.9041 156.5274 116.7897 353.5298 1222.4103 191.427 441.1169 104.7186 34.2223 280.848 203.3201 128.1108 1235.1438;
	3.4534 46.6625 89.1991 47.4777 15.4029 14.519 31.4496 8.0046 11.5522 12.7076 23.4899 35.0423 52.756 25.3261 181.8834 68.5235 85.0199 90.0957 80.4607 59.8095 10.4832 33.8776 30.7778 39.4744 40.5984 31.6282 5.7112 1254.9771 839.0412 839.0412 764.7107 90.622 268.2023 153.9498 79.4006 357.9909 1256.1411 217.5811 459.6463 108.7457 35.5144 161.0639 203.2582 113.9542 1269.2259;
	3.6972 49.9576 84.3408 40.9642 15.3554 22.6138 30.7731 7.81 11.0957 11.0674 20.4579 30.5192 45.9465 30.5232 169.4966 63.8568 79.2298 83.9599 87.9219 63.924 10.2577 52.7655 59.3342 29.1211 43.4329 60.7666 6.0478 1250.5832 838.4326 838.4326 771.1836 89.4212 293.0731 164.5405 95.6943 357.7312 1277.2153 227.2108 460.3382 116.338 34.6051 250.8625 203.0106 184.2836 1290.5197;
	3.8304 51.7564 95.0265 115.3362 15.4028 34.5674 31.6328 8.1244 11.2081 11.8066 21.8243 32.5576 49.0152 27.1627 186.2869 70.1825 87.0783 92.277 91.7499 66.1807 10.5443 80.6572 44.4398 32.9386 57.5713 67.7558 5.8122 1211.9989 829.5754 829.5754 787.383 103.2691 305.833 170.3493 85.1588 353.9522 1253.9436 238.948 475.9158 154.2088 68.161 383.4674 207.6819 246.8018 1267.0055;
	3.9271 53.0643 94.5381 118.1715 15.3991 35.2117 31.7966 12.2645 10.4328 11.6182 21.4761 32.0382 48.2333 35.179 187.3692 70.5902 87.5842 92.8131 77.8629 63.9487 10.5989 82.1605 26.8377 52.4883 103.4019 74.1918 11.8478 1130.6846 836.5622 836.5622 766.0893 105.6552 259.543 164.6041 110.291 356.9332 1278.919 276.3855 469.7814 276.9694 108.4932 390.6147 213.7976 280.8962 1292.241;
	3.7859 51.1565 92.2454 115.3368 15.071 34.063 31.69 18.7948 9.9733 11.1141 20.5443 30.648 46.1404 58.9477 190.7728 71.8725 89.1752 94.4991 79.8289 55.8013 10.5633 79.4804 26.6571 58.7543 104.1757 73.0971 13.6269 1022.9489 833.6558 833.6558 777.3977 115.985 266.0963 143.6328 184.809 355.6931 1251.1035 299.4546 471.7025 279.042 118.4084 377.8727 202.3028 273.5534 1264.1358;
	3.7801 51.0779 93.5035 115.688 15.2975 33.1339 31.098 18.9632 9.3605 12.0575 22.2881 33.2495 50.057 62.9149 196.9581 74.2028 92.0664 97.5629 51.1611 64.2184 10.366 77.3124 24.8452 89.3913 104.9048 73.5248 13.805 767.0985 841.3435 841.3435 767.6505 111.9309 170.5368 165.2982 197.2468 358.9732 1197.9575 298.7787 469.077 280.9949 117.3596 367.5653 199.7238 270.7415 1210.4362;
	3.8127 51.5184 92.8991 116.2658 15.2629 33.7852 30.2756 19.0833 19.0924 10.2696 18.9831 28.3191 42.6342 60.8709 177.2175 66.7657 82.8389 87.7845 45.7308 51.8493 10.0919 78.8321 21.6134 90.0667 104.6159 74.5666 13.9051 590.2147 815.4767 815.4767 726.227 111.0609 152.4361 133.4602 190.8385 347.9367 1084.3349 270.2735 452.5677 280.2213 114.6537 374.7901 201.0443 277.6006 1095.63;
	3.8616 52.1788 93.3697 116.2712 15.2506 34.0795 31.3534 18.4698 26.9288 16.226 29.9935 44.7444 67.3625 67.0617 198.3219 74.7166 92.704 98.2385 34.68 65.4433 10.4511 79.5189 26.9604 89.1321 103.4345 72.038 13.5139 457.3515 823.4359 823.4359 746.8831 102.8966 115.6001 168.4512 210.2476 351.3327 1016.032 263.0907 456.933 277.0568 117.392 378.0554 199.8621 269.1439 1026.6157;
	3.5406 47.8412 93.7155 118.7643 15.348 33.5684 30.9557 18.434 28.1369 20.4202 37.7465 56.3103 84.7749 66.134 188.3296 70.9521 88.0331 93.2889 49.373 59.6802 10.3186 78.3263 32.4601 89.5552 102.2719 73.7848 13.0284 307.883 816.8154 816.8154 712.7023 109.2179 164.5766 153.6169 207.3389 348.5079 810.8755 243.6032 456.6491 273.9426 116.893 372.3856 191.0824 266.6 819.3221;
	2.4808 33.5209 93.9878 116.9612 15.301 22.9551 26.3423 19.0544 28.1822 28.4498 52.5891 78.4525 118.1099 65.4252 191.3228 72.0798 89.4323 94.7715 90.458 63.1935 8.7808 53.5618 60.0144 88.9615 102.1877 75.267 13.9917 318.3028 727.9215 727.9215 630.3083 106.5289 301.5267 162.6602 205.1168 310.5798 696.4769 233.729 440.5998 273.717 119.6845 254.6481 179.6474 283.1257 703.7319;
	2.4603 33.244 89.6592 112.067 15.218 13.0883 26.1708 18.2461 27.4519 30.9233 57.1613 85.2734 128.3787 65.5191 197.4682 74.395 92.3049 97.8157 89.6894 68.8735 8.7236 30.5393 71.4803 86.0874 98.8682 73.9826 13.533 317.3665 633.0851 633.0851 577.1298 102.9681 298.9647 177.2806 205.4111 270.1163 507.2559 208.6591 452.3294 264.8256 120.6026 145.1924 140.0018 267.5259 512.5398;
	2.3669 31.9826 87.7684 114.5564 12.6849 5.2457 22.38 18.0765 27.8178 30.198 55.8205 83.2732 125.3673 65.5807 202.5424 76.3067 94.6768 100.3291 88.3131 72.8537 7.46 12.2399 70.2171 85.9576 97.3232 72.4014 13.6887 436.671 502.4366 502.4366 425.2508 94.2921 294.3769 187.5256 205.6043 214.373 449.9774 188.7777 451.2046 260.6871 116.3224 58.1921 113.8292 258.4294 454.6647;
	3.5121 47.4564 85.037 78.4547 14.0397 26.3706 16.8726 18.3754 22.9308 28.9089 53.4377 79.7186 120.0159 59.2825 196.3292 73.9659 91.7725 97.2514 84.0593 72.5198 5.6242 61.5313 68.8905 85.295 97.1982 71.3875 13.6538 519.0143 558.4542 558.4542 432.6434 51.1967 280.1976 186.6662 185.8586 238.2738 508.1368 168.6191 437.1726 260.3524 116.4889 292.5375 85.9376 265.3375 513.4299;
	3.1508 42.5741 86.2331 49.2285 13.9542 30.9465 14.1055 17.879 26.1341 26.7615 49.4682 73.7968 111.1006 63.0698 190.8504 71.9018 89.2115 94.5375 84.123 71.1255 4.7018 72.2086 69.7506 83.4036 101.2046 71.4211 13.5221 632.2865 626.106 626.106 459.9988 36.4956 280.4102 183.0773 197.7324 267.1386 606.1307 139.0556 167.6539 271.0838 112.4568 343.3001 106.9275 256.3849 612.4446;
	3.7124 50.1629 86.3833 55.6184 14.0778 32.4922 28.6929 18.1218 26.6339 12.3052 22.7461 33.9326 51.0854 64.0857 183.76 69.2305 85.8971 91.0253 68.4233 71.2064 9.5643 75.8152 45.3307 84.3722 102.2085 70.634 13.366 740.3473 660.1965 660.1965 409.0037 37.9497 228.0777 183.2854 200.9172 281.6838 791.8416 90.194 422.2942 273.7727 115.352 360.4473 114.0553 234.0388 800.0899;
	3.8552 52.0924 87.3518 44.9635 14.3321 34.2754 29.6528 18.4515 27.0653 22.3366 41.2889 61.595 92.7309 63.1202 175.1811 65.9984 81.887 86.7757 52.9457 71.3907 9.8843 79.9758 52.577 74.5875 103.3997 72.8217 13.6362 1073.9057 736.5726 736.5726 472.0379 48.1517 176.4856 183.7599 197.8902 314.271 1039.7693 99.1472 460.8219 276.9636 116.3631 380.228 151.9962 236.6393 1050.6002;
	3.5961 48.5914 55.7074 31.0715 13.9689 31.8774 2.1963 18.5757 26.1902 26.7162 49.3845 73.672 110.9128 58.7081 184.053 69.3409 86.0341 91.1705 35.9218 69.8259 0.7321 74.3805 65.195 64.2421 103.7404 72.515 13.4817 1190.8449 627.2558 627.2558 528.3678 62.3334 119.7395 179.732 184.0579 267.6291 1140.2752 134.7147 425.8748 277.8762 118.7535 353.6261 151.63 217.6406 1152.1531;
	3.8167 51.5716 49.184 43.8328 14.2108 31.1825 29.7854 18.5693 2.5441 26.7457 49.4389 73.7532 111.035 62.9191 184.7369 69.5986 86.3538 91.5092 56.1806 72.1793 9.9285 72.7592 69.3335 84.2263 102.3375 73.4554 13.5592 1247.9182 751.2877 751.2877 436.4918 72.0622 187.2687 185.7897 197.2597 320.5494 1158.7468 184.5264 430.0559 274.1182 115.5282 345.9182 140.945 253.1067 1170.8171;
	3.793 51.2515 25.4917 71.2194 14.3777 32.182 1.6118 18.0375 26.3439 29.7674 55.0245 82.0858 123.5797 63.577 185.481 69.8789 86.7016 91.8778 48.8839 70.9508 0.5373 75.0913 69.2884 84.041 103.8709 73.1176 13.5558 1270.6567 731.691 731.691 525.9622 87.0826 162.9464 182.6275 199.3225 312.1882 1216.227 204.2251 435.2248 278.2257 117.8413 357.0054 150.7461 237.6256 1228.896;
	3.68 49.7254 46.644 83.1622 14.2782 31.439 28.7882 18.0138 26.048 29.4617 54.4596 81.2429 122.3108 62.6766 182.1552 68.6259 85.147 90.2304 50.5749 71.5647 9.5961 73.3577 66.5922 86.6567 102.4116 73.9801 13.4822 1234.0548 723.4505 723.4505 561.8879 103.2606 168.5831 184.2077 196.4997 308.6722 1139.2638 219.8834 433.9269 274.3169 119.1445 348.7637 147.4898 258.3942 1151.1311;
	3.6334 49.0957 76.1953 91.7829 14.5553 31.4449 28.8955 18.1785 26.2653 29.2934 54.1483 80.7787 121.6119 63.3464 183.2884 69.0528 85.6767 90.7917 38.4058 72.2951 9.6318 73.3715 62.9019 86.4409 101.2707 72.2396 13.5195 1188.9594 688.1892 688.1892 605.9714 108.618 128.0192 186.0877 198.5997 293.6274 1143.1951 212.188 442.317 271.2608 116.9353 348.8291 153.9787 263.038 1155.1034;
];