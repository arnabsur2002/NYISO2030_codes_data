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
	0.8075 10.9115 55.4272 69.7119 6.7905 2.2046 2.8801 8.9546 1.2694 15.9864 29.5506 44.0837 66.3678 13.6663 140.6836 53.0017 65.7614 69.6875 76.744 67.5901 0.96 5.1441 64.7512 74.3187 54.0898 46.8306 4.2526 184.0128 331.9084 331.9084 229.3003 46.3314 255.8134 173.9772 42.8457 141.6143 388.4306 87.5857 72.555 144.8833 61.2405 24.4563 43.3159 64.3394 392.4767;
	0.4845 6.5467 54.3393 64.8408 5.7016 1.0406 0.1657 12.0342 0.0411 10.0871 18.6458 27.8159 41.8767 7.7132 127.5674 48.0603 59.6303 63.1904 74.5554 70.0343 0.0552 2.4281 31.2585 75.2354 56.2591 53.148 6.038 73.6447 224.5311 224.5311 149.5965 32.2207 248.5181 180.2685 24.182 95.7999 298.4358 84.6026 15.1646 150.694 74.5725 11.5438 29.0307 82.8539 301.5445;
	0.2991 4.042 59.7599 67.0644 3.9838 1.5509 1.9591 11.1226 0.0059 8.5453 15.7958 23.5642 35.4758 8.1349 89.2937 33.6409 41.7396 44.2315 64.3078 66.4821 0.653 3.6189 2.7393 76.9901 57.3544 51.8262 5.9362 10.9957 37.7773 37.7773 1.3728 15.5945 214.3592 171.1252 25.504 16.1183 168.2557 0.0001 1.8314 153.6278 68.6286 17.2051 18.6983 85.1704 170.0083;
	0.4446 6.0069 69.0527 78.4199 6.718 2.0751 1.7911 13.1688 0.3727 14.7015 27.1755 40.5405 61.0335 8.3428 100.8732 38.0034 47.1523 49.9674 47.8196 67.5109 0.597 4.842 27.1998 81.692 66.5784 64.2863 7.117 195.9562 96.3971 96.3971 49.8146 19.1905 159.3988 173.7732 26.1557 41.1294 61.4594 0.6688 6.1576 178.335 65.7756 23.0203 45.782 129.029 62.0996;
	0.4899 6.6193 80.1365 75.3248 8.432 3.4511 0.5015 14.0144 0.0 14.0574 25.9848 38.7643 58.3594 3.8268 117.8414 44.3961 55.084 58.3726 56.0667 67.4913 0.1672 8.0526 38.3217 82.5518 78.8603 69.53 8.3877 51.2969 50.4633 50.4633 28.9777 10.5061 186.889 173.7228 11.9974 21.531 31.5747 2.2003 0.0 211.2329 60.4556 38.2841 9.7765 138.7272 31.9036;
	0.3998 5.4025 76.7309 55.5894 8.7513 3.7011 0.0058 13.4288 0.025 8.0711 14.9192 22.2566 33.5071 0.0 134.8563 50.8063 63.0375 66.8009 75.6998 66.9877 0.0019 8.6359 32.9711 80.0209 56.8352 70.4473 7.9405 32.4207 21.7979 21.7979 11.2041 10.6464 252.3328 172.4266 0.0 9.3004 18.7606 0.0195 0.0 152.237 48.7748 41.0577 19.0757 129.0439 18.9561;
	0.4436 5.9946 56.2505 32.768 9.0086 2.602 3.7432 8.3364 2.083 4.9921 9.2278 13.7661 20.7248 0.0 104.5772 39.3988 48.8838 51.8022 59.6402 57.9169 1.2477 6.0712 19.9913 56.0315 34.0823 65.4253 4.3433 72.5003 23.0356 23.0356 28.643 7.0988 198.8008 149.0784 0.0 9.8285 57.7798 0.1935 0.0 91.292 23.6192 28.8643 27.9674 130.1199 58.3817;
	0.6037 8.1575 36.7412 26.1824 4.402 3.9843 4.1063 7.3301 2.0332 4.254 7.8635 11.7307 17.6605 0.954 53.8727 20.2962 25.1824 26.6858 15.8314 35.7965 1.3688 9.2968 11.0351 36.7518 32.3598 64.6567 4.5183 44.7811 8.2841 8.2841 10.1089 7.4597 52.7713 92.1404 2.9908 3.5345 35.3088 0.1 0.0 86.678 10.4429 44.1995 15.8051 106.2697 35.6766;
	0.6361 8.5951 31.9896 24.9313 4.3658 15.7932 0.0 5.776 0.2539 0.008 0.0148 0.0221 0.0332 2.1249 13.4163 5.0545 6.2714 6.6458 0.0 5.2105 0.0 36.8508 4.3901 37.9833 29.7542 54.3438 4.2413 78.0368 24.0569 24.0569 9.9344 21.1193 0.0 13.4119 6.6619 10.2643 42.5874 1.5446 10.2757 79.6988 66.0035 175.1991 21.1384 73.8984 43.031;
	0.5542 7.4886 32.4884 25.3981 8.1166 9.8096 0.0328 4.6771 1.502 0.0074 0.0137 0.0204 0.0307 2.4501 9.1877 3.4614 4.2947 4.5511 0.5605 9.6324 0.0109 22.889 8.0812 37.0123 29.367 49.2418 2.7929 156.2175 133.6251 133.6251 160.4106 24.5767 1.8684 24.7939 7.6812 57.0134 281.2675 2.5351 6.8386 78.6615 54.2182 108.8208 50.7585 85.518 284.1974;
	0.8286 11.1958 46.2318 33.3257 11.6814 9.917 0.0 3.6134 3.3358 0.0502 0.0928 0.1385 0.2085 3.7778 16.2167 6.1096 7.5804 8.0329 1.6334 2.4727 0.0 23.1397 25.9628 42.2741 46.3735 52.7135 1.2738 349.2481 80.0043 80.0043 84.4959 84.1771 5.4445 6.3646 11.8439 34.1352 358.0959 2.2073 5.3728 124.2148 28.6876 110.0127 12.9088 96.0053 361.8261;
	1.6034 21.6655 64.431 9.8038 14.1665 0.9584 0.3029 0.0227 0.5733 1.1361 2.1001 3.1329 4.7165 3.1411 15.2356 5.7399 7.1218 7.547 3.3067 0.1872 0.101 2.2363 50.3064 55.1599 1.1049 47.5966 0.5635 196.4908 121.4275 121.4275 24.0801 32.5719 11.0223 0.482 9.8477 51.8091 173.0313 3.5722 0.471 2.9596 10.5817 10.632 7.1308 114.8575 174.8337;
	2.3202 31.3505 81.9153 2.8272 14.6715 3.3631 0.1993 0.0002 2.0534 24.6452 45.5563 67.9611 102.315 4.7844 29.0767 10.9545 13.5917 14.4031 13.0827 5.2269 0.0664 7.8473 35.5984 64.5707 65.2536 48.5016 0.2049 244.4351 188.6452 188.6452 46.5785 54.4371 43.6089 13.4542 14.9998 80.4886 221.6494 4.3841 10.7782 174.7863 19.1434 37.3081 111.1208 145.2179 223.9582;
	1.9153 25.8805 16.8834 6.1907 14.4606 20.8417 3.8151 0.0993 0.0405 5.881 10.871 16.2174 24.4152 5.9562 6.4492 2.4297 3.0146 3.1946 7.7117 4.5073 1.2717 48.6307 45.9296 11.7635 6.0873 33.0842 0.7854 215.3366 233.2359 233.2359 139.8562 34.4264 25.7057 11.6019 18.6736 99.514 231.0095 12.3371 21.5626 16.3052 19.7442 231.2042 92.2372 131.5581 233.4159;
	2.4941 33.7007 14.0004 24.6332 10.2451 10.1616 5.1081 0.005 2.7086 7.2158 13.3383 19.8981 29.9565 2.0444 12.5246 4.7186 5.8545 6.2041 2.6332 0.0 1.7027 23.7103 30.8198 1.906 4.5791 0.0063 0.282 305.6716 291.8602 291.8602 105.5124 10.5502 8.7772 0.0 6.4094 124.527 294.9062 14.7367 55.5248 12.2655 3.436 112.7256 95.4577 96.8712 297.9782;
	3.2396 43.7742 85.3701 22.0722 13.853 7.2759 2.7957 0.1057 0.0 0.0084 0.0156 0.0233 0.035 4.6424 2.7969 1.0537 1.3074 1.3854 0.0 0.0 0.9319 16.977 38.1675 0.0987 4.3007 0.0 1.3149 396.7082 291.4079 291.4079 175.5629 13.71 0.0 0.0 14.5544 124.334 324.7374 36.5777 10.8637 11.5198 16.5111 80.7136 47.2955 159.8561 328.1201;
	3.4783 46.9994 4.8065 1.9227 14.7308 5.9976 4.18 0.0 0.0386 0.0 0.0 0.0 0.0 0.6332 11.8795 4.4755 5.553 5.8845 0.0 0.0 1.3933 13.9944 0.0189 0.1974 4.3031 1.0502 0.2711 374.5972 381.9726 381.9726 191.3828 24.7543 0.0 0.0 1.9851 162.975 444.6539 66.4544 51.3364 11.5263 37.481 66.5333 145.4623 216.2077 449.2857;
	2.8173 38.0673 29.9798 13.7079 14.5616 22.421 11.4872 1.2319 10.9152 0.0854 0.1578 0.2354 0.3545 0.59 23.18 8.7329 10.8353 11.4822 0.0 0.0662 3.8291 52.3157 14.9436 11.4955 11.1676 1.8613 2.3191 575.9556 518.4091 518.4091 358.9187 37.5012 0.0 0.1704 1.8497 221.1879 579.3252 96.7867 82.2365 29.9131 51.0383 248.7238 128.2431 227.7209 585.3598;
	3.001 40.55 86.1489 3.3137 14.6224 28.0515 10.1657 0.1043 1.6487 2.6908 4.9739 7.4201 11.1709 4.8139 57.7444 21.7549 26.9922 28.6036 1.8319 37.6613 3.3886 65.4534 14.349 26.8457 3.6912 59.902 1.0487 771.8653 469.3434 469.3434 384.9117 48.2298 6.1063 96.9403 15.0921 200.2532 636.5301 76.1217 39.1396 9.8871 16.445 311.1841 109.6891 206.8581 643.1607;
	2.9178 39.4254 6.8434 5.1925 14.7443 8.7732 19.1288 0.1252 26.223 12.8569 23.7657 35.4538 53.3755 3.3253 27.939 10.5258 13.0598 13.8395 1.0644 17.5496 6.3763 20.4708 48.2774 22.6776 15.481 51.3738 1.2893 768.0547 442.8056 442.8056 346.3943 46.3958 3.5479 45.1728 10.4254 188.9304 570.4316 75.4904 13.3941 41.4669 8.0498 97.3238 110.082 182.8676 576.3736;
	3.1905 43.111 87.069 37.1289 14.1892 6.4868 2.8617 1.395 26.8958 15.4197 28.5031 42.521 64.0151 8.0271 30.1747 11.3681 14.1049 14.947 19.1469 32.5649 0.9539 15.1358 59.7345 86.008 35.4955 60.238 2.293 628.8199 387.6779 387.6779 255.5899 54.3226 63.823 83.822 25.1659 165.4092 545.5354 76.2865 30.0834 95.0771 63.2253 71.9599 105.9771 177.5468 551.218;
	3.6148 48.8433 91.4653 53.281 14.2997 23.8045 11.8975 14.927 26.781 20.2209 37.378 55.7606 83.9472 11.3341 83.6584 31.5178 39.1054 41.4401 12.9611 55.4829 3.9658 55.5438 41.9734 87.8427 103.0609 73.3525 6.429 728.3015 315.6347 315.6347 223.6437 62.3156 43.2038 142.8132 35.5341 134.6708 509.1005 109.2513 35.3842 276.0559 15.6407 264.0712 16.7124 204.9091 514.4036;
	3.7345 50.4613 92.938 118.4196 14.3032 26.2153 13.9293 17.2093 26.7079 23.5959 43.6167 65.0675 97.9588 8.0211 60.4188 22.7624 28.2423 29.9284 6.6907 66.6562 4.6431 61.1691 48.0953 89.7094 103.6044 75.97 8.1194 729.9999 343.1637 343.1637 282.4017 43.6106 22.3023 171.5733 25.1472 146.4165 448.4718 99.353 22.6442 277.5119 15.6484 290.8153 140.7049 217.4929 453.1434;
	3.5186 47.544 88.3067 109.913 13.9504 15.9072 12.3516 17.5973 26.5816 20.5931 38.0661 56.7871 85.4927 10.9703 47.0434 17.7233 21.9901 23.3029 0.414 50.0486 4.1172 37.1169 39.8497 88.8555 104.5948 75.1933 7.6924 593.7306 355.2015 355.2015 233.3292 39.5233 1.38 128.8252 34.3935 151.5526 414.7996 75.036 307.6318 280.1645 15.1727 176.4643 130.8678 225.1305 419.1204;
];