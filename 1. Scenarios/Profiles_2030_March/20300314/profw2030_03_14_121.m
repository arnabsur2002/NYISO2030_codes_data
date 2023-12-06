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
	3.4675 46.8535 92.4473 113.1904 14.8174 15.6167 14.6043 18.0966 26.0444 24.0472 44.4508 66.3119 99.8322 5.8196 20.3189 7.655 9.4979 10.0649 15.1554 21.6104 4.8681 36.439 51.7655 87.0663 98.8434 74.38 8.2358 624.582 376.2545 376.2545 228.4203 36.6891 50.5181 55.6252 18.2452 160.5352 468.7049 57.9465 307.0327 264.7592 19.3705 173.2413 116.5616 220.1424 473.5873;
	3.3941 45.8619 88.6609 108.2607 14.1948 17.134 13.5281 17.1296 25.9459 24.7417 45.7346 68.227 102.7153 5.8881 11.1142 4.1872 5.1952 5.5054 13.4404 10.6732 4.5094 39.9792 60.096 84.4997 97.1443 71.8464 7.1336 636.9792 357.7183 357.7183 185.2596 33.1026 44.8012 27.473 18.4601 152.6265 477.52 51.6933 293.9322 260.208 15.7237 190.0727 109.4998 218.3233 482.4942;
	2.9354 39.6642 88.0031 104.6135 14.362 12.7854 12.9503 17.0972 26.8344 25.5871 47.2974 70.5584 106.2253 7.402 16.721 6.2995 7.8161 8.2827 26.7954 20.4846 4.3168 29.8325 67.0353 82.962 95.8088 70.5896 8.2956 615.3107 362.6367 362.6367 170.9863 34.6336 89.318 52.7275 23.2062 154.725 426.4069 43.8594 238.8148 256.6306 42.9023 141.8324 77.0627 193.4271 430.8487;
	2.7885 37.6781 88.1191 103.5273 14.5038 12.4814 12.6108 17.3888 26.4247 25.1745 46.5347 69.4207 104.5124 11.7805 11.9036 4.4846 5.5643 5.8965 14.3229 17.7359 4.2036 29.1234 65.2946 85.2273 100.1364 73.3301 9.786 493.2695 280.9023 280.9023 186.0822 28.5001 47.7431 45.6521 36.9335 119.8516 323.1158 38.8764 190.0316 268.2226 58.2374 138.4608 66.1518 202.417 326.4816;
	2.2952 31.0134 87.5202 104.8188 14.1473 13.7179 11.7172 17.7991 15.6638 22.0891 40.8314 60.9125 91.7034 16.4431 15.4259 5.8116 7.2107 7.6412 22.0799 19.9859 3.9057 32.0084 57.5652 86.6043 100.9227 72.8886 9.6092 367.7063 222.0398 222.0398 165.9262 24.8816 73.5998 51.4438 51.5513 94.737 199.2706 40.3902 183.129 270.3285 15.4247 152.177 76.928 206.5645 201.3463;
	2.835 38.3065 88.8232 109.8577 13.9103 20.1741 11.6312 17.9491 9.7906 21.322 39.4134 58.7971 88.5187 32.1774 14.6041 5.502 6.8266 7.2341 30.6882 19.0038 3.8771 47.0728 62.8617 88.0542 102.9114 72.8095 8.4346 303.8261 206.7623 206.7623 153.4133 20.472 102.2939 48.9159 100.8804 88.2186 164.1094 36.3994 196.4976 275.6554 16.0805 223.7975 73.4251 198.0991 165.8189;
	2.3446 31.6812 87.1324 109.406 13.4047 21.4909 11.2431 16.6223 11.4836 26.6803 49.3181 73.5729 110.7636 43.4476 20.9168 7.8803 9.7774 10.3611 34.3426 30.9042 3.7477 50.1454 68.0858 86.4089 99.5784 71.3249 10.3996 234.1949 233.1818 233.1818 108.225 11.3306 114.4753 79.5476 136.214 99.4909 170.7195 25.0041 154.7604 266.7278 10.9986 238.4055 83.5953 196.2409 172.4978;
	1.4396 19.4521 65.8238 105.6041 13.397 16.0786 11.4155 17.4811 15.922 26.7437 49.4354 73.7479 111.027 42.8237 14.6023 5.5013 6.8257 7.2332 33.5797 45.3618 3.8052 37.5166 69.0289 85.3562 100.3493 70.3262 11.5316 126.027 172.6839 172.6839 84.9622 6.6665 111.9323 116.7614 134.2581 73.6785 105.9128 17.4279 161.7145 268.7929 7.4948 178.3648 80.4651 120.9081 107.016;
	2.4288 32.818 80.1083 97.8376 13.7702 21.6984 10.3622 17.7858 19.1502 28.2713 52.2591 77.9603 117.3688 40.9128 7.0561 2.6583 3.2983 3.4952 53.5148 38.9008 3.4541 50.6297 71.0804 86.0064 100.407 70.4444 12.0153 67.375 141.8464 141.8464 58.2782 5.7934 178.3826 100.1307 128.2671 60.5211 98.0363 15.7836 112.8852 268.9473 18.2112 240.708 69.5818 161.4419 99.0575;
	1.9383 26.1909 82.6662 99.3808 13.0577 13.8247 10.9732 17.8122 25.908 28.6956 53.0434 79.1303 119.1302 39.7015 0.0902 0.034 0.0422 0.0447 68.8201 34.6333 3.6577 32.2577 71.369 81.747 96.5402 69.5421 11.8589 187.1182 228.1472 228.1472 63.1104 9.8898 229.4005 89.1463 124.4696 97.3428 204.699 17.8877 55.704 258.5899 1.3734 153.3623 75.7765 138.6507 206.8313;
	1.5412 20.8244 76.5984 95.3392 12.385 23.7173 13.3766 17.2376 25.7482 27.0535 50.008 74.6021 112.313 40.5181 0.0 0.0 0.0 0.0 54.7715 24.7704 4.4589 55.3403 69.1267 82.4534 91.6586 69.1904 11.2541 212.3123 284.0654 284.0654 130.3648 14.3888 182.5717 63.7591 127.0297 121.2013 281.036 26.5071 153.896 245.5141 3.4082 263.1038 84.9052 91.0525 283.9634;
	1.408 19.0256 84.3058 81.3944 12.3584 27.8374 17.4502 17.2695 23.9813 28.2239 52.1714 77.8295 117.1718 30.2813 0.0 0.0 0.0 0.0 69.4846 38.9096 5.8167 64.954 69.3505 84.645 95.1123 69.6442 11.664 301.6689 335.5699 335.5699 227.7019 16.1936 231.6154 100.1535 94.936 143.1765 363.2648 38.0025 141.7352 254.7652 5.3934 308.8098 91.7473 97.4994 367.0488;
	2.7376 36.9911 90.6183 86.4859 14.3385 29.5757 20.0438 17.725 26.914 28.0176 51.79 77.2606 116.3153 38.8272 19.8139 7.4648 9.2618 9.8148 67.029 43.9922 6.6813 69.0099 66.6492 85.4485 99.6313 70.7582 11.2623 537.8144 418.6757 418.6757 296.6014 24.808 223.4298 113.2361 121.7286 178.6349 540.6994 52.0939 183.9017 266.8696 8.4465 328.0926 125.4465 190.2252 546.3317;
	3.3738 45.5872 88.6203 105.8595 14.8673 29.2753 21.7578 17.8518 26.2038 28.427 52.5469 78.3896 118.0151 48.9978 27.188 10.2429 12.7088 13.4676 70.6348 43.5504 7.2526 68.309 62.9929 86.1225 99.6538 70.141 10.6935 762.3535 561.4649 561.4649 386.0862 29.4365 235.4494 112.0988 153.6147 239.5584 707.8146 76.4305 251.384 266.9298 1.0329 324.7603 129.1113 229.4564 715.1876;
	3.5974 48.609 90.3495 103.3517 14.7543 32.0281 24.5741 18.2579 26.4857 25.1941 46.5709 69.4746 104.5936 55.3482 68.8452 25.937 32.1811 34.1024 74.62 44.778 8.1914 74.7322 46.7034 87.7064 100.5545 72.7253 12.3495 879.4102 639.7586 639.7586 478.5296 32.7711 248.7335 115.2586 173.5239 272.9637 870.688 102.6791 348.4887 269.3423 3.7068 355.298 149.4977 240.5558 879.7577;
	3.7723 50.9724 90.5472 110.2456 15.1203 33.052 25.8154 18.06 26.3953 19.8132 36.6244 54.6363 82.2547 57.9473 99.6976 37.5605 46.6028 49.3851 84.3631 48.6793 8.6051 77.1214 43.3134 88.2052 100.8581 71.4947 12.3767 969.458 703.8065 703.8065 643.2065 46.3587 281.2104 125.3008 181.6726 300.2908 985.3171 148.7113 327.4568 270.1557 8.1496 366.6574 162.1335 255.4314 995.5808;
	3.7046 50.0577 89.0337 112.0697 15.0419 32.8248 29.5606 18.5084 26.6781 18.5997 34.3813 51.2901 77.217 60.5186 124.0767 46.7452 57.9987 61.4613 83.2301 61.6419 9.8535 76.5913 29.7411 86.178 102.1305 73.2743 12.5802 1007.1909 749.3726 749.3726 701.5913 80.7982 277.4335 158.6664 189.7341 319.7323 979.7457 197.6624 371.0096 273.5638 4.7163 364.1368 201.3038 266.4469 989.9514;
	3.7458 50.6142 91.6947 114.8115 14.9694 33.287 29.5338 18.6376 26.4027 14.1019 26.0671 38.8869 58.544 65.9875 145.8251 54.9388 68.1648 72.2343 84.5345 64.7143 9.8446 77.6697 34.1464 84.7255 102.3452 72.7525 13.4768 1117.1499 785.406 785.406 724.6194 94.6044 281.7818 166.5748 206.8796 335.1065 1082.5541 220.7849 436.3785 274.1388 106.6548 369.2637 193.469 263.743 1093.8307;
	3.7195 50.2581 88.8313 113.9063 14.7345 33.1883 30.316 13.8434 25.7352 18.379 33.9733 50.6814 76.3006 65.0725 181.4959 68.3775 84.8388 89.9038 87.3837 66.4142 10.1053 77.4393 46.2095 83.7994 101.494 59.626 13.0103 1173.2964 775.9534 775.9534 656.6224 107.3835 291.2791 170.9502 204.0112 331.0735 1081.3915 227.2795 441.7107 271.8588 112.2409 368.1684 199.863 264.9947 1092.656;
	3.8787 52.4098 93.2623 112.1184 15.2934 34.2563 31.1125 9.2991 26.0367 18.6585 34.49 51.4523 77.4611 63.0855 190.128 71.6296 88.8738 94.1797 89.7093 67.3725 10.3708 79.9314 40.0265 39.1422 46.1846 63.2253 11.5012 1190.885 797.1259 797.1259 722.0494 112.5209 299.0311 173.4171 197.7816 340.1071 1122.4282 258.5424 461.5339 123.7087 119.2709 380.0167 212.7938 247.4898 1134.1202;
	3.9106 52.8411 93.8772 121.1245 15.2675 34.8717 31.2001 18.9498 16.6978 19.6754 36.3697 54.2564 81.6827 62.8606 190.8327 71.8951 89.2032 94.5287 88.8656 68.108 10.4 81.3674 34.681 81.0407 104.9663 72.7554 14.0579 1238.5995 802.8635 802.8635 736.7873 115.6985 296.2186 175.3102 197.0765 342.5551 1123.5013 260.083 446.8713 281.1598 119.9374 386.8437 213.2657 274.084 1135.2045;
	3.8977 52.6664 91.8495 122.3704 15.0303 34.584 30.6493 18.0321 7.6635 20.6748 38.217 57.0122 85.8316 61.3014 188.0977 70.8647 87.9248 93.174 85.1329 70.1726 10.2164 80.696 41.5867 88.2356 105.6753 74.2512 13.8382 1284.9006 821.9763 821.9763 766.1739 119.3722 283.7763 180.6243 192.1881 350.7099 1207.3121 267.7086 444.0273 283.0588 118.2453 383.6518 209.646 251.3025 1219.8883;
	3.8987 52.6806 94.5462 120.9376 14.9967 34.6954 30.9654 18.9457 17.7665 20.459 37.8182 56.4173 84.9359 64.8484 190.6848 71.8394 89.1341 94.4555 85.3862 67.0294 10.3218 80.9558 49.0399 88.8338 102.3731 75.1101 14.1728 1257.7474 820.0868 820.0868 769.3433 121.9726 284.6207 172.534 203.3083 349.9037 1239.4262 276.7781 450.1149 274.2137 121.3687 384.8871 207.7564 263.8788 1252.3369;
	3.9027 52.7345 93.0124 120.8878 15.0254 34.4076 31.2984 19.091 1.992 19.818 36.6333 54.6496 82.2747 65.1895 193.8812 73.0436 90.6282 96.0388 88.5333 67.7565 10.4328 80.2844 52.5664 89.892 106.7861 73.9702 14.1438 1257.2382 796.0017 796.0017 763.5192 121.6028 295.1109 174.4053 204.3779 339.6274 1219.1994 288.5017 440.0892 286.0341 122.6437 381.6951 210.3414 264.7246 1231.8994;
];
