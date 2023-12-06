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
	3.0851 41.6867 76.7843 95.2975 14.5171 29.7412 31.2828 4.3305 27.6377 10.4006 19.2253 28.6803 43.1781 43.0858 181.4165 68.3476 84.8016 89.8644 87.2221 70.7762 10.4276 69.3961 29.5388 0.0 10.7811 19.7836 2.9113 1191.7852 783.9238 783.9238 658.6253 87.9153 290.7404 182.1782 135.0798 334.4742 1230.4321 205.9628 469.491 28.878 104.7635 329.9289 204.7676 108.49 1243.2491;
	2.4884 33.6235 67.3043 29.3277 14.6671 26.6313 30.6818 1.5009 10.6699 11.9244 22.0422 32.8826 49.5045 41.5022 181.5114 68.3834 84.846 89.9115 89.3416 72.1573 10.2273 62.1397 26.8937 0.0 0.0 1.9078 1.4086 1247.5901 817.8997 817.8997 711.1618 83.4077 297.8052 185.7332 130.115 348.9705 1312.161 207.7324 472.2844 0.0 105.694 295.4299 212.3877 85.9355 1325.8294;
	2.9804 40.2723 87.0104 44.017 14.8995 24.2211 31.8333 4.6707 10.0355 10.8326 20.0239 29.8718 44.9718 53.3223 182.9607 68.9294 85.5235 90.6294 89.6725 66.1097 10.6111 56.5158 23.8341 7.7144 30.5444 14.4477 5.1413 1275.9798 841.6546 841.6546 737.5395 96.0394 298.9083 170.1666 167.1728 359.1059 1323.3853 204.7649 475.1176 81.8154 16.4576 268.6924 215.9974 129.2213 1337.1706;
	3.4038 45.9926 85.9475 48.3089 14.5459 14.7101 31.9066 6.8496 11.9804 10.8698 20.0927 29.9744 45.1263 32.0569 183.4168 69.1012 85.7367 90.8553 86.1489 66.0755 10.6355 34.3236 14.1873 23.812 32.0758 26.7206 5.2085 1314.6196 853.3638 853.3638 770.0677 104.6234 287.1629 170.0786 100.5027 364.1019 1333.5444 234.1862 476.9209 85.9173 21.1918 163.1844 218.3863 119.2743 1347.4355;
	3.7226 50.3004 84.3668 42.9784 15.2418 23.0936 31.7701 7.1346 11.5136 9.7595 18.0403 26.9125 40.5167 38.0994 159.009 59.9057 74.3275 78.7649 86.9579 68.1267 10.59 53.8851 0.3507 26.2638 37.9168 62.8998 5.3205 1264.6142 856.3993 856.3993 798.6071 105.9212 289.8597 175.3583 119.4469 365.397 1338.7725 236.386 472.0048 101.563 34.414 256.1851 219.2196 204.9806 1352.7181;
	3.8007 51.3558 94.7867 116.809 15.2073 32.3683 30.3548 7.3639 10.382 11.1586 20.6265 30.7707 46.3251 32.1706 176.1468 66.3623 82.3384 87.2541 90.4964 66.5564 10.1183 75.5261 1.3728 30.8168 56.1072 69.6761 5.4652 1196.3039 844.7996 844.7996 778.611 111.9756 301.6547 171.3164 100.8591 360.4478 1287.6302 238.5963 468.6247 150.2873 67.361 359.0726 215.8281 250.6561 1301.043;
	3.907 52.7921 93.6131 119.6788 15.1067 34.7462 30.9442 11.039 10.9821 11.4901 21.2392 31.6847 47.7012 41.5058 191.5413 72.1621 89.5344 94.8797 85.9169 72.2065 10.3147 81.0745 24.9118 41.2016 100.6869 74.5605 11.1864 1115.8203 837.3164 837.3164 779.8887 114.7917 286.3895 185.8596 130.1264 357.255 1278.4741 288.6555 472.7243 269.6969 107.3822 385.4515 219.0684 275.3527 1291.7915;
	3.6959 49.9397 93.0235 118.5286 14.7411 34.9158 31.1145 18.4694 11.6808 11.1552 20.6202 30.7612 46.3109 65.7189 188.3413 70.9565 88.0386 93.2946 86.4301 63.3682 10.3715 81.4702 28.0267 48.857 103.4024 73.3736 13.6182 1046.6309 825.3755 825.3755 770.4798 112.1779 288.1004 163.1098 206.0377 352.1602 1245.3693 291.4358 479.1625 276.9707 116.5142 387.3328 218.067 271.4574 1258.3419;
	3.802 51.3736 95.3109 120.6984 14.7981 34.8329 31.2024 18.6218 11.001 11.9468 22.0835 32.9442 49.5973 66.4044 186.4375 70.2393 87.1487 92.3516 50.8768 62.9352 10.4008 81.2767 30.0515 88.5954 106.2588 72.2196 13.832 815.1228 840.5464 840.5464 761.5773 113.7866 169.5894 161.9953 208.1867 358.6331 1217.1242 304.6993 479.8114 284.6218 116.8948 386.4127 219.6879 272.3748 1229.8026;
	3.8724 52.3241 95.1546 120.4006 15.1123 34.8575 32.049 18.6598 22.6012 12.1973 22.5465 33.6349 50.6371 68.302 178.3 67.1735 83.3449 88.3207 56.0433 56.8583 10.683 81.3341 29.004 89.2996 105.2481 72.444 13.9403 653.8151 857.3019 857.3019 782.9359 109.3865 186.8109 146.3534 214.136 365.7821 1151.3717 283.1518 480.0273 281.9146 115.3932 386.6856 217.6271 268.1612 1163.3651;
	3.8155 51.556 94.5457 120.0945 15.2411 34.5133 31.5924 18.8257 28.36 17.8724 33.0369 49.2845 74.1976 69.3146 191.5633 72.1704 89.5447 94.8907 39.1604 60.8311 10.5308 80.5311 28.8293 89.0056 105.1022 72.7402 13.8578 503.5645 834.3845 834.3845 723.4208 99.0761 130.5348 156.5794 217.3107 356.004 983.0532 273.3704 477.1743 281.5239 114.5989 382.8678 216.7661 255.6418 993.2933;
	3.4603 46.7561 94.8363 119.1711 15.2751 32.3468 30.6749 18.9235 28.216 19.4024 35.8651 53.5036 80.5494 68.5775 184.0463 69.3384 86.0309 91.1671 50.1872 56.6466 10.225 75.4758 31.0968 88.8144 104.9485 74.4985 13.8649 383.8908 827.8123 827.8123 695.2186 103.2726 167.2908 145.8085 214.9997 353.1999 825.4279 261.4716 476.9429 281.1121 115.8628 358.8336 204.77 261.7074 834.0261;
	2.1386 28.8971 95.2196 116.9863 14.9548 21.2938 25.9794 18.9455 28.2146 28.4563 52.601 78.4703 118.1366 68.1371 185.316 69.8167 86.6244 91.796 91.2153 61.9256 8.6598 49.6854 58.3867 88.993 104.5484 75.6474 14.0872 325.6532 726.9557 726.9557 636.8243 102.4579 304.0509 159.3966 213.6189 310.1678 696.297 235.5333 453.6949 280.0403 118.4114 236.2187 185.4939 267.4885 703.5501;
	2.3853 32.2308 95.4356 116.7441 15.1055 13.2984 25.8633 18.9381 28.1869 30.9351 57.1831 85.3059 128.4276 67.0394 184.5846 69.5412 86.2826 91.4338 89.1238 65.2043 8.6211 31.0295 71.3451 88.0435 104.3399 75.571 14.0598 333.6068 647.9202 647.9202 601.7626 99.9576 297.0793 167.8361 210.1775 276.4459 529.1913 203.3704 466.0775 279.4819 120.8907 147.5232 154.5823 268.0526 534.7038;
	2.2559 30.4827 95.1443 112.7221 13.3313 0.6616 21.3049 18.9679 27.4943 30.489 56.3584 84.0756 126.5754 67.2343 192.9033 72.6752 90.1711 95.5544 89.3426 70.7247 7.1016 1.5438 73.4462 88.0615 104.1134 75.0811 14.1614 457.2625 500.1527 500.1527 430.8627 95.1332 297.8086 182.0455 210.7886 213.3985 435.1036 187.5653 451.9436 278.8752 120.9071 7.3395 126.5497 246.018 439.6359;
	3.4398 46.4799 95.1118 89.0248 14.5283 26.2031 14.7816 18.861 23.886 29.2384 54.0467 80.6271 121.3836 57.397 190.5715 71.7967 89.0811 94.3994 90.2689 69.5452 4.9272 61.1405 68.4685 88.5364 103.2995 75.4607 14.1181 488.6749 516.6427 516.6427 414.8746 50.6066 300.8962 179.0095 179.9475 220.4342 485.3528 160.663 448.8246 276.6952 120.1265 290.6793 93.8666 263.5142 490.4086;
	3.2195 43.5029 94.928 63.5993 14.6144 31.9526 13.5169 19.1229 27.2943 27.7561 51.3068 76.5397 115.23 63.4776 188.3602 70.9636 88.0474 93.304 91.575 69.2305 4.5056 74.5561 68.3268 86.079 105.465 75.4628 14.1471 553.3019 579.1486 579.1486 439.2092 30.0153 305.2498 178.1994 199.0109 247.1034 573.4544 117.7381 195.4398 282.4956 119.6071 354.4608 121.1346 270.1504 579.4279;
	3.7934 51.2575 95.2706 68.4258 15.2527 33.7952 28.503 19.1473 26.315 13.2669 24.5236 36.5844 55.0776 65.5129 173.5359 65.3786 81.1179 85.9608 74.682 70.7469 9.501 78.8555 44.0208 89.8395 106.7672 76.4708 14.1594 629.1102 624.4235 624.4235 387.3318 26.4019 248.9402 182.1027 205.3919 266.4207 742.4623 75.5052 431.8563 285.9837 120.9768 374.9015 133.8906 274.6973 750.1962;
	3.8977 52.6668 95.2032 55.2889 15.3194 34.1826 26.69 19.1236 26.2011 22.1121 40.8739 60.9759 91.7989 66.1851 171.9749 64.7905 80.3882 85.1875 58.3877 69.5227 8.8967 79.7593 53.6622 87.6615 106.5002 76.1981 14.1328 974.4925 695.7022 695.7022 448.9793 40.7938 194.6255 178.9517 207.4993 296.833 978.3309 89.539 451.9434 285.2683 118.3726 379.1984 160.5087 272.5032 988.5219;
	3.8474 51.9873 74.9 43.0331 15.329 34.418 1.4707 19.1828 27.211 28.1048 51.9513 77.5012 116.6776 67.0457 185.7028 69.9625 86.8053 91.9877 45.9583 70.3129 0.4902 80.3087 72.0154 84.8491 106.7849 76.3528 14.1496 1188.8169 605.0234 605.0234 528.3051 61.3727 153.1944 180.9855 210.1973 258.1433 1157.8388 135.8561 447.7541 286.0309 122.361 381.8104 169.6404 251.8649 1169.8996;
	3.8089 51.4673 67.6224 59.9632 15.3871 34.5712 28.964 19.0694 5.5366 27.6287 51.0713 76.1883 114.701 67.6215 187.5197 70.647 87.6546 92.8877 61.6051 71.6986 9.6547 80.6661 72.1492 89.3029 106.5452 76.4133 14.0556 1243.9146 692.7969 692.7969 399.0629 67.4737 205.3503 184.5524 212.0024 295.5933 1115.8601 185.9123 446.9691 285.3888 121.6842 383.5096 160.9152 262.0778 1127.4836;
	3.7362 50.4849 49.0972 80.0848 15.2287 34.6674 0.0 19.0485 27.0172 29.9654 55.3906 82.6319 124.4019 66.6159 185.6398 69.9387 86.7758 91.9564 52.1674 68.8483 0.0 80.8905 72.5793 87.8669 106.508 76.4126 14.1015 1248.6425 714.057 714.057 522.3309 88.5799 173.8912 177.2156 208.8498 304.6643 1172.8168 220.0883 453.8375 285.2894 120.8636 384.5768 165.209 244.8799 1185.0337;
	3.7007 50.0052 60.2004 89.7435 15.236 33.4813 26.2689 19.0639 26.1854 29.1958 53.968 80.5097 121.2069 65.3375 182.798 68.8681 85.4474 90.5488 53.3843 69.0203 8.7563 78.1231 68.4728 88.7599 106.4028 76.2369 13.9554 1232.4081 732.8003 732.8003 571.8829 106.8793 177.9478 177.6584 204.8418 312.6615 1143.4853 238.4273 446.4045 285.0076 118.2389 371.4197 158.5565 258.9045 1155.3966;
	3.6123 48.8103 86.5308 98.2816 15.1144 34.0059 27.2103 19.0734 26.3472 26.3846 48.7715 72.7575 109.536 63.1967 184.8448 69.6392 86.4042 91.5627 40.746 71.4701 9.0701 79.347 58.2171 86.701 106.0968 76.0146 13.9543 1207.7085 727.7774 727.7774 581.1812 110.6449 135.8202 183.9641 198.1303 310.5184 1193.8588 215.6614 438.4678 284.1879 117.7593 377.2383 171.2153 263.452 1206.2948;
];