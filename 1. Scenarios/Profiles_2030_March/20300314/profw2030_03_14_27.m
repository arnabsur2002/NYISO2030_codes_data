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
	3.4791 47.0102 81.6443 106.093 14.4112 9.6479 13.9406 14.016 26.3139 23.3428 43.1488 64.3695 96.9079 6.0252 15.8855 5.9848 7.4255 7.8688 13.434 21.8665 4.6469 22.5117 51.6726 77.2335 87.4617 57.7329 6.7247 632.6757 372.7285 372.7285 204.3479 35.2004 44.7799 56.2846 18.8898 159.0308 469.0262 51.2532 290.2826 234.2725 0.0 107.0271 112.1392 157.423 473.9119;
	3.258 44.0225 81.8028 94.2657 14.1926 12.4692 12.3578 14.0918 25.4495 21.8657 40.4185 60.2964 90.7759 5.5174 9.1023 3.4292 4.2548 4.5088 10.8997 7.1213 4.1193 29.0947 49.0185 77.2356 84.2625 66.1289 5.5123 645.0214 360.8161 360.8161 168.711 30.6226 36.3324 18.3302 17.2979 153.9482 454.7232 46.9669 283.4023 225.7032 0.0 138.3247 107.4238 148.3351 459.4599;
	3.1146 42.0853 84.2164 100.739 14.0114 11.5995 11.7917 16.3084 26.001 21.461 39.6702 59.1802 89.0955 9.0321 19.9702 7.5237 9.3349 9.8922 20.9064 20.9833 3.9306 27.0654 53.5875 76.1716 90.4727 69.775 7.5179 622.5727 345.4881 345.4881 144.6548 27.5993 69.6878 54.0112 28.3168 147.4082 408.6413 34.6622 226.3693 242.3376 0.0 128.6767 87.9553 154.7424 412.898;
	2.8399 38.3731 87.3862 101.8896 14.2301 10.9056 10.3113 17.0389 25.9947 23.307 43.0826 64.2708 96.7593 11.0253 16.5654 6.2409 7.7434 8.2056 12.8588 22.4741 3.4371 25.4463 66.2911 81.9321 98.0197 72.3487 9.1176 513.0256 272.4563 272.4563 156.1003 26.1369 42.8626 57.8483 34.5657 116.248 329.6508 28.9051 164.7058 262.5529 0.0 120.9791 79.8846 187.847 333.0846;
	2.1647 29.2492 86.2519 103.3591 13.9923 13.2402 9.2263 16.9007 16.6853 22.6305 41.8322 62.4054 93.951 14.0148 18.703 7.0463 8.7426 9.2645 20.1038 24.9619 3.0754 30.8937 58.4788 81.8735 96.5415 71.1809 8.1425 405.8066 207.3109 207.3109 136.7563 26.5826 67.0126 64.2521 43.9383 88.4527 195.6571 29.5865 149.6495 258.5933 7.6237 146.8776 82.6432 164.9312 197.6952;
	2.6862 36.2958 85.7865 98.7717 13.4202 21.4308 10.1298 17.4232 10.039 21.5999 39.9271 59.5633 89.6723 27.2384 18.9993 7.1579 8.8811 9.4113 29.119 25.9641 3.3766 50.0051 61.6167 81.4546 97.2437 69.4888 6.8062 361.4599 204.5655 204.5655 135.2 24.5974 97.0633 66.8316 85.396 87.2813 185.0024 27.2395 175.0531 260.4742 7.3482 237.7386 85.4448 163.4567 186.9295;
	2.1695 29.3141 85.3843 96.5225 13.4098 21.119 11.0409 17.2187 11.8562 27.1646 50.2134 74.9085 112.7743 38.4187 25.3027 9.5326 11.8275 12.5336 37.83 34.1416 3.6803 49.2777 68.975 82.1368 97.1844 69.5424 10.3612 309.8395 226.6065 226.6065 111.5499 18.4717 126.1001 87.8806 120.4479 96.6854 210.1392 22.5541 155.373 260.3155 6.4298 234.2804 89.7553 207.5236 212.3281;
	1.2611 17.0405 64.2288 104.1375 14.1924 16.5464 11.018 17.0894 18.6539 28.5657 52.8032 78.772 118.5908 40.4742 22.7003 8.5522 10.6111 11.2446 50.9254 52.3341 3.6727 38.6082 73.4324 81.7754 95.5939 69.3187 11.3255 183.3129 185.4358 185.4358 103.9774 10.7615 169.7512 134.7081 126.892 79.1193 134.0419 17.2467 151.9479 256.055 4.7646 183.5545 83.6181 197.8546 135.4382;
	2.3619 31.9149 78.0237 90.0983 14.019 21.3449 10.8077 17.6576 18.7351 29.085 53.7632 80.2041 120.7468 38.698 22.2175 8.3703 10.3854 11.0054 66.1548 56.0726 3.6026 49.8049 73.2951 81.2482 96.2784 70.0071 11.1507 175.7738 160.1962 160.1962 84.6945 6.958 220.5158 144.3311 121.3234 68.3504 144.4917 16.2988 120.4349 257.8885 11.6232 236.7866 74.8357 213.7213 145.9968;
	1.5185 20.5178 77.6336 99.8556 12.6894 12.3751 10.1649 16.8559 25.0004 28.5144 52.7083 78.6305 118.3778 36.4303 20.4508 7.7047 9.5596 10.1303 70.3254 48.7236 3.3883 28.8753 69.1888 80.6134 97.7298 67.3207 11.4206 255.3254 241.3753 241.3753 96.1294 7.7486 234.4181 125.4147 114.214 102.9868 240.1732 19.2148 25.0429 261.7762 0.1402 137.2815 69.3522 187.5381 242.675;
	1.343 18.1464 70.1492 90.9379 11.9674 23.9978 13.8356 15.3915 26.5037 29.3229 54.2029 80.86 121.7343 43.6769 73.0541 27.5227 34.1485 36.1872 64.9016 39.8772 4.6119 55.9949 68.3597 82.1564 86.8331 66.1855 10.8924 371.1818 305.7724 305.7724 156.578 10.2508 216.3388 102.6441 136.933 130.4629 338.2368 22.4981 174.5339 232.5886 2.5897 266.2159 87.3635 163.0547 341.7601;
	1.4312 19.3381 80.7805 84.8905 11.5742 29.097 20.3854 13.6261 26.6183 28.9352 53.4863 79.791 120.1249 50.5067 45.9145 17.298 21.4624 22.7437 82.4896 51.6725 6.7951 67.8929 67.4554 82.0926 87.1692 65.0975 9.166 478.693 370.346 370.346 280.9931 15.9062 274.9653 133.0052 158.3455 158.0143 440.9912 38.6104 206.8755 233.4889 0.4774 322.7824 102.8144 158.8603 445.5849;
	2.8306 38.2481 86.5051 88.6249 14.0218 32.0315 20.5911 15.8428 27.4834 29.1649 53.9109 80.4245 121.0787 54.3771 46.7451 17.6109 21.8506 23.1551 87.6882 60.052 6.8637 74.7401 68.5375 84.3853 96.6789 65.7776 9.2874 657.4305 455.3906 455.3906 333.2521 25.0115 292.2939 154.5741 170.4797 194.3 631.1425 57.3432 222.9013 258.9612 3.3463 355.3356 141.8218 206.6118 637.7169;
	3.5323 47.7293 85.4359 103.4797 14.5119 30.7073 21.0444 17.2752 26.4402 28.7176 53.0841 79.1911 119.2217 55.7765 65.2296 24.5749 30.491 32.3114 85.4485 58.1496 7.0148 71.6503 60.9398 84.5403 97.1665 67.5466 11.1356 833.7927 555.3846 555.3846 400.1012 27.8858 284.8284 149.6771 174.8669 236.9641 724.0476 75.5217 294.1665 260.2673 5.586 340.6461 141.5891 248.165 731.5897;
	3.6466 49.274 86.8911 109.5632 14.9957 32.8515 24.2514 17.3016 27.2935 25.9181 47.9091 71.471 107.5992 60.1471 99.3533 37.4308 46.4419 49.2145 85.9878 56.3463 8.0838 76.6536 42.2916 86.8489 98.3518 70.2183 12.0063 976.8069 615.2002 615.2002 489.5498 35.363 286.6259 145.0356 188.5693 262.4854 960.6039 108.144 409.4074 263.4423 4.7062 364.433 160.1126 242.2724 970.6102;
	3.6256 48.9902 90.3247 113.1207 15.1896 33.6367 26.377 17.8702 26.1976 20.1542 37.2547 55.5767 83.6704 64.2311 133.3665 50.2451 62.3411 66.063 87.359 65.7876 8.7923 78.4857 43.268 88.7552 101.2239 72.3688 12.4624 1054.1042 719.2706 719.2706 702.1383 49.5176 291.1967 169.3375 201.3733 306.8888 1055.5055 166.3239 360.7276 271.1354 10.9396 373.1436 177.4772 260.7739 1066.5003;
	3.7298 50.3982 93.3803 116.5009 15.027 33.9198 27.7712 18.5636 25.9561 20.6011 38.0807 56.809 85.5256 61.1579 159.8244 60.2129 74.7086 79.1688 88.7383 68.1961 9.2571 79.1463 31.5853 89.8749 104.8628 75.8374 12.8091 1033.6912 735.0423 735.0423 707.967 81.2015 295.7944 175.537 191.7382 313.618 1047.9432 210.1753 371.0832 280.8824 8.3162 376.2842 207.9326 276.8927 1058.8593;
	3.7212 50.282 93.768 114.0388 14.4214 33.1499 27.4645 17.97 25.7988 19.5492 36.1364 53.9084 81.1588 64.9045 174.4953 65.7401 81.5664 86.436 87.3852 68.7461 9.1548 77.3497 35.965 86.8923 101.0158 72.1149 13.223 1085.482 750.7562 750.7562 692.142 91.7201 291.2838 176.9527 203.4842 320.3226 1080.8888 225.7215 421.5357 270.578 109.5026 367.7427 198.0044 262.2122 1092.1481;
	3.6827 49.7612 92.0798 119.4152 14.3676 34.2059 27.7592 12.7476 25.7851 21.3833 39.5266 58.966 88.773 63.6575 180.0977 67.8508 84.1852 89.2112 86.3207 68.2751 9.2531 79.8139 50.6614 86.2604 101.5581 61.6196 12.5244 1247.1665 770.9804 770.9804 653.9448 104.855 287.7357 175.7402 199.5747 328.9516 1161.4967 242.7776 427.7144 272.0306 113.7037 379.458 206.3209 271.7745 1173.5956;
	3.7895 51.204 94.8703 116.8369 15.2725 34.6115 29.2404 9.2995 25.2686 21.8615 40.4106 60.2847 90.7583 64.8992 189.3183 71.3246 88.4953 93.7786 87.5486 67.4505 9.7468 80.7602 49.8942 45.1745 49.2464 67.9386 11.3228 1225.7724 799.6108 799.6108 662.913 105.1431 291.8288 173.6179 203.4677 341.1673 1180.6795 254.1634 435.7854 131.91 118.6355 383.9568 205.4956 252.8229 1192.9782;
	3.7718 50.9655 93.0509 120.6936 14.9355 33.3301 25.2487 18.816 4.8658 21.8846 40.4534 60.3485 90.8543 65.5166 191.3568 72.0925 89.4482 94.7883 86.202 69.7012 8.4162 77.7703 41.9533 83.4448 105.3489 71.5221 13.979 1263.0053 783.8098 783.8098 622.2755 101.6664 287.3399 179.411 205.4034 334.4255 1153.6843 241.1123 432.1618 282.1845 121.9009 369.7422 203.9257 265.687 1165.7018;
	3.6858 49.8034 90.0744 121.2944 15.182 33.3126 27.6433 17.6798 0.0 21.8421 40.3748 60.2313 90.6778 61.661 197.4619 74.3926 92.3019 97.8125 89.0698 73.1212 9.2144 77.7295 46.8633 88.9363 104.4192 73.1398 13.4825 1283.4413 790.2786 790.2786 691.994 104.6865 296.8995 188.2141 193.3155 337.1855 1208.9776 250.5045 434.0738 279.6942 121.2299 369.5481 208.9577 241.4469 1221.5711;
	3.7151 50.199 91.8804 118.5482 15.2359 34.4558 29.5298 18.007 9.6712 17.7519 32.8142 48.9523 73.6974 66.3279 194.3527 73.2213 90.8486 96.2724 89.7968 71.1681 9.8433 80.397 44.9832 89.062 95.3964 74.685 13.6819 1219.7388 797.4773 797.4773 749.3953 105.3672 299.3227 183.1869 207.947 340.257 1215.3732 267.4094 434.359 255.526 120.0548 382.2301 209.0919 260.7785 1228.0334;
	3.6656 49.5309 92.1501 118.1204 14.8711 33.9511 31.5488 18.7365 0.0 17.6445 32.6156 48.656 73.2514 67.3001 192.3193 72.4552 89.8981 95.2651 91.539 68.551 10.5163 79.2191 47.539 88.687 106.0071 74.6742 13.6898 1229.6484 801.9491 801.9491 797.7918 107.5675 305.13 176.4505 210.9948 342.165 1220.3 292.7016 444.5507 283.9475 121.7642 376.6305 209.0939 266.2026 1233.0114;
];
