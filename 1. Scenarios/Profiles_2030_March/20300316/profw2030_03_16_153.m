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
	3.7378 50.5061 92.3608 113.7123 14.8252 32.3362 29.2851 18.419 27.7925 29.4941 54.5193 81.3321 122.4451 68.682 187.9927 70.8252 87.8757 93.122 81.0028 69.3731 9.7617 75.4512 74.7104 83.7557 101.7643 73.5854 13.3472 1274.5608 785.6113 785.6113 554.6187 101.1586 270.0094 178.5665 215.3273 335.1941 1308.7062 213.4047 452.8826 272.5828 118.3904 358.7166 190.4032 272.3506 1322.3385;
	3.8503 52.0265 92.5462 114.7765 14.5848 33.0152 25.7767 18.2619 27.1425 29.8548 55.1862 82.327 123.9429 67.3379 183.4932 69.13 85.7724 90.8931 83.6492 69.1167 8.5922 77.0354 74.5698 84.9355 100.0593 71.6312 13.2123 1322.2251 788.7741 788.7741 600.3544 98.031 278.8308 177.9065 211.1133 336.5436 1313.274 218.993 438.8195 268.0161 120.6552 366.2481 187.6044 267.9359 1326.9539;
	3.7145 50.1911 90.6242 112.9865 14.407 33.3085 20.5314 18.5021 26.0376 29.2919 54.1457 80.7748 121.606 66.2699 187.5015 70.6401 87.646 92.8786 81.6907 68.5963 6.8438 77.7198 72.433 86.0546 100.9077 74.9127 13.4904 1264.9525 747.7127 747.7127 616.1337 85.2099 272.3023 176.567 207.765 319.0241 1289.5258 213.9739 386.8154 270.2886 121.6137 369.5021 184.9861 260.4384 1302.9584;
	3.623 48.9547 89.3905 112.455 14.0501 32.9409 23.7041 18.1816 27.0272 30.8564 57.0376 85.0888 128.1008 65.46 178.6563 67.3077 83.5114 88.4972 81.3197 67.8592 7.9014 76.8622 75.2275 85.8528 100.1276 73.0654 13.2504 1279.2292 767.6932 767.6932 623.7145 88.8155 271.0656 174.6697 205.226 327.5491 1298.9132 236.6381 429.0737 268.1988 119.6228 365.4247 154.2384 261.4638 1312.4436;
	3.7655 50.8798 93.1578 114.5773 14.5819 33.2754 30.7358 18.6069 27.5133 30.9775 57.2614 85.4228 128.6035 65.7194 191.7048 72.2237 89.6108 94.9607 76.8378 69.4026 10.2453 77.6427 74.8886 85.9965 103.0459 75.7379 13.4692 1258.0804 780.1288 780.1288 685.4495 92.6213 256.1261 178.6425 206.039 332.855 1270.7609 236.6204 467.4659 276.0157 121.6804 369.1355 192.166 263.3939 1283.998;
	3.8021 51.375 92.282 113.9139 15.143 33.8442 29.3032 17.9854 27.1333 30.1117 55.661 83.0352 125.0091 65.4412 195.6478 73.7092 91.454 96.9139 84.7928 68.429 9.7677 78.9698 74.9222 87.1299 102.798 75.145 12.9394 1262.8127 758.1608 758.1608 708.8131 95.4996 282.6426 176.1364 205.167 323.482 1228.4374 240.8065 448.5418 275.3518 120.7493 375.4449 180.2962 263.7716 1241.2336;
	3.5858 48.4521 91.504 116.3382 14.9465 32.4187 31.0536 17.9114 26.7878 29.4509 54.4396 81.2131 122.2659 64.8602 195.6816 73.7219 91.4698 96.9307 88.8892 69.7814 10.3512 75.6435 72.7571 85.162 101.2763 74.3073 13.0589 1256.3888 759.6602 759.6602 724.0041 103.913 296.2974 179.6176 203.3456 324.1217 1271.879 292.2434 451.3122 271.2759 120.3154 359.6309 161.1238 256.5147 1285.1277;
	3.3747 45.5997 90.0239 116.1476 14.7154 32.0882 29.9032 17.8633 25.9112 29.11 53.8094 80.2731 120.8507 67.4435 198.8845 74.9286 92.9669 98.5172 89.137 68.2474 9.9677 74.8724 72.7273 86.4209 99.6009 73.9854 12.7914 1304.3832 816.718 816.718 741.8955 112.2594 297.1233 175.669 211.4444 348.4663 1305.2589 300.3716 451.6278 266.7881 114.0867 355.965 174.978 249.5535 1318.8554;
	3.6204 48.9194 88.8919 114.2626 15.0228 32.4338 31.0324 17.3799 25.3768 29.6301 54.7708 81.7073 123.0099 68.0068 195.4684 73.6416 91.3701 96.8251 91.0487 68.4474 10.3441 75.6788 72.6559 86.0275 98.1959 71.8795 12.1104 1326.0506 820.021 820.021 796.3625 117.4801 303.4957 176.1837 213.2106 349.8756 1315.6838 325.3053 468.077 263.0247 117.0971 359.7984 203.848 254.6451 1329.3888;
	3.7615 50.826 94.4414 119.9518 15.3211 33.544 25.8111 17.6833 26.2812 30.1249 55.6854 83.0717 125.0639 66.0665 195.6391 73.7059 91.4499 96.9096 91.718 68.244 8.6037 78.2694 73.34 87.6122 103.1906 70.0649 12.682 1278.3717 831.0217 831.0217 779.8598 119.42 305.7266 175.6602 207.1274 354.5692 1275.0732 348.3672 474.9648 276.4035 114.6905 372.115 215.0371 262.548 1288.3552;
	3.7233 50.3106 93.3799 117.2765 14.7988 32.6515 26.9779 17.6628 26.0821 30.1424 55.7177 83.1199 125.1366 64.9818 195.1957 73.5388 91.2426 96.6899 89.4362 68.9891 8.9926 76.1869 72.0515 86.1395 102.7562 70.8614 12.8436 1255.8105 813.8427 813.8427 777.6692 118.4639 298.1205 177.578 203.7267 347.2396 1264.0721 344.1134 471.0844 275.2397 114.6852 362.2142 209.3284 262.498 1277.2395;
	3.6737 49.6393 94.7374 120.3687 15.1043 33.6258 25.2272 18.5567 26.3856 29.8695 55.2133 82.3674 124.0036 65.9174 194.9562 73.4486 91.1307 96.5713 90.5924 67.2288 8.4091 78.4601 72.9316 88.507 105.8501 71.2378 13.3622 1255.9712 796.8592 796.8592 761.6665 117.3828 301.9747 173.0472 206.6599 339.9933 1256.2999 336.5271 470.8596 283.5272 118.8781 373.0218 211.4804 266.7775 1269.3863;
	3.8446 51.9493 95.096 120.8107 15.3275 34.3947 26.7948 19.0496 26.3499 30.3086 56.025 83.5783 125.8267 66.8788 199.5374 75.1746 93.2721 98.8406 91.3675 69.0815 8.9316 80.2543 71.9004 88.8231 105.8562 75.2842 13.8202 1295.6773 826.3869 826.3869 787.8211 116.6338 304.5585 177.816 209.6741 352.5917 1266.341 358.2865 472.8398 283.5435 121.5771 381.5518 216.9921 271.6383 1279.532;
	3.7339 50.4538 94.9646 120.6209 15.2127 33.4374 24.59 19.0105 26.0067 30.923 57.1608 85.2726 128.3774 65.4693 201.5937 75.9492 94.2333 99.8592 92.3739 71.6706 8.1967 78.0206 75.4034 88.3312 105.2487 74.9415 13.7459 1245.996 797.0405 797.0405 763.1005 111.4433 307.913 184.4802 205.255 340.0706 1251.7468 339.4063 454.1093 281.9162 119.7481 370.9321 209.4212 277.6597 1264.7858;
	3.8597 52.1527 95.3121 120.6672 15.078 34.5389 21.8101 19.1805 26.4232 30.5143 56.4052 84.1454 126.6805 67.1121 201.0944 75.7612 94.0 99.6119 92.2917 71.1185 7.27 80.5907 75.3153 89.8453 106.582 76.2117 13.9169 1271.186 796.2087 796.2087 764.4894 116.0527 307.639 183.0593 210.4055 339.7157 1254.9106 333.6529 462.1271 285.4876 119.9348 383.1513 212.0686 283.5475 1267.9826;
	3.8956 52.6382 94.4001 119.9559 15.1296 33.827 22.2027 19.1354 27.2498 30.4196 56.2301 83.8842 126.2873 69.0898 200.1399 75.4016 93.5538 99.1391 92.2627 72.1058 7.4009 78.9296 73.9452 88.9819 106.168 75.9527 13.6935 1293.5803 786.5214 786.5214 765.402 118.826 307.5424 185.6004 216.6057 335.5824 1188.5305 323.1679 458.6047 284.3784 122.8489 375.254 207.4117 280.8039 1200.911;
	3.9197 52.9637 94.3089 114.9232 15.0601 32.5375 20.5803 18.3603 28.2068 31.191 57.6561 86.0115 129.4898 69.0012 202.0406 76.1176 94.4423 100.0806 91.5067 71.1729 6.8601 75.9209 74.1285 85.6103 104.3796 63.9959 12.1061 1262.3881 759.8299 759.8299 671.728 116.8898 305.0224 183.1993 216.3281 324.1941 1175.5703 323.2798 469.6745 279.5882 120.219 360.9495 198.1902 258.8464 1187.8158;
	3.9098 52.8295 92.1298 109.4626 14.7991 30.7342 19.0148 13.1355 27.849 30.4774 56.337 84.0438 126.5275 67.9213 199.8349 75.2866 93.4112 98.988 91.1336 71.6624 6.3383 71.7132 74.5208 86.5253 100.448 69.642 9.0109 1284.3092 727.3686 727.3686 617.2652 118.7478 303.7785 184.4592 212.9425 310.3439 1227.3368 307.6268 468.1191 269.0571 117.7265 340.9451 193.5609 232.5509 1240.1216;
	3.8964 52.6489 86.7793 100.8162 14.9878 26.9318 15.6813 7.2249 27.782 30.896 57.1108 85.1981 128.2653 67.3292 198.5784 74.8133 92.8239 98.3656 89.8047 71.1444 5.2271 62.8409 74.5373 85.5901 91.7205 55.8963 7.0282 1253.328 711.5525 711.5525 600.0424 116.4757 299.3489 183.1258 211.086 303.5957 1199.2209 306.6877 468.0473 245.6798 115.872 298.7636 143.0571 227.1781 1211.7128;
	3.1278 42.2634 83.0067 64.9019 14.9924 22.9669 24.8002 8.8858 26.419 31.0505 57.3963 85.624 128.9064 68.2176 193.5687 72.9259 90.4821 95.884 85.0722 69.6428 8.2667 53.5893 73.8944 87.0593 89.8735 37.1652 7.5107 1289.7101 741.3293 741.3293 624.1212 113.9905 283.5741 179.2607 213.8714 316.3005 1189.9654 300.7758 440.9511 240.7326 111.5764 254.779 119.0222 202.4142 1202.3609;
	2.5833 34.9058 76.5894 66.9632 14.3491 11.483 22.8885 8.9534 25.8647 30.2806 55.9732 83.501 125.7103 65.3898 183.4577 69.1166 85.7558 90.8756 81.1646 65.9771 7.6295 26.7936 69.6952 84.9508 80.0943 45.9215 8.8136 1233.2184 726.8707 726.8707 617.2168 120.0571 270.5488 169.8252 205.0058 310.1315 1162.7716 282.2782 445.9359 214.5383 105.5127 127.3843 81.8318 187.854 1174.8838;
	2.2043 29.7844 79.7634 82.3232 14.5196 15.1904 24.7567 11.2293 26.4171 29.7662 55.0223 82.0824 123.5746 66.1916 181.7578 68.4762 84.9612 90.0335 83.3586 61.7532 8.2522 35.4444 70.557 84.8669 97.3002 56.42 10.128 1135.8184 704.966 704.966 617.1295 108.5377 277.8621 158.9528 207.5197 300.7855 1099.2222 249.5452 464.4498 260.6257 115.3603 168.5126 74.0451 180.9914 1110.6724;
	2.8803 38.9187 78.8093 87.4707 14.6587 16.7598 21.27 13.3287 26.0076 29.2328 54.0364 80.6117 121.3605 64.0642 160.1889 60.3502 74.879 79.3494 84.6256 57.9559 7.09 39.1061 69.8423 85.9853 95.727 55.7631 9.7302 972.0933 705.5517 705.5517 607.2337 105.5639 282.0854 149.1786 200.85 301.0354 1028.628 251.6917 437.8539 256.4116 116.7118 185.9216 84.4853 205.3425 1039.3428;
	3.1008 41.8984 82.7614 73.4878 14.3681 20.5599 16.9169 9.2866 26.4318 29.9055 55.2799 82.4667 124.1532 65.7811 173.5278 65.3756 81.1142 85.9568 87.2007 68.3322 5.639 47.973 74.7929 84.4577 84.8678 57.2279 6.5271 810.5271 646.6004 646.6004 557.6025 98.9316 290.669 175.8871 206.2325 275.8828 875.5886 223.2438 429.3299 227.3244 116.6055 228.0773 95.8376 228.7295 884.7093;
];
