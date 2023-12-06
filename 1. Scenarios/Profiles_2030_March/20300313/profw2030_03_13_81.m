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
	0.8054 10.8825 57.0505 68.0297 7.4859 16.9939 2.7366 7.8718 3.3807 18.8694 34.8798 52.0338 78.3365 1.8856 118.5675 44.6696 55.4234 58.7323 64.6559 65.8876 0.9122 39.6524 71.2049 74.8432 47.8528 39.9003 4.1969 148.1192 324.0279 324.0279 236.8192 46.5506 215.5195 169.5947 5.9115 138.2519 380.7997 87.164 15.0556 128.1772 63.3363 188.5191 21.3144 69.4225 384.7663;
	0.5631 7.6093 53.421 62.8996 6.9176 9.251 2.6026 9.4132 3.5562 11.2995 20.887 31.1593 46.9102 0.2824 102.5779 38.6456 47.9492 50.8118 64.1988 66.6282 0.8675 21.5856 35.5804 74.5643 50.6498 44.2978 5.8612 28.8623 206.183 206.183 152.7443 28.5646 213.9959 171.5011 0.8855 87.9714 283.593 88.2487 26.6285 135.6692 74.3332 102.6239 9.9597 88.8114 286.5471;
	0.4314 5.8285 58.1258 65.7966 5.359 13.9137 2.9703 7.6401 7.8574 9.3609 17.3035 25.8135 38.862 2.6164 79.6146 29.9943 37.2152 39.437 55.1417 65.4994 0.9901 32.4653 28.2861 72.8778 48.9614 45.7164 5.0932 0.0 0.2282 0.2282 6.6657 13.8151 183.8056 168.5956 8.2026 0.0974 156.6107 1.4815 79.5981 131.1467 68.7032 154.3495 26.4552 94.3388 158.242;
	0.475 6.4178 65.3195 71.1831 7.4259 5.4529 2.8832 11.3811 3.6453 14.5295 26.8575 40.0661 60.3192 0.4415 84.6589 31.8947 39.5731 41.9357 40.3514 68.3233 0.9611 12.7235 48.7442 79.5448 59.2753 64.451 7.2451 0.0 0.0 0.0 9.1882 18.6459 134.5048 175.8644 1.3841 0.0 0.4344 20.0457 66.7528 158.773 66.1323 60.4913 7.2991 136.7734 0.4389;
	0.5533 7.4766 76.8328 73.0126 9.5894 11.6936 9.714 10.5765 13.9431 15.4924 28.6375 42.7215 64.3169 0.4244 122.3478 46.0938 57.1905 60.6048 54.8762 69.3497 3.238 27.285 52.7641 74.0049 67.9482 60.1682 7.5418 0.0 0.0545 0.0545 21.474 9.8652 182.9208 178.5064 1.3305 0.0233 0.6067 11.1498 208.8995 182.004 67.0654 129.7205 50.4201 142.9894 0.613;
	0.4648 6.2811 74.1725 58.3932 9.0374 4.2246 2.8936 8.258 1.461 8.5729 15.8469 23.6405 35.5907 0.4048 133.281 50.2129 62.3011 66.0206 77.7381 69.9821 0.9645 9.8574 36.7435 70.1861 44.8517 59.2837 6.5068 0.0 0.6173 0.6173 52.335 11.4881 259.1269 180.1342 1.269 0.2634 0.4173 11.0514 40.3555 120.1384 46.8081 46.8647 22.8308 130.3102 0.4217;
	0.4511 6.0953 56.3051 40.8163 9.1565 3.3464 3.809 6.7067 2.6711 7.4277 13.73 20.4824 30.8362 3.4753 116.4918 43.8876 54.4532 57.7041 61.2911 69.7759 1.2697 7.8084 25.0942 54.0466 31.6741 60.8619 3.8705 8.9153 0.0062 0.0062 29.2928 0.5842 204.3037 179.6034 10.8955 0.0026 0.4306 2.4928 124.1779 84.8415 26.19 37.1233 32.9815 138.9594 0.4351;
	0.5288 7.1446 33.8671 29.0827 3.8004 3.1258 4.4419 6.3349 2.2745 4.9444 9.1397 13.6346 20.5268 0.857 57.4816 21.6559 26.8693 28.4734 16.2342 46.1789 1.4806 7.2936 13.5202 32.1717 27.3699 57.1772 3.7353 0.0 0.0209 0.0209 13.6534 0.2818 54.114 118.8646 2.6867 0.0089 5.7351 2.0187 45.3577 73.3122 5.8586 34.6758 9.197 111.1399 5.7948;
	0.6195 8.3711 25.1746 24.4652 3.7409 2.7144 10.5784 4.6928 26.6299 2.7373 5.0599 7.5484 11.3641 26.5863 13.0106 4.9017 6.0817 6.4448 4.8931 16.821 3.5261 6.3337 8.0314 26.8606 24.2906 50.3843 2.8446 0.1453 11.911 11.911 53.1575 3.2101 16.3104 43.2972 83.3518 5.082 13.7453 6.16 396.7763 65.0642 0.0481 30.112 19.4295 77.2871 13.8885;
	0.6064 8.1944 27.9494 25.4166 7.6682 1.1559 4.8072 3.7887 14.747 4.073 7.5288 11.2315 16.9089 3.7746 11.2494 4.2381 5.2584 5.5724 0.4136 13.7042 1.6024 2.6971 13.1 32.7879 26.4385 40.8011 2.2002 27.6886 49.4434 49.4434 42.4062 0.7689 1.3786 35.2746 11.8338 21.0958 12.6781 2.6512 200.733 70.8173 1.6454 12.823 50.9981 95.1163 12.8102;
	0.8267 11.17 35.2256 0.0 10.4888 0.0444 2.5808 1.4249 14.4508 1.4023 2.5921 3.8669 5.8216 7.5603 7.4948 2.8236 3.5034 3.7125 31.8653 11.1139 0.8603 0.1036 36.1135 35.5277 11.4339 43.5626 0.0 41.0837 67.4593 67.4593 4.3968 0.5721 106.2175 28.6071 23.7026 28.7826 56.3892 0.7696 117.3381 30.6264 0.5536 0.4924 10.9912 91.5494 56.9766;
	1.5655 21.1529 56.9928 0.0 12.9237 0.2335 3.1746 0.0 3.6668 0.1749 0.3233 0.4823 0.7261 3.4905 0.248 0.0934 0.1159 0.1228 0.7603 6.1193 1.0582 0.5447 56.3681 52.4209 0.0 39.4535 0.0 73.2604 105.1565 105.1565 6.2438 0.0789 2.5345 15.7512 10.9431 44.8668 112.9947 0.077 12.9256 0.0 0.0 2.5898 49.7355 125.2954 114.1717;
	2.1179 28.618 79.556 0.0364 14.0309 0.0 7.2744 0.0 1.5152 22.1514 40.9466 61.0842 91.962 4.378 21.6525 8.1575 10.1213 10.7255 2.0445 8.5725 2.4248 0.0 33.8266 66.9547 58.7076 52.7726 0.0 196.5647 169.2387 169.2387 75.6844 4.4157 6.8151 22.0656 13.7256 72.2085 169.1114 12.548 38.4675 157.2524 0.0 0.0 115.0946 167.4644 170.873;
	1.5888 21.4684 0.0 0.0 14.1032 18.4683 3.9111 0.0007 5.7607 1.0022 1.8526 2.7637 4.1608 2.0602 49.9115 18.8039 23.3307 24.7236 1.7259 9.0887 1.3037 43.0927 45.5816 7.5585 0.0381 26.745 0.0 179.6833 214.3719 214.3719 130.0542 4.7075 5.7529 23.3943 6.4589 91.4654 191.9723 23.0452 66.3804 0.102 1.9495 204.8748 84.9798 127.9358 193.972;
	2.1725 29.3559 1.8244 7.7441 9.8695 3.4255 0.8391 0.4511 10.5679 2.0373 3.7658 5.6179 8.4577 2.0536 32.2212 12.1391 15.0615 15.9607 7.9538 4.8452 0.2797 7.9927 30.6131 33.7322 9.4635 1.2422 0.2471 271.9379 277.3824 277.3824 116.8813 8.811 26.5128 12.4715 6.4383 118.3498 266.622 34.7969 9.4585 25.3487 8.9682 37.9998 88.4127 109.112 269.3993;
	3.3883 45.7828 82.6991 12.6713 14.1477 15.7488 0.7096 0.0066 3.6777 5.0593 9.352 13.9513 21.0036 7.1133 129.8769 48.9304 60.7099 64.3344 56.61 31.2398 0.2365 36.7471 48.4642 7.2152 5.7049 0.9587 0.0 372.8194 305.648 305.648 211.1947 13.158 188.7 80.4114 22.3013 130.4098 321.3899 49.4631 3.0484 15.281 27.1631 174.7062 92.0608 189.7724 324.7377;
	3.6888 49.8436 51.1738 87.7222 15.1258 32.71 6.4795 0.5058 25.129 12.8157 23.6897 35.3404 53.2047 14.8447 122.9161 46.3079 57.4561 60.8863 30.682 6.4348 2.1598 76.3233 10.0373 22.6919 9.083 6.2857 0.0 337.5452 395.033 395.033 224.7975 24.6476 102.2733 16.5631 46.54 168.5474 444.9597 85.7373 55.3779 24.3295 27.2293 362.8627 157.2296 233.4027 449.5947;
	3.111 42.0363 29.553 53.7126 14.8114 24.4924 4.2392 2.2623 21.2126 24.0937 44.5368 66.4402 100.0254 38.7876 168.4821 63.4747 78.7556 83.4574 22.7312 24.6245 1.4131 57.1489 18.8633 50.3167 17.8869 19.5936 0.0 551.4858 516.9604 516.9604 351.39 34.978 75.7705 63.3834 121.6044 220.5698 564.6466 110.6277 103.3548 47.9113 18.6532 271.7022 127.1904 234.9915 570.5283;
	3.2023 43.2695 86.8895 27.5124 14.4555 28.2276 6.9166 0.4171 20.9159 9.6816 17.8963 26.6977 40.1933 17.3852 69.7643 26.2833 32.6107 34.5577 19.1394 42.9844 2.3055 65.8644 33.039 26.6479 19.2251 61.9778 0.0014 767.4912 452.6785 452.6785 370.6976 41.8162 63.7979 110.6418 54.5048 193.1428 603.4109 83.465 131.7024 51.4958 2.8105 313.1384 118.2934 205.8004 609.6965;
	3.0058 40.6144 6.5857 16.0246 14.2606 6.259 18.3703 2.7683 26.6899 22.2705 41.1667 61.4125 92.4562 36.5386 42.1964 15.8972 19.7243 20.9019 9.6875 20.6839 6.1234 14.6043 62.755 39.2048 30.8858 58.3217 0.8107 655.723 399.3491 399.3491 328.6831 36.2115 32.2918 53.2405 114.5534 170.3889 472.1488 76.7524 102.5088 82.7297 35.5964 69.4332 106.6046 176.2319 477.067;
	3.0553 41.2844 85.7856 1.6026 14.1348 4.1282 0.3662 0.122 26.3419 23.8917 44.1635 65.8833 99.1869 11.0779 27.5967 10.3969 12.8998 13.67 0.0587 31.9611 0.1221 9.6326 72.9575 84.6196 7.6612 64.0092 0.0631 487.5919 329.3433 329.3433 226.4317 50.5194 0.1958 82.268 34.7309 140.5198 442.29 70.1122 0.6949 20.5211 7.9657 45.796 102.0343 165.137 446.8972;
	3.5651 48.1729 88.0828 4.4182 14.0411 22.6895 11.3017 13.8715 26.1428 25.3604 46.8782 69.9331 105.2839 14.7717 9.1779 3.4577 4.2901 4.5463 0.4003 52.5339 3.7672 52.9423 60.4195 84.6751 97.2455 71.6852 5.8237 653.8498 290.1659 290.1659 209.6439 50.8118 1.3345 135.2224 46.3112 123.8041 430.7654 101.6139 6.1839 260.4789 13.2524 251.7027 0.3896 181.3793 435.2526;
	3.6808 49.7352 87.6498 113.3926 14.1483 25.6783 11.8314 16.2547 26.052 24.8777 45.986 68.6021 103.2801 10.0286 55.0814 20.7516 25.7474 27.2845 0.016 64.5785 3.9438 59.9161 65.4737 87.0481 96.3222 71.5012 7.5212 671.42 294.8377 294.8377 267.7525 37.3844 0.0535 166.2252 31.4409 125.7974 383.396 98.4498 0.5906 258.0058 11.8658 284.8585 135.4414 196.2645 387.3897;
	3.4622 46.782 88.6714 107.3524 14.684 16.9494 9.7056 17.2609 26.1949 25.487 47.1124 70.2824 105.8097 13.3032 46.8898 17.6655 21.9183 23.2268 2.3662 48.612 3.2352 39.5486 61.464 88.7939 100.0505 72.6066 7.6448 629.1459 345.0103 345.0103 251.9378 42.124 7.8874 125.1274 41.7075 147.2044 381.5337 77.9778 264.1581 267.9924 13.6266 188.0253 129.0739 224.0861 385.508;
];
