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
	3.9525 53.4068 86.4398 112.8754 15.2949 36.0302 31.1875 7.6779 27.6163 11.5382 21.3282 31.8174 47.9009 46.2289 194.4081 73.2421 90.8745 96.2998 91.4053 73.7767 10.3958 84.0705 32.4942 37.9779 48.3363 28.5109 5.0174 1350.0526 807.4587 807.4587 652.7887 85.8646 304.6843 189.9013 144.9338 344.5157 1305.0461 215.7422 476.4176 129.4723 108.6125 399.6952 213.7634 126.7875 1318.6403;
	3.3485 45.2456 78.1617 43.5503 15.2073 29.3627 30.6115 7.674 9.7785 12.6964 23.4691 35.0112 52.7092 40.325 193.4957 72.8984 90.448 95.8479 91.1601 71.9866 10.2038 68.5131 30.803 36.6406 41.18 29.0141 5.7534 1317.6377 809.4013 809.4013 672.4045 79.4626 303.867 185.2936 126.4242 345.3446 1307.2699 199.8532 474.6207 110.3036 111.1975 325.7307 207.9064 99.0414 1320.8873;
	3.2283 43.6212 89.6023 49.6888 15.4107 26.0413 31.102 7.308 9.4681 13.5202 24.9918 37.2829 56.1291 37.9415 199.4561 75.1439 93.2341 98.8003 91.7853 68.1743 10.3673 60.763 31.7339 40.7279 38.7375 31.0822 6.3155 1308.002 828.8212 828.8212 718.8299 90.4002 305.9511 175.4808 118.9518 353.6304 1298.2773 198.7457 475.5682 103.7611 33.2625 288.8847 213.4267 135.5353 1311.801;
	3.568 48.2113 86.8515 51.8805 15.3314 14.3577 30.8019 7.8972 10.4706 12.6499 23.3832 34.8831 52.5163 26.3004 198.9225 74.9429 92.9847 98.536 90.3155 68.6306 10.2673 33.5013 29.1771 41.0275 36.7423 31.9813 5.7804 1292.9484 811.2283 811.2283 712.2484 96.7404 301.0516 176.6553 82.4553 346.1241 1266.8444 222.6603 468.5189 98.4169 39.1756 159.2746 211.4744 112.4095 1280.0407;
	3.8441 51.9418 84.5571 42.8164 15.3181 22.8684 31.7764 7.4444 11.2028 11.9958 22.1741 33.0793 49.8008 29.3479 183.7152 69.2137 85.8762 91.0031 90.2041 69.275 10.5921 53.3597 31.271 31.7267 41.5905 62.3706 5.5832 1250.2897 819.3474 819.3474 764.0573 99.9379 300.6803 178.3141 92.0095 349.5882 1274.5706 236.3893 477.8294 111.4032 37.8098 253.6872 209.1832 200.2712 1287.8474;
	3.929 53.0895 94.9743 117.3295 15.3646 34.4552 31.361 8.3908 10.7273 12.1294 22.421 33.4477 50.3554 23.7484 192.6514 72.5803 90.0533 95.4296 92.0063 68.2362 10.4537 80.3954 5.2239 37.3817 59.934 73.359 5.8501 1233.9692 801.1111 801.1111 772.1422 107.9363 306.6878 175.6401 74.4544 341.8074 1265.2267 240.6707 478.8376 160.5375 73.3804 382.2225 214.7377 256.0661 1278.4062;
	3.9835 53.8256 95.2399 120.8561 15.1135 35.506 31.2206 13.7829 10.6409 10.874 20.1005 29.986 45.1438 29.3138 190.084 71.613 88.8532 94.1579 83.9889 67.7917 10.4069 82.8472 21.7207 64.1126 106.4058 76.5954 12.763 1238.8353 806.4042 806.4042 773.2366 112.5194 279.9631 174.496 91.9029 344.0658 1300.898 288.4474 472.0826 285.0154 110.5878 393.8794 213.2961 284.0547 1314.4491;
	3.8693 52.2822 94.3277 119.9367 15.0503 34.7524 29.7571 19.1622 4.8899 11.0856 20.4916 30.5694 46.0221 51.736 189.0092 71.2081 88.3508 93.6255 78.176 60.8117 9.919 81.0889 23.6587 64.3342 106.6036 76.5836 14.0903 1146.2082 768.5912 768.5912 699.7393 114.4513 260.5867 156.5295 162.1994 327.9322 1214.9432 294.2013 457.292 285.5454 119.4066 385.5199 205.8248 284.2884 1227.5988;
	3.8054 51.4187 93.6203 118.9796 14.8323 34.4016 29.3329 18.9988 7.8216 11.0539 20.433 30.4821 45.8906 57.1769 195.8458 73.7838 91.5465 97.012 45.5228 67.1111 9.7776 80.2705 23.7331 89.3481 106.3738 76.3777 13.887 873.6639 801.8704 801.8704 720.1091 119.3913 151.7426 172.7442 179.2574 342.1314 1214.2583 300.6691 453.4051 284.9298 119.5561 381.6289 201.0677 267.7905 1226.9069;
	3.9034 52.7429 94.916 120.2232 14.9923 34.8604 30.0835 19.0557 18.7355 10.6382 19.6646 29.3356 44.1647 59.6101 189.825 71.5155 88.7321 94.0296 48.5111 59.3638 10.0278 81.341 24.9916 90.0425 106.7258 76.5713 14.0195 659.2816 806.1768 806.1768 740.8071 118.1303 161.7036 152.8027 186.8857 343.9687 1090.6785 274.2759 451.6201 285.8727 116.6116 386.7185 212.2997 279.352 1102.0398;
	3.9141 52.8877 94.1076 120.0537 14.7569 34.8161 30.8159 19.1225 26.0575 14.4945 26.7929 39.9698 60.1743 66.0862 196.5621 74.0536 91.8813 97.3668 25.769 67.6287 10.272 81.2376 25.5442 89.9051 106.1255 76.0023 14.092 494.2941 797.904 797.904 756.3651 110.9017 85.8967 174.0765 207.1893 340.4391 971.9562 275.7522 452.006 284.2646 120.2994 386.2266 206.4435 270.3816 982.0807;
	3.5387 47.8152 93.99 119.6321 14.9824 33.8191 30.7698 19.1627 27.012 16.2787 30.0909 44.8898 67.5813 64.7926 193.5407 72.9153 90.469 95.8702 43.8488 66.3194 10.2566 78.9113 27.2856 89.9571 106.2851 76.5983 13.9653 376.0001 791.8111 791.8111 715.8676 112.3928 146.1628 170.7063 203.1335 337.8394 833.2923 246.9848 461.5187 284.6923 119.1056 375.1668 195.8093 268.8016 841.9724;
	2.3177 31.3172 93.4186 118.4248 14.6915 22.5585 26.2692 19.1664 26.2895 24.5684 45.4143 67.7493 101.9962 63.9614 196.9465 74.1984 92.061 97.5572 89.9133 66.3561 8.7564 52.6365 45.0279 90.0844 106.4668 76.4463 14.1511 347.7086 717.6208 717.6208 632.6742 107.6891 299.7111 170.8009 200.5276 306.1849 702.1831 227.2031 439.3426 285.179 121.2075 250.2491 172.7334 276.8222 709.4975;
	2.5058 33.8582 93.5895 118.1383 15.172 13.9984 26.6544 19.1646 26.7489 29.7779 55.044 82.1148 123.6234 64.7883 195.3669 73.6033 91.3226 96.7747 88.6286 68.6526 8.8848 32.663 71.3131 90.0468 106.4695 76.4646 14.1529 329.3896 628.498 628.498 615.6966 101.2602 295.4288 176.7121 203.1201 268.1592 505.5335 211.0339 460.9879 285.1863 121.9693 155.2894 141.8162 273.038 510.7995;
	2.2643 30.5958 91.5954 116.5407 12.4345 2.3165 21.3135 19.1317 26.7111 29.0968 53.7851 80.2367 120.796 63.2159 199.2423 75.0634 93.1342 98.6945 90.5312 71.3057 7.1045 5.4051 69.8529 89.5168 106.0957 75.3695 14.134 430.693 475.4175 475.4175 399.8437 90.8144 301.7707 183.541 198.1904 202.8448 417.1787 180.0902 453.9038 284.1849 119.8419 25.6973 104.3168 255.3556 421.5243;
	3.5233 47.6075 91.1252 90.8994 14.2851 26.6542 16.968 19.1754 22.9577 29.1785 53.936 80.4619 121.1349 54.0211 201.3332 75.8511 94.1116 99.7302 90.1397 71.4158 5.656 62.1931 70.5784 89.9089 105.8551 76.1721 14.1642 477.8587 529.2346 529.2346 409.7242 51.1717 300.4656 183.8245 169.3634 225.8068 484.4039 163.1171 460.7271 283.5405 122.9619 295.6839 83.0669 271.4706 489.4497;
	3.2465 43.8672 87.7489 62.7904 14.5071 30.3715 14.7807 19.1361 26.5129 27.0248 49.9549 74.5229 112.1938 56.9408 199.1633 75.0336 93.0972 98.6553 89.4637 69.5026 4.9269 70.8669 68.3312 88.6951 105.3941 75.7928 14.1233 574.8624 605.4236 605.4236 449.3406 29.8796 298.2124 178.8999 178.517 258.3141 589.115 121.622 189.3179 282.3056 120.5398 336.9216 106.7076 262.9084 595.2516;
	3.5572 48.0659 86.5497 58.6289 14.2588 27.137 28.5751 18.8283 25.6201 12.948 23.9341 35.705 53.7537 57.1708 186.2344 70.1627 87.0537 92.251 75.8949 68.8646 9.525 63.3196 44.4496 86.8327 103.2236 74.1497 13.6448 679.4476 624.0323 624.0323 420.8522 29.5472 252.983 177.2576 179.2382 266.2538 802.9017 84.5427 413.5009 276.4918 120.0105 301.0394 111.9923 251.3709 811.2653;
	3.6255 48.9879 84.7541 36.7442 14.2627 28.7545 28.1397 18.719 25.5375 22.0926 40.8378 60.9219 91.7176 58.5742 170.0093 64.05 79.4695 84.2139 49.3718 68.3269 9.3799 67.0938 34.9985 79.1012 101.7995 73.3689 13.3291 1064.0592 710.1317 710.1317 501.1888 46.7462 164.5725 175.8736 183.6379 302.9895 1091.5105 102.283 435.7533 272.6772 118.5811 318.983 143.1732 225.6321 1102.8804;
	3.6057 48.7206 51.8156 24.6626 14.1181 30.0985 3.1467 18.8911 25.2654 27.1479 50.1825 74.8624 112.7049 60.0131 184.5349 69.5224 86.2593 91.4091 37.3982 69.8498 1.0489 70.2297 64.4206 73.0311 103.3567 71.9131 13.3121 1225.3229 620.8 620.8 580.9764 69.2914 124.6605 179.7935 188.1492 264.8747 1176.9269 145.8539 404.9422 276.8483 121.0477 333.8922 148.6786 222.6575 1189.1865;
	3.7823 51.1066 51.3835 51.4926 14.4503 31.1626 30.4991 18.5208 0.8061 26.1389 48.3174 72.08 108.516 64.5454 186.8221 70.3841 87.3285 92.5421 40.852 71.3952 10.1664 72.7127 68.4442 84.565 101.3428 73.4133 13.1444 1313.7971 754.8182 754.8182 458.9178 75.1144 136.1733 183.7714 202.3586 322.0558 1214.7232 193.3922 438.4744 271.454 121.3771 345.6971 142.5181 247.3283 1227.3766;
	3.7722 50.9706 42.8681 76.394 14.2858 32.2788 3.6234 18.5358 26.224 29.3639 54.2786 80.9731 121.9045 65.2843 194.6842 73.3461 91.0035 96.4366 55.456 69.7714 1.2078 75.3171 69.4927 84.7648 103.3271 75.1509 13.6144 1353.4151 764.7217 764.7217 570.8633 92.4244 184.8533 179.5917 204.6751 326.2812 1294.7165 226.595 453.8833 276.769 119.1586 358.0792 149.4795 231.6945 1308.2032;
	3.639 49.1702 56.5872 84.1047 14.1786 31.4384 29.0386 18.1532 26.5808 28.7804 53.2001 79.3641 119.4823 64.1735 191.1313 72.0076 89.3428 94.6767 46.242 69.752 9.6795 73.3562 65.778 87.0939 104.1401 75.103 13.4508 1335.6171 729.6284 729.6284 598.3603 110.4493 154.1399 179.5418 201.1925 311.3081 1248.3965 246.4027 440.5296 278.9466 119.9061 348.7563 141.1608 253.7724 1261.4007;
	3.742 50.5625 91.3392 102.1417 14.5671 32.7055 29.7856 18.972 27.1421 29.4651 54.4658 81.2523 122.3249 65.3851 195.5828 73.6847 91.4236 96.8817 29.3939 72.528 9.9285 76.3129 69.1884 88.916 105.7726 75.153 13.8496 1346.606 721.4754 721.4754 652.3864 111.9194 97.9797 186.6872 204.9911 307.8295 1269.3435 223.3821 459.8206 283.3195 119.3727 362.8136 163.6875 271.0613 1282.5659;
];