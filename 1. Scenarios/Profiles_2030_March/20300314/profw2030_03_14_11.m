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
	3.465 46.8198 85.7856 111.7205 15.2992 13.4077 15.1873 17.66 26.2314 24.1165 44.579 66.5031 100.1201 5.0816 22.3999 8.439 10.4706 11.0957 11.4375 26.5574 5.0624 31.2846 57.2757 85.8378 99.388 75.2795 8.1684 709.3543 392.9572 392.9572 196.9228 33.4697 38.1251 68.3589 15.9314 167.6617 497.7769 57.6719 302.0211 266.2178 16.4156 148.7359 116.2164 209.8913 502.9621;
	3.6488 49.3036 90.1191 116.7443 15.393 16.0871 14.25 17.4955 26.5476 22.6796 41.9229 62.5408 94.1548 4.7044 16.3812 6.1715 7.6572 8.1144 10.5855 14.7646 4.75 37.5365 60.5099 88.1648 100.2323 75.1653 7.3478 779.9818 393.2608 393.2608 184.9424 31.6693 35.2849 38.0041 14.7488 167.7913 513.6114 59.5416 290.1363 268.4794 15.1206 178.4594 116.2862 213.7446 518.9615;
	3.5463 47.9179 90.8229 116.7995 15.4149 14.8309 14.0667 17.6399 27.6254 23.6126 43.6476 65.1136 98.0281 7.7143 16.8074 6.3321 7.8565 8.3255 19.6712 23.558 4.6889 34.6054 67.0169 84.7571 98.9234 74.728 8.197 684.7145 366.5441 366.5441 168.9871 29.2996 65.5707 60.6382 24.1852 156.3921 418.8759 42.1473 247.826 264.9734 33.548 164.5241 100.622 205.5648 423.2392;
	2.9971 40.4975 87.5014 110.631 15.3954 13.9531 13.2026 17.2382 26.6494 23.9517 44.2743 66.0486 99.4358 11.2299 14.0166 5.2807 6.5519 6.9431 12.0051 26.1697 4.4009 32.5573 69.914 83.5771 99.658 74.2185 9.6558 569.3739 284.1509 284.1509 167.5808 25.761 40.0169 67.3607 35.2071 121.2377 333.7453 33.6061 182.5823 266.9411 3.6697 154.7866 83.2209 198.3915 337.2218;
	2.4768 33.4671 88.0988 114.8631 15.2871 15.7228 15.2411 17.4169 18.6091 21.7348 40.1764 59.9353 90.2323 16.4869 17.6472 6.6485 8.249 8.7415 21.2633 28.2925 5.0804 36.6865 54.3491 82.9061 98.5582 72.7417 9.6841 431.6319 228.4952 228.4952 163.6471 22.6587 70.8777 72.825 51.6886 97.4913 207.7637 36.1166 186.7642 263.9951 11.2205 174.4181 90.7232 213.2049 209.9279;
	3.0226 40.8424 90.3147 114.836 15.2546 22.3841 14.2455 17.9728 11.2626 20.4726 37.8433 56.4548 84.9924 29.2157 13.8017 5.1997 6.4515 6.8367 25.3448 27.3213 4.7485 52.2296 57.0935 87.1515 99.9601 72.2905 8.5448 366.3996 206.7081 206.7081 151.9206 22.8898 84.4827 70.3252 91.5951 88.1955 170.1286 33.0246 194.1944 267.7503 9.2341 248.3144 91.9666 218.3017 171.9008;
	2.5674 34.6909 89.1387 112.5449 14.8028 22.1831 12.79 17.331 13.1247 26.3102 48.634 72.5524 109.2272 42.9001 17.2855 6.5122 8.08 8.5623 15.1301 32.0331 4.2633 51.7606 65.2428 86.7744 99.3277 71.7635 11.3073 326.0357 240.7008 240.7008 123.6819 15.3075 50.4335 82.4532 134.4975 102.699 201.4054 27.4884 154.7529 266.0562 6.2871 246.0848 93.0965 235.3367 203.5034;
	1.6056 21.695 68.0086 113.4996 14.7735 18.3491 11.7231 18.2816 17.8134 27.0169 49.9404 74.5012 112.1612 36.9347 20.4086 7.6888 9.5398 10.1094 46.8169 47.8542 3.9077 42.8145 66.8929 87.8906 101.9588 73.0549 13.0244 178.3544 171.9789 171.9789 101.3766 8.1338 156.0562 123.1769 115.7954 73.3777 112.0133 19.3516 149.5384 273.104 8.1139 203.5525 88.0159 212.0804 113.1802;
	2.5826 34.8963 81.9046 101.5316 14.4262 24.0386 9.4985 18.3258 18.7957 27.3065 50.4757 75.2999 113.3636 40.6143 14.5239 5.4718 6.7891 7.1944 58.9237 44.5616 3.1662 56.0901 66.428 84.2976 97.2506 71.445 12.0916 159.6147 133.9181 133.9181 82.6711 5.6409 196.4125 114.7017 127.3314 57.1384 113.9692 16.9269 96.1799 260.4927 17.6712 266.6685 76.6694 233.6524 115.1563;
	1.8138 24.5088 80.7408 107.1225 13.5394 14.1166 8.0471 17.8029 22.1993 26.2621 48.5451 72.4197 109.0274 39.8541 0.0 0.0 0.0 0.0 61.8847 30.0166 2.6824 32.9387 67.2539 82.3612 96.3484 70.7289 11.6011 275.0912 220.5477 220.5477 86.6146 7.4174 206.2823 77.2628 124.9481 94.1003 223.9155 13.9944 0.0 258.0762 6.0196 156.6002 77.0153 213.7907 226.248;
	1.5286 20.6543 77.487 102.4174 12.8568 26.5479 13.4134 17.4826 25.401 29.0285 53.6587 80.0482 120.5122 43.7189 1.6655 0.6275 0.7785 0.825 64.3938 33.778 4.4711 61.9451 73.9831 84.8592 92.6425 71.1352 12.0031 385.5839 301.3276 301.3276 151.414 11.2777 214.6459 86.9448 137.0645 128.5664 323.1606 23.527 145.6825 248.1495 7.2117 294.5045 92.666 187.8545 326.5269;
	1.6477 22.2637 81.3468 91.7897 12.0914 31.267 18.4087 17.6289 25.4268 27.9444 51.6547 77.0587 116.0115 45.2219 4.0708 1.5336 1.9029 2.0165 79.4376 44.5996 6.1362 72.9563 74.6154 83.5213 94.5861 71.6023 12.262 495.5858 383.3394 383.3394 276.2097 14.391 264.792 114.7995 141.7768 163.5582 452.3767 38.4189 161.9115 253.3556 10.7467 346.8552 109.959 180.9155 457.089;
	2.8332 38.283 86.1007 90.653 14.2985 32.2937 19.8218 17.9361 26.5713 28.4242 52.5418 78.382 118.0036 51.9488 46.3864 17.4758 21.683 22.9775 80.6757 55.6792 6.6073 75.3519 74.0631 84.5453 100.7191 71.9729 11.8579 616.5173 454.7366 454.7366 290.1048 10.6372 268.9189 143.3185 162.8666 194.0209 605.1208 42.6163 203.3249 269.7833 13.126 358.2442 139.4467 212.0368 611.4241;
	3.2477 43.883 83.1602 100.8478 14.5015 29.2495 18.9188 17.5202 25.9509 28.5087 52.698 78.615 118.3545 48.8919 56.9127 21.4415 26.6034 28.1916 81.3778 53.6421 6.3063 68.2489 67.5272 84.3746 94.5324 69.2141 11.4896 778.3419 586.308 586.308 380.2473 23.3055 271.2594 138.0749 153.2828 250.1581 724.7835 67.2556 216.853 253.2118 11.4204 324.4746 128.3024 245.8969 732.3334;
	3.6305 49.0566 84.5446 105.4783 14.6724 32.5632 24.6371 17.8267 27.6392 25.6663 47.4438 70.7768 106.554 62.1016 86.9526 32.7589 40.6453 43.0719 79.2082 52.7686 8.2124 75.9807 50.057 83.6374 93.1962 67.188 12.5947 1052.0234 678.6269 678.6269 469.7349 23.1377 264.0272 135.8264 194.6968 289.5475 989.2963 103.5804 378.4522 249.6327 29.7079 361.2341 160.7056 237.4325 999.6015;
	3.6853 49.7968 89.6308 112.1883 15.215 33.3072 26.31 18.0527 26.8266 20.7109 38.2838 57.1119 85.9817 64.9008 119.9661 45.1965 56.0772 59.4251 84.4251 62.305 8.77 77.7169 45.7788 86.9489 99.567 70.1371 12.5372 1086.5824 720.9367 720.9367 640.4592 37.388 281.417 160.3731 203.4727 307.5997 1042.6707 149.8605 349.616 266.6973 35.7016 369.4882 176.202 257.0535 1053.5318;
	3.5941 48.5644 88.0582 110.8553 14.8432 32.0187 29.6523 18.2667 27.055 20.2465 37.4253 55.8312 84.0535 64.3601 129.4653 48.7753 60.5175 64.1305 85.7134 62.4196 9.8841 74.7102 32.6647 84.8366 99.1734 70.9929 12.7467 1000.1648 694.9245 694.9245 631.5374 51.2183 285.7114 160.6681 201.7775 296.5011 949.4549 183.4397 388.9231 265.6431 17.2262 355.1937 200.356 263.6107 959.3451;
	3.8096 51.4759 93.5785 117.7958 15.3237 33.754 29.9981 18.7837 27.487 19.9886 36.9486 55.1201 82.983 68.6358 171.0808 64.4537 79.9703 84.7447 88.8923 69.2359 9.9994 78.7593 45.1258 87.8824 103.4357 70.5528 13.4387 1092.2049 757.8862 757.8862 700.6697 90.6355 296.3077 178.2133 215.1825 323.3648 1041.2108 235.2831 447.1267 277.0598 114.9956 374.4441 191.3444 261.0376 1052.0567;
	3.8755 52.3666 92.3101 119.604 15.3741 34.2232 31.9134 14.0467 27.748 20.8644 38.5676 57.5353 86.619 68.5236 170.7905 64.3443 79.8346 84.6009 88.5939 63.7652 10.6378 79.8542 55.715 84.5261 103.4426 56.5903 13.0249 1215.9876 804.449 804.449 711.4209 102.1491 295.3131 164.1319 214.8309 343.2316 1125.9329 258.2156 461.0009 277.0784 119.2179 379.6496 206.8394 268.0159 1137.6613;
	3.682 49.7526 91.9528 112.0242 15.2803 33.4218 31.0124 8.6093 26.5761 20.4396 37.7823 56.3638 84.8553 68.1932 188.0896 70.8617 87.921 93.17 89.7761 66.835 10.3375 77.9843 55.3851 42.3001 48.1324 59.0306 11.5784 1181.333 752.983 752.983 653.8406 99.0826 299.2538 172.0334 213.7948 321.2728 1095.6313 254.791 451.92 128.926 118.8769 370.7596 200.545 223.7348 1107.0441;
	3.7853 51.1483 93.5431 120.8891 15.2955 34.3886 31.2923 18.9869 18.6248 22.589 41.7554 62.2909 93.7786 68.165 187.1023 70.4897 87.4595 92.6809 89.644 66.7584 10.4308 80.2402 49.4788 85.4008 106.0055 72.179 14.0597 1218.7986 774.1411 774.1411 667.9901 99.3962 298.8134 171.8363 213.7064 330.3002 1092.1697 236.5246 451.3538 283.9433 121.1487 381.4846 203.6329 264.7832 1103.5464;
	3.8024 51.3788 92.6849 122.7045 15.4103 34.2319 31.7741 18.6758 10.7141 23.9963 44.3567 66.1715 99.6209 67.2798 186.6696 70.3267 87.2572 92.4665 91.2124 69.9107 10.5914 79.8745 55.7323 89.9226 104.7394 74.5911 14.0932 1266.6932 768.4477 768.4477 678.8695 95.395 304.0412 179.9504 210.9314 327.871 1136.2706 237.6762 458.515 280.5519 122.9705 379.7462 208.9576 246.0917 1148.1068;
	3.8655 52.2308 93.758 119.9646 15.4174 34.5266 31.7007 18.5057 20.4379 21.7705 40.2424 60.0338 90.3805 66.3106 187.9019 70.791 87.8332 93.077 91.2503 67.2246 10.5669 80.562 55.5954 89.7831 95.2319 75.6856 14.0518 1285.7068 763.5 763.5 688.9234 104.6401 304.1676 173.0364 207.8927 325.76 1168.0366 259.4642 459.6937 255.0853 123.7631 383.0147 211.4117 260.6042 1180.2036;
	3.8675 52.2584 93.1532 118.6744 15.395 33.9163 32.9037 18.3372 11.6037 19.946 36.87 55.0027 82.8063 65.5251 188.9326 71.1792 88.315 93.5875 91.4913 67.7784 10.9679 79.138 57.5545 89.2028 103.9192 74.9319 13.8616 1307.8489 781.7318 781.7318 710.4466 108.8691 304.9709 174.4617 205.4299 333.5389 1190.7762 258.927 455.4245 278.3549 123.3869 376.2445 212.3313 273.0904 1203.1802;
];