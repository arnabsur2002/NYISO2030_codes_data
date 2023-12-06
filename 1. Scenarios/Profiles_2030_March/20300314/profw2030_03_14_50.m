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
	3.3595 45.3946 87.6922 111.2446 13.5451 13.2831 13.9735 17.4695 27.493 20.9517 38.7289 57.776 86.9814 3.3567 20.5436 7.7397 9.6029 10.1763 13.5936 26.559 4.6578 30.9939 52.6267 81.5061 95.2078 71.5631 8.1444 658.0367 407.8636 407.8636 189.4744 37.0856 45.3122 68.3629 10.5236 174.0218 570.5821 50.7091 294.073 255.0209 11.8552 147.3539 119.3283 225.9824 576.5256;
	3.1234 42.2037 87.153 109.6116 12.9759 13.3739 11.7834 17.5727 26.2819 21.826 40.345 60.1867 90.6108 3.7088 14.218 5.3565 6.6461 7.0429 11.4133 14.0428 3.9278 31.2057 54.0549 82.5832 97.3889 72.2073 7.5642 669.4949 368.4887 368.4887 164.7046 34.6396 38.0445 36.1463 11.6277 157.2218 537.8676 47.7506 273.7581 260.8631 12.4936 148.3607 107.7486 213.4948 543.4704;
	2.8322 38.2691 86.6265 110.4321 13.9235 10.3942 9.4418 18.1043 26.5707 21.4593 39.6673 59.1758 89.0888 5.1213 16.5677 6.2418 7.7444 8.2068 21.7685 22.2127 3.1473 24.2531 59.0196 84.0231 96.6123 73.1714 8.784 577.6298 338.3733 338.3733 139.8862 35.0812 72.5616 57.1755 16.0558 144.3726 424.6102 36.2057 190.4991 258.783 4.4007 115.3063 80.0345 198.5431 429.0332;
	2.6305 35.5438 85.8295 106.1613 12.4454 0.0 6.6624 18.2822 25.3348 21.3341 39.4358 58.8304 88.5688 6.8182 12.4121 4.6762 5.802 6.1483 12.1948 22.9441 2.2208 0.0 64.8982 83.3662 99.6912 74.5337 10.2596 496.6682 256.6038 256.6038 152.2008 30.3646 40.6494 59.0582 21.3761 109.4843 347.6806 31.9641 71.5705 267.03 0.7703 0.0 69.3945 198.2866 351.3023;
	1.8784 25.381 87.1874 109.84 12.4204 0.1156 5.7278 18.3795 15.3576 17.2633 31.9109 47.6047 71.6687 11.2592 14.9342 5.6264 6.9809 7.3976 19.2823 23.9249 1.9093 0.2697 45.4179 83.027 99.7931 75.6864 10.3187 362.3136 194.6856 194.6856 131.9256 28.7537 64.2743 61.5826 35.2993 83.0659 198.1167 34.8327 0.0 267.3029 11.3919 1.2822 70.3344 209.7914 200.1804;
	2.2407 30.2762 88.0072 111.1307 12.0762 10.3385 8.4309 18.0893 7.7836 11.9464 22.0827 32.943 49.5955 0.3747 15.0059 5.6534 7.0144 7.4332 30.0751 24.2901 2.8103 24.1231 38.8993 82.7602 98.2913 73.7979 8.5515 288.8726 169.7589 169.7589 111.9489 25.2895 100.2503 62.5229 1.1748 72.4305 158.8305 29.5456 118.4161 263.2802 6.0243 114.6881 65.5628 204.3423 160.485;
	1.7287 23.3585 85.3858 109.406 12.0477 18.2469 8.9164 17.3423 9.0485 22.2228 41.0785 61.2811 92.2583 14.6764 21.6557 8.1586 10.1228 10.7271 30.0974 32.7385 2.9721 42.5761 49.5749 82.0243 96.5079 73.212 10.9107 241.3096 197.6194 197.6194 85.9083 15.7362 100.3248 84.269 46.0124 84.3176 170.2414 19.711 7.761 258.5033 2.4794 202.4188 78.9687 203.9208 172.0148;
	0.1267 1.7115 60.629 109.5541 13.0906 16.5903 10.9179 17.0885 18.497 25.8388 47.7626 71.2524 107.2701 30.2782 20.6245 7.7702 9.6408 10.2163 51.1764 50.2031 3.6393 38.7107 65.9566 81.5892 93.3623 72.4371 11.7625 139.9649 163.6892 163.6892 74.8312 9.7267 170.5879 129.2228 94.9263 69.8407 110.7618 19.3493 136.9983 250.0776 6.7185 184.0417 74.5674 186.5106 111.9156;
	1.8828 25.4405 76.8011 92.7009 10.7871 21.6077 9.2088 17.0833 19.4531 27.9946 51.7477 77.1973 116.2202 31.137 9.4826 3.5725 4.4326 4.6972 63.6113 50.8988 3.0696 50.418 69.4949 79.4836 90.7145 69.9367 11.5309 149.2719 135.4936 135.4936 80.4819 7.7643 212.0375 131.0136 97.6186 57.8106 131.7681 23.9122 104.1119 242.9853 16.6778 239.7017 65.5221 192.4665 133.1407;
	1.5397 20.8047 80.5753 105.8836 11.3698 13.1938 9.12 17.8129 25.1159 28.2935 52.3001 78.0215 117.461 22.1167 0.0892 0.0336 0.0417 0.0442 66.3114 46.8212 3.04 30.7855 68.6383 81.9766 96.3355 72.0565 12.3204 264.5421 222.8442 222.8442 94.2248 6.777 221.038 120.5179 69.3387 95.0802 235.188 18.609 0.6353 258.0415 8.5259 146.3632 74.8011 201.2064 237.6379;
	0.2093 2.8281 72.0888 98.3812 9.9931 20.9079 11.5564 16.0957 25.0628 26.016 48.0902 71.7411 108.0059 31.2526 0.0 0.0 0.0 0.0 60.218 34.3048 3.8521 48.7851 59.0865 81.5453 85.0394 70.4081 11.4073 411.0867 296.5273 296.5273 159.3016 8.3506 200.7265 88.3007 97.9812 126.5183 354.5963 24.3264 140.8091 227.7841 0.5031 231.9382 80.6619 165.0715 358.29;
	0.0708 0.9562 77.6432 76.8806 9.9091 22.8179 18.0552 16.5413 25.2746 25.9178 47.9087 71.4704 107.5983 36.1388 0.0 0.0 0.0 0.0 73.8794 44.0367 6.0184 53.2418 66.3391 72.6996 83.7887 70.2756 11.3431 489.3955 343.3855 343.3855 269.9331 8.2346 246.2647 113.3505 113.3 146.5112 432.9116 38.8123 172.3909 224.4339 5.1998 253.1268 98.2348 163.7981 437.4211;
	2.6068 35.2239 83.7244 73.4617 12.2877 28.3473 20.5154 15.4279 26.3133 28.2138 52.1528 77.8018 117.1301 51.8449 39.0382 14.7074 18.2481 19.3375 83.1246 60.6678 6.8385 66.1438 70.3472 78.442 93.6313 69.8916 9.5533 665.4382 429.6612 429.6612 330.3681 20.5414 277.0818 156.159 162.5407 183.3221 603.7178 58.4341 203.0735 250.7982 9.4946 314.4665 130.0469 202.4351 610.0066;
	3.4462 46.5651 85.8799 96.3126 13.0486 29.2463 21.2015 15.9501 26.6162 28.9522 53.5176 79.8378 120.1953 54.8847 62.3492 23.4897 29.1446 30.8846 86.3359 55.7435 7.0672 68.2413 69.2157 80.7806 92.1336 69.6781 10.5105 854.5848 580.9582 580.9582 411.6893 28.4532 287.7864 143.484 172.0709 247.8755 752.2496 82.7241 283.1937 246.7865 0.7225 324.4387 135.2309 248.5006 760.0855;
	3.7923 51.2422 90.7417 97.9858 14.1919 33.4176 25.2884 17.6665 27.3783 25.6333 47.3827 70.6857 106.4169 56.3663 92.6286 34.8973 43.2985 45.8835 86.9282 57.6239 8.4295 77.9744 47.7548 84.485 97.5655 71.699 12.2902 1043.7023 664.9639 664.9639 509.7769 33.7878 289.7607 148.324 176.716 283.7179 932.3701 107.9169 413.1778 261.3361 6.5801 370.7124 162.6144 252.9675 942.0822;
	3.7276 50.3684 93.4393 109.0793 14.1399 33.1486 27.3325 18.2186 27.5466 20.6339 38.1415 56.8996 85.662 59.5035 128.052 48.2429 59.8569 63.4304 91.542 66.8045 9.1108 77.3467 44.0318 85.8256 100.7965 73.335 12.991 1082.7414 740.3069 740.3069 644.6129 44.8819 305.1399 171.9551 186.5515 315.8643 1033.2857 142.7122 363.0576 269.9906 3.6885 367.7282 169.8654 265.8182 1044.0491;
	3.7476 50.6387 90.8474 112.9762 14.3425 33.152 30.1191 18.5376 26.6888 20.2464 37.4251 55.831 84.0532 64.0115 158.4015 59.6768 74.0435 78.464 90.6927 67.494 10.0397 77.3547 30.9685 86.5259 103.0781 74.1055 13.1901 1054.7548 790.6605 790.6605 761.0734 77.6983 302.3089 173.7298 200.6848 337.3485 1080.5221 210.3524 389.583 276.1022 15.0062 367.7664 203.1076 274.5467 1091.7776;
	3.6865 49.8124 91.5152 112.0802 14.1233 33.1328 28.0977 17.8564 26.2773 19.215 35.5186 52.9868 79.7713 61.8941 175.7435 66.2103 82.1499 87.0543 90.2592 68.5642 9.3659 77.3098 34.1606 83.6147 102.2427 70.2208 12.9525 1143.3986 792.5286 792.5286 758.0727 93.166 300.864 176.4844 194.0464 338.1455 1112.3499 228.1491 395.2606 273.8644 106.4174 367.5528 193.5309 256.2954 1123.9369;
	3.6906 49.8679 86.8295 112.7919 14.0793 32.9543 30.3267 10.0219 26.8227 22.0598 40.7771 60.8315 91.5814 61.1729 186.5355 70.2762 87.1945 92.4002 90.292 69.6937 10.1089 76.8933 52.2356 81.5278 100.0487 51.0666 10.0609 1166.7543 798.2673 798.2673 738.0066 105.52 300.9732 179.3918 191.7854 340.594 1126.4227 237.3786 434.9849 267.9875 111.2706 365.5728 203.3734 259.8609 1138.1562;
	3.7416 50.5569 88.505 109.0185 14.4063 33.334 31.0234 3.4154 27.215 21.5278 39.7938 59.3644 89.3729 64.1756 188.6519 71.0735 88.1838 93.4485 88.135 69.1508 10.3411 77.7792 47.1961 35.4439 42.2423 56.8832 7.0366 1166.1455 785.2675 785.2675 754.6899 111.6466 293.7833 177.9944 201.1991 335.0475 1140.1474 253.908 457.9328 113.1491 112.5287 369.7847 206.0943 237.164 1152.024;
	3.8156 51.5573 90.0601 118.8504 14.6693 32.7007 30.5801 18.2374 16.7158 20.5708 38.0249 56.7257 85.4002 64.6448 188.3643 70.9652 88.0494 93.3061 84.0167 68.036 10.1934 76.3016 34.8571 72.9869 104.4326 70.9619 13.5753 1177.599 785.4527 785.4527 737.2818 105.8477 280.0556 175.1249 202.6702 335.1265 1090.7804 234.8583 447.7271 279.7302 115.4071 362.7595 206.893 271.4933 1102.1427;
	3.6416 49.2064 87.0536 118.0856 14.5707 32.1733 29.8689 17.4197 0.0 22.1866 41.0116 61.1812 92.108 62.0074 190.8313 71.8946 89.2025 94.5281 87.0664 71.3427 9.9563 75.0711 46.7015 85.4098 104.5884 73.6551 13.4207 1198.3112 746.4953 746.4953 682.1587 103.7008 290.2213 183.6364 194.4015 318.5046 1084.6118 232.4126 441.9812 280.1476 115.9306 356.9096 199.9891 241.3437 1095.9099;
	3.7092 50.1188 88.9328 116.5415 14.7565 33.8749 31.5601 18.4631 18.4997 20.3237 37.5681 56.0442 84.3742 65.8023 195.387 73.6109 91.332 96.7847 87.0935 67.2301 10.52 79.0413 42.8612 85.4722 98.0228 75.0483 13.9214 1158.7387 799.6241 799.6241 715.0405 106.5469 290.3117 173.0503 206.2992 341.1729 1124.0083 231.9044 464.1462 262.5611 117.3798 375.7851 206.9606 254.389 1135.7167;
	3.6001 48.6448 89.0867 115.9544 14.6745 33.6929 33.6382 18.7331 10.9792 17.9888 33.252 49.6055 74.6808 67.4687 198.7997 74.8966 92.9273 98.4752 88.251 67.1467 11.2127 78.6168 43.6846 87.2946 106.2074 75.1886 13.8317 1188.1114 810.3083 810.3083 714.8018 109.0867 294.1701 172.8359 211.5235 345.7315 1127.2583 245.3243 478.1099 284.4841 120.5809 373.7668 208.0841 266.0351 1139.0006;
];