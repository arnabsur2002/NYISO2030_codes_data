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
	3.0626 41.3821 86.2748 110.7297 14.2502 14.8884 13.3707 17.8944 25.8861 23.1578 42.8068 63.8593 96.1399 7.0119 15.4343 5.8148 7.2146 7.6454 14.3301 29.1296 4.4569 34.7396 54.4926 81.1549 94.332 70.2229 7.7227 638.6556 384.6867 384.6867 193.8078 32.2194 47.7672 74.9797 21.9832 164.133 463.7071 34.6956 271.1588 252.6751 10.7795 165.1622 115.7469 237.4485 468.5374;
	2.8304 38.2445 86.6567 107.1012 13.6291 16.401 12.9521 16.7127 25.4162 24.0049 44.3728 66.1954 99.6568 5.1041 6.37 2.3998 2.9776 3.1554 12.5118 15.7605 4.3174 38.269 59.0071 72.3883 87.8631 69.2533 6.2364 649.7563 379.6177 379.6177 161.3342 29.3675 41.7059 40.5675 16.0022 161.9702 468.5428 40.8126 282.182 235.3475 10.1576 181.942 107.156 217.23 473.4234;
	2.8921 39.079 87.5209 108.5435 14.018 14.1253 10.8733 17.1035 25.0688 24.5551 45.3897 67.7126 101.9409 7.2536 8.1045 3.0533 3.7884 4.0145 19.3366 22.8112 3.6244 32.9589 65.1834 79.4657 92.8764 70.5727 7.1027 615.2834 357.8675 357.8675 141.6356 29.8422 64.4552 58.7162 22.7412 152.6901 388.3715 30.2158 206.326 248.776 4.221 156.6962 87.6773 210.9959 392.417;
	2.8606 38.6536 88.7507 108.2997 14.2644 14.0257 11.0428 17.4393 25.9649 22.6929 41.9475 62.5773 94.2098 9.0245 7.0804 2.6675 3.3097 3.5073 11.2496 24.261 3.6809 32.7266 64.215 73.7332 96.1627 73.5349 9.1958 505.7519 276.8286 276.8286 159.0547 28.4217 37.4987 62.4479 28.2931 118.1135 315.7175 27.0134 165.5266 257.5786 0.0057 155.5914 79.6355 210.0428 319.0062;
	2.2496 30.3974 89.4836 110.6598 14.3124 15.1443 9.7864 17.1453 15.7084 21.3445 39.4551 58.8592 88.6122 12.4726 15.7622 5.9383 7.3679 7.8078 20.8987 28.3553 3.2621 35.3367 56.1044 81.2359 96.9076 72.8704 9.1688 326.719 205.1739 205.1739 129.6766 25.5346 69.6623 72.9866 39.1034 87.5409 172.9085 24.4215 155.8934 259.5739 5.1539 168.0008 82.9778 218.8442 174.7096;
	2.9935 40.4488 91.205 113.419 14.0568 23.6822 12.7844 17.378 10.6033 21.0153 38.8465 57.9514 87.2455 27.6013 19.5249 7.3559 9.1268 9.6716 35.4579 31.5328 4.2615 55.2584 61.0878 80.9448 97.083 71.0412 7.6709 317.93 202.0575 202.0575 123.7007 25.5659 118.1932 81.1655 86.5339 86.2112 160.6974 26.215 193.4995 260.0437 2.2412 262.7142 92.3103 222.1596 162.3713;
	2.4593 33.2308 91.1841 112.7322 13.8239 24.3558 12.4184 16.3883 11.1096 26.3639 48.7334 72.7006 109.4503 41.0176 25.1874 9.4892 11.7736 12.4766 36.7247 39.1142 4.1395 56.8302 66.3991 82.2964 98.0639 69.7356 10.7267 267.7094 235.6195 235.6195 104.6381 17.9504 122.4155 100.6801 128.5958 100.531 189.3176 17.9937 153.9192 262.6711 3.3441 270.187 95.6781 230.4708 191.2897;
	1.7242 23.2981 71.591 113.57 14.3171 20.7093 13.8563 17.2535 19.5926 29.393 54.3325 81.0534 122.0254 45.7887 27.7453 10.4529 12.9693 13.7436 55.208 57.7824 4.6188 48.3217 73.2432 83.7727 98.6824 70.7029 12.0132 148.3606 197.8492 197.8492 97.5756 10.7815 184.0268 148.7319 143.5536 84.4157 131.8309 15.8409 192.2527 264.3278 5.6286 229.7354 94.4211 203.8197 133.2042;
	2.5393 34.311 86.4493 104.4599 14.5656 24.8757 12.5798 18.0294 22.4414 30.1401 55.7135 83.1136 125.1271 49.0674 21.9169 8.2571 10.2449 10.8565 61.9745 55.4632 4.1933 58.0433 75.3963 83.3494 99.6645 70.3032 11.8465 146.4048 164.4235 164.4235 95.4316 7.9931 206.5815 142.7624 153.8328 70.154 142.9516 15.6774 157.7298 266.9584 16.4361 275.9545 78.029 230.1622 144.4406;
	1.6381 22.1338 82.9881 101.5466 11.9545 14.066 11.1937 17.6896 26.2273 30.2879 55.9867 83.5212 125.7407 40.3367 75.5702 28.4706 35.3247 37.4336 76.2971 52.1189 3.7312 32.8207 72.9435 68.2621 96.3199 69.8541 11.8788 249.3948 248.3708 248.3708 114.4081 6.7628 254.3238 134.1541 126.461 105.9715 245.128 18.4958 158.2515 257.9997 3.0241 156.0388 67.7618 203.7926 247.6815;
	0.6283 8.4903 78.05 97.2299 10.6096 22.9971 15.6316 17.2369 26.6032 29.0509 53.7001 80.11 120.6052 46.1182 104.216 39.2628 48.7149 51.6233 66.0535 38.3657 5.2105 53.66 72.3886 76.7234 92.6304 72.4616 11.4403 384.7365 297.0646 297.0646 162.7588 11.8049 220.1783 98.7535 144.5868 126.7476 343.8969 23.1373 173.1152 248.1171 2.3224 255.115 75.9257 183.9449 347.4792;
	1.4368 19.4141 80.7551 78.3972 9.2151 24.7099 20.9914 17.6477 26.64 29.0704 53.7361 80.1637 120.6861 45.4677 123.6151 46.5713 57.7829 61.2326 78.6415 56.211 6.9971 57.6565 72.1625 72.5446 95.102 72.5774 11.7387 482.2785 358.3146 358.3146 280.925 16.1857 262.1383 144.6873 142.5475 152.8809 437.7248 42.3888 185.3549 254.7376 6.0795 274.1155 95.1025 188.6159 442.2845;
	2.6517 35.8301 88.7757 91.0437 12.1082 26.9738 22.2218 17.9262 27.1037 29.8082 55.1 82.1984 123.7492 50.1833 42.4807 16.0044 19.8573 21.0428 78.5814 61.693 7.4073 62.9388 73.3597 81.8748 102.8333 72.3172 11.5393 653.931 432.9622 432.9622 321.7834 22.7741 261.938 158.7979 157.3314 184.7305 601.4352 55.4233 223.6773 275.4463 24.9956 299.2293 126.9422 239.2399 607.7002;
	3.1605 42.7054 84.1057 98.7924 13.9537 26.2632 22.2558 17.0323 26.4896 29.7058 54.9108 81.9161 123.3242 45.5615 58.6584 22.0992 27.4194 29.0564 79.4081 51.1162 7.4186 61.2809 66.2241 79.6303 99.0172 70.9072 10.3021 757.6413 555.1481 555.1481 390.1505 27.4282 264.6935 131.5732 142.8415 236.8632 697.6365 74.1366 265.9213 265.2246 0.4809 291.3469 127.9663 254.8974 704.9035;
	3.5445 47.8943 85.8592 97.8886 13.9591 30.3055 24.8756 16.7091 26.4025 25.6303 47.3773 70.6776 106.4047 55.1547 91.1216 34.3295 42.5941 45.137 81.1674 56.0223 8.2919 70.7128 47.2806 81.5226 96.8164 69.9585 11.5157 1003.657 644.0322 644.0322 496.1869 33.5184 270.5579 144.2016 172.9173 274.7871 894.6229 104.0042 401.7793 259.3296 2.2452 336.189 149.4586 246.2172 903.9419;
	3.5758 48.3169 86.9951 101.955 14.5283 31.61 27.3103 18.0299 26.7481 21.1579 39.1101 58.3445 87.8373 62.6562 130.1236 49.0233 60.8252 64.4566 88.3278 64.2641 9.1034 73.7568 47.608 82.8383 103.3724 71.3825 12.5108 1093.9719 703.0351 703.0351 657.0572 43.6432 294.4262 165.4159 196.4357 299.9616 964.5096 150.118 357.2802 276.8904 5.0582 350.6608 160.92 267.1339 974.5566;
	3.6 48.6439 88.8751 110.9814 14.8218 32.7836 29.6215 18.1652 27.7656 22.4164 41.4363 61.8148 93.0618 63.7769 166.6421 62.7814 77.8955 82.546 90.8789 71.7703 9.8738 76.495 36.6749 83.204 100.9516 73.2021 12.2859 1069.0499 731.7212 731.7212 697.9907 77.9769 302.9295 184.737 199.9493 312.201 984.1324 195.2981 395.4248 270.406 0.0 363.6789 194.909 277.1298 994.3838;
	3.1339 42.3463 88.489 109.0629 14.2322 32.0137 29.513 18.1337 28.0104 20.2707 37.4701 55.8981 84.1542 64.2055 179.6437 67.6797 83.973 88.9863 86.3265 70.1579 9.8377 74.6987 39.6498 82.2816 102.4407 70.6379 12.6518 1183.5507 737.8385 737.8385 679.6965 93.7061 287.755 180.5865 201.2929 314.8111 1053.734 213.167 441.4558 274.3948 94.8317 355.1391 160.3243 253.1425 1064.7104;
	3.5771 48.335 88.1425 112.0465 14.5843 33.2079 31.3292 12.7477 28.2225 21.9899 40.648 60.6388 91.2914 62.5344 183.7777 69.2372 85.9054 91.0341 84.8191 67.9796 10.4431 77.4851 50.8465 78.2217 99.917 57.2922 11.7899 1217.0323 780.0017 780.0017 696.8831 107.993 282.7303 174.9796 196.0539 332.8007 1078.5264 236.3402 453.0712 267.6347 109.3814 368.3864 204.0756 255.1289 1089.761;
	3.0505 41.2193 88.9411 101.016 14.4677 32.0872 31.4928 8.1158 27.3364 21.0107 38.838 57.9386 87.2262 61.7804 189.9232 71.5525 88.7781 94.0782 85.1261 67.1524 10.4976 74.8701 46.5817 27.369 39.773 55.9059 9.4298 1164.2286 754.5212 754.5212 674.8352 111.0961 283.7538 172.8504 193.6898 321.929 1063.5821 239.0136 449.8604 106.5347 114.4343 355.9539 193.2895 214.3551 1074.6611;
	3.5336 47.7464 91.4325 113.1563 14.2733 31.9604 31.9755 18.681 17.9967 21.8074 40.3107 60.1356 90.5339 62.966 186.672 70.3276 87.2583 92.4677 83.6044 66.0532 10.6585 74.5744 35.5168 73.2538 103.2215 70.6563 13.5862 1176.4651 778.1104 778.1104 714.4493 107.8904 278.6813 170.021 197.4068 331.9938 1051.9213 240.3868 452.4708 276.4862 118.585 354.5478 198.5462 261.594 1062.8788;
	3.8123 51.5129 92.9498 120.5374 14.6858 33.7938 32.2005 18.3732 10.5455 24.8335 45.9043 68.4801 103.0965 62.192 184.9432 69.6763 86.4502 91.6114 80.3763 70.0086 10.7335 78.8523 49.6739 86.3401 105.1876 74.9637 13.5399 1236.7391 798.9112 798.9112 724.9321 112.9058 267.9209 180.2023 194.9803 340.8688 1160.0169 245.5312 461.1078 281.7525 123.6215 374.8863 201.2487 244.9689 1172.1005;
	3.7421 50.5634 92.7696 114.7626 14.6697 33.139 31.7289 17.9379 18.7234 21.4341 39.6205 59.106 88.9838 62.0024 186.2088 70.1531 87.0418 92.2383 83.8329 66.7269 10.5763 77.3244 50.5992 83.8943 94.7926 75.2062 13.5643 1230.9743 772.8842 772.8842 693.9871 106.7641 279.4429 171.7553 194.3858 329.7639 1142.5455 257.296 444.0889 253.9087 122.0479 367.6222 197.685 247.6231 1154.447;
	3.8082 51.4567 91.251 108.8228 14.2338 33.0189 33.6136 17.8537 10.0634 18.771 34.698 51.7625 77.9282 62.4366 186.3769 70.2164 87.1204 92.3216 78.6999 64.2629 11.2045 77.0442 48.8298 85.652 104.5959 73.2155 13.5193 1245.6369 770.553 770.553 697.1031 108.3926 262.3331 165.4129 195.747 328.7693 1172.4778 263.0592 450.5898 280.1675 122.8786 366.2902 199.7675 261.1872 1184.6911;
];