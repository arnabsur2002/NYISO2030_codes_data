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
	3.5256 47.6388 88.9016 112.8918 14.0957 30.7999 26.6661 15.6986 25.959 26.7298 49.4096 73.7095 110.9692 65.7731 199.5454 75.1776 93.2759 98.8446 89.8688 70.9436 8.8887 71.8664 74.7094 86.9652 102.3462 71.0392 12.3414 1262.6769 744.0026 744.0026 591.2989 112.6728 299.5626 182.6089 206.2075 317.4411 1203.4847 233.9923 433.9262 274.1416 112.7646 341.6735 168.9216 273.6384 1216.021;
	3.5673 48.2019 90.0203 113.7587 14.5061 31.3576 24.5675 17.6803 26.1556 28.0235 51.801 77.2769 116.34 65.4791 195.8583 73.7885 91.5524 97.0182 91.0469 71.2289 8.1892 73.1676 74.9672 89.1238 102.658 71.1632 12.8676 1290.0509 758.7003 758.7003 618.6219 112.7928 303.4898 183.3433 205.2858 323.7121 1210.3338 230.6194 441.5131 274.9767 111.4743 347.8598 168.2225 258.2676 1222.9414;
	3.2212 43.525 88.0184 111.522 14.3678 32.4109 21.0446 17.8433 25.7465 27.0116 49.9306 74.4867 112.1393 62.7241 199.7847 75.2677 93.3877 98.9631 91.9054 72.1896 7.0149 75.6254 72.8011 89.8974 103.6097 74.6712 13.1102 1269.2222 730.6412 730.6412 596.1849 97.7756 306.3512 185.8162 196.6486 311.7403 1248.6195 215.0727 417.9338 277.526 113.22 359.5447 154.7844 253.5304 1261.626;
	3.368 45.5092 87.0286 110.9005 14.1411 32.3494 24.4726 17.7141 26.0711 29.2598 54.0863 80.6861 121.4725 65.1463 201.9123 76.0693 94.3823 100.017 91.7589 71.8135 8.1575 75.4819 72.558 88.5273 101.0959 71.1427 13.0386 1333.217 739.0424 739.0424 650.0406 104.7628 305.8629 184.8481 204.2426 315.3248 1307.5701 241.2575 441.8648 270.7926 112.7356 358.8623 143.7014 232.6957 1321.1906;
	3.7101 50.1321 91.7907 113.1465 14.4926 33.7677 30.1772 18.2627 26.4802 29.0169 53.6373 80.0163 120.4642 65.6863 199.1177 75.0164 93.0759 98.6327 89.4795 72.7691 10.0591 78.7914 73.4842 89.5532 104.7945 73.8392 13.2797 1323.6152 752.4164 752.4164 688.6361 105.6704 298.265 187.3077 205.9354 321.031 1306.2573 248.7932 467.0606 280.6995 113.029 374.5969 185.9731 262.3734 1319.8642;
	3.7586 50.7867 90.9491 115.2864 14.6558 34.3045 29.1478 18.8114 26.9577 29.133 53.8519 80.3364 120.946 66.6413 200.6804 75.6052 93.8064 99.4068 91.905 73.0154 9.7159 80.0439 72.8283 88.9182 104.3975 73.8746 13.645 1334.1394 775.2228 775.2228 706.2531 107.3284 306.35 187.9418 208.9295 330.7617 1296.9252 245.4831 460.3191 279.6361 113.8628 380.5517 177.4961 264.1202 1310.4349;
	3.6246 48.9768 93.2196 117.6825 14.7491 34.3138 30.2921 18.8222 26.4502 29.3512 54.2553 80.9383 121.8521 65.3273 202.3216 76.2235 94.5736 100.2198 91.5658 73.484 10.0974 80.0655 73.1368 89.2337 105.652 73.035 13.6901 1322.5416 756.6592 756.6592 699.777 103.1322 305.2194 189.1479 204.8101 322.8413 1293.9047 282.1171 463.6161 282.9964 115.7318 380.6542 165.1957 264.2895 1307.3829;
	3.6754 49.6624 93.3048 119.5702 14.5917 34.5687 29.7555 18.8959 26.6487 30.2497 55.9161 83.4158 125.5821 67.7084 204.1325 76.9057 95.4201 101.1168 92.2982 72.3707 9.9185 80.6602 73.3365 89.4785 106.0518 75.4371 13.6151 1341.7111 796.4108 796.4108 738.2421 106.985 307.6608 186.2824 212.275 339.8019 1329.3369 299.0041 459.6764 284.0672 117.4988 383.4816 177.3861 276.3089 1343.1842;
	3.8138 51.5327 94.4774 120.3197 14.8032 34.9189 31.8537 19.027 27.5395 31.1965 57.6663 86.0268 129.5129 69.1799 203.8641 76.8046 95.2946 100.9838 92.8882 72.0053 10.6179 81.4775 75.2658 88.795 105.8212 75.7486 13.9476 1349.0141 818.522 818.522 756.2874 113.6475 309.6273 185.3418 216.8882 349.2361 1338.3805 317.8764 472.5122 283.4497 122.0801 387.3672 208.7336 275.8616 1352.3219;
	3.5791 48.3612 90.4886 115.0081 14.6582 33.3994 27.3182 18.5096 27.135 30.2223 55.8654 83.3403 125.4683 67.5605 205.0915 77.267 95.8684 101.5918 91.9077 73.4077 9.1061 77.932 74.1509 87.4488 103.2918 75.2486 13.4945 1354.4111 824.9243 824.9243 763.746 116.4841 306.3589 188.9517 211.8112 351.9677 1320.8446 330.1435 464.6917 276.6744 117.3166 370.5108 199.2086 273.1199 1334.6034;
	3.7075 50.0966 90.9106 115.6161 14.508 33.9938 28.1961 17.7995 26.6229 30.9544 57.2187 85.3591 128.5076 67.8607 203.8436 76.7969 95.285 100.9737 91.2735 73.2654 9.3987 79.3188 74.2714 85.7151 100.2064 74.2546 13.2717 1348.6402 829.1537 829.1537 770.6872 113.9724 304.245 188.5853 212.7524 353.7722 1347.3604 340.1379 460.3087 268.4101 121.0941 377.1042 206.6414 270.3641 1361.3954;
	3.7009 50.0071 92.3914 119.0603 14.7498 34.2803 27.2294 18.3682 26.9479 30.5277 56.43 84.1825 126.7362 67.609 202.7708 76.3927 94.7836 100.4423 92.2693 72.8819 9.0765 79.9874 74.8623 87.5426 104.1613 74.5481 13.5418 1331.6101 825.3865 825.3865 777.7651 117.2609 307.5642 187.5982 211.9635 352.1649 1343.3067 337.1399 473.8141 279.0035 118.8027 380.2829 202.6691 274.6825 1357.2994;
	3.6552 49.3896 93.944 117.2501 14.8739 33.0178 27.9256 18.0964 27.0926 30.8308 56.9902 85.0182 127.9945 68.1398 202.1911 76.1743 94.5126 100.1551 90.7211 72.7894 9.3085 77.0415 75.163 85.7834 104.9906 75.3505 13.7884 1281.0772 827.915 827.915 732.7919 114.2464 302.4036 187.3602 213.6274 353.2437 1317.7628 331.9832 475.6629 281.2249 120.4864 366.2772 201.2334 275.7525 1331.4895;
	3.6151 48.8481 93.043 119.1857 14.7687 33.4406 26.8961 18.8495 27.267 30.7343 56.812 84.7523 127.5941 68.0456 204.7416 77.1352 95.7048 101.4185 90.6627 73.1315 8.9654 78.0281 75.3058 88.732 106.4002 76.1042 14.0882 1292.2326 787.1164 787.1164 744.1276 118.6562 302.2091 188.2407 213.332 335.8363 1266.5513 333.9054 461.5112 285.0004 121.5209 370.9678 193.2513 273.6005 1279.7445;
	3.7153 50.2013 92.4581 119.3871 14.9314 33.9544 24.5008 18.496 27.9835 29.7313 54.9579 81.9864 123.4301 68.6452 199.2154 75.0533 93.1216 98.6811 86.4721 70.621 8.1669 79.2268 74.8318 88.754 106.0811 74.8491 14.1399 1314.3789 773.2633 773.2633 740.2599 120.6853 288.2403 181.7786 215.2121 329.9257 1279.3864 337.4897 463.8008 284.1459 121.5948 376.667 199.5485 273.0005 1292.7133;
	3.803 51.3869 93.6021 117.9217 15.3548 34.5553 25.9718 18.578 28.2959 30.0172 55.4863 82.7746 124.6167 69.4171 196.847 74.161 92.0145 97.5079 88.3115 70.4388 8.6573 80.629 73.5974 89.3483 106.5657 73.7692 13.775 1280.6614 739.8164 739.8164 695.7167 120.7285 294.3718 181.3096 217.6321 315.655 1224.8469 320.9362 479.3543 285.4439 120.9443 383.3334 200.2456 274.2333 1237.6057;
	3.8054 51.4198 90.5146 110.1585 15.3255 33.2548 23.3786 17.0681 28.3551 29.8607 55.1971 82.3432 123.9672 68.9154 203.7531 76.7628 95.2427 100.9289 88.6468 71.34 7.7929 77.5946 73.0252 83.5454 100.4319 59.8852 12.3903 1279.8454 742.0345 742.0345 645.4893 119.5654 295.4892 183.6293 216.059 316.6014 1210.5881 313.6224 477.4179 269.014 112.6505 368.9068 196.4059 260.0592 1223.1984;
	3.7566 50.7602 90.0562 102.2648 14.8643 30.4076 19.9457 13.0234 28.1746 28.7419 53.1289 79.2579 119.3223 68.7658 188.9329 71.1794 88.3151 93.5877 86.9603 68.3969 6.6486 70.9511 73.4052 84.0843 99.4743 68.9585 9.9977 1228.4831 720.2552 720.2552 635.6446 114.9711 289.8676 176.0539 215.5901 307.3089 1189.8003 289.0368 467.2425 266.449 112.5545 337.3216 175.8399 242.731 1202.1941;
	3.5818 48.3982 85.2549 92.5563 14.543 24.752 15.2116 8.1142 27.4319 29.4946 54.5204 81.3337 122.4474 66.8438 166.9197 62.886 78.0253 82.6835 87.3089 61.8089 5.0705 57.7547 74.7813 87.9406 99.2767 61.3083 8.7497 1234.3247 691.2965 691.2965 617.6387 109.8464 291.0296 159.0963 209.5644 294.9532 1178.0067 296.1034 449.2831 265.9197 114.6238 274.5824 117.5849 220.9177 1190.2777;
	2.721 36.7672 78.3768 54.0715 14.1025 20.1826 24.6944 9.0593 26.9743 29.9441 55.3512 82.5731 124.3133 66.7236 178.3146 67.179 83.3517 88.3279 86.9242 66.4411 8.2315 47.0927 74.9488 84.6161 86.0058 42.1361 8.0203 1220.1402 700.1877 700.1877 645.4584 104.826 289.7473 171.0195 209.1876 298.7467 1100.1772 277.722 430.8939 230.3728 110.5251 223.8921 94.7425 192.3464 1111.6374;
	2.2709 30.6853 80.066 66.4077 14.1308 11.8656 24.9945 9.3951 27.7957 29.9747 55.4077 82.6574 124.4403 67.8702 183.9088 69.2866 85.9667 91.099 83.1033 69.0154 8.3315 27.6865 75.5789 83.3707 78.0646 54.8403 9.6564 1181.4123 722.4399 722.4399 634.7687 104.3497 277.0111 177.6459 212.7822 308.241 1114.7038 258.4705 459.1118 209.1016 106.6597 131.6296 67.2232 189.5498 1126.3153;
	1.7816 24.0733 78.1124 77.4003 13.1343 14.885 24.7312 11.3498 26.8905 28.8069 53.2491 79.4371 119.5921 67.4648 191.0305 71.9696 89.2956 94.6267 85.4452 68.8881 8.2437 34.7316 73.9679 81.8959 90.1279 64.4415 10.3638 1118.1796 686.0657 686.0657 661.9734 102.3951 284.8172 177.3183 211.5113 292.7214 1071.745 253.4195 452.281 241.4139 110.9121 165.124 57.8506 189.4251 1082.909;
	2.5396 34.3162 82.0885 85.5112 13.3495 17.6687 24.1711 13.4212 26.8014 28.7208 53.0899 79.1997 119.2347 68.7575 180.0434 67.8303 84.1598 89.1843 83.4497 67.6868 8.057 41.2271 70.1829 86.7859 88.404 64.7695 9.8624 960.3894 714.7621 714.7621 715.5954 105.7298 278.1655 174.226 215.564 304.9652 1044.6028 287.139 447.3807 236.7964 117.5726 196.0053 73.5963 216.811 1055.4841;
	2.6264 35.4879 84.4466 72.5488 13.2065 19.1294 19.551 9.3999 26.9877 28.2424 52.2056 77.8805 117.2487 68.0832 164.9654 62.1498 77.1117 81.7154 82.3639 66.778 6.517 44.6353 70.5555 83.18 78.0879 58.9986 6.8747 896.2894 652.0974 652.0974 642.8983 97.5215 274.5464 171.8869 213.4501 278.2282 896.5419 261.5933 442.9614 209.1639 115.7605 212.2088 87.9684 228.6808 905.8809;
];
