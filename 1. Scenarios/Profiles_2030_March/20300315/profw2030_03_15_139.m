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
	3.8994 52.6897 93.0164 115.0656 15.2864 32.5046 32.1143 17.9526 11.9112 17.848 32.9918 49.2173 74.0963 52.3504 205.7632 77.5201 96.1823 101.9245 85.1933 73.8691 10.7048 75.844 28.9333 88.1891 100.3121 74.8331 13.7186 1324.5677 830.1889 830.1889 759.3144 121.5963 283.9777 190.1391 164.1256 354.2139 1250.2772 276.5412 474.2965 268.693 119.5766 360.5839 205.999 276.358 1263.3009;
	3.9795 53.7719 95.0191 117.5873 15.4097 34.1739 33.0028 18.4023 14.1309 15.2107 28.1167 41.9445 63.1473 61.8368 203.827 76.7906 95.2773 100.9655 84.3136 73.689 11.0009 79.7391 32.369 89.0084 101.4762 76.0737 13.694 1346.7084 842.9929 842.9929 786.2742 123.3719 281.0453 189.6756 193.8667 359.677 1359.2052 277.4652 479.2203 271.8111 120.2463 379.1023 214.4625 281.3953 1373.3636;
	3.893 52.603 94.1094 112.9852 15.4056 34.0473 33.2815 18.8008 23.9162 15.6609 28.9489 43.186 65.0163 55.1914 193.3138 72.8299 90.363 95.7578 84.9253 73.8844 11.0938 79.4437 29.0145 89.9972 104.9683 76.3274 13.6675 1323.8883 806.8208 806.8208 748.4469 123.6844 283.0845 190.1787 173.0324 344.2435 1308.6724 294.9806 474.9231 281.165 117.2595 377.698 212.2022 280.4754 1322.3044;
	3.7934 51.2572 93.7067 114.5207 15.422 33.8757 32.1181 18.9033 28.3139 30.1743 55.7768 83.2079 125.2691 63.2204 202.8917 76.4383 94.8401 100.5022 85.8761 73.4798 10.706 79.0432 30.0139 89.7158 104.4151 76.2154 13.5421 1303.5986 782.8719 782.8719 741.8504 122.9246 286.2536 189.1372 198.2044 334.0253 1237.4791 312.1071 470.2179 279.6832 119.0401 375.794 180.5616 269.5285 1250.3695;
	3.268 44.1579 94.7339 117.5761 15.3709 30.6265 31.097 18.3396 27.6493 30.1871 55.8005 83.2433 125.3224 57.8471 204.9854 77.2271 95.8188 101.5393 86.8016 73.6744 10.3657 71.4618 74.3339 89.625 104.5201 75.6932 12.9108 1323.6928 773.9022 773.9022 750.1295 120.3271 289.3386 189.638 181.3584 330.1983 1170.4973 326.9632 453.4589 279.9644 119.128 339.7498 180.8349 275.1359 1182.69;
	3.8011 51.3609 94.3948 111.3715 14.6654 30.558 18.0951 17.9813 25.6065 28.8161 53.2661 79.4625 119.6303 48.1399 204.0945 76.8914 95.4023 101.098 60.2216 73.8891 6.0317 71.302 73.5807 88.38 103.8932 74.7172 13.2794 1249.7236 758.7891 758.7891 744.2175 120.4696 200.7386 190.1907 150.9252 323.75 1191.9753 313.7654 444.9032 278.2855 118.3561 338.9903 156.3036 279.5065 1204.3918;
	3.7471 50.6311 94.9802 115.9194 14.6951 31.978 13.4755 18.3493 25.8489 29.5961 54.7079 81.6134 122.8685 63.4321 201.4347 75.8894 94.159 99.7805 88.7958 73.993 4.4918 74.6154 75.0895 89.5268 103.591 75.0534 13.4869 1264.1981 768.6726 768.6726 749.4485 115.7835 295.986 190.4583 198.8681 327.967 1201.0733 319.0465 426.2185 277.476 121.3535 354.7428 172.0814 277.0086 1213.5845;
	3.6159 48.8591 93.3074 113.6648 14.8309 31.3089 0.0 18.3618 0.9167 28.1291 51.9963 77.5682 116.7785 39.8252 198.9278 74.9449 92.9872 98.5386 83.6219 73.6652 0.0 73.0542 72.3236 88.8703 101.8582 75.4507 13.6287 1240.1872 719.1147 719.1147 714.928 112.454 278.7398 189.6143 124.8573 306.8223 1158.1514 297.9682 155.91 272.8344 121.8808 347.3203 190.8052 276.7555 1170.2155;
	3.6011 48.6591 92.5906 111.2439 15.051 29.8972 0.004 18.2028 10.3213 28.9808 53.5706 79.9167 120.3142 22.6513 202.6687 76.3543 94.7358 100.3917 88.0139 73.665 0.0013 69.7602 73.4009 87.172 101.4647 73.1888 13.5447 1135.7616 664.0029 664.0029 716.1136 110.3624 293.3796 189.614 71.015 283.3079 1007.5816 288.137 11.7212 271.7804 120.9073 331.66 178.1803 279.5402 1018.0772;
	3.6477 49.2889 94.3856 116.4996 15.0036 30.1489 0.0 18.8497 13.4313 25.0691 46.3398 69.1299 104.0746 15.8921 196.3919 73.9895 91.8018 97.2825 89.4501 73.9774 0.0 70.3475 52.727 87.8188 103.5547 75.5825 13.7651 910.6255 560.3508 560.3508 581.4803 109.6192 298.1672 190.418 49.8237 239.083 736.3822 255.0779 0.1155 277.3786 122.1309 334.4522 154.3005 281.9285 744.0528;
	3.3564 45.3521 90.664 111.9002 14.8394 25.4935 0.3812 17.5971 19.3717 29.0136 53.6313 80.0073 120.4505 2.7921 200.8153 75.656 93.8695 99.4736 84.8615 73.9502 0.1271 59.4849 74.7682 85.9179 98.3566 70.8432 13.2456 784.048 653.4816 653.4816 539.0885 114.4707 282.8715 190.348 8.7535 278.8188 725.8052 207.7391 34.1247 263.4552 120.5746 282.8084 141.3895 264.0441 733.3656;
	2.6817 36.2357 89.7572 110.9921 14.4011 18.0674 0.5618 18.032 11.6481 27.0978 50.0898 74.7242 112.4969 0.6295 203.4629 76.6534 95.1071 100.7851 41.0768 73.8021 0.1873 42.1572 74.0083 86.4672 100.5761 73.7655 13.556 484.0388 650.3071 650.3071 498.0377 115.3392 136.9226 189.9668 1.9737 277.4644 732.2501 211.2841 19.7803 269.4003 122.9195 200.4272 114.2077 257.4058 739.8777;
	3.6039 48.6971 90.9905 109.5623 14.6412 19.7234 0.0 17.8868 25.7761 24.4136 45.1282 67.3224 101.3535 46.2618 198.3744 74.7364 92.7285 98.2645 61.8994 73.3109 0.0 46.0212 74.5275 84.9055 99.1143 75.5123 13.8474 580.0058 645.3437 645.3437 493.5359 112.4303 206.3314 188.7025 145.0371 275.3467 578.0402 238.4107 17.2702 265.4846 122.6011 218.7981 121.2936 257.0285 584.0615;
	3.6771 49.6863 88.2066 106.2596 14.7688 19.1693 0.2178 17.8873 18.5343 23.0408 42.5906 63.5368 95.6543 14.0558 199.1968 75.0462 93.1129 98.6719 61.4054 73.0533 0.0726 44.7283 74.3903 82.6943 96.7614 74.732 13.7464 472.7669 636.384 636.384 460.4776 96.3484 204.6845 188.0393 44.0668 271.5238 648.3273 237.85 18.162 259.1822 123.0616 212.6512 135.0773 259.7281 655.0807;
	3.7405 50.5427 87.7243 107.9731 14.8146 17.1394 0.0 18.1881 0.0419 25.2129 46.6057 69.5266 104.6718 26.3222 187.5326 70.6518 87.6606 92.8941 71.2109 71.7173 0.0 39.9919 73.9478 84.9746 98.9037 74.1765 13.8392 351.4806 624.8602 624.8602 405.6906 82.3735 237.3696 184.6006 82.5237 266.607 584.0073 224.971 4.4395 264.9205 123.2521 190.1328 145.6735 234.7244 590.0908;
	3.4715 46.9074 89.2717 111.9696 14.5891 9.1476 2.0268 17.8949 0.0 28.8051 53.2458 79.4322 119.5848 22.2723 178.4132 67.2161 83.3978 88.3768 63.7791 71.2089 0.6756 21.3443 74.7332 86.9591 100.5289 74.3302 13.8072 407.5083 536.6814 536.6814 373.4675 82.7052 212.5971 183.2919 69.8267 228.9841 478.683 203.7505 34.0838 269.2739 123.212 101.4769 138.5105 226.4782 483.6692;
	3.369 45.5221 87.5359 108.8568 14.3082 17.7086 0.0 18.3548 0.0 28.1802 52.0906 77.709 116.9904 31.6703 183.2747 69.0477 85.6703 90.7849 64.462 72.7122 0.0 41.32 71.7509 86.2156 103.8896 74.1215 13.8321 1031.6405 451.6368 451.6368 288.7747 94.5235 214.8735 187.1614 99.2905 192.6984 848.9957 223.3067 109.4693 278.2758 123.0093 196.4469 116.7049 235.9709 857.8394;
	3.1566 42.6532 89.3257 109.9551 14.6208 19.1359 0.1847 18.4532 0.0 29.3509 54.2548 80.9375 121.8509 38.9966 194.3177 73.208 90.8322 96.255 79.1818 72.3196 0.0616 44.6505 70.5439 87.6473 104.4013 75.7475 14.0177 1191.7436 539.1336 539.1336 218.4404 72.345 263.9393 186.1507 122.2595 230.0303 974.667 203.7151 117.1182 279.6462 120.0259 212.2813 147.0058 262.0047 984.8198;
	2.2322 30.1613 92.2474 113.181 14.1552 30.8313 0.0 18.9385 0.0 25.737 47.5745 70.9718 106.8477 55.1323 191.0879 71.9913 89.3225 94.6552 56.0123 72.833 0.0 71.9398 51.824 89.8531 106.3317 76.5389 14.1104 1233.3464 649.684 649.684 310.219 64.0662 186.7077 187.4724 172.8471 277.1985 1156.6056 140.3847 235.5301 284.8171 120.9211 342.0223 137.7761 273.0564 1168.6535;
	3.6359 49.1293 93.9605 88.5709 14.51 32.0972 0.7057 18.6901 0.6011 15.6388 28.9081 43.1253 64.9248 61.7275 190.0836 71.6129 88.8531 94.1577 43.4469 72.4267 0.2352 74.8935 40.959 89.6025 106.3824 76.5445 14.1028 1303.3984 733.836 733.836 404.0156 55.9267 144.8231 186.4265 193.5242 313.1034 1227.2195 123.6207 0.3439 284.9529 120.554 356.0652 163.522 281.5861 1240.0031;
	3.6329 49.0886 91.9174 117.4459 14.6421 31.562 0.0094 18.4902 0.1816 13.421 24.8085 37.0094 55.7174 62.9971 189.4235 71.3642 88.5445 93.8307 63.2376 70.3643 0.0031 73.6447 67.0702 86.645 104.1413 74.8993 13.8799 1269.1776 673.2928 673.2928 634.8717 47.8797 210.7922 181.118 197.5045 287.2716 1216.5648 154.3641 0.0 278.9498 119.142 350.128 182.5155 277.3834 1229.2374;
	3.7096 50.1246 94.2998 118.3859 15.0856 32.6068 2.9938 18.1386 27.8036 28.5997 52.8661 78.8659 118.7322 65.0023 188.5926 71.0512 88.1561 93.4191 66.0833 69.7165 0.9979 76.0825 73.5859 88.8142 104.7841 74.5064 13.9143 1299.0998 692.9397 692.9397 553.5869 77.3621 220.2777 179.4505 203.7909 295.6543 1229.0412 218.0819 429.1322 280.6718 122.5356 361.7179 196.335 281.1851 1241.8438;
	3.6768 49.6821 93.2817 118.6311 14.6874 31.8774 5.322 18.7449 27.8583 29.0226 53.6479 80.0321 120.4878 67.5122 188.1062 70.8679 87.9287 93.1782 67.876 71.1629 1.774 74.3805 71.104 87.9828 104.7638 74.9354 13.9036 1306.6594 764.9378 764.9378 612.4813 115.3397 226.2535 183.1735 211.6599 326.3735 1242.4699 234.667 450.6469 280.6174 122.6804 353.6261 187.4034 276.9828 1255.4123;
	3.819 51.603 94.6802 120.6754 15.2794 33.6884 29.628 18.9345 27.0756 27.0675 50.0339 74.6408 112.3713 68.0505 190.1791 71.6489 88.8977 94.205 76.5761 72.7723 9.876 78.6062 73.4652 89.0361 106.6997 74.8818 14.0914 1256.3597 722.9243 722.9243 582.2441 110.3656 255.2538 187.316 213.3476 308.4477 1148.8159 220.9695 459.3965 285.8028 123.8299 373.7165 195.9197 277.9067 1160.7827;
];
