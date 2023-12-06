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
	3.8148 51.5464 83.5911 110.9047 14.9367 35.3227 31.3679 5.82 26.2166 13.3384 24.6558 36.7816 55.3744 44.5345 189.2313 71.2918 88.4546 93.7355 85.8162 69.6701 10.456 82.4197 31.3076 28.8364 45.0307 24.2703 3.8164 1245.5938 830.1985 830.1985 702.4254 87.9174 286.054 179.3311 139.6216 354.218 1295.6074 209.0629 458.5101 120.618 111.4174 391.8468 213.7279 88.8714 1309.1033;
	3.1688 42.8171 70.6404 36.7229 14.9674 28.4857 29.745 3.5421 0.3443 12.9328 23.9061 35.6632 53.6907 40.2822 184.5196 69.5167 86.2522 91.4016 86.4632 69.5352 9.915 66.4666 21.2949 2.8512 33.7967 25.2531 4.5154 1246.8152 800.7438 800.7438 703.2789 78.0681 288.2107 178.9838 126.29 341.6507 1289.8852 196.4696 443.1354 90.5268 113.9673 316.0014 205.171 68.4811 1303.3215;
	2.7612 37.3101 81.2425 2.4671 14.7377 23.1729 30.4132 2.4403 0.0 13.2443 24.4818 36.522 54.9837 39.5335 186.3242 70.1966 87.0957 92.2955 88.4237 61.3357 10.1377 54.0701 22.2546 0.3368 19.455 24.2089 4.8613 1207.1378 803.4966 803.4966 722.6655 93.416 294.7457 157.8783 123.9428 342.8252 1263.8783 201.6537 455.9003 52.1116 30.9719 257.0647 205.7482 73.1179 1277.0437;
	3.1537 42.6129 83.0218 39.8406 14.4727 14.5461 31.8968 5.6676 7.9238 11.8589 21.9209 32.7017 49.2323 28.9723 188.8178 71.136 88.2614 93.5307 86.1868 57.8946 10.6323 33.9408 6.4759 3.7492 32.5375 28.7393 4.4052 1232.2323 812.3761 812.3761 744.8287 100.7704 287.2894 149.0208 90.8322 346.6138 1263.48 226.6643 469.5338 87.1541 36.3814 161.3643 203.0706 82.2081 1276.6413;
	3.568 48.2111 78.9189 34.5572 14.5532 21.5503 31.5632 6.677 10.2715 10.8631 20.0803 29.9559 45.0985 33.944 166.5835 62.7594 77.8681 82.5169 86.3713 62.4608 10.5211 50.2841 0.932 11.5353 35.3528 61.0341 5.1604 1226.105 811.681 811.681 770.6796 100.601 287.9044 160.7743 106.4191 346.3172 1290.8905 242.2774 469.4957 94.695 35.7613 239.0648 198.9305 166.047 1304.3373;
	3.4574 46.7168 93.4092 110.1337 14.5559 32.3207 30.8573 6.5846 10.6788 12.2115 22.5728 33.6742 50.6964 27.9284 164.2926 61.8963 76.7973 81.3822 87.4143 53.8507 10.2858 75.415 6.8885 28.6829 54.87 67.8201 4.8903 1081.8069 759.1238 759.1238 748.2162 109.8491 291.3809 138.6118 87.5592 323.8928 1188.7121 239.0786 468.2401 146.9732 64.1784 358.5443 184.5094 233.7345 1201.0945;
	3.6813 49.7418 92.2579 115.0998 14.6125 33.1833 31.327 8.9551 10.0234 11.4006 21.0739 31.4381 47.3299 38.3557 185.8859 70.0314 86.8909 92.0784 75.6277 64.5295 10.4423 77.4277 22.236 44.51 97.5126 72.8654 10.1218 1115.5254 779.3928 779.3928 748.6481 112.609 252.0924 166.0991 120.2502 332.5409 1246.3729 280.6272 472.1316 261.1945 109.6609 368.1133 186.3838 264.4999 1259.356;
	3.6003 48.6476 92.8344 117.3324 14.4277 33.4749 31.0499 18.2608 10.0411 9.6807 17.8946 26.6953 40.1896 60.7418 179.6725 67.6906 83.9864 89.0006 76.6619 43.7213 10.35 78.1082 0.0 52.8677 102.4139 72.3901 13.4752 1087.2141 789.5117 789.5117 779.1992 112.3016 255.5398 112.5387 190.4339 336.8583 1267.0984 312.6632 476.7897 274.323 117.7993 371.3486 186.9506 272.5105 1280.2974;
	3.5848 48.439 91.6188 114.8501 14.4567 32.503 29.8235 17.5123 8.7858 11.6218 21.4827 32.0479 48.2479 62.2944 190.1418 71.6348 88.8802 94.1865 48.9698 55.5513 9.9412 75.8403 25.7794 86.3241 100.8123 70.3739 13.2084 822.5834 819.0825 819.0825 776.4813 111.7972 163.2326 142.9893 195.3013 349.4752 1259.932 316.389 474.3994 270.033 116.5547 360.5664 190.9271 263.3628 1273.0562;
	3.6523 49.3512 90.2159 113.8362 14.9474 32.2114 30.2025 17.5564 19.9198 11.3263 20.9364 31.2331 47.0212 63.772 181.9323 68.542 85.0428 90.12 59.1833 49.9034 10.0675 75.1599 21.5903 87.8335 99.3986 69.5204 12.992 626.4717 836.102 836.102 769.6497 109.6645 197.2778 128.4516 199.934 356.7368 1164.4564 275.0872 474.18 266.2463 114.0916 357.3317 200.2846 262.2854 1176.5861;
	3.6732 49.6327 89.5094 112.1028 14.7117 31.8532 29.4441 17.3715 27.222 16.4294 30.3695 45.3053 68.2069 66.9194 197.9521 74.5773 92.5311 98.0554 43.9899 64.666 9.8147 74.3241 27.0557 82.1689 97.0561 69.9422 13.0008 438.1982 798.5368 798.5368 781.8587 99.1077 146.6331 166.4506 209.8014 340.7091 974.7047 277.2093 450.1571 259.9716 114.2045 353.3578 198.4345 246.4535 984.8579;
	3.0786 41.5989 89.565 113.917 14.7211 28.8497 27.9045 17.6062 26.7959 18.4857 34.1704 50.9756 76.7435 65.0457 192.091 72.3692 89.7914 95.1521 54.619 61.8799 9.3015 67.3159 33.7468 82.591 97.3045 73.0167 12.8392 301.1128 769.9279 769.9279 735.5551 100.0914 182.0635 159.2791 203.9269 328.5026 761.1545 245.5714 446.2139 260.6371 115.4913 320.0389 178.4528 254.243 769.0832;
	2.0343 27.4873 91.3304 113.038 14.1132 19.8584 25.0971 18.148 26.3681 26.9498 49.8162 74.316 111.8823 63.5467 201.9277 76.0751 94.3895 100.0247 92.3785 66.1257 8.3657 46.3362 56.9002 82.137 97.1877 71.45 13.7509 312.2978 704.4327 704.4327 682.7458 104.2557 307.9285 170.2077 199.2274 300.558 674.3637 229.1288 425.2012 260.3243 116.9391 220.2957 169.6691 253.9975 681.3883;
	2.3513 31.7717 89.5818 108.6803 14.7925 10.8762 24.3147 17.6454 27.5172 30.6589 56.6725 84.5443 127.281 63.2657 204.5397 77.0592 95.6104 101.3185 92.5581 72.6829 8.1049 25.3778 73.0258 81.6101 96.516 72.8166 13.6717 302.7448 607.4965 607.4965 630.9565 102.1384 308.5271 187.0859 198.3464 259.1985 479.4122 203.4615 437.2963 258.525 117.9616 120.6532 134.7049 253.6316 484.4061;
	2.1988 29.7111 90.4353 113.2487 12.6247 0.0 20.1077 18.2149 27.2806 28.9589 53.5301 79.8564 120.2233 61.7139 202.7021 76.3669 94.7515 100.4083 90.6073 72.267 6.7026 0.0 71.8674 82.9703 99.4961 72.784 13.9311 427.1317 486.3422 486.3422 449.8103 90.0722 302.0243 186.0153 193.4815 207.506 411.0111 167.1339 434.2755 266.5075 118.4693 0.0 104.0361 240.3001 415.2924;
	3.4718 46.912 91.6955 86.7432 14.0386 25.1164 15.1498 18.3859 23.7945 29.4255 54.3925 81.1429 122.1602 59.3968 199.4266 75.1328 93.2203 98.7857 90.758 71.2452 5.0499 58.605 74.1677 84.5792 99.7602 73.1089 13.8679 497.041 515.8414 515.8414 419.5824 48.3499 302.5268 183.3853 186.217 220.0923 484.792 143.8174 438.0367 267.2148 121.2289 278.6248 78.5298 258.9064 489.8419;
	3.192 43.1305 87.569 57.1993 13.9522 28.4862 12.6613 18.4412 26.521 26.9143 49.7506 74.2181 111.735 62.7226 193.6493 72.9563 90.5198 95.924 88.5056 71.1665 4.2204 66.4678 70.8005 83.5125 101.716 73.4909 13.7291 601.0868 558.5975 558.5975 437.9551 31.3695 295.0187 183.1827 196.6439 238.3349 580.9451 106.7696 179.9422 272.4536 120.4246 316.007 100.1312 256.6072 586.9966;
	3.7332 50.4442 88.0609 54.7802 14.5142 30.5932 25.2273 18.5183 26.201 13.1001 24.2153 36.1244 54.3851 58.5047 186.2355 70.1631 87.0543 92.2515 69.9032 72.4982 8.4091 71.3841 53.1322 84.3727 103.1288 73.962 13.4698 726.6801 597.542 597.542 394.0649 26.3511 233.0105 186.6105 183.4202 254.9512 765.6323 69.0955 397.8145 276.2378 121.0918 339.3805 117.0632 260.8308 773.6076;
	3.8916 52.5844 89.87 51.2805 15.1332 31.3206 26.0397 18.9533 26.9245 22.6685 41.9024 62.5101 94.1086 61.9814 176.2558 66.4033 82.3893 87.3081 49.3712 70.5696 8.6799 73.0813 57.3428 79.9401 105.5476 76.1981 13.7404 1072.0207 677.2925 677.2925 465.9608 38.0569 164.5707 181.6464 194.32 288.9781 1030.3402 90.8827 443.8811 282.7168 121.5732 347.4493 146.2709 251.8832 1041.0729;
	3.7921 51.2399 65.8903 38.5381 15.2618 31.1269 0.0 19.0384 27.4307 28.5392 52.7543 78.699 118.4809 58.9427 194.4867 73.2717 90.9112 96.3387 42.7059 72.6446 0.0 72.6293 73.1709 74.9098 105.6329 75.3453 13.7673 1209.536 603.549 603.549 523.448 53.8935 142.3531 186.9875 184.7933 257.5142 1163.1393 130.3913 443.8754 282.9453 121.1626 345.3006 155.1425 230.7591 1175.2553;
	3.8546 52.0844 59.2031 56.2574 15.2167 30.705 27.5173 18.7123 25.2904 26.893 49.7113 74.1595 111.6468 60.8451 191.8479 72.2776 89.6778 95.0316 57.381 72.2836 9.1724 71.645 69.6124 84.3785 102.0901 74.3131 13.6247 1280.5847 710.8211 710.8211 406.7583 69.8754 191.2699 186.0581 190.7576 303.2837 1157.0974 183.3707 427.8617 273.4557 121.1727 340.6207 144.428 250.3355 1169.1505;
	3.8362 51.836 43.4584 77.5201 15.1909 32.2718 0.0 18.5385 28.1456 29.2661 54.0979 80.7034 121.4985 61.5231 189.4476 71.3733 88.5557 93.8426 43.9504 72.2919 0.0 75.3009 70.4239 83.9839 102.9226 73.5785 13.7936 1290.8997 689.1244 689.1244 504.9149 88.0131 146.5013 186.0796 192.8833 294.0264 1189.3097 215.8897 442.7366 275.6854 122.2868 358.002 150.235 224.5115 1201.6983;
	3.6943 49.9176 54.7639 86.6006 15.2297 30.5089 27.7947 18.5895 27.9214 29.0789 53.752 80.1874 120.7217 62.721 180.5321 68.0144 84.3883 89.4264 43.5828 70.1084 9.2649 71.1874 67.3841 87.2581 103.8972 73.3667 13.8211 1253.6853 650.968 650.968 532.6786 106.8728 145.2761 180.4593 196.6388 277.7463 1105.3286 229.517 433.951 278.296 121.7162 338.4454 146.7378 257.4504 1116.8425;
	3.6962 49.9439 78.4122 97.0519 15.2334 31.2401 29.2638 18.2168 27.6268 29.2028 53.981 80.5291 121.2361 64.3865 182.7678 68.8567 85.4333 90.5338 21.6522 71.296 9.7546 72.8937 69.4625 83.5118 100.0448 70.9171 13.3382 1227.1198 659.83 659.83 557.4532 112.5206 72.174 183.5162 201.8605 281.5275 1146.4548 216.0315 445.4278 267.9771 117.2552 346.5574 157.7245 253.2754 1158.397;
];