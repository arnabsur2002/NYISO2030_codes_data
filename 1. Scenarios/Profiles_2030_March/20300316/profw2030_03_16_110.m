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
	3.7078 50.1 92.2837 116.5555 15.1179 32.6616 28.4836 18.676 26.4947 28.1865 52.1023 77.7265 117.0168 65.9858 191.0411 71.9736 89.3006 94.632 85.344 71.3118 9.4945 76.2105 74.0486 88.0619 104.1074 76.3176 13.5631 1272.6533 704.5972 704.5972 521.0414 109.0419 284.4801 183.5567 206.8744 300.6281 1211.0427 212.1993 436.2604 278.8592 114.7993 362.3264 197.256 284.8616 1223.6577;
	3.7402 50.5377 90.9091 114.2065 15.2807 32.5608 24.83 18.6794 26.4914 28.7853 53.2092 79.3776 119.5026 65.7268 187.9521 70.8099 87.8567 93.1019 87.7616 71.7883 8.2767 75.9752 72.5998 88.7179 100.8274 76.0253 13.1624 1259.5142 712.8299 712.8299 574.7259 102.268 292.5387 184.7832 206.0624 304.1407 1153.7184 218.6686 435.5487 270.0734 110.6303 361.2078 186.3465 276.3545 1165.7363;
	3.6939 49.9126 92.2082 116.9328 15.3283 32.8779 20.2825 18.3024 26.8544 29.7845 55.0562 82.133 123.6508 65.4167 192.6142 72.5663 90.0359 95.4112 90.3723 69.9526 6.7608 76.7152 71.8415 88.2581 99.2109 76.4526 13.1852 1278.3751 712.8212 712.8212 587.6821 87.9325 301.241 180.0581 205.0903 304.137 1219.9655 212.1372 406.3627 265.7435 113.3094 364.7258 186.5805 273.8157 1232.6735;
	3.7657 50.8828 93.0337 117.2073 15.2735 33.9344 22.4995 18.2019 26.5637 29.6807 54.8643 81.8468 123.2199 65.9376 195.9598 73.8267 91.5998 97.0684 90.3104 69.2195 7.4998 79.1802 72.0185 88.2372 98.3859 76.402 13.4144 1305.7595 750.8027 750.8027 636.5598 98.1579 301.0347 178.1712 206.7231 320.3425 1252.6562 242.4693 427.7459 263.5336 114.7278 376.4451 159.5227 280.1311 1265.7047;
	3.7797 51.0714 93.8411 119.588 14.926 34.2314 29.2854 18.7544 27.0175 30.4479 56.2825 83.9624 126.405 65.152 194.1319 73.1381 90.7454 96.163 89.7496 70.5875 9.7618 79.8732 74.6732 87.2302 102.2918 75.9881 13.9441 1263.263 744.3657 744.3657 657.8758 101.6434 299.1654 181.6924 204.2604 317.596 1235.6291 243.5233 454.0304 273.9958 117.0345 379.74 193.7224 271.8904 1248.5002;
	3.846 51.9681 92.3323 117.8815 14.576 34.6065 28.0319 18.7351 27.0736 30.69 56.73 84.6301 127.4101 65.8232 202.4295 76.2641 94.624 100.2732 92.2032 71.5293 9.344 80.7486 75.0837 87.0929 103.2423 75.5937 13.812 1293.6563 790.2004 790.2004 747.218 108.9756 307.3441 184.1167 206.3648 337.1522 1257.3156 256.6888 451.239 276.5418 120.0336 383.9019 185.9659 278.6664 1270.4127;
	3.7632 50.8488 89.8851 115.7519 15.0758 33.6246 29.7382 17.953 26.3051 30.3896 56.1747 83.8016 126.1628 65.373 196.9707 74.2076 92.0723 97.5692 90.0419 71.1654 9.9127 78.4573 74.675 85.5012 100.6412 74.6776 13.6128 1292.9722 728.5977 728.5977 694.6489 95.5312 300.1395 183.18 204.9532 310.8683 1240.0436 266.0295 441.6112 269.5747 118.5634 373.0086 165.2386 263.5951 1252.9607;
	3.9307 53.112 93.3093 119.6725 15.3195 35.1074 30.1325 18.1883 27.9794 30.4911 56.3624 84.0817 126.5845 68.1929 198.7473 74.8769 92.9028 98.4493 89.0943 69.2258 10.0442 81.9173 74.8803 88.4301 101.613 74.0399 13.35 1339.9587 781.3118 781.3118 720.9683 103.0168 296.9809 178.1874 213.7938 333.3597 1301.1453 289.1404 468.3163 272.1777 119.9693 389.4583 202.1143 276.3942 1314.6989;
	3.8735 52.3401 90.3401 117.3667 15.285 34.9195 30.5029 17.3504 26.5977 30.1699 55.7687 83.1959 125.2509 65.4975 193.4174 72.8689 90.4114 95.8091 90.9532 70.5843 10.1676 81.4788 74.1698 85.9535 99.7518 68.5927 12.1881 1303.8641 784.2036 784.2036 725.9741 112.9473 303.1775 181.6841 205.3436 334.5935 1288.1439 304.2047 452.1199 267.1924 118.5344 387.3736 217.5287 269.4062 1301.562;
	3.8724 52.3248 92.0657 119.548 15.1467 35.0897 24.9183 18.1549 27.2254 29.417 54.3769 81.1196 122.1252 67.312 192.355 72.4686 89.9148 95.2828 89.2555 70.9351 8.3061 81.8759 74.63 88.4779 103.0171 70.4358 13.0238 1336.4796 816.8852 816.8852 748.2372 115.7168 297.5183 182.587 211.0321 348.5377 1320.2735 337.5207 452.9332 275.9386 121.2573 389.2616 217.6837 275.041 1334.0264;
	3.8293 51.7428 92.1551 119.8994 15.1959 35.1467 27.8673 18.1239 28.0054 31.2506 57.7662 86.1759 129.7373 66.6982 203.5996 76.705 95.171 100.8528 92.3241 73.7397 9.2891 82.0091 75.5619 88.135 102.0635 69.9244 12.8832 1313.626 829.0972 829.0972 789.349 116.4422 307.747 189.8061 209.1078 353.7481 1327.7238 342.2571 464.1015 273.3842 121.2254 389.8945 215.394 276.2998 1341.5542;
	3.8265 51.704 92.0461 119.2191 15.3916 35.088 27.7709 18.5369 28.1486 30.6422 56.6417 84.4983 127.2117 67.1128 203.4142 76.6351 95.0843 100.761 91.8056 73.6077 9.257 81.872 75.3812 88.3691 103.4951 69.6067 13.3029 1305.2402 815.3021 815.3021 790.8447 116.45 306.0185 189.4663 210.4078 347.8622 1313.1331 343.0308 474.596 277.2191 122.6448 389.2427 213.5065 279.4466 1326.8116;
	3.8003 51.3506 91.1131 117.161 15.2677 34.8993 27.9907 18.8373 28.3791 30.8002 56.9338 84.934 127.8676 66.5336 202.8876 76.4367 94.8381 100.5001 91.1023 73.0298 9.3302 81.4316 75.248 85.9363 103.7667 72.3642 13.8036 1327.2026 825.6971 825.6971 782.6249 122.4056 303.6742 187.979 208.5919 352.2974 1316.3041 356.6015 471.1575 277.9466 122.9792 387.149 214.4089 276.7172 1330.0156;
	3.9197 52.9643 93.6994 120.6563 15.3888 35.1547 27.8375 18.958 28.4204 31.0307 57.3597 85.5694 128.8242 67.4422 197.6681 74.4703 92.3983 97.9147 92.6275 73.0188 9.2792 82.0275 75.1218 88.6068 102.9294 71.725 14.0612 1331.0023 805.3902 805.3902 754.6035 121.8408 308.7584 187.9506 211.4403 343.6331 1276.0068 339.4102 471.6988 275.7039 123.9995 389.9823 214.7058 281.5419 1289.2985;
	3.9195 52.9607 95.0514 120.9304 15.386 35.1243 24.8867 19.169 28.4903 30.4199 56.2306 83.885 126.2885 67.9914 187.7135 70.72 87.7451 92.9836 89.019 69.3854 8.2956 81.9566 75.0422 89.9312 104.9811 73.8978 14.1407 1307.5478 795.1291 795.1291 776.4131 118.7025 296.73 178.5981 213.1623 339.2551 1230.4033 343.8219 472.4869 281.1995 123.9249 389.645 215.6237 284.9374 1243.22;
	3.8925 52.5961 94.2922 119.9791 15.4064 34.9488 25.492 19.0638 28.4673 29.7801 55.0481 82.1209 123.6326 64.1213 182.9055 68.9086 85.4977 90.602 89.041 68.646 8.4973 81.5471 72.1684 89.969 105.2476 73.9078 14.0844 1264.4627 749.663 749.663 693.1466 121.5763 296.8034 176.6951 201.0291 319.8562 1161.6547 332.4526 460.5811 281.9131 121.8734 387.6984 205.9883 283.6207 1173.7553;
	3.8553 52.0939 92.7006 116.9498 15.3107 32.8424 23.026 18.9983 27.8532 28.2779 52.2713 77.9784 117.3961 66.978 189.3607 71.3405 88.5151 93.7996 84.5243 67.831 7.6753 76.6324 68.0043 88.7689 104.2888 63.2839 13.6439 1223.3492 747.1166 747.1166 661.165 118.9078 281.7478 174.5972 209.9849 318.7697 1158.9795 342.852 463.549 279.3451 118.767 364.3321 195.1482 268.1114 1171.0522;
	3.8943 52.621 92.8721 113.5604 15.3816 30.8318 20.5405 14.9573 27.9571 26.9903 49.8911 74.4277 112.0504 69.0431 177.3733 66.8244 82.9117 87.8617 75.2971 65.782 6.8468 71.9408 64.6981 89.2746 102.5966 71.838 10.6928 1206.8328 702.0426 702.0426 608.9712 110.9296 250.9903 169.323 216.4595 299.5382 1195.6296 304.2812 458.3361 274.8122 118.3651 342.027 182.9523 250.3289 1208.0841;
	3.8392 51.8766 85.3287 102.5977 15.2918 25.9039 16.341 8.4924 26.7272 26.6561 49.2733 73.5061 110.6631 66.8059 171.3257 64.546 80.0848 84.866 74.8218 68.451 5.447 60.4424 67.4305 87.9447 97.2 64.2077 9.1561 1259.0574 717.3434 717.3434 617.7426 105.3479 249.406 176.193 209.4455 306.0665 1212.0537 305.7639 442.8893 260.357 116.7352 287.3602 136.7942 228.4345 1224.6793;
	2.8919 39.0762 77.3122 63.9192 15.1655 21.524 24.6976 9.149 26.253 27.4984 50.8304 75.8289 114.16 65.3493 176.8087 66.6117 82.6478 87.582 75.5529 67.9284 8.2325 50.2228 63.7458 86.7668 86.7604 44.0472 7.6144 1253.4781 718.4982 718.4982 670.4074 109.7254 251.8428 174.848 204.8788 306.5592 1125.8742 307.9431 387.5365 232.394 111.5107 238.7734 104.1218 181.1079 1137.6021;
	2.4922 33.6754 76.8851 71.2813 15.0287 11.977 24.1901 9.7135 26.1409 26.5529 49.0826 73.2215 110.2346 64.9235 159.451 60.0723 74.5341 78.9839 67.9722 65.1627 8.0634 27.9464 61.5983 86.6609 78.7463 54.5245 8.6316 1192.6981 703.4993 703.4993 586.4212 109.1192 226.5739 167.7289 203.544 300.1597 1085.2304 249.6917 391.8554 210.9276 104.1524 132.8651 74.8637 165.7361 1096.5349;
	1.9813 26.7712 73.3749 75.0402 14.8084 12.5991 24.1425 10.5048 25.8791 24.8726 45.9766 68.5881 103.259 63.3482 171.5537 64.6318 80.1914 84.9789 73.3504 66.9104 8.0475 29.3979 60.5656 82.6718 87.8747 58.1039 8.9856 1141.6578 659.7995 659.7995 577.901 95.9763 244.5013 172.2276 198.6051 281.5145 1023.2793 220.9751 396.2211 235.3786 115.2759 139.7658 60.9828 163.4489 1033.9385;
	2.6737 36.1282 74.727 76.8538 14.2956 16.5544 22.2196 12.5338 25.5801 25.4477 47.0396 70.1738 105.6463 65.4656 154.0119 58.0231 71.9916 76.2896 77.9716 64.8279 7.4065 38.6269 64.3591 83.0 83.8738 51.7971 9.0031 1009.2324 687.8875 687.8875 607.1366 97.272 259.9055 166.8671 205.2434 293.4986 1005.5557 245.2911 414.5297 224.6619 117.8159 183.6432 72.7748 185.622 1016.0303;
	2.977 40.226 83.8673 71.7135 14.9562 20.3718 18.6177 9.7574 26.3083 28.3035 52.3186 78.0491 117.5025 67.5923 172.7297 65.0749 80.7411 85.5614 83.4245 67.0965 6.2059 47.5343 70.8864 85.3406 81.9349 55.8502 6.6712 852.5339 662.3382 662.3382 591.2028 100.2128 278.0817 172.7066 211.9109 282.5976 849.761 237.7151 405.7769 219.4684 119.5932 225.9915 94.0518 223.8526 858.6127;
];