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
	0.8467 11.4404 59.8415 72.1086 7.8442 11.7367 17.654 8.4739 26.5631 18.9104 34.9556 52.1469 78.5069 11.6272 145.2995 54.7407 67.9191 71.9739 81.3773 68.5404 5.8847 27.3856 66.7792 70.7883 50.8377 48.1018 4.6829 188.1552 344.8712 344.8712 212.1897 40.7337 271.2577 176.4232 36.4528 147.1451 406.7889 77.6641 329.9648 136.1724 59.826 130.199 59.0124 86.2748 411.0263;
	0.5246 7.0883 58.2433 68.38 6.381 4.2354 7.4896 11.7222 26.3738 12.6348 23.3552 34.8413 52.4534 16.8678 118.9486 44.8132 55.6015 58.921 74.18 69.377 2.4965 9.8827 34.825 74.4509 54.9105 51.659 6.9825 64.2656 228.8266 228.8266 141.0612 20.93 247.2666 178.5765 52.883 97.6327 296.1942 80.2332 77.7346 147.0817 77.1492 46.9852 24.5751 104.8294 299.2795;
	0.3554 4.8018 62.8747 71.1971 5.1494 4.2167 5.5379 10.9684 22.2913 10.3314 19.0974 28.4895 42.8908 14.0203 91.1244 34.3306 42.5954 45.1384 66.3513 70.3411 1.846 9.839 28.5646 78.3275 54.6092 56.2113 6.5797 12.5586 29.744 29.744 4.9025 13.2316 221.1711 181.0581 43.9555 12.6908 168.5393 0.4168 143.8393 146.2746 65.9969 46.7773 16.5134 107.8245 170.2949;
	0.4315 5.8305 72.2237 78.3294 7.2449 7.4633 6.8775 13.8381 5.5298 14.4862 26.7775 39.9467 60.1396 19.2537 87.6668 33.028 40.9791 43.4256 49.0702 65.6092 2.2925 17.4144 48.1998 81.6547 65.0954 72.0119 8.2502 81.8972 47.045 47.045 11.2744 17.6109 163.5673 168.8782 60.363 20.0725 27.5694 0.1226 17.4485 174.3628 66.8938 82.7929 16.8881 155.3123 27.8566;
	0.5196 7.0215 84.6137 78.4262 8.9004 5.8873 14.1443 13.6645 14.1261 14.9086 27.5583 41.1116 61.8933 40.0909 131.7519 49.6368 61.5864 65.2631 62.2344 70.8891 4.7148 13.7371 49.1769 82.3473 77.948 70.1581 8.5389 134.4305 116.1385 116.1385 21.5465 8.3413 207.4481 182.4688 125.6905 49.5524 45.9492 1.6476 70.3752 208.7892 63.8134 65.3099 14.6527 165.0345 46.4278;
	0.5314 7.181 81.1906 62.3932 9.2886 4.1257 11.1588 11.8819 19.463 8.0713 14.9198 22.2573 33.5083 6.2137 154.2527 58.1138 72.1042 76.4089 82.6612 70.8324 3.7196 9.6265 34.0153 75.0958 53.5557 70.4147 7.5454 40.0399 93.7031 93.7031 3.5047 8.704 275.5375 182.3229 19.4807 39.98 22.5198 0.0177 32.5274 143.4527 43.816 45.7672 23.8971 154.4206 22.7544;
	0.4359 5.8905 59.5156 45.5302 8.6105 2.6287 4.4156 7.6152 10.8585 5.0065 9.2544 13.8058 20.7845 0.9504 118.9757 44.8234 55.6142 58.9345 65.5375 68.2131 1.4719 6.1337 17.2953 55.3183 34.4716 66.3977 4.1026 43.5334 34.0663 34.0663 5.3112 1.032 218.4584 175.5808 2.9797 14.535 9.2626 0.4436 12.1973 92.3345 15.2692 29.1615 28.4779 140.073 9.3591;
	0.4629 6.2544 35.3894 30.8317 3.665 2.9309 4.9458 6.7097 4.3951 2.0424 3.7754 5.6321 8.4791 0.0 46.7918 17.6285 21.8724 23.1782 16.6186 37.6656 1.6486 6.8387 4.1783 36.3182 31.7984 66.1951 4.4171 15.0611 39.9084 39.9084 44.2208 6.1521 55.3955 96.9514 0.0 17.0276 12.08 1.5005 12.313 85.1743 2.0599 32.5131 0.4781 105.671 12.2058;
	0.5848 7.9026 27.5124 26.3415 3.7438 3.1416 9.4973 5.0592 18.7817 0.083 0.1534 0.2289 0.3446 0.0535 8.5556 3.2233 3.9993 4.238 1.1763 11.6842 3.1658 7.3304 3.5345 32.9976 26.5936 56.2303 4.0745 7.4683 31.6865 31.6865 19.908 12.3146 3.9208 30.0751 0.1678 13.5196 21.3204 0.8792 34.4505 71.2329 0.0 34.8508 1.2175 69.791 21.5425;
	0.5923 8.0036 28.7111 22.079 7.5371 1.256 4.5599 2.0851 19.4042 1.0641 1.967 2.9343 4.4176 0.371 1.7083 0.6436 0.7985 0.8462 4.0672 5.2583 1.52 2.9307 8.1242 2.7489 19.1624 47.288 2.1899 60.0792 92.2662 92.2662 45.1369 11.9038 13.5574 13.5348 1.1632 39.3669 24.5269 6.4002 28.7719 51.3279 0.0 13.9332 45.6962 81.6902 24.7824;
	0.9075 12.2624 40.9225 0.0773 11.4221 9.3123 5.4599 0.8418 3.6986 0.2917 0.5391 0.8043 1.2108 4.3876 0.0 0.0 0.0 0.0 1.2982 2.48 1.82 21.7286 0.0 2.6946 5.7191 41.8564 0.1062 132.5818 84.1749 84.1749 89.7728 2.4169 4.3273 6.3835 13.7556 35.9146 124.3986 6.8094 62.3354 15.3191 0.0106 103.304 50.3604 88.8145 125.6944;
	1.59 21.4843 60.9258 4.3858 13.9091 10.3946 5.321 0.0 2.0659 0.277 0.5121 0.7639 1.1501 7.6711 0.0 0.0 0.0 0.0 13.5008 0.7058 1.7737 24.2542 26.4916 13.5022 0.0 29.8059 0.0 161.6828 119.2199 119.2199 42.2017 3.212 45.0027 1.8167 24.0498 50.8671 143.0278 6.866 37.1349 0.0 0.1225 115.3113 23.7124 125.7449 144.5177;
	2.5067 33.8709 82.4155 8.3721 14.8952 19.6694 1.4729 0.0 8.7909 25.0808 46.3614 69.1621 104.1232 0.2518 0.0 0.0 0.0 0.0 3.1825 1.148 0.491 45.8952 30.6266 57.4197 56.3423 43.4375 0.0 238.3244 187.9362 187.9362 78.5919 5.1524 10.6084 2.9549 0.7894 80.1861 197.7495 10.0775 81.2144 150.9169 0.7803 218.1989 122.331 165.4273 199.8094;
	1.8129 24.4967 0.0166 12.0877 14.2079 21.9123 0.0 0.0 4.3417 8.6277 15.9482 23.7916 35.8182 0.0 0.6409 0.2415 0.2996 0.3175 25.4949 5.5168 0.0 51.1287 42.061 0.0101 0.0 21.9775 0.0003 191.0498 215.1718 215.1718 30.6105 11.1229 84.9831 14.2002 0.0 91.8067 190.5307 10.5128 10.3621 0.0 0.9121 243.0803 92.2937 130.7315 192.5154;
	2.1406 28.9237 5.7128 8.1136 9.3212 11.1609 0.0 0.0 0.3075 4.9352 9.1226 13.6091 20.4884 0.0 0.0 0.0 0.0 0.0 1.4472 0.0017 0.0 26.0421 23.7832 0.0 0.0 0.031 0.0 278.7576 268.0173 268.0173 98.6066 8.5517 4.8241 0.0044 0.0 114.354 270.3847 18.273 0.1149 0.0 0.4121 123.8114 89.8803 109.5704 273.2012;
	3.1328 42.3315 84.3608 11.2306 13.9628 25.8724 0.0 0.0 8.7344 11.8604 21.9238 32.7061 49.2388 0.0 0.0 0.0 0.0 0.0 0.3055 0.3331 0.0 60.369 45.8923 0.1348 0.0644 0.0931 0.0005 378.7502 270.7364 270.7364 164.5952 11.8365 1.0183 0.8575 0.0 115.5142 317.8489 39.1831 0.0 0.1724 0.0429 287.0116 63.2953 182.9475 321.1598;
	3.5547 48.032 36.5104 31.9444 15.247 32.264 0.0 0.0045 9.4078 13.2861 24.5592 36.6375 55.1576 0.0 0.0 0.0 0.0 0.0 2.0611 0.3092 0.0 75.2826 3.8873 1.6147 3.794 2.0603 0.0973 370.2157 373.1851 373.1851 188.8861 25.9236 6.8705 0.796 0.0 159.2257 458.8144 69.3516 6.3571 10.1625 2.9727 357.9149 155.0158 224.102 463.5937;
	2.6786 36.1943 4.2699 1.0473 14.0402 20.7666 0.0 0.0003 1.5306 4.3765 8.09 12.0686 18.1693 0.0 0.0 0.0 0.0 0.0 3.3168 1.0162 0.0 48.4554 13.7874 0.0035 0.0 2.5404 0.0839 491.1966 476.8116 476.8116 326.403 34.4862 11.0561 2.6157 0.0 203.4396 531.1764 94.5189 0.0 0.0 1.6204 230.3707 119.1564 219.7154 536.7095;
	3.0066 40.6253 85.8542 15.6984 14.3011 26.6941 0.1065 0.0166 2.7813 8.6599 16.0077 23.8804 35.9518 2.0315 0.0 0.0 0.0 0.0 24.5983 44.0213 0.0355 62.2862 26.5324 2.5733 0.4101 63.734 0.2759 743.4295 467.2706 467.2706 362.6504 47.8533 81.9942 113.311 6.3689 199.3688 594.6877 72.6171 0.1547 1.0984 4.9679 296.1265 111.7437 212.4794 600.8824;
	2.9906 40.41 5.8506 4.2101 14.3181 4.658 17.6184 0.0227 26.6778 22.7142 41.9869 62.6363 94.2985 3.3114 13.1443 4.952 6.1442 6.511 67.0426 22.6262 5.8728 10.8687 59.7627 2.7891 2.292 55.4296 0.0626 745.6926 486.137 486.137 361.1551 48.9575 223.4753 58.2399 10.3816 207.4185 570.1923 84.6381 12.3171 6.1393 4.3546 51.673 110.5696 180.6176 576.1318;
	3.22 43.5096 86.7397 1.4089 14.0878 2.8142 0.0851 0.0118 27.6303 24.9373 46.0963 68.7666 103.5278 7.6544 24.5889 9.2637 11.4939 12.1801 45.2549 33.1331 0.0284 6.5664 72.2807 83.4858 7.8632 61.6206 0.1148 679.1482 427.3825 427.3825 272.9951 60.0252 150.8497 85.2847 23.9976 182.3498 565.3075 80.1954 91.2466 21.0622 5.9291 31.2186 107.5773 182.165 571.1961;
	3.7167 50.2203 90.8929 2.0046 14.8883 22.6706 12.5046 12.7648 27.4056 25.6993 47.5047 70.8677 106.691 12.4463 46.7878 17.627 21.8706 23.1763 26.7056 54.7437 4.1682 52.898 59.4952 84.0433 96.9213 71.1125 5.2466 750.6995 369.1901 369.1901 248.6789 64.4151 89.0186 140.9105 39.0207 157.5211 516.87 109.1186 157.8145 259.6107 9.6398 251.492 15.1975 206.3019 522.2541;
	3.6422 49.2145 86.6491 110.326 14.2423 23.1911 13.1263 14.0075 26.8719 26.1173 48.2774 72.0204 108.4263 8.6133 60.0706 22.6313 28.0795 29.7559 19.7473 67.9362 4.3754 54.1127 57.7466 84.7479 88.2545 68.4887 6.392 784.4027 382.1707 382.1707 329.2421 49.5087 65.8245 174.868 27.004 163.0595 460.9463 102.2669 67.2673 236.396 7.142 257.267 133.885 185.9239 465.7479;
	3.5125 47.4617 88.159 109.5755 14.5694 15.9999 11.3304 15.6435 27.2558 27.0835 50.0634 74.6847 112.4374 11.8351 55.8341 21.0352 26.0992 27.6574 25.9073 60.2974 3.7768 37.3331 59.5786 86.866 96.697 69.984 6.3912 746.8153 412.3462 412.3462 290.0745 51.734 86.3576 155.2057 37.1048 175.9344 455.9274 83.1773 303.7819 259.0098 9.4978 177.4924 136.8585 221.1113 460.6766;
];