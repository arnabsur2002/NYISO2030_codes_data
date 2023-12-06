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
	3.5982 48.6201 89.5025 118.0035 14.6721 15.1972 16.1803 17.8958 27.2144 22.4663 41.5286 61.9526 93.2692 7.8779 21.8463 8.2305 10.2119 10.8215 16.497 28.8216 5.3934 35.4601 56.0723 83.5511 98.2643 72.6661 7.9318 720.4422 401.3354 401.3354 218.5388 39.2972 54.9898 74.1868 24.6983 171.2364 517.7682 58.0817 325.1453 263.208 15.6871 168.5874 131.203 203.0648 523.1617;
	3.6584 49.4333 91.1944 119.17 14.6545 17.4009 15.312 17.5629 27.1534 23.868 44.1197 65.818 99.0886 11.9863 15.616 5.8833 7.2996 7.7354 14.6609 16.7324 5.104 40.6022 64.9809 85.8884 101.0405 72.543 7.3191 700.3492 390.0841 390.0841 188.2841 31.7929 48.8696 43.0692 37.5785 166.4359 491.4353 57.7645 323.5748 270.6442 10.8251 193.0343 123.5068 203.214 496.5544;
	3.27 44.1843 86.6303 115.6679 14.4134 12.7591 14.2294 15.9013 27.6657 25.0665 46.335 69.1227 104.0638 10.0053 18.7137 7.0503 8.7476 9.2698 27.0649 26.2796 4.7431 29.7712 69.761 84.3306 94.5936 70.3858 7.1402 641.9536 337.59 337.59 148.14 33.1117 90.2163 67.6437 31.3681 144.0384 384.7811 38.9193 269.8336 253.3758 4.8718 141.541 90.3652 174.26 388.7892;
	2.823 38.1447 85.7035 110.0216 14.0481 12.0229 12.3953 15.6614 26.2022 22.7434 42.0409 62.7167 94.4196 10.9015 9.9349 3.7429 4.644 4.9213 12.8725 24.333 4.1318 28.0534 69.3585 81.8116 95.2524 72.5207 8.0834 508.7965 257.0059 257.0059 157.6732 26.5149 42.9084 62.6332 34.1776 109.6559 296.8104 33.1883 183.1827 255.1405 0.6519 133.3741 81.0591 165.9884 299.9022;
	2.3769 32.1166 87.0114 114.9067 14.0103 14.1643 11.993 17.359 17.7671 21.6862 40.0866 59.8014 90.0306 14.5068 13.3958 5.0468 6.2618 6.6356 21.3507 27.6724 3.9977 33.05 58.7179 82.4703 96.4963 71.9139 8.8725 404.2447 198.4331 198.4331 135.4063 24.188 71.1689 71.2288 45.4808 84.6648 182.2023 33.783 172.94 258.4721 10.9064 157.1292 87.5505 190.107 184.1002;
	2.8363 38.3245 86.3728 113.4312 13.1202 19.5194 12.1766 16.9551 10.1024 20.2176 37.3719 55.7516 83.9337 25.9015 10.9453 4.1236 5.1163 5.4217 30.5802 29.1681 4.0589 45.5453 61.0733 82.2998 96.0433 69.8003 6.5962 307.2897 180.2167 180.2167 122.0163 24.8826 101.9339 75.0788 81.2048 76.8925 158.2016 36.2351 195.1465 257.2589 11.4123 216.5354 87.4833 196.9356 159.8495;
	2.4285 32.8147 83.7328 110.9786 12.9889 20.1104 12.4175 15.4573 11.801 26.445 48.8832 72.9241 109.7868 38.6215 11.0595 4.1666 5.1697 5.4783 24.6237 35.2911 4.1392 46.9242 69.77 82.2974 95.0176 69.4039 9.3518 251.6389 182.3121 182.3121 104.3278 15.9975 82.079 90.8394 121.0836 77.7865 169.2685 26.237 157.0552 254.5113 5.8532 223.0912 90.0676 213.3966 171.0317;
	1.7312 23.3926 60.3717 110.461 13.9395 18.0135 13.1259 14.1408 18.9905 28.7965 53.2299 79.4085 119.5491 39.4929 25.3684 9.5574 11.8582 12.5662 52.7203 59.0981 4.3753 42.0315 73.7934 80.9746 89.3728 68.2067 9.6127 129.1218 160.6245 160.6245 96.3432 8.6249 175.7344 152.1187 123.8157 68.5331 118.7096 42.3084 176.8228 239.3914 6.9866 199.83 90.2315 191.9131 119.9462;
	2.7632 37.3366 78.856 99.6955 14.1982 23.2652 11.226 16.0505 21.6263 28.3038 52.3192 78.0499 117.5038 38.8408 19.0728 7.1856 8.9154 9.4477 63.5818 58.3962 3.742 54.2856 73.052 82.3776 96.277 69.3025 10.16 136.711 134.766 134.766 84.3198 5.6092 211.9392 150.3119 121.771 57.5002 130.344 28.0661 147.4093 257.8848 17.6893 258.089 80.6742 224.1991 131.7018;
	1.7901 24.1883 79.6101 102.5416 12.397 13.726 10.1523 16.1923 25.801 28.6073 52.8801 78.8867 118.7634 42.0521 4.2989 1.6196 2.0095 2.1295 72.0772 48.3461 3.3841 32.0274 71.2198 82.1843 93.993 69.2151 11.2465 236.5871 211.8687 211.8687 98.534 7.106 240.2573 124.443 131.8389 90.3973 209.7767 27.2544 59.8218 251.7669 2.7296 152.2675 76.7365 192.8421 211.9619;
	1.37 18.5117 76.772 102.9245 11.1453 23.2739 13.3708 15.7443 24.6649 27.4751 50.7873 75.7647 114.0633 49.1984 10.8805 4.0992 5.086 5.3896 67.4286 36.6035 4.4569 54.3059 68.1277 83.0995 83.4054 68.8062 11.4938 306.9668 232.7265 232.7265 130.3583 6.1581 224.7621 94.2175 154.2436 99.2966 279.7638 28.7603 154.8774 223.4074 2.1158 258.1857 78.6779 170.6669 282.678;
	1.521 20.5517 82.7926 90.1825 11.6838 27.9011 18.7852 15.9809 26.2614 28.0972 51.9373 77.4802 116.6461 51.273 23.5533 8.8736 11.0098 11.6671 79.8239 49.8393 6.2617 65.1026 71.4755 82.2717 85.071 67.0258 12.0418 375.5204 306.2776 306.2776 248.0374 16.5243 266.0797 128.2865 160.7478 130.6784 351.6426 44.4532 186.0316 227.8688 6.3765 309.5162 98.4517 171.8478 355.3055;
	2.5311 34.2004 83.1112 84.1611 13.4894 28.6574 20.7532 15.303 27.2573 28.1806 52.0915 77.7102 116.9923 56.0348 47.1931 17.7797 22.06 23.3771 85.7723 63.5771 6.9177 66.8673 70.1526 81.929 92.7268 61.0946 11.3698 539.4792 411.8043 411.8043 289.0059 24.019 285.9076 163.6476 175.6766 175.7032 531.1002 59.3134 216.6362 248.3754 7.4134 317.9064 126.4018 198.6703 536.6325;
	2.9809 40.2781 84.2499 100.4487 14.0045 25.8545 21.3583 16.9203 26.7498 28.7361 53.1182 79.2419 119.2983 51.0653 64.8372 24.427 30.3076 32.117 86.0957 60.0979 7.1194 60.3271 69.6669 83.5894 95.7257 66.853 11.6672 545.6273 525.0155 525.0155 371.8347 26.8706 286.9857 154.6921 160.0967 224.0066 559.5444 80.0211 264.8949 256.4082 18.2923 286.8124 114.7639 226.9813 565.373;
	3.5633 48.1475 87.6668 110.2936 14.4796 30.5673 25.3977 18.0275 27.4477 25.414 46.9774 70.081 105.5066 63.1775 96.4515 36.3375 45.0855 47.7771 85.8473 58.8487 8.4659 71.3238 52.4233 88.4117 100.9833 70.9004 13.4201 834.1012 605.6029 605.6029 443.2772 31.2811 286.1577 151.4766 198.0702 258.3906 790.689 109.6816 412.211 270.4909 34.9535 339.0936 143.074 235.861 798.9253;
	3.5537 48.0177 86.9932 109.8556 14.3166 31.391 27.2696 18.0352 26.165 20.6781 38.2232 57.0216 85.8456 62.2457 127.5345 48.0479 59.6149 63.174 89.2873 67.7164 9.0899 73.2456 46.8149 88.0544 100.774 70.5742 12.9711 874.4609 679.9392 679.9392 600.0447 43.9012 297.6243 174.3023 195.1486 290.1074 865.2964 155.7083 350.5586 269.9303 29.6677 348.2304 161.2549 224.1273 874.3099;
	3.6781 49.6995 87.0069 111.4314 14.8417 32.6647 31.2619 18.429 27.0378 22.0355 40.7323 60.7646 91.4808 65.247 160.7001 60.5428 75.118 79.6026 89.2525 73.1423 10.4206 76.2176 33.5666 84.8622 101.2822 72.3155 12.9234 937.8914 755.361 755.361 688.3317 78.4882 297.5084 188.2686 204.5582 322.2873 970.1553 199.4544 413.1099 271.2915 39.588 362.36 210.4114 265.5902 980.2611;
	3.6687 49.5718 90.9935 111.0635 14.4716 33.0502 30.6705 18.128 26.9831 18.9834 35.0905 52.3482 78.8099 66.1619 183.8983 69.2826 85.9617 91.0938 88.8015 73.2487 10.2235 77.1171 38.6627 84.3737 101.926 72.8939 13.2447 1012.1416 803.2283 803.2283 742.8523 93.1801 296.005 188.5423 207.4264 342.7107 1101.7674 236.3644 433.8566 273.016 111.3555 366.6368 203.2521 257.9002 1113.2441;
	3.7743 50.9997 89.8213 112.0974 14.3125 32.9686 30.2339 12.8377 26.1331 21.5817 39.8935 59.5132 89.5969 65.3173 191.2617 72.0567 89.4037 94.7412 85.2645 72.51 10.078 76.9267 52.7077 83.3546 100.9942 62.2306 12.541 1075.0355 780.8132 780.8132 659.4065 102.9025 284.2151 186.6408 204.7785 333.147 1077.9106 236.5895 418.8436 270.5201 115.1649 365.7316 210.7552 267.07 1089.1388;
	3.6641 49.5096 90.4862 102.9675 14.7955 33.4223 31.7511 3.3703 26.6008 22.435 41.4708 61.8662 93.1392 67.8732 192.3162 72.454 89.8966 95.2636 80.926 68.1934 10.5837 77.9854 54.3444 32.3047 28.9661 55.3394 9.5676 1081.2212 770.8324 770.8324 675.4075 103.9137 269.7532 175.5301 212.7915 328.8885 1048.5615 234.4983 449.0874 77.5878 119.7229 370.7648 214.4227 224.4981 1059.4841;
	3.8199 51.6146 94.1081 118.7267 15.1225 34.1476 31.2865 18.6851 17.1151 23.0275 42.5659 63.5 95.5988 64.3264 186.7322 70.3503 87.2865 92.4976 76.0696 66.5931 10.4288 79.6778 45.7275 75.7727 102.3408 71.6362 13.865 1132.4952 775.187 775.187 717.2538 101.2543 253.5653 171.4108 201.672 330.7465 999.3876 226.3941 435.8541 274.127 120.9108 378.8109 213.8542 262.8515 1009.7979;
	3.7464 50.6223 93.4655 120.76 15.1971 33.7953 30.2417 17.6099 8.6457 24.1245 44.5938 66.5252 100.1533 61.2424 188.5015 71.0168 88.1135 93.374 85.9204 69.3383 10.0806 78.8557 55.3266 86.5289 102.1873 73.8568 13.5621 1160.8111 753.0928 753.0928 704.7147 106.8501 286.4013 178.477 192.0031 321.3196 1035.3376 236.6038 434.5901 273.716 122.4365 374.9023 210.4264 241.5195 1046.1224;
	3.8382 51.862 94.3639 119.215 15.3276 33.8898 31.427 18.0419 19.1326 22.9015 42.3331 63.1526 95.0759 63.6384 189.5827 71.4242 88.6189 93.9096 88.3433 67.0497 10.4757 79.0763 57.556 87.6195 93.2981 75.8702 13.7617 1104.1815 788.3654 788.3654 733.1477 109.7264 294.4776 172.5861 199.5151 336.3692 1079.2082 246.3321 444.2128 249.9056 121.6237 375.9512 209.3165 265.8632 1090.4499;
	3.8463 51.9722 94.5245 120.4612 15.3075 33.5078 33.3115 18.5806 10.2007 20.4518 37.8049 56.3975 84.9061 63.5893 193.4251 72.8718 90.415 95.8129 87.0514 67.9121 11.1038 78.1848 53.3271 88.4398 105.3545 74.9705 13.9396 1160.4836 784.7298 784.7298 740.3139 111.184 290.1713 174.8058 199.361 334.8181 1071.3757 264.933 453.9641 282.1996 123.9049 371.7127 210.7048 271.956 1082.5358;
];
