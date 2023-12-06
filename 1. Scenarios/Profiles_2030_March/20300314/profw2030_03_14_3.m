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
	1.6955 22.9103 82.1115 111.2806 13.6196 12.995 14.4992 17.0222 27.1992 24.1441 44.6301 66.5793 100.2347 7.7178 14.2319 5.3618 6.6526 7.0497 12.5164 19.6153 4.8331 30.3216 57.4923 78.4242 87.9861 69.2308 6.8172 633.8366 369.5268 369.5268 199.2805 35.8142 41.7212 50.4899 24.1963 157.6648 459.3818 47.3453 274.7554 235.6771 10.1425 144.1574 111.3164 213.4924 464.167;
	1.6573 22.394 86.4044 112.5671 11.3396 14.3594 14.5606 15.7499 26.3964 20.9364 38.7006 57.7337 86.9177 6.2786 2.0432 0.7698 0.9551 1.0121 7.275 7.2636 4.8535 33.5053 42.9124 77.7248 85.712 69.4112 5.6006 690.9157 346.0429 346.0429 165.2303 31.4322 24.25 18.6965 19.6842 147.645 466.6608 44.7723 286.4297 229.5858 4.8139 159.2937 102.1082 197.6302 471.5218;
	2.1674 29.2857 86.6984 112.3867 11.7547 12.2895 13.1654 16.968 26.8741 21.7073 40.1257 59.8596 90.1183 6.3979 4.7411 1.7862 2.2162 2.3485 9.3842 15.5372 4.3885 28.6756 51.7152 81.7874 88.1229 70.5218 6.5314 606.41 321.9025 321.9025 131.7871 31.2852 31.2806 39.9927 20.0582 137.3451 369.3622 28.3494 232.8213 236.0435 4.3549 136.3319 76.1193 184.1654 373.2097;
	2.3169 31.3069 86.4765 108.2596 13.5798 10.9609 11.4327 16.7323 27.3264 22.3046 41.2297 61.5067 92.5979 7.9153 5.9766 2.2516 2.7937 2.9605 6.5676 18.898 3.8109 25.5753 62.1425 81.6538 94.9387 72.3185 7.7737 519.0564 267.5091 267.5091 150.2541 28.5193 21.8918 48.6434 24.8154 114.1372 307.4015 24.9391 180.4384 254.3002 0.0 121.5925 70.1725 191.6259 310.6036;
	2.0917 28.2632 87.3996 109.8866 13.6525 13.5718 10.8293 17.4306 20.3663 17.3323 32.0386 47.7953 71.9555 13.8 13.5434 5.1024 6.3307 6.7087 15.2624 18.7616 3.6098 31.6674 47.1837 81.5274 95.018 72.7417 9.1841 377.4887 220.8163 220.8163 146.5769 27.8181 50.8747 48.2925 43.265 94.2149 188.7913 27.1423 168.4775 254.5124 7.5303 150.556 82.1581 208.2297 190.7579;
	2.6829 36.2515 86.4436 104.9563 13.8458 19.6421 10.68 17.147 13.1676 19.3799 35.8234 53.4415 80.4558 26.4245 10.2527 3.8626 4.7925 5.0786 24.6744 21.0773 3.56 45.8315 50.1946 80.3641 90.4789 71.3524 6.8641 236.5416 197.7948 197.7948 130.8794 23.6076 82.2479 54.253 82.8443 84.3924 137.5897 22.3475 183.9031 242.3543 0.0 217.8959 79.1709 195.5818 139.0229;
	2.3373 31.5815 86.2963 108.7918 13.5728 19.8861 12.0584 16.5191 13.8671 25.726 47.554 70.9413 106.8017 37.7989 17.9075 6.7465 8.3707 8.8705 35.5988 33.5029 4.0195 46.4009 58.3227 81.8636 95.5375 70.4698 9.1174 241.6546 224.5446 224.5446 104.6645 16.2535 118.6627 86.2365 118.5046 95.8057 172.1851 19.4062 154.5434 255.9039 1.3518 220.6031 85.3202 216.5476 173.9787;
	1.7783 24.0288 63.7683 102.7159 14.239 18.3039 13.0584 17.0734 20.7107 27.4859 50.8073 75.7945 114.1083 37.8327 19.6051 7.3861 9.1642 9.7114 48.8252 51.1659 4.3528 42.7091 70.1037 81.514 93.9005 70.5946 11.5185 118.9052 175.405 175.405 85.3896 7.4692 162.7506 131.7011 118.6106 74.8395 100.0585 15.3712 180.6913 251.5192 0.0245 203.0514 85.0047 189.0024 101.1008;
	2.9205 39.4623 80.7357 98.1464 14.7588 24.7818 12.2065 18.0973 22.855 26.9361 49.791 74.2784 111.8257 42.1293 0.0 0.0 0.0 0.0 51.429 48.5143 4.0688 57.8241 66.9548 83.1575 97.882 71.3537 11.6841 99.4402 141.5357 141.5357 79.49 6.094 171.4299 124.876 132.081 60.3885 104.9902 18.8232 146.4307 262.1839 15.5533 274.9124 81.165 218.2303 106.0839;
	2.0169 27.2524 80.6924 103.1046 13.5043 14.9931 11.0499 18.6935 26.7012 27.2331 50.3399 75.0973 113.0585 36.6728 0.0 0.0 0.0 0.0 63.2362 45.0902 3.6833 34.9839 67.3568 83.4445 100.2026 74.1484 13.0716 212.5977 228.495 228.495 99.0159 6.5528 210.7872 116.0624 114.9743 97.4912 188.5741 20.0382 81.2557 268.3997 6.3561 166.3236 79.2873 218.4976 190.5384;
	1.5957 21.5613 76.2207 104.2959 12.7479 25.0437 14.4615 18.2279 27.1606 27.3677 50.5888 75.4686 113.6175 49.9429 0.0819 0.0309 0.0383 0.0406 62.9817 40.468 4.8205 58.4352 67.491 84.6775 95.2052 73.1521 12.7764 279.3584 298.265 298.265 157.5591 11.5725 209.9388 104.1647 156.5779 127.2597 283.5065 22.6366 174.3378 255.0139 0.0501 277.8179 92.8512 194.3211 286.4597;
	1.7732 23.9593 84.0205 95.7325 13.0757 31.275 19.5367 18.524 28.0529 27.5421 50.9111 75.9494 114.3414 51.2701 8.5701 3.2287 4.006 4.2452 76.7985 59.2024 6.5122 72.975 70.6949 87.0424 100.2227 72.8838 12.9095 383.8749 369.8512 369.8512 269.0858 15.4451 255.9948 152.3872 160.7387 157.8032 390.3958 35.4672 192.5659 268.4538 0.4705 346.9442 109.4445 195.8808 394.4625;
	3.0116 40.6936 90.0219 92.7661 14.5613 32.3019 21.1749 17.8449 28.1036 28.7435 53.1319 79.2623 119.3289 52.6978 44.9162 16.9219 20.9957 22.2492 82.6888 67.5554 7.0583 75.3711 72.3037 85.5329 100.1304 69.8221 11.2653 512.3997 451.7673 451.7673 309.8518 23.9476 275.6293 173.8878 165.2148 192.7541 566.496 50.0675 213.696 268.2065 0.3398 358.3359 140.9689 214.2562 572.397;
	3.6859 49.8042 88.8775 106.9511 14.881 32.4309 23.1733 18.0972 27.8161 29.4294 54.3998 81.1538 122.1767 56.1341 64.8908 24.4472 30.3327 32.1436 86.2975 65.9747 7.7244 75.6721 68.9384 85.0237 96.6223 69.7102 11.2869 722.7262 604.4824 604.4824 414.352 30.0688 287.6582 169.819 175.988 257.9125 722.6952 78.6318 300.3829 258.8098 0.0 359.7668 142.4867 249.5793 730.2233;
	3.7751 51.0101 88.9168 110.2845 14.8318 34.3069 26.6808 17.7544 27.9998 26.5121 49.0073 73.1092 110.0655 61.0979 84.9422 32.0015 39.7055 42.076 84.4945 63.0518 8.8936 80.0493 48.4627 86.9915 98.4057 66.2597 12.3615 949.4995 651.0912 651.0912 476.9754 31.3051 281.6485 162.2955 191.5503 277.7989 903.8983 101.3986 423.3873 263.5866 0.0 380.5774 160.733 241.7034 913.3139;
	3.6428 49.2224 90.3693 109.8496 14.3633 32.2497 28.3016 17.6645 28.152 20.414 37.7349 56.293 84.7489 62.163 124.108 46.757 58.0133 61.4768 88.3135 68.7824 9.4339 75.2492 45.0265 87.802 99.5122 66.4024 12.467 992.8072 692.4013 692.4013 602.3406 40.628 294.3783 177.0461 194.8893 295.4246 939.0682 141.4574 390.262 266.5505 0.0 357.7562 171.6427 256.7929 948.8502;
	3.7069 50.0888 89.4964 112.6348 14.9034 34.4922 29.8084 18.3452 28.3219 20.8913 38.6172 57.6093 86.7305 64.6221 150.3279 56.6352 70.2696 74.4647 87.6187 69.7729 9.9361 80.4818 34.0253 88.8763 100.9062 71.603 12.9327 979.4296 716.8881 716.8881 600.6085 66.7595 292.0622 179.5955 202.5991 305.8722 954.8923 174.6845 425.7331 270.2846 0.0188 382.6333 210.4191 273.9545 964.8391;
	3.7857 51.1537 90.8106 110.1309 14.8417 33.3201 28.9626 18.1348 28.1133 18.4489 34.1025 50.8742 76.5908 64.5285 157.5439 59.3538 73.6426 78.0392 85.5193 70.351 9.6542 77.747 38.3165 85.4435 101.1924 70.4616 13.2446 1089.2737 755.0547 755.0547 710.3968 91.2098 285.0645 181.0835 202.3056 322.1567 1040.2334 225.3264 446.969 271.0512 101.2653 369.6313 198.9785 268.285 1051.0691;
	3.8214 51.6352 90.6711 116.3215 14.9813 33.4892 30.339 13.4974 28.0698 19.4965 36.0391 53.7632 80.9402 64.5121 174.6449 65.7964 81.6363 86.5101 85.5833 68.2941 10.113 78.1416 50.883 85.985 103.843 63.9527 13.3699 1190.0942 766.7152 766.7152 686.3509 102.772 285.2776 175.7892 202.2541 327.1318 1092.174 239.4664 453.5224 278.151 117.1596 371.5074 206.3733 275.7356 1103.5508;
	3.8049 51.4124 92.5684 106.851 14.8323 33.6803 30.7403 8.6268 27.6181 18.3938 34.0007 50.7224 76.3622 65.5572 192.4112 72.4898 89.941 95.3106 86.8199 69.0352 10.2468 78.5875 49.4062 41.5157 44.5272 60.1641 11.1125 1190.7932 773.8007 773.8007 730.4608 108.9155 289.3996 177.6967 205.5306 330.155 1158.5316 265.3287 449.4896 119.2694 115.9902 373.6272 208.1736 239.4906 1170.5996;
	3.7501 50.6727 91.7863 115.1135 15.1334 33.2852 30.1483 18.274 18.2992 19.8714 36.732 54.7968 82.4964 64.1704 191.5527 72.1664 89.5397 94.8854 87.5206 68.0281 10.0494 77.6655 41.2307 81.0086 102.5967 70.1102 13.8425 1207.8127 771.3946 771.3946 737.194 111.0194 291.7354 175.1045 201.1828 329.1284 1090.1875 251.1684 438.3639 274.8125 114.7636 369.2442 207.4235 261.65 1101.5436;
	3.7498 50.668 91.5159 119.864 15.1566 33.7423 30.01 17.6988 9.6699 20.9125 38.6564 57.6678 86.8185 60.4235 188.1858 70.8979 87.9659 93.2176 89.3028 68.3966 10.0033 78.7319 43.9819 88.1371 104.7998 73.3734 13.7373 1219.3272 755.1021 755.1021 719.2872 110.0334 297.6761 176.0529 189.4359 322.1769 1106.4502 256.3502 428.7688 280.7137 116.2382 374.3141 211.8468 229.5586 1117.9758;
	3.7583 50.7832 93.9915 119.8057 15.2711 33.7516 30.9804 18.5224 19.3372 20.0918 37.1394 55.4047 83.4115 65.789 193.9011 73.0511 90.6375 96.0487 88.7712 66.7034 10.3268 78.7537 48.4272 89.3057 98.3425 75.9447 14.0975 1184.6979 762.25 762.25 744.8288 111.3339 295.9041 171.6947 206.2574 325.2267 1091.1291 263.7421 449.6783 263.4174 117.4018 374.4176 207.3482 242.641 1102.495;
	3.8548 52.0867 95.2759 121.0413 15.3266 34.4202 33.2089 19.0289 11.7907 19.4529 35.9584 53.6428 80.7589 66.0204 199.7079 75.2388 93.3518 98.9251 89.0738 70.1596 11.0696 80.3137 47.5048 89.9013 106.6991 75.211 14.083 1234.2191 809.3555 809.3555 784.354 111.2702 296.9125 180.5911 206.9828 345.325 1147.4691 278.4829 468.3232 285.8012 121.7411 381.8344 212.5467 263.1213 1159.4219;
];
