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
	3.9607 53.5174 93.8457 117.1748 14.6433 33.6889 31.5734 17.5527 10.5824 16.8308 31.1115 46.4123 69.8735 53.3515 205.8692 77.56 96.2319 101.9771 91.2632 73.4133 10.5245 78.6074 24.2873 83.9022 100.3692 73.3024 13.6146 1310.6294 781.1992 781.1992 796.5501 110.942 304.2108 188.9661 167.2643 333.3116 1146.8268 276.5178 463.2591 268.8461 122.123 373.7221 212.4417 278.2295 1158.7729;
	3.9088 52.8166 93.9724 116.2209 14.5325 33.5445 31.9995 17.6034 12.5053 14.9963 27.7204 41.3534 62.2573 64.0658 203.0137 76.4842 94.8971 100.5626 90.8961 72.1496 10.6665 78.2705 29.5844 81.6505 98.4266 71.8586 12.9997 1260.491 795.4785 795.4785 804.6552 113.3946 302.9869 185.7133 200.8551 339.4042 1217.626 266.63 460.5498 263.6427 119.2946 372.1202 207.6779 276.0755 1230.3096;
	3.8832 52.471 90.6327 112.7386 14.6935 33.548 32.7584 17.6641 23.0824 15.0218 27.7676 41.4238 62.3632 59.9665 181.5127 68.3838 84.8466 89.9121 88.8604 70.2699 10.9195 78.2788 25.938 81.9142 97.4907 72.6541 12.9053 1247.3523 792.3913 792.3913 774.4926 113.4015 296.2013 180.8748 188.003 338.087 1230.8726 294.1999 469.3888 261.1357 116.3312 372.1596 211.7873 267.8962 1243.6942;
	3.74 50.5361 87.5459 111.1651 14.5667 32.5211 31.8515 17.2936 28.0539 29.0954 53.7824 80.2328 120.7901 63.8054 199.5582 75.1824 93.2819 98.8509 89.2544 67.4253 10.6172 75.8825 22.5294 71.7666 96.3154 72.9315 12.0121 1239.4957 779.7384 779.7384 793.5855 114.315 297.5147 173.553 200.0384 332.6884 1198.2975 312.5008 462.2528 257.9877 115.8007 360.7671 180.5922 259.4056 1210.7797;
	3.1775 42.9354 89.4063 110.5154 14.6665 28.8208 31.0918 17.5076 27.1262 28.7037 53.0584 79.1526 119.1639 61.365 194.7232 73.3608 91.0218 96.4559 84.787 65.7206 10.3639 67.2486 68.8494 80.0155 96.6103 71.8493 12.7003 1305.1095 804.5912 804.5912 809.0723 112.9774 282.6233 169.1651 192.3877 343.2923 1193.4266 327.9453 451.7319 258.7777 115.8384 319.719 175.9655 260.1133 1205.8581;
	3.8343 51.8102 92.829 114.447 14.2593 32.1277 19.6631 18.1204 25.5286 28.5364 52.749 78.6912 118.4692 52.2731 199.1242 75.0189 93.079 98.6359 56.1162 67.3315 6.5544 74.9647 68.6612 82.7022 98.7392 74.584 13.44 1257.9112 807.462 807.462 814.4676 117.1987 187.0541 173.3114 163.8832 344.5171 1218.7304 328.6062 459.5945 264.4801 116.3022 356.4037 165.4049 265.9543 1231.4255;
	3.8827 52.4635 94.8101 116.7649 14.1414 33.6821 14.7759 18.306 25.8488 29.0447 53.6886 80.0928 120.5793 63.9501 200.6413 75.5905 93.7882 99.3875 83.3414 69.7126 4.9253 78.5915 71.0231 85.0337 102.0402 75.4532 13.6889 1328.4025 832.5514 832.5514 787.2822 108.8525 277.8048 179.4403 200.4922 355.2219 1280.3275 313.1547 439.6328 273.3219 121.651 373.6465 183.9531 275.4827 1293.6642;
	3.6662 49.5379 93.0963 116.0542 14.0967 32.4499 4.1951 18.4142 0.0 28.7741 53.1885 79.3468 119.4561 40.5691 199.8108 75.2775 93.3999 98.976 82.354 69.5422 1.3984 75.7164 68.7404 83.4779 100.1807 73.4489 13.5257 1263.9662 780.3111 780.3111 763.001 112.5326 274.5132 179.0018 127.1897 332.9327 1226.7634 316.043 163.4347 268.3413 120.3336 359.9774 196.2425 272.1975 1239.5422;
	3.6564 49.4058 90.0111 116.8688 14.0213 30.3789 0.9757 18.1953 0.0 28.3874 52.4737 78.2804 117.8507 23.6473 199.8958 75.3096 93.4397 99.0181 86.4803 71.0395 0.3252 70.8841 70.2327 83.2094 100.2644 71.8033 13.5961 1180.2254 705.3059 705.3059 733.3591 109.6583 288.2676 182.856 74.1376 300.9305 1082.8673 314.0102 1.0055 268.5655 121.6875 337.0034 189.6431 273.4203 1094.1472;
	3.7407 50.5448 90.4807 117.7744 14.5504 30.3355 1.1954 18.0518 1.2012 25.307 46.7796 69.786 105.0625 15.6702 199.0467 74.9897 93.0428 98.5975 85.4042 71.192 0.3985 70.7828 48.7199 85.4764 102.2751 71.599 12.9507 1044.5063 618.1442 618.1442 608.6265 98.8529 284.6808 183.2484 49.1281 263.7415 874.8175 274.5997 10.7131 273.9513 124.0005 336.5218 156.5833 275.7626 883.9302;
	3.6376 49.1515 91.1468 117.474 14.4078 26.2743 4.0487 17.5298 5.6379 30.278 55.9685 83.494 125.6997 0.0 204.4714 77.0334 95.5785 101.2847 78.8302 71.7411 1.3496 61.3068 75.2769 86.3619 102.9893 69.9495 13.2441 845.532 698.205 698.205 566.8753 107.8588 262.7675 184.6618 0.0 297.9008 809.9335 234.6591 13.9246 275.8642 123.7214 291.4699 138.4428 268.9491 818.3704;
	3.4034 45.987 91.4524 116.9937 14.5114 19.7575 0.2603 17.8169 0.9289 29.2398 54.0493 80.6309 121.3893 0.0 205.443 77.3995 96.0327 101.766 43.7455 71.5726 0.0868 46.1008 74.9047 85.6821 103.6704 72.2468 13.5107 607.1888 743.4995 743.4995 544.1012 111.9143 145.8184 184.2279 0.0 317.2264 829.2423 234.0163 0.0 277.6885 123.7194 219.1765 140.1284 273.3693 837.8802;
	3.8181 51.5903 92.7096 116.3202 14.6174 21.3379 0.3212 17.612 25.2651 26.5984 49.1668 73.3472 110.4238 45.2849 202.1851 76.1721 94.5098 100.1522 59.5403 71.3852 0.1071 49.7883 75.144 84.1633 103.6948 71.6579 13.5697 642.7807 732.8998 732.8998 559.2143 109.7219 198.4678 183.7457 141.9744 312.7039 625.6429 255.3034 5.3885 277.754 123.1333 236.7079 147.2059 271.6528 632.16;
	3.6182 48.89 87.4291 112.0742 14.1122 19.9669 0.5136 17.6203 18.202 23.9965 44.3573 66.1723 99.622 33.5413 201.2205 75.8086 94.0589 99.6743 59.0292 71.5749 0.1712 46.5894 75.1259 81.7127 98.5444 71.5126 13.127 570.8355 724.3969 724.3969 530.7817 94.5687 196.7641 184.2339 105.1564 309.076 708.7494 271.6739 0.0031 263.9582 121.8885 221.4991 154.7066 266.0862 716.1322;
	3.6638 49.506 86.8516 112.4868 14.4827 19.0981 0.0 18.1409 0.5653 25.6229 47.3636 70.6571 106.3739 21.2362 195.8049 73.7684 91.5274 96.9917 68.0931 70.3783 0.0 44.5623 73.5265 83.3317 97.9322 73.5401 13.4443 406.6787 669.7549 669.7549 475.9577 88.2476 226.9769 181.1539 66.5785 285.7621 590.8913 256.5383 0.0 262.3184 121.0229 211.8621 152.5793 253.5974 597.0464;
	3.1969 43.1971 84.6085 110.9821 14.0053 9.2396 0.0 17.6052 0.0861 27.6062 51.0296 76.1261 114.6074 10.5875 184.8357 69.6358 86.4 91.5582 58.3521 69.9754 0.0 21.5591 70.5468 82.3407 96.668 71.913 13.3248 412.7039 526.2607 526.2607 405.973 85.2705 194.507 180.117 33.1931 224.5379 474.2169 220.3585 0.0 258.9323 122.3102 102.4983 140.3331 245.604 479.1567;
	3.3608 45.4115 86.7256 113.6597 14.3258 18.4415 0.0 18.1732 1.4962 28.692 53.0368 79.1205 119.1154 23.2779 193.3251 72.8341 90.3683 95.7634 58.6189 70.1578 0.0 43.0301 73.989 83.0534 100.1397 72.7276 13.3213 957.9639 468.1167 468.1167 303.8357 85.3787 195.3963 180.5863 72.9793 199.7298 825.9012 235.8415 90.7625 268.2315 123.4658 204.5773 126.7484 251.9956 834.5043;
	3.1479 42.5352 86.7094 109.5703 14.3831 18.0658 0.0945 17.6363 0.634 28.9879 53.5837 79.9363 120.3437 44.3991 198.8174 74.9033 92.9356 98.484 74.7289 70.4668 0.0315 42.1535 72.6394 82.4394 96.6736 72.325 13.3867 1202.8901 561.6911 561.6911 222.5614 60.8895 249.0965 181.3817 139.1971 239.6549 1002.7646 210.5404 123.0195 258.9472 121.4271 200.4099 164.6249 274.0943 1013.2101;
	2.4968 33.7376 86.9886 109.4023 14.3385 32.0333 2.6637 18.2846 0.0499 25.1342 46.4602 69.3095 104.345 59.2523 183.1329 68.9943 85.604 90.7147 53.4881 68.6567 0.8879 74.7444 52.3733 83.3209 96.7745 71.5971 13.3497 1143.6366 665.8644 665.8644 299.2373 48.9834 178.2935 176.7225 185.7639 284.1021 1102.1195 144.7822 242.8512 259.2175 119.144 355.3563 161.0199 275.0701 1113.5999;
	3.8471 51.983 87.4111 74.0559 14.4263 32.6272 4.9642 17.4159 1.2391 17.3358 32.0449 47.8047 71.9697 65.2169 195.7397 73.7438 91.4969 96.9594 48.8861 71.4723 1.6547 76.1302 45.6808 83.1682 99.5516 72.5486 13.2543 1248.689 705.2519 705.2519 376.0719 47.9103 162.9536 183.9699 204.4638 300.9075 1160.0927 116.9711 42.2306 266.6562 116.2327 361.9448 182.3074 272.1957 1172.177;
	3.8653 52.2284 86.7736 114.1678 14.3571 33.4761 10.4788 18.1223 4.1531 15.5174 28.6836 42.7903 64.4205 64.1605 192.924 72.683 90.1808 95.5647 68.6914 69.1219 3.4929 78.111 65.7796 82.4979 99.6262 72.3799 13.3355 1226.5961 649.0612 649.0612 601.7939 42.1589 228.9713 177.92 201.152 276.9328 1180.0016 152.7782 143.027 266.8559 119.8817 371.362 186.9392 277.1145 1192.2932;
	3.7811 51.0913 86.4987 111.2178 14.3943 32.1885 1.9512 17.4076 27.048 29.6422 54.7931 81.7405 123.0599 63.3591 197.432 74.3814 92.288 97.7977 71.7792 69.6633 0.6504 75.1064 72.7594 86.1724 96.4998 69.789 13.1946 1259.7034 675.2531 675.2531 561.2365 67.989 239.264 179.3135 198.6392 288.108 1249.9135 218.0711 425.4529 258.4817 115.32 357.0773 190.7956 262.77 1262.9334;
	3.6889 49.8446 86.5365 111.2621 14.404 32.5709 3.5632 17.8508 26.495 29.5591 54.6396 81.5116 122.7152 63.0052 192.7958 72.6347 90.1208 95.5012 66.0387 69.7176 1.1877 75.9988 69.9801 84.1987 84.5402 68.6512 12.6795 1296.2463 741.8331 741.8331 601.0569 109.4756 220.1291 179.4532 197.5298 316.5155 1243.3955 244.9042 451.8926 226.4471 115.3247 361.3199 196.4883 269.2164 1256.3475;
	3.6627 49.4912 86.5395 106.2685 14.3484 32.0025 28.926 17.3672 26.8671 27.4339 50.7111 75.6509 113.8921 66.2133 192.5701 72.5497 90.0153 95.3894 75.9889 69.8361 9.642 74.6725 70.1237 82.6718 84.3006 68.6539 12.1759 1271.7095 707.3868 707.3868 583.8452 111.9544 253.2964 179.7584 207.5877 301.8184 1132.0181 234.2957 463.1507 225.805 116.6422 355.0144 185.9089 267.1287 1143.8099;
];