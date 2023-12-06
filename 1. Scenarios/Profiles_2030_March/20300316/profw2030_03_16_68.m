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
	3.8302 51.7546 91.3042 114.1113 15.4163 33.8764 29.9582 18.8163 27.9002 28.727 53.1015 79.217 119.2607 67.7321 194.5673 73.3021 90.9489 96.3787 85.8764 70.4828 9.9861 79.0448 74.3385 87.4594 105.0749 76.0952 13.8604 1301.3962 758.924 758.924 576.5055 115.527 286.2548 181.4229 212.3494 323.8076 1253.7465 249.3879 472.7157 281.4507 116.3238 375.8017 195.6959 285.6813 1266.8063;
	3.8209 51.6283 88.9983 114.4912 15.3997 33.6064 26.8452 18.5928 27.5845 29.6844 54.8712 81.8571 123.2354 66.6756 183.6044 69.1719 85.8244 90.9482 85.6509 69.9485 8.9484 78.4149 74.2954 88.141 104.8898 75.7803 13.6545 1312.8884 747.9693 747.9693 622.6539 108.5941 285.5031 180.0477 209.037 319.1336 1220.1756 241.3798 465.375 280.9548 115.3177 372.8067 184.198 282.7126 1232.8857;
	3.8421 51.9157 89.4286 114.4045 15.1923 33.9602 22.4299 18.1521 27.8595 30.1181 55.6729 83.053 125.0358 69.6065 194.8784 73.4193 91.0943 96.5328 89.305 70.2861 7.4766 79.2404 74.3881 89.1262 102.8087 75.8414 13.5251 1271.0896 725.691 725.691 633.4218 103.573 297.6834 180.9166 218.2257 309.6281 1231.9578 238.8955 442.3308 275.3805 117.6958 376.7315 186.2111 275.7988 1244.7907;
	3.8745 52.3534 92.6451 116.942 15.1205 33.2095 25.0788 17.99 28.279 30.5191 56.4141 84.1587 126.7004 69.4339 202.7998 76.4036 94.7971 100.4566 91.9356 70.4699 8.3596 77.4888 74.5221 89.184 103.6661 73.2153 13.6853 1287.4096 743.378 743.378 638.0221 110.2935 306.4521 181.3898 217.6848 317.1746 1229.5761 259.9786 455.9436 277.677 117.476 368.4041 158.5783 282.5927 1242.3842;
	3.8854 52.4996 93.7593 117.0647 15.3829 33.7657 31.0156 18.5754 28.1315 30.824 56.9778 84.9997 127.9665 68.4982 202.8706 76.4303 94.8302 100.4917 92.7066 71.7772 10.3385 78.7867 74.5902 89.5255 105.1567 74.9341 13.5083 1308.7603 718.5466 718.5466 654.8757 112.9375 309.0218 184.7547 214.7511 306.5799 1224.0987 250.8924 476.2674 281.6699 118.9376 374.5747 195.4275 283.391 1236.8497;
	3.8457 51.9638 91.8282 115.6643 15.3224 32.999 29.4814 18.1415 27.7018 30.025 55.5007 82.7962 124.6492 65.7219 203.1552 76.5375 94.9632 100.6327 92.9363 70.7405 9.8271 76.9977 73.4649 88.4009 102.3572 73.7469 13.0603 1306.3167 735.9902 735.9902 685.9015 113.4285 309.7876 182.0863 206.0469 314.0225 1186.5566 251.6718 455.2529 274.1711 115.8395 366.0692 176.9966 275.9878 1198.9166;
	3.8158 51.5597 92.8079 118.7276 15.0829 33.6101 30.3648 18.5977 27.7105 30.0077 55.4687 82.7484 124.5773 65.1146 203.8529 76.8004 95.2894 100.9783 92.6471 71.0275 10.1216 78.4236 72.7721 88.9577 103.959 74.127 13.6521 1271.502 699.8938 699.8938 653.8727 103.6895 308.8236 182.825 204.1431 298.6213 1180.2656 273.4283 457.2714 278.4616 117.254 372.8483 156.7902 273.7326 1192.56;
	3.8013 51.3635 91.7256 117.7098 14.9492 34.1592 28.6168 18.3677 26.4231 30.0523 55.5513 82.8716 124.7627 66.1538 199.2289 75.0583 93.1279 98.6878 90.7079 68.3433 9.5389 79.7048 73.0604 88.6664 101.8284 74.0362 12.9819 1266.9483 682.7262 682.7262 616.0999 109.2303 302.3597 175.9158 207.4011 291.2965 1181.2435 264.6241 450.1283 272.7546 113.6558 378.9395 165.1007 277.7019 1193.5482;
	3.8253 51.6876 91.2444 117.3586 15.2922 34.8034 30.09 18.2603 26.8504 30.429 56.2476 83.9104 126.3266 66.3296 196.3391 73.9696 91.7771 97.2563 90.9165 68.3039 10.03 81.208 73.3983 88.752 102.1815 74.6542 12.8627 1281.5502 711.5535 711.5535 609.3654 115.2993 303.0551 175.8144 207.9523 303.5962 1226.7734 283.9295 460.4766 273.7004 117.1661 386.086 198.7213 278.3542 1239.5523;
	3.7883 51.1884 94.0272 119.3861 15.4028 34.8184 26.6955 18.8461 28.1502 30.872 57.0664 85.1319 128.1656 68.8888 191.6899 72.218 89.6039 94.9534 87.2971 68.6599 8.8985 81.243 74.1174 89.9736 105.2341 74.3581 13.4001 1265.1183 750.8959 750.8959 606.3231 117.1412 290.9904 176.7308 215.9758 320.3823 1194.4988 312.3581 471.6428 281.8772 122.8269 386.2524 206.2633 281.1492 1206.9415;
	3.7507 50.6802 91.2843 117.2765 15.2559 33.8656 27.4745 18.5411 27.1364 30.8062 56.9448 84.9505 127.8925 66.89 191.154 72.0162 89.3534 94.6879 86.3083 68.9042 9.1582 79.0198 73.9275 89.879 104.1673 74.8971 13.2217 1278.5552 746.3473 746.3473 666.9351 116.1597 287.6944 177.3595 209.7092 318.4415 1243.1785 305.3939 465.5612 279.0195 119.6167 375.6826 202.2653 278.4437 1256.1283;
	3.8219 51.6421 94.1171 119.9644 15.3548 34.2493 27.7627 18.6601 27.4402 30.0194 55.4903 82.7806 124.6258 68.7976 196.0664 73.8669 91.6497 97.1213 87.2284 68.7616 9.2542 79.915 74.4139 89.9678 105.0056 73.8843 13.5956 1270.5791 743.82 743.82 685.977 117.1401 290.7612 176.9925 215.6897 317.3632 1234.0134 314.3817 473.3739 281.265 120.7522 379.9389 209.3488 285.3762 1246.8677;
	3.7985 51.3254 92.8498 116.6161 15.3442 33.9589 28.3212 18.26 26.6531 30.3311 56.0666 83.6404 125.9201 69.3558 194.2695 73.1899 90.8097 96.2312 88.4387 69.5173 9.4404 79.2373 73.7543 88.9742 101.0285 75.0134 13.3582 1275.4674 751.7849 751.7849 689.3381 113.1587 294.7957 178.9377 217.4399 320.7616 1237.2057 315.5637 460.6104 270.6119 119.9878 376.7169 212.4608 274.1338 1250.0933;
	3.8976 52.6651 94.9058 119.8055 15.4206 34.671 25.9834 18.5836 25.8542 30.5961 56.5565 84.3712 127.0203 69.3577 197.9479 74.5757 92.5291 98.0533 85.7358 71.5055 8.6611 80.899 74.13 89.9367 104.5709 75.5309 13.9873 1257.4973 746.0895 746.0895 671.7694 111.0927 285.786 184.0553 217.4457 318.3315 1210.8594 302.1441 439.543 280.1005 116.9834 384.6171 211.7579 280.5846 1223.4725;
	3.8852 52.4974 95.1752 120.0574 15.3891 34.7355 23.3416 17.9341 26.4348 30.4716 56.3262 84.0276 126.5032 66.7626 199.7258 75.2455 93.3602 98.9339 89.1734 71.186 7.7805 81.0496 74.7002 89.5211 102.7746 73.0708 13.5867 1255.3339 767.1901 767.1901 644.3995 111.8252 297.2448 183.2331 209.3097 327.3345 1211.3523 304.3622 446.2701 275.2891 118.7166 385.333 214.6337 280.0717 1223.9705;
	3.8392 51.8757 94.2018 119.0876 15.2651 33.9642 24.253 17.9481 27.319 30.4664 56.3166 84.0133 126.4815 64.164 193.9348 73.0638 90.6532 96.0654 86.4957 70.4799 8.0843 79.2497 72.7869 89.4396 102.7069 71.4021 13.1114 1200.7264 729.1573 729.1573 603.8951 102.4796 288.3189 181.4156 201.1627 311.1071 1131.1542 284.3463 447.7126 275.1076 119.9932 376.7758 204.7301 280.7402 1142.937;
	3.7535 50.7181 94.5956 116.6638 15.1014 32.6614 21.7953 17.7162 26.3599 30.4494 56.2852 83.9664 126.411 66.8673 194.6996 73.3519 91.0107 96.4442 87.5567 70.4571 7.2651 76.21 73.8826 87.515 102.8354 61.2385 12.493 1154.2816 678.1386 678.1386 566.2983 101.0252 291.8556 181.3568 209.6379 289.3391 1115.6457 274.6092 442.207 275.4518 121.9162 362.3242 186.0391 266.3578 1127.267;
	3.5234 47.6089 94.3535 110.8039 14.5043 29.2706 18.5315 12.5952 26.2174 29.7126 54.9233 81.9348 123.3524 65.6136 188.6218 71.0622 88.1697 93.4336 83.2718 66.3944 6.1772 68.2982 72.1443 84.9444 98.8238 69.057 10.1351 1108.8752 622.9453 622.9453 527.8484 92.6346 277.5728 170.8993 205.7076 265.79 1075.425 228.7305 438.4677 264.7066 122.8877 324.709 156.0561 246.2437 1086.6273;
	3.468 46.8597 87.5333 102.0092 15.2101 25.951 14.9203 7.3642 25.8428 29.055 53.7078 80.1215 120.6225 63.2681 191.5471 72.1643 89.5371 94.8826 84.307 69.4493 4.9734 60.5524 72.9608 84.248 94.9342 61.5217 8.8373 1137.2124 669.1917 669.1917 582.4425 102.6875 281.0235 178.7627 198.3541 285.5218 1068.9097 247.9902 436.3534 254.2881 117.2868 287.8833 120.986 223.3304 1080.0442;
	2.1189 28.6315 78.0591 60.9754 14.8912 21.5558 23.4806 8.6512 23.8942 29.1783 53.9356 80.4613 121.134 61.5677 183.6802 69.2004 85.8598 90.9858 85.4082 67.0391 7.8269 50.2968 71.9098 82.6263 84.5134 44.1072 8.3012 1138.4452 694.4242 694.4242 650.5401 108.1362 284.6941 172.5589 193.023 296.2877 1047.3807 263.1203 404.646 226.3752 120.3841 239.1254 98.0934 189.1716 1058.2909;
	1.6678 22.5351 78.3597 63.8218 14.4492 11.7055 21.7667 7.5117 25.3425 28.5837 52.8365 78.8217 118.6656 63.9803 180.5349 68.0155 84.3896 89.4277 83.3361 64.0642 7.2556 27.3129 70.5717 81.6509 73.9123 50.3175 8.6331 1111.111 705.994 705.994 615.4507 110.9878 277.7871 164.9014 200.5869 301.2241 1033.084 255.8491 429.9475 197.9794 115.1771 129.8533 69.5838 179.6174 1043.8453;
	1.7072 23.0676 81.9928 78.3347 14.3696 15.8091 23.0335 10.6537 25.956 29.3669 54.2843 80.9815 121.9171 62.161 181.6512 68.4361 84.9114 89.9807 84.7721 63.7827 7.6778 36.888 72.0271 81.513 85.963 66.037 9.6577 1040.4331 635.9441 635.9441 555.8095 102.4406 282.5738 164.1767 194.8832 271.3362 905.4546 219.1372 438.4167 230.2579 121.0189 175.3759 62.5317 193.3689 914.8865;
	2.7002 36.4862 79.5668 82.1461 14.0891 18.1102 23.1799 13.5846 26.2606 28.8286 53.2892 79.497 119.6823 64.6718 173.8619 65.5014 81.2703 86.1223 86.6818 62.961 7.7266 42.2571 71.9728 85.3755 88.6543 67.2266 9.937 936.9148 696.7979 696.7979 610.1422 108.8123 288.9393 162.0619 202.7549 297.3004 968.3413 249.8916 429.2666 237.4669 121.0815 200.9024 79.619 215.4222 978.4282;
	2.7839 37.6169 83.7462 75.608 13.97 21.8137 18.6843 8.5809 25.5971 28.9098 53.4394 79.721 120.0196 63.2315 169.7404 63.9487 79.3438 84.0807 86.8485 66.9609 6.2281 50.8986 73.634 82.5718 70.6636 62.4387 6.0919 816.0486 640.3194 640.3194 574.1903 107.1094 289.4952 172.3574 198.2392 273.203 824.1591 240.7799 363.5919 189.2775 120.013 241.9863 91.2291 216.9119 832.7441;
];