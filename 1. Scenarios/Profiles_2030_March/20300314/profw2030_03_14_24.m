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
	3.6247 48.9782 93.179 116.6436 14.6955 14.3919 13.8104 16.6412 26.9426 25.7632 47.6229 71.0439 106.9563 7.9026 26.4607 9.9689 12.3688 13.1073 14.6734 32.8582 4.6035 33.5811 57.3779 86.065 98.3692 69.7731 7.1196 696.7132 394.0411 394.0411 201.6069 36.0089 48.9114 84.5772 24.7758 168.1242 504.4524 48.7535 316.6227 263.4888 15.399 159.6542 121.6041 230.453 509.7072;
	3.5261 47.6455 91.6517 115.6519 14.6534 16.3946 13.1382 15.7311 26.1873 25.0068 46.2247 68.9582 103.8162 5.8596 23.4019 8.8165 10.939 11.5921 13.3018 20.3573 4.3794 38.254 58.3878 85.108 99.1864 70.2629 6.543 667.9505 369.0452 369.0452 160.5693 30.6832 44.3394 52.3997 18.3706 157.4593 469.2581 46.5197 294.7453 265.6778 12.6166 181.8704 111.5879 217.9607 474.1462;
	3.1413 42.446 92.0612 114.7415 14.6629 13.9193 12.2271 17.2278 27.2847 24.6923 45.6434 68.091 102.5106 8.4337 21.3354 8.038 9.973 10.5684 23.5231 26.1415 4.0757 32.4783 61.1338 85.2307 97.1089 70.1534 8.4033 574.9602 336.7869 336.7869 136.9655 29.2413 78.4104 67.2882 26.4407 143.6957 369.9971 30.1739 237.0793 260.1131 7.4814 154.411 84.4436 211.42 373.8513;
	2.7291 36.8765 94.0863 112.1628 14.3939 12.0204 10.8356 17.9472 26.5162 24.214 44.7593 66.7721 100.525 10.5728 19.3321 7.2832 9.0366 9.5761 13.0514 26.6445 3.6119 28.0476 62.4594 88.783 103.9058 73.5337 10.2637 481.4177 248.6359 248.6359 139.7475 25.162 43.5046 68.5831 33.1471 106.0846 284.6421 21.2432 182.8236 278.319 4.0081 133.3462 66.1598 210.3214 287.6071;
	2.2596 30.5328 93.9683 115.4194 14.4938 14.3395 10.5322 17.6997 18.4739 23.6396 43.6975 65.1881 98.1403 15.9743 24.1493 9.0981 11.2884 11.9623 23.293 29.2002 3.5107 33.4589 55.3371 87.0935 103.1765 72.6447 9.9625 350.1659 192.9619 192.9619 132.5432 23.617 77.6433 75.1613 50.0817 82.3304 179.1269 24.0277 178.8199 276.3656 12.7331 159.073 78.8523 225.629 180.9928;
	2.9098 39.3177 94.0945 116.5418 14.3243 20.2394 12.1275 17.3521 11.8382 21.9761 40.6225 60.6007 91.234 32.4024 20.8628 7.8599 9.7521 10.3344 32.1276 30.6072 4.0425 47.2252 57.3466 86.9145 101.7932 70.6096 8.0018 279.3959 187.5124 187.5124 120.2348 21.9016 107.0921 78.783 101.5859 80.0053 153.7256 22.084 197.3065 272.6603 10.8988 224.5221 86.211 220.4022 155.3269;
	2.4618 33.2637 92.0794 115.155 14.0366 19.196 12.5276 16.3143 13.7227 27.8503 51.4809 76.7994 115.621 41.8406 24.8925 9.3781 11.6358 12.3305 37.9894 36.2689 4.1759 44.7906 69.3329 87.4895 103.5699 70.2809 10.3086 249.0885 235.0759 235.0759 109.097 15.6393 126.6314 93.3563 131.176 100.299 195.2728 18.0919 152.7157 277.4195 9.8231 212.9474 86.2953 225.3284 197.3069;
	1.6672 22.5275 68.4406 107.2959 13.4064 13.8876 11.4449 15.7433 18.8824 29.736 54.9666 81.9994 123.4497 42.0668 27.7755 10.4643 12.9834 13.7586 51.1132 55.3889 3.815 32.4044 74.1274 83.6377 97.9418 69.7107 10.863 128.9598 181.4861 181.4861 93.3222 11.4743 170.3774 142.5713 131.8852 77.4341 130.5108 14.5724 159.3086 262.3441 3.4594 154.0597 72.7924 202.0377 131.8703;
	2.9056 39.2613 85.3059 104.701 14.3893 23.2073 10.6129 18.2024 22.0226 29.2968 54.1547 80.7882 121.6262 44.3645 20.598 7.7602 9.6284 10.2032 63.4121 52.1686 3.5376 54.1504 70.6775 86.789 102.1343 71.2457 11.9675 159.1379 159.7786 159.7786 101.1483 9.574 211.3737 134.282 139.0887 68.1722 151.7063 19.6226 124.1309 273.5739 20.6021 257.4466 79.3573 236.8064 153.2865;
	1.9773 26.7173 84.1142 108.987 12.5617 14.0045 10.3508 17.4195 26.4569 28.9718 53.5539 79.8919 120.2769 44.3703 30.4082 11.4561 14.2141 15.0627 76.2693 50.573 3.4503 32.6771 72.4706 83.9176 101.4549 70.7266 11.1542 276.4403 242.2573 242.2573 113.0327 9.231 254.2311 130.175 139.107 103.3631 252.6919 19.2464 0.0783 271.7543 18.493 155.3565 76.4721 195.8944 255.3241;
	1.6014 21.6387 80.0649 106.2164 12.6083 25.2593 13.6638 17.7844 26.2605 29.3052 54.1703 80.8114 121.6612 50.4745 26.7304 10.0705 12.4949 13.2409 65.6857 39.9081 4.5546 58.9383 72.795 85.1572 95.6208 72.5107 11.4633 373.317 298.1662 298.1662 159.2866 12.0495 218.9524 102.7236 158.2444 127.2176 329.1656 20.6716 155.3324 256.1272 16.0704 280.2093 90.0158 178.1643 332.5944;
	1.7674 23.8812 85.2011 94.4512 12.3525 28.7576 19.3423 17.8099 26.2305 29.0982 53.7875 80.2404 120.8015 49.1019 99.9842 37.6684 46.7368 49.527 83.7345 57.8613 6.4474 67.1011 70.6585 83.3635 98.1598 71.6621 11.7358 450.2229 347.5605 347.5605 252.586 16.6737 279.1149 148.9353 153.9411 148.2925 412.8102 37.8736 175.8025 262.9281 6.1108 319.018 107.784 182.3482 417.1103;
	2.8187 38.0869 86.8652 92.4602 13.9887 28.8964 19.2854 17.6026 26.3152 28.7356 53.1174 79.2407 119.2965 52.0555 47.5488 17.9137 22.2263 23.5532 84.6455 64.4391 6.4285 67.425 68.5838 83.7242 100.5764 72.0363 10.9328 597.9149 395.3885 395.3885 262.8544 23.4298 282.1515 165.8664 163.2009 168.6991 543.106 46.3558 204.0576 269.4011 8.2931 320.5575 129.618 211.1777 548.7634;
	3.5299 47.6964 87.0308 109.8627 14.7021 29.8403 20.0881 17.6662 25.6059 28.9268 53.4708 79.768 120.0902 53.0736 70.1434 26.4261 32.788 34.7455 88.6213 63.4954 6.696 69.6275 63.657 84.3444 99.0835 75.0637 11.1671 771.256 540.7496 540.7496 356.8833 28.6668 295.4044 163.4372 166.3928 230.7198 687.3446 68.8219 287.1911 265.4023 0.3046 331.0289 137.3483 245.2885 694.5045;
	3.6585 49.4346 86.7443 110.7641 14.5353 32.1809 24.9164 17.1779 26.402 25.9012 47.878 71.4245 107.5293 60.1534 107.6749 40.5659 50.3318 53.3366 85.4578 62.6712 8.3055 75.0887 45.4923 81.9572 94.3327 72.7656 12.2038 986.6131 651.0451 651.0451 470.8714 34.0223 284.8592 161.3159 188.5891 277.7792 925.9052 103.7416 436.1088 252.6769 0.8486 356.9929 150.5515 243.8894 935.5501;
	3.6953 49.9311 90.7308 114.9001 15.1291 33.0035 28.7103 17.1763 27.5619 21.7619 40.2266 60.0102 90.345 63.1104 136.7744 51.5289 63.9341 67.751 89.8201 69.8479 9.5701 77.0081 45.3061 82.6308 97.8119 70.5924 12.3258 1066.427 699.9052 699.9052 608.1861 45.5245 299.4004 179.7886 197.8595 298.6262 1006.0741 149.202 409.2537 261.9962 0.0447 366.1183 159.2958 258.2144 1016.554;
	3.8317 51.7751 89.8588 117.6539 15.1902 33.7259 31.0752 17.4115 27.7331 21.0599 38.9289 58.0743 87.4305 62.8996 168.0653 63.3176 78.5607 83.2509 88.9177 73.0255 10.3584 78.6939 34.8591 82.1004 97.0268 72.2416 12.2931 1045.8634 755.083 755.083 680.9849 78.9885 296.3925 187.9678 197.1989 322.1687 1043.1028 202.0311 432.6763 259.8933 0.0 374.1331 183.591 272.6035 1053.9684;
	3.8942 52.6197 95.1037 120.4602 15.2774 34.8663 30.156 18.6529 27.0287 19.9667 36.9081 55.0596 82.892 62.7191 177.9383 67.0372 83.1758 88.1415 91.2981 71.3677 10.052 81.3548 38.2265 85.2457 104.7152 72.8839 13.5614 1138.2674 776.9076 776.9076 699.562 95.3239 304.3271 183.7006 196.633 331.4806 1118.2257 233.5749 455.5807 280.4873 103.6462 386.7838 184.4613 272.4671 1129.8739;
	3.9274 53.0676 94.4013 120.8757 15.3464 35.1091 30.1999 14.763 26.3319 22.2681 41.1622 61.4059 92.4462 61.2091 183.502 69.1333 85.7765 90.8975 91.7492 69.5633 10.0666 81.9213 50.6569 87.8947 104.9118 69.8272 13.4093 1240.3121 781.0363 781.0363 651.0953 110.9769 305.8305 179.056 191.8989 333.2421 1135.6465 250.375 446.0129 281.0137 116.4242 389.4771 207.2377 286.0007 1147.4761;
	3.9249 53.0338 94.741 118.5828 15.2803 35.0732 31.5113 10.5609 26.2658 21.5811 39.8923 59.5114 89.5941 63.8624 192.0352 72.3481 89.7653 95.1244 91.4355 68.3505 10.5038 81.8375 47.5535 40.5385 46.4098 67.3945 12.0553 1188.0548 799.3945 799.3945 699.5985 109.0213 304.7851 175.9343 200.2172 341.075 1118.58 262.0469 461.1586 124.3119 118.6235 389.0789 215.8167 253.2941 1130.2319;
	3.9079 52.805 94.9996 121.4927 14.9805 35.0595 32.0138 19.1778 18.0858 21.2746 39.3258 58.6663 88.3218 64.5709 191.0931 71.9932 89.3249 94.6577 91.2123 67.4083 10.6713 81.8055 39.837 81.3636 105.3874 75.4441 14.1262 1281.2391 823.5909 823.5909 752.9417 113.8662 304.0411 173.5091 202.4384 351.3988 1149.5552 262.3251 463.8546 282.2876 121.0346 388.9268 211.9963 281.4111 1161.5298;
	3.9196 52.9625 93.4753 123.316 15.1755 35.0466 32.0079 19.0941 10.6093 21.0865 38.9782 58.1477 87.5411 63.4288 189.8344 71.519 88.7366 94.0343 88.4796 69.8677 10.6693 81.7754 36.3907 87.9311 104.9371 75.8773 13.9793 1316.8664 839.0443 839.0443 766.2125 119.4481 294.932 179.8396 198.8577 357.9922 1235.3001 269.5691 458.0305 281.0815 118.4924 388.7837 208.6345 249.6203 1248.1678;
	3.9249 53.0343 94.4114 120.8526 15.2904 35.0212 32.4566 19.0112 19.9593 19.099 35.3043 52.667 79.2899 66.8991 186.8974 70.4125 87.3637 92.5794 86.4246 66.5697 10.8189 81.7162 40.0076 86.9466 93.3333 76.0711 13.9662 1303.2712 826.4615 826.4615 749.3833 118.1471 288.082 171.3505 209.7377 352.6236 1211.1954 272.8119 464.9536 250.0 118.8917 388.5019 207.8951 264.4421 1223.812;
	3.9211 52.9828 94.3585 120.7827 15.1622 34.7715 33.6495 19.1363 11.3927 18.5786 34.3422 51.2318 77.1292 63.6614 192.8338 72.649 90.1386 95.52 88.2281 69.0756 11.2165 81.1335 40.4122 87.909 106.0054 76.2211 14.1659 1243.2279 831.3442 831.3442 772.6241 119.9141 294.0938 177.8008 199.5872 354.7068 1133.4962 284.9503 466.1389 283.9431 123.5107 385.732 210.9456 275.2343 1145.3035;
];