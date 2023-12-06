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
	0.6544 8.8422 39.5073 57.1721 7.2223 0.3077 2.6561 7.9656 1.563 17.3821 32.1306 47.9325 72.1622 16.4462 163.1274 61.4573 76.2526 80.8049 85.1375 72.2111 0.8854 0.7179 69.973 58.7989 44.2457 42.6415 3.9702 202.9324 345.1508 345.1508 212.9277 42.1764 283.7916 185.8715 51.5609 147.2643 390.4338 84.5076 14.9777 118.5153 61.5986 3.4131 10.2479 54.9978 394.5008;
	0.415 5.6078 30.4743 54.7774 6.7241 0.0039 2.3617 9.8086 4.8289 9.8935 18.288 27.2821 41.0731 6.6054 134.4314 50.6462 62.8388 66.5904 76.743 71.7326 0.7872 0.0091 34.127 63.5233 44.0246 42.1468 5.7028 110.5854 242.5523 242.5523 153.1403 30.1923 255.8099 184.6398 20.7089 103.489 304.4471 92.1601 49.6768 117.9231 72.8461 0.0433 0.0 69.1953 307.6184;
	0.3121 4.2172 56.6466 70.6055 6.6905 1.4665 1.4215 11.3402 6.9801 7.788 14.3961 21.4761 32.3322 5.4266 92.4714 34.8381 43.225 45.8056 70.4138 70.7156 0.4738 3.4219 24.4593 74.6269 54.0702 51.0049 6.231 12.8865 101.3066 101.3066 22.2338 15.8846 234.7127 182.0222 17.0132 43.2241 172.4505 10.9335 49.4899 144.831 71.3421 16.2689 0.6032 94.043 174.2469;
	0.44 5.9452 67.1073 83.576 9.3703 10.4953 10.7336 14.6088 23.4906 13.8743 25.6464 38.2594 57.5992 0.9764 96.4931 36.3532 45.1049 47.7978 47.5186 70.2657 3.5779 24.489 46.1521 80.8996 62.7397 63.5626 8.2736 20.207 115.4338 115.4338 56.9516 17.6984 158.3953 180.864 3.061 49.2518 45.9367 22.3023 190.6138 168.0528 66.3532 116.4278 12.8186 139.5379 46.4152;
	0.501 6.7693 78.9796 80.7155 10.5971 4.0788 3.518 16.1604 4.9569 15.7912 29.1898 43.5455 65.5575 0.4373 125.3584 47.228 58.5978 62.0961 58.7493 69.8876 1.1727 9.5171 50.1331 81.6242 81.2889 72.5219 9.2682 33.6756 83.7274 83.7274 45.187 9.9376 195.8309 179.8909 1.371 35.7237 50.0408 34.5681 141.3334 217.7381 72.8752 45.2472 4.4326 145.1175 50.5621;
	0.4317 5.8338 75.2685 63.6218 10.7784 4.0094 2.8639 12.9115 4.8115 9.1745 16.9589 25.2994 38.0881 0.2952 154.3694 58.1578 72.1587 76.4667 83.2148 70.2545 0.9546 9.3554 37.3006 74.9232 53.5018 70.4893 7.6565 63.9855 121.7193 121.7193 51.6026 13.9688 277.3827 180.8353 0.9255 51.9336 24.0584 68.5391 66.7549 143.3084 54.8059 44.4781 24.1663 134.1989 24.309;
	0.4831 6.5277 55.5381 40.8608 9.5672 2.7941 4.316 7.5423 3.996 7.8588 14.5268 21.6711 32.6257 1.8279 133.794 50.4061 62.5409 66.2747 71.3177 70.4562 1.4387 6.5195 24.7106 52.309 28.6734 63.5211 3.6204 54.2623 108.6101 108.6101 58.127 12.5318 237.7256 181.3543 5.7307 46.3403 16.0569 70.9466 176.9541 76.8039 27.4232 30.9955 32.3625 129.0836 16.2242;
	0.5128 6.9297 32.1799 24.2424 3.8034 2.4678 4.67 5.7262 2.6182 5.4306 10.0384 14.9753 22.5452 6.2962 67.7775 25.5348 31.6821 33.5735 22.0686 51.5597 1.5567 5.7583 12.7857 23.9442 23.5256 56.9639 3.1576 42.4728 111.4485 111.4485 135.5776 14.2481 73.5618 132.7149 19.7396 47.5514 22.4731 73.0669 116.7227 63.015 11.5193 27.3766 12.7923 97.0325 22.7072;
	0.6355 8.5868 27.1548 24.8735 3.9279 2.3152 3.8946 5.2055 5.4509 12.4482 23.0102 34.3267 51.6787 3.2929 17.3762 6.5464 8.1223 8.6073 48.7352 19.6442 1.2982 5.4021 6.6257 30.1409 25.5868 50.9861 4.0506 21.1689 91.0971 91.0971 91.6348 11.1511 162.4506 50.5643 10.3236 38.8681 13.5556 48.5889 6.8624 68.5361 7.7906 25.683 19.7582 75.4125 13.6968;
	0.6116 8.2642 27.1366 21.9842 7.2156 0.4198 3.4859 3.426 0.4984 3.285 6.0722 9.0586 13.6376 0.2073 10.7826 4.0623 5.0402 5.3411 85.7538 12.4996 1.162 0.9795 10.3262 29.9427 23.8537 40.1504 2.5396 46.9196 150.0495 150.0495 190.0209 10.1679 285.846 32.1741 0.6499 64.0211 14.0406 108.4358 19.6765 63.8939 11.7971 4.657 46.2273 79.3942 14.1868;
	0.8869 11.9836 35.4079 0.5969 10.7238 0.1614 0.0 2.8631 0.0 2.5145 4.6481 6.934 10.4391 7.1128 23.4209 8.8237 10.9479 11.6015 87.5515 10.8899 0.0 0.3766 26.6057 36.3265 37.9753 43.7162 1.0625 141.5714 82.8179 82.8179 139.6594 3.422 291.8384 28.0306 22.2997 35.3356 79.2488 52.1045 2.2255 101.7195 16.5678 1.7905 2.5708 77.2419 80.0743;
	1.5243 20.5968 45.7241 0.0 12.9669 0.0 3.8381 0.0 0.0 0.0062 0.0114 0.0171 0.0257 10.5124 28.6532 10.7949 13.3937 14.1933 77.0609 9.6069 1.2794 0.0 36.3272 48.0352 0.0 35.905 0.0 202.8639 127.3016 127.3016 198.7308 15.9778 256.8696 24.7283 32.9579 54.3153 146.023 41.0433 8.9714 0.0 2.0592 0.0 0.9358 12.5163 147.544;
	2.3285 31.4634 71.6782 0.0 13.9765 0.0 2.6606 0.0001 0.0095 20.5535 37.9928 56.6778 85.3281 10.9865 13.6499 5.1425 6.3805 6.7615 74.313 8.2605 0.8869 0.0 10.5915 59.2461 55.4335 42.3552 0.0018 248.9 188.5209 188.5209 228.4107 16.5512 247.7098 21.2625 34.4441 80.4356 195.5405 61.9464 11.8066 148.4826 2.9217 0.0 98.794 76.2268 197.5774;
	1.7971 24.2829 0.0 0.0166 13.9673 17.4421 0.0 0.0035 0.0 0.0023 0.0042 0.0062 0.0094 4.3874 0.8928 0.3364 0.4174 0.4423 46.0797 5.9966 0.0 40.6983 34.935 0.001 0.0206 28.2124 0.5602 220.1105 219.4495 219.4495 57.9642 7.8817 153.599 15.4352 13.7552 93.6318 199.7164 15.2581 0.0 0.0551 4.1048 193.4912 68.1402 26.3294 201.7968;
	2.2433 30.3124 0.0 0.0 9.1905 0.181 0.0829 0.0 0.0 0.0 0.0 0.0 0.0 6.8811 0.0012 0.0005 0.0006 0.0006 9.9525 0.0025 0.0276 0.4224 1.8554 0.0 0.0772 0.0 0.0 349.7746 288.193 288.193 117.3218 9.8799 33.1749 0.0063 21.5733 122.9623 300.5917 41.8478 0.0 0.2068 0.0032 2.0081 75.345 76.0148 303.7229;
	3.2096 43.3689 81.0044 0.1798 13.6864 4.7214 0.0 0.0001 0.0 0.0293 0.0542 0.0809 0.1217 26.5102 8.5445 3.2191 3.994 4.2325 74.3044 0.2678 0.0 11.0165 38.8051 0.0074 4.2743 0.0 0.0895 405.0103 296.2461 296.2461 178.23 14.0466 247.6814 0.6894 83.1132 126.3983 315.2675 43.277 0.0 11.4491 0.1369 52.3756 0.3478 159.6687 318.5516;
	3.3522 45.2954 0.0 0.0 14.0073 0.1741 1.8852 0.0 0.0 1.683 3.111 4.6409 6.9869 6.6751 3.8188 1.4387 1.7851 1.8917 83.1834 4.095 0.6284 0.4062 0.4549 0.0 0.0 0.0 0.0007 377.3029 371.2701 371.2701 181.7786 23.6448 277.2781 10.5405 20.9272 158.4086 439.4904 74.462 0.0032 0.0 39.0325 1.931 129.1129 189.0257 444.0684;
	2.641 35.6861 0.001 0.0 14.2929 18.1413 0.0 0.0016 0.0 1.605 2.9667 4.4258 6.663 8.8213 28.3992 10.6992 13.275 14.0675 65.4508 6.6955 0.0 42.3297 14.1828 0.0423 0.5861 0.0 0.001 531.6262 466.713 466.713 309.0987 31.3686 218.1693 17.2341 27.6559 199.1309 513.1769 96.5993 0.0 1.57 61.5762 201.2474 110.67 204.8404 518.5225;
	2.9752 40.2011 85.2964 4.7988 15.205 23.6172 0.064 1.5025 0.2454 9.3194 17.2268 25.699 38.6897 8.7636 66.2001 24.9405 30.9447 32.7921 44.0212 41.5351 0.0213 55.1069 29.7651 7.5983 7.2742 59.8869 1.4399 722.3263 444.8234 444.8234 343.8023 42.0363 146.7373 106.9115 27.475 189.7913 582.6133 72.0962 0.0 19.4844 24.991 261.9938 108.2818 203.127 588.6822;
	3.1163 42.1087 4.5949 1.6752 15.0413 1.601 17.4599 0.0059 25.8075 22.7293 42.0148 62.6778 94.361 24.0434 75.356 28.3899 35.2246 37.3275 60.9201 19.3524 5.82 3.7357 58.5247 0.0 0.0 48.6261 0.0478 697.2492 447.1043 447.1043 330.2004 43.0471 203.0671 49.8131 75.3793 190.7645 557.4934 73.4974 0.0 0.0 3.9441 17.7604 112.5248 176.6109 563.3006;
	3.3182 44.8366 87.0858 22.4452 15.0688 2.9811 0.0 0.2148 26.1602 23.9193 44.2144 65.9592 99.3013 9.8566 30.8948 11.6394 14.4415 15.3037 86.6842 32.4213 0.0 6.9558 71.9381 79.8004 0.0041 57.3168 1.1038 611.5743 391.8536 391.8536 239.0931 56.4846 288.9474 83.4525 30.9017 167.1909 561.0285 77.3283 0.0 0.0111 21.0016 33.0699 113.1145 159.3535 566.8726;
	3.5544 48.0274 89.0371 17.2997 14.7877 22.8052 10.5253 14.0754 25.7523 26.9662 49.8466 74.3613 111.9506 11.4702 81.4796 30.6969 38.087 40.3608 84.8101 54.0663 3.5084 53.2122 64.4632 82.0054 96.5825 69.5968 6.2637 632.5 299.6741 299.6741 183.6578 56.3144 282.7003 139.1667 35.9607 127.861 441.6468 96.6617 0.0 258.7031 15.3265 252.9862 18.8605 186.0162 446.2473;
	3.6026 48.6796 88.6828 112.5159 14.4582 24.5479 11.914 15.8245 25.8891 27.874 51.5246 76.8646 115.7192 7.1976 59.1847 22.2975 27.6654 29.3171 85.5827 64.972 3.9713 57.2783 71.0968 84.7977 96.0263 71.6429 7.8384 632.5336 315.0852 315.0852 250.3993 43.792 285.2757 167.2381 22.5653 134.4364 378.6625 94.6489 0.0 257.2134 11.505 272.3175 135.4224 201.3076 382.6069;
	3.5097 47.4244 90.4259 111.3929 14.6508 16.1093 11.5112 17.0942 27.2643 28.838 53.3066 79.5229 119.7213 12.0924 58.0046 21.8529 27.1138 28.7325 85.9154 51.5741 3.8371 37.5885 71.2592 87.6551 102.0912 73.802 7.4849 634.9434 368.9194 368.9194 227.9508 43.8768 286.3847 132.7518 37.9112 157.4056 390.2868 71.8461 312.1221 273.4586 8.6917 178.7064 138.431 230.7481 394.3523;
];