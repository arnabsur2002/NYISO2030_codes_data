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
	0.6824 9.2214 58.8021 63.5056 8.1347 11.8376 8.3937 8.8656 1.1507 19.2663 35.6135 53.1284 79.9845 3.0672 135.9192 51.2068 63.5343 67.3274 63.7088 69.4431 2.7979 27.6211 66.9633 74.1635 50.6303 50.5309 4.4518 185.3248 316.5687 316.5687 213.9352 42.2543 212.3625 178.7468 9.6161 135.0693 362.0785 78.2048 6.8697 135.6168 64.0006 131.3188 10.5305 68.7279 365.8502;
	0.5098 6.8888 55.2402 61.3953 7.0921 22.7408 9.7681 11.6891 23.945 12.7282 23.528 35.0991 52.8415 2.344 117.7133 44.3478 55.0241 58.3091 66.5844 71.6141 3.256 53.0619 33.6353 72.1065 51.4018 50.1881 6.4777 76.5058 222.3472 222.3472 154.6889 29.353 221.9478 184.3348 7.3486 94.8682 286.8481 86.3395 94.5835 137.6834 77.0099 252.2716 23.7486 84.6615 289.8361;
	0.2194 2.9642 58.9615 63.1436 5.7176 10.0798 3.2466 11.428 1.5866 9.5411 17.6365 26.3102 39.6099 0.0 80.8823 30.4719 37.8078 40.065 50.686 68.8468 1.0822 23.5195 26.2038 76.6686 54.1037 52.6884 6.0789 6.1963 10.7374 10.7374 8.6138 14.7675 168.9533 177.2117 0.0 4.5813 158.7785 0.5201 0.0003 144.9207 64.6231 111.8183 3.005 89.9674 160.4324;
	0.3182 4.2996 67.2798 75.2067 8.08 7.5394 3.0016 12.8046 4.6208 16.4845 30.4713 45.4572 68.4356 0.245 95.5582 36.001 44.6679 47.3347 40.3181 68.7232 1.0005 17.592 53.394 82.1183 62.1318 63.0907 7.3782 0.0 2.8062 2.8062 3.319 15.8978 134.3936 176.8936 0.7682 1.1973 4.0185 2.5934 0.2007 166.4245 64.3678 83.6374 0.061 130.4341 4.0604;
	0.3869 5.2282 77.767 74.7871 9.7327 11.4426 1.8502 13.5524 7.9972 16.293 30.1174 44.9292 67.6407 6.2809 123.8549 46.6616 57.8949 61.3514 52.0735 69.5622 0.6167 26.6994 52.1994 82.9558 76.0016 65.6998 8.2868 15.7274 8.4977 8.4977 6.018 9.7569 173.5782 179.0532 19.6916 3.6257 23.5451 2.9114 1.931 203.5757 67.5848 126.9367 0.2752 140.3437 23.7904;
	0.3789 5.1203 77.6928 62.7414 9.6907 4.5432 0.1051 12.5858 2.0278 9.4626 17.4914 26.0938 39.284 2.5158 151.8606 57.2126 70.986 75.224 75.6738 70.5462 0.035 10.6008 39.9435 81.7034 56.3319 67.6365 7.8208 12.264 12.7508 12.7508 7.8395 10.6151 252.2461 181.5862 7.8874 5.4403 6.3237 4.1221 6.1261 150.8891 53.8084 50.3991 21.0806 139.0802 6.3895;
	0.2594 3.5053 56.0057 41.0042 8.551 2.7498 2.6182 7.7184 2.1206 7.6876 14.2105 21.1993 31.9154 4.1796 127.0828 47.8777 59.4038 62.9503 64.1487 69.0867 0.8727 6.4161 27.0682 59.4494 34.9498 58.2978 3.9204 26.763 5.4577 5.4577 2.3355 4.092 213.8288 177.8294 13.1035 2.3286 12.7869 5.6261 0.0 93.6156 26.3565 30.5042 27.7205 127.6075 12.92;
	0.4019 5.4304 34.089 31.1969 3.4409 2.7578 3.9432 7.331 1.9084 4.904 9.065 13.5232 20.3591 4.2692 65.8426 24.8058 30.7776 32.6151 18.465 48.6721 1.3144 6.4348 14.7868 37.7503 34.1333 57.6491 4.5185 16.1451 12.4721 12.4721 8.6509 1.6133 61.5501 125.2822 13.3845 5.3214 16.0321 5.4576 0.0 91.4286 8.9144 30.5927 1.1443 99.2871 16.1991;
	0.4705 6.3578 24.5858 24.9945 3.2595 3.2131 0.0 5.4728 0.0 0.0003 0.0006 0.0008 0.0012 0.0 14.0771 5.3035 6.5802 6.9731 0.1521 16.6209 0.0 7.4972 5.2058 2.0856 23.2442 50.1963 4.0617 19.4559 23.1559 23.1559 27.4227 0.2993 0.5071 42.7823 0.0 9.8799 37.4693 3.9117 0.0 62.2614 0.2109 35.6436 11.581 66.6861 37.8596;
	0.2552 3.4489 26.6535 24.4732 6.0543 0.0225 0.3519 4.3366 0.6323 0.0 0.0 0.0 0.0 0.0135 1.6193 0.61 0.7569 0.8021 0.3606 8.7575 0.1173 0.0525 4.8418 0.2409 25.2551 47.0406 2.8978 31.9094 59.1197 59.1197 1.5333 3.0473 1.2021 22.5419 0.0424 25.2244 6.3261 0.6014 0.0 67.6476 3.598 0.2496 43.8362 78.6583 6.392;
	0.3337 4.5094 36.568 1.9326 8.0236 0.1718 0.0625 2.9807 0.0028 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 5.221 0.0208 0.4008 3.5483 7.9468 38.3711 44.6511 0.9979 52.9687 54.3213 54.3213 0.0 1.2639 0.0 13.439 0.0 23.1771 45.8336 0.0698 0.0 102.7796 0.0232 1.9053 1.0028 81.2665 46.3111;
	1.0476 14.1553 60.2397 6.341 11.111 0.6677 0.231 0.0272 1.3759 0.0 0.0 0.0 0.0 0.5808 0.0 0.0 0.0 0.0 1.6638 5.0087 0.077 1.558 49.6155 42.5415 0.0 42.0256 0.1199 145.6739 90.5869 90.5869 0.0 1.0512 5.5461 12.8924 1.8208 38.6504 112.0988 0.0 0.0 0.0 0.1521 7.407 1.9221 115.7054 113.2664;
	1.6633 22.4742 72.3848 0.0 12.1962 0.0107 1.9488 0.0079 0.0 21.6167 39.9581 59.6096 89.7419 0.941 0.0203 0.0077 0.0095 0.0101 0.0043 9.8287 0.6496 0.0249 31.1648 46.2113 55.2857 49.6778 0.0301 247.2115 178.4346 178.4346 2.2033 4.0186 0.0145 25.2991 2.9502 76.1321 197.153 0.0872 0.0 148.0866 0.0 0.1186 110.4926 153.6743 199.2066;
	1.551 20.9575 2.2956 8.27 13.2227 20.0506 4.8516 0.0233 1.7127 0.7306 1.3505 2.0147 3.0332 8.9255 0.7406 0.279 0.3462 0.3669 2.1644 6.892 1.6172 46.7847 45.5216 0.0 4.0144 31.6919 0.0004 212.2511 222.1129 222.1129 17.6901 8.9081 7.2147 17.7401 27.9827 94.7682 197.8543 8.514 0.0 10.7529 0.0 222.4279 88.3495 134.7677 199.9153;
	1.9274 26.0429 4.3668 8.656 9.2907 6.2076 1.4533 0.3555 2.398 0.5795 1.0712 1.598 2.4058 12.191 4.5767 1.7242 2.1393 2.2671 0.8757 0.3623 0.4844 14.4845 29.1402 0.0018 5.818 5.1477 0.1095 290.3829 280.1054 280.1054 104.8702 10.3394 2.9189 0.9326 38.2205 119.5116 278.1237 52.4809 0.0 15.5839 0.0 68.8632 87.073 101.0734 281.0208;
	2.9433 39.7702 85.7074 13.0901 13.777 16.2396 1.7991 0.7268 2.6708 3.7605 6.9513 10.3699 15.6119 8.2902 16.5957 6.2523 7.7575 8.2207 4.2769 1.2387 0.5997 37.8923 45.9614 0.5732 15.2674 3.7236 0.0643 418.4008 301.9513 301.9513 176.8156 15.5177 14.2562 3.1884 25.9908 128.8326 339.7853 43.8933 10.1095 40.8948 0.0047 180.151 30.7393 176.9934 343.3248;
	3.3572 45.3631 21.4046 22.7218 14.5529 20.2314 0.3734 3.0053 0.3178 6.5757 12.1551 18.133 27.2991 2.2812 1.8734 0.7058 0.8757 0.928 0.0 0.0 0.1245 47.2066 9.8547 7.4842 53.5337 8.0263 0.6442 400.6922 375.8303 375.8303 168.3847 25.357 0.0 0.0 7.152 160.3542 487.9171 64.1176 1.4618 143.3937 0.1816 224.4334 143.0411 219.718 492.9995;
	2.7275 36.8546 14.9184 58.0561 14.5687 22.5288 2.2566 1.623 0.0 0.6942 1.2831 1.9142 2.8818 0.3787 0.0 0.0 0.0 0.0 0.0 0.0 0.7522 52.5672 6.6733 39.2782 45.3787 5.4093 0.2107 588.4042 489.3703 489.3703 300.0945 36.6113 0.0 0.0 1.1874 208.798 582.5598 73.7729 0.0 121.5502 3.8761 249.9196 119.6347 219.9222 588.6281;
	3.121 42.172 86.5216 60.733 15.0668 27.7755 2.3493 2.0341 0.0 8.209 15.1742 22.637 34.0798 3.1619 0.0 0.0 0.0 0.0 0.0118 27.7759 0.7831 64.8095 21.7929 17.2493 39.1552 62.77 0.0484 818.866 441.3009 441.3009 336.3789 47.2325 0.0393 71.4952 9.9131 188.2884 640.4929 71.5294 0.0 104.88 0.4723 308.1231 112.2327 203.4781 647.1647;
	3.0703 41.4863 2.0352 22.3138 14.5576 13.9594 17.4933 0.1776 24.4218 20.5765 38.0354 56.7414 85.4238 5.2722 0.0 0.0 0.0 0.0 0.0 17.4791 5.8311 32.572 52.2826 0.786 11.2156 55.4498 0.0007 773.6326 418.8412 418.8412 311.5367 47.9007 0.0 44.9912 16.529 178.7056 554.0247 72.8804 0.0031 30.0417 0.1026 154.8565 106.8376 168.4116 559.7958;
	3.0566 41.3018 83.8766 3.9153 14.0608 6.0254 0.0 0.0233 22.8425 22.5782 41.7356 62.2612 93.7339 6.9963 9.8927 3.727 4.6243 4.9004 0.0 20.2803 0.0 14.0593 60.3694 75.1957 3.7482 60.0975 0.0 710.5384 394.7117 394.7117 229.8727 59.0314 0.0 52.2015 21.9344 168.4103 594.7365 64.8092 0.0 10.0399 0.0 66.8422 100.8697 161.2171 600.9316;
	3.671 49.6033 89.0441 25.359 14.6261 24.7164 11.054 14.0898 26.2756 24.7905 45.8249 68.3617 102.9182 11.5047 0.0 0.0 0.0 0.0 0.0 45.0535 3.6847 57.6717 50.915 81.7088 100.8683 71.961 5.403 803.0109 325.6072 325.6072 200.104 63.6018 0.0 115.9678 36.0688 138.9257 553.061 78.6706 2.1878 270.1831 6.6803 274.1876 27.3064 188.976 558.822;
	3.6687 49.5717 89.5029 112.5638 14.2733 26.5639 12.261 15.8197 26.1385 24.7971 45.8371 68.38 102.9457 7.1126 40.1291 15.1184 18.758 19.8779 0.0 62.5927 4.087 61.9825 49.2891 82.7895 98.871 71.198 7.294 816.277 345.6035 345.6035 288.5755 47.5414 0.0 161.1138 22.2991 147.4575 471.7087 87.6156 0.0 264.8331 5.5918 294.6824 137.111 191.7804 476.6223;
	3.5611 48.1182 87.0115 103.3935 14.0847 16.1409 8.9689 16.0121 26.038 25.7225 47.5476 70.9317 106.7872 10.241 33.3864 12.5781 15.6062 16.5379 0.0 47.7817 2.9896 37.6622 46.2234 82.9201 102.0703 70.5132 6.6641 731.1516 383.3603 383.3603 263.0618 51.1065 0.0 122.9902 32.1069 163.5671 444.6592 68.2479 238.2459 273.4025 8.323 179.0566 125.3007 212.354 449.291;
];