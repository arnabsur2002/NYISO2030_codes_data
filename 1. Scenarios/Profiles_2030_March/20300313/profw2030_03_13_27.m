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
	0.7922 10.704 57.7154 64.1127 7.4151 5.9434 0.4458 5.8823 0.2356 17.5323 32.4083 48.3467 72.7858 1.96 157.3695 59.288 73.5611 77.9528 83.8774 71.1247 0.1486 13.8678 58.0036 71.5287 47.0778 44.6533 2.492 183.5603 321.596 321.596 232.2433 35.0473 279.5912 183.0752 6.145 137.2143 373.9797 90.6499 19.513 126.1011 55.5968 65.9316 11.1109 62.6083 377.8754;
	0.5116 6.9129 54.4831 64.5296 6.4307 5.8887 2.4392 9.821 1.8984 11.0051 20.3428 30.3475 45.6879 1.863 133.6533 50.3531 62.4751 66.205 78.0911 72.4205 0.8131 13.7403 32.6856 75.7733 51.6917 47.4023 5.7122 60.9747 220.4989 220.4989 161.1334 26.9773 260.3038 186.4106 5.8408 94.0795 293.8601 91.0103 62.2903 138.46 70.9316 65.3255 6.1297 81.2101 296.9211;
	0.2946 3.9807 60.7556 66.6594 5.5867 2.0692 2.4664 10.0988 1.959 10.0749 18.6233 27.7823 41.8261 1.4485 93.1585 35.0969 43.5462 46.1459 68.6628 71.5316 0.8221 4.8281 27.4031 78.0815 53.7541 49.132 5.8429 0.0 0.3617 0.3617 11.0983 14.0524 228.8761 184.1224 4.5411 0.1543 145.7315 5.9403 126.9218 143.9843 65.5676 22.9541 0.0838 84.8716 147.2496;
	0.3828 5.172 69.7062 76.4213 7.8974 1.6832 1.1986 12.6784 2.7329 16.1999 29.9453 44.6725 67.2542 4.1242 99.6754 37.5521 46.5924 49.3741 47.36 71.2169 0.3995 3.9275 51.4381 82.554 58.8816 67.5485 7.2665 3.008 10.6896 10.6896 26.5541 14.8709 157.8668 183.3124 12.9301 4.5609 5.6016 4.7099 55.3242 157.7185 66.5783 18.6725 0.0001 127.9956 5.66;
	0.3626 4.8998 76.8449 71.3933 8.7778 0.0035 0.0 12.3585 0.0 14.9864 27.7022 41.3262 62.2164 2.2169 126.9014 47.8094 59.319 62.8605 55.5727 70.7583 0.0 0.0083 47.4233 81.9683 71.1906 68.2978 7.742 12.5432 0.0286 0.0286 6.9863 2.6594 185.2425 182.1322 6.9502 0.0122 0.0 0.7054 0.0 190.689 61.216 0.0392 0.0 123.7937 0.0;
	0.1517 2.0495 75.3194 59.8924 9.0836 3.4413 0.0 11.2961 0.5003 8.4789 15.6731 23.3813 35.2003 0.011 144.5004 54.4397 67.5455 71.5781 79.261 72.7716 0.0 8.0296 36.3984 81.0227 52.5221 67.4687 6.6416 9.2624 0.1563 0.1563 2.6173 6.3558 264.2033 187.3143 0.0346 0.0667 0.0 0.4677 5.6724 140.6842 47.8511 38.1752 14.5945 102.8115 0.0;
	0.2939 3.9719 54.357 38.3095 8.9265 2.51 3.8081 6.2089 2.4048 6.3188 11.6801 17.4245 26.2324 0.0973 120.184 45.2786 56.179 59.533 59.7294 70.7 1.2694 5.8566 23.9027 58.0241 28.5279 62.4688 2.5316 33.5642 17.19 17.19 27.4037 0.0 199.098 181.9821 0.3051 7.3344 8.0285 0.5621 33.4056 76.4139 26.8784 27.8438 23.8792 106.6516 8.1121;
	0.3542 4.7862 35.0187 28.2632 3.7272 2.5338 4.0835 6.4336 2.0838 4.7823 8.84 13.1875 19.8537 0.0 65.5297 24.6879 30.6313 32.4601 17.2147 51.0236 1.3612 5.9121 14.025 37.8006 24.9413 63.1973 3.533 24.8973 22.9319 22.9319 36.0459 0.0 57.3822 131.3349 0.0 9.7843 28.9257 0.1329 0.2042 66.8071 11.7656 28.1078 0.0 90.4707 29.227;
	0.6365 8.6003 36.8492 31.7509 4.741 7.5135 6.8751 6.1169 1.9638 11.8604 21.9238 32.706 49.2386 2.3028 15.8901 5.9865 7.4277 7.8711 1.7215 19.0816 2.2917 17.5314 8.7223 42.7418 31.5451 58.1885 4.0735 113.1535 104.079 104.079 128.0983 0.5536 5.7382 49.1161 7.2196 44.407 157.198 6.0314 103.7301 84.4959 65.0716 83.3495 16.8905 79.5343 158.8355;
	0.6458 8.7256 34.1674 29.5832 7.7141 2.1326 6.2974 4.8666 0.0 11.8187 21.8467 32.5909 49.0654 0.0 5.506 2.0744 2.5737 2.7274 0.0 13.7243 2.0991 4.9761 13.4282 37.2921 29.8677 48.2247 2.9939 226.8377 60.9561 60.9561 66.2019 1.0388 0.0 35.3265 0.0 26.008 199.0463 6.1641 34.2154 80.0028 34.1821 23.6578 49.4758 88.0267 201.1197;
	0.8458 11.4291 43.7302 18.8446 10.8338 0.4377 1.8811 3.4904 0.0447 6.4787 11.9757 17.8655 26.8964 2.8544 4.202 1.5831 1.9642 2.0815 0.0 10.9027 0.627 1.0214 34.0502 38.2795 41.2134 48.5915 1.1946 72.2942 72.3003 72.3003 6.6812 0.5691 0.0 28.0635 8.9489 30.8481 86.0518 2.9299 3.4735 110.3931 14.6174 4.856 2.1044 89.4402 86.9482;
	1.4771 19.9586 58.2712 0.046 12.8065 0.1811 0.0 0.0 0.0 1.5483 2.8621 4.2696 6.4279 0.8567 0.0364 0.0137 0.017 0.018 0.0 7.1371 0.0 0.4226 51.1366 47.4711 0.0 40.973 0.0055 148.1631 105.3586 105.3586 40.2622 4.598 0.0 18.3709 2.6857 44.953 143.1308 38.7057 0.0287 0.0 0.4714 2.009 0.0 104.88 144.6217;
	2.185 29.5245 82.418 3.6427 13.6796 0.0 4.638 0.0319 1.5427 24.9085 46.043 68.6871 103.4081 11.0969 8.106 3.0539 3.7891 4.0153 2.8605 8.6264 1.546 0.0 34.8388 65.5878 65.451 48.7695 0.1357 216.9585 173.8491 173.8491 35.8287 3.7653 9.5349 22.2043 34.7902 74.1756 193.4799 39.8945 56.6073 175.3152 3.9458 0.0 105.9792 163.6942 195.4953;
	1.5909 21.4962 9.6749 1.2541 12.8727 16.5103 2.5364 0.3846 0.0772 6.0365 11.1583 16.646 25.0605 0.9098 0.7033 0.265 0.3288 0.3484 2.1489 6.9682 0.8455 38.524 44.0544 13.0442 9.6212 32.1712 0.5271 186.995 242.5762 242.5762 156.2273 5.192 7.1629 17.9362 2.8524 103.4992 222.3924 47.9985 7.1657 25.7711 11.7896 183.154 71.103 134.1835 224.709;
	2.0456 27.6411 3.6849 0.0364 8.5797 0.0187 11.312 0.1261 2.3377 0.3613 0.6679 0.9963 1.5 1.9088 0.7394 0.2786 0.3456 0.3663 1.2351 0.2604 3.7707 0.0435 2.4955 0.412 0.5101 0.14 0.2421 278.9282 294.3857 294.3857 117.6594 7.8747 4.1169 0.6703 5.9844 125.6046 285.1894 68.7716 6.0885 1.3665 0.4797 0.207 71.3949 105.0249 288.1601;
	2.8317 38.2622 83.7974 0.0352 12.5485 0.0 3.0567 0.0756 1.4406 2.7546 5.0918 7.596 11.4357 2.363 12.7351 4.7979 5.9529 6.3083 27.8033 38.2588 1.0189 0.0 44.641 2.2159 1.6869 0.1355 0.0215 394.038 301.6946 301.6946 199.4981 11.7879 92.6778 98.4781 7.4085 128.723 332.9656 49.1432 3.5779 4.5185 0.0302 0.0 0.0 171.4543 336.434;
	2.677 36.1716 3.2564 0.0063 13.4175 0.0 2.8796 0.0 1.7714 3.3738 6.2364 9.3035 14.0064 0.8949 15.0175 5.6577 7.0198 7.4389 21.8376 40.2092 0.9599 0.0 3.1213 0.1644 0.0125 0.0 0.0 301.4362 381.5691 381.5691 193.7922 20.7332 72.7921 103.4985 2.8058 162.8028 449.0155 76.7948 0.7912 0.0335 0.0125 0.0 112.7711 210.3142 453.6928;
	2.5224 34.0832 5.3126 0.085 13.8835 17.4053 1.7736 0.0648 7.9919 14.5751 26.9419 40.192 60.5088 5.8667 5.7813 2.1781 2.7024 2.8637 42.4928 13.0146 0.5912 40.6123 16.1887 2.4399 2.4401 0.3269 0.0367 512.455 501.5052 501.5052 328.642 32.1202 141.6426 33.4997 18.3929 213.9756 547.7749 95.0458 12.8663 6.5359 2.078 193.0826 101.9883 212.6709 553.4809;
	2.8679 38.7513 82.8038 0.0 13.9891 24.6697 1.2549 0.1652 4.9067 9.9317 18.3586 27.3875 41.2317 7.0788 1.0518 0.3962 0.4916 0.521 7.8189 44.259 0.4183 57.5625 33.5819 0.0379 0.1152 59.9348 0.255 766.7299 470.5629 470.5629 379.0052 45.5994 26.063 113.9228 22.1929 200.7735 623.2416 79.8072 26.1253 0.3085 0.0085 273.6687 91.4942 202.8888 629.7337;
	2.7902 37.7019 0.7927 0.0 14.0615 1.0723 18.3918 0.0106 26.7267 23.8853 44.1516 65.8655 99.1601 3.0675 1.3254 0.4993 0.6195 0.6565 19.8971 22.3613 6.1306 2.502 63.4971 0.0 0.0 48.4589 0.0006 760.0871 451.5192 451.5192 351.0121 45.8745 66.3238 57.5582 9.6171 192.6482 570.2485 81.3478 71.5916 0.0 0.2881 11.8952 96.2923 169.8741 576.1886;
	3.1915 43.1245 86.5255 1.1787 15.0637 4.0983 9.8816 0.9177 28.368 25.426 46.9997 70.1142 105.5566 8.1131 22.1302 8.3374 10.3446 10.9622 16.3 32.575 3.2939 9.5626 74.4911 81.326 0.7078 61.1441 0.4015 665.9943 400.4873 400.4873 266.8502 57.8361 54.3332 83.8481 25.4356 170.8746 582.28 80.783 156.8365 1.8958 0.001 45.4635 103.9077 186.4982 588.3454;
	3.5908 48.5192 91.035 20.0877 14.9133 22.9076 12.2351 15.113 27.9671 26.3398 48.6888 72.6341 109.3502 9.8437 6.8297 2.573 3.1925 3.3831 0.1939 58.6046 4.0784 53.4511 64.7717 82.2176 96.0752 72.9564 6.4362 715.5663 325.4975 325.4975 230.6679 58.8074 0.6462 150.8485 30.8612 138.8789 487.7765 104.7871 123.2703 257.3442 13.7379 254.1218 0.6706 215.9386 492.8575;
	3.6256 48.9901 93.5033 119.137 14.9407 25.0406 14.0081 17.5753 27.9853 27.435 50.7132 75.6542 113.8969 7.3256 55.6067 20.9495 25.9929 27.5447 3.9797 68.1717 4.6694 58.4281 71.0814 87.6486 99.6367 75.7064 8.9873 789.7468 353.9213 353.9213 297.5959 40.365 13.2658 175.474 22.9668 151.0064 435.9018 96.5836 70.837 266.8839 11.4581 277.7838 136.7949 228.2836 440.4425;
	3.4046 46.0031 90.2772 110.4141 14.7314 15.9381 11.7373 17.6963 27.7085 27.4448 50.7312 75.681 113.9373 10.8291 52.5765 19.8079 24.5765 26.0437 11.8144 55.0874 3.9124 37.1889 66.8902 87.4728 102.0617 74.6467 8.4014 735.4829 390.4764 390.4764 286.5516 48.8403 39.3813 141.7952 33.9505 166.6033 435.2804 74.7794 320.1098 273.3795 7.2654 176.8067 133.0135 233.5927 439.8146;
];
