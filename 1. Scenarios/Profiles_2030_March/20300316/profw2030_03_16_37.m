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
	3.8612 52.1733 88.2421 116.0408 14.5547 32.8817 29.5293 17.7911 27.9592 28.7519 53.1475 79.2856 119.364 68.8705 191.1792 72.0257 89.3652 94.7004 74.416 68.5844 9.8431 76.7239 72.1957 85.1268 100.0423 71.4628 13.2157 1310.721 788.3261 788.3261 590.7678 115.5296 248.0532 176.5365 215.9182 336.3525 1265.4522 229.4434 460.7648 267.9705 123.5572 364.7673 201.4845 276.5619 1278.634;
	3.7933 51.2564 88.4145 114.5351 14.5281 31.6058 24.817 18.0009 27.076 29.7184 54.934 81.9507 123.3763 66.6546 187.086 70.4836 87.4518 92.6728 80.4551 69.2483 8.2723 73.7468 71.6152 86.5574 98.3503 72.585 13.4183 1292.4827 782.4289 782.4289 636.1822 109.4178 268.1838 178.2454 208.9712 333.8363 1241.0073 229.011 441.6862 263.4382 121.7299 350.6131 180.9529 274.3911 1253.9344;
	3.9001 52.6985 92.4521 116.8221 14.9605 33.0396 21.5346 18.4314 27.8054 29.887 55.2456 82.4156 124.0763 66.0684 189.9581 71.5656 88.7943 94.0955 80.4105 69.1009 7.1782 77.0924 71.3 88.6319 102.5661 75.9111 13.8543 1264.6259 765.3201 765.3201 635.0168 102.897 268.035 177.8658 207.1332 326.5366 1268.862 229.1339 371.0594 274.7305 122.5298 366.5194 193.384 275.7705 1282.0793;
	3.8132 51.5252 90.318 114.652 15.035 31.9417 22.8458 18.5594 26.7637 30.2474 55.9118 83.4094 125.5724 65.0203 198.3759 74.737 92.7292 98.2652 85.2297 70.0562 7.6153 74.5307 71.2933 88.5393 103.8286 74.9064 13.7385 1313.8572 773.5915 773.5915 660.958 107.8703 284.0991 180.3249 203.8474 330.0657 1258.5952 245.005 372.7428 278.1124 121.6866 354.3401 159.7574 278.7707 1271.7056;
	3.8604 52.1625 89.2983 112.8186 14.6373 33.112 30.843 17.7065 27.5317 30.348 56.0979 83.687 125.9903 65.4345 198.6474 74.8392 92.8561 98.3998 84.9895 71.9007 10.281 77.2612 71.1072 84.9049 101.7615 73.3043 13.0563 1290.766 797.6994 797.6994 706.9813 108.4305 283.2984 185.0726 205.1461 340.3518 1277.5818 240.7466 440.026 272.5755 119.2384 367.3219 197.4484 275.654 1290.8899;
	3.7123 50.162 89.3483 111.0008 14.4575 32.3197 29.3874 17.8553 26.157 27.7228 51.2452 76.4477 115.0916 63.0107 200.5625 75.5607 93.7513 99.3484 84.391 71.7414 9.7958 75.4126 56.1024 84.8378 99.5851 73.8783 13.3236 1287.3968 766.046 766.046 685.1319 109.0186 281.3032 184.6627 197.5472 326.8463 1217.4996 220.9212 433.8254 266.7459 118.5634 358.533 179.4711 275.2948 1230.1819;
	3.6852 49.7955 87.541 109.8688 14.4072 32.1984 30.5831 17.4647 26.7281 28.5997 52.8662 78.8659 118.7322 64.8582 196.8359 74.1568 92.0094 97.5025 86.672 71.8907 10.1944 75.1296 56.7192 83.4645 97.8199 71.3797 13.3063 1252.2846 750.3909 750.3909 668.1962 102.6053 288.9068 185.0468 203.3394 320.1668 1219.452 243.1858 444.484 262.0176 121.6194 357.1875 159.9811 267.2229 1232.1547;
	3.8613 52.1747 88.8077 113.9384 15.046 34.247 30.6679 17.7376 27.3513 28.8642 53.3549 79.5951 119.83 67.2984 202.8104 76.4076 94.8021 100.4619 88.855 72.1651 10.2226 79.9097 69.2179 85.9751 97.3932 71.4596 13.2172 1309.8959 782.1632 782.1632 726.1681 114.6458 296.1833 185.753 210.9895 333.723 1279.841 280.6724 457.3435 260.8747 122.9792 379.9133 179.0537 272.7317 1293.1727;
	3.8274 51.717 86.7441 111.9952 14.7491 34.5249 31.7104 16.7635 27.6299 30.0024 55.459 82.734 124.5555 66.7781 202.2267 76.1877 94.5292 100.1728 91.6441 71.1807 10.5701 80.5582 66.2413 83.4921 95.1988 66.7626 12.758 1310.8139 791.3678 791.3678 755.3457 119.0937 305.4804 183.2194 209.3582 337.6503 1286.7111 284.0142 467.1963 254.9969 123.1079 382.9967 202.7492 264.4367 1300.1143;
	3.8384 51.8648 87.245 113.0325 14.6945 34.3586 27.6935 16.3703 28.0322 29.2717 54.1084 80.719 121.522 66.4465 195.9725 73.8315 91.6058 97.0748 87.4002 69.7364 9.2312 80.17 70.2659 84.55 97.2019 67.1745 12.4565 1291.0068 801.999 801.999 729.7857 116.2632 291.3341 179.5016 208.3189 342.1862 1255.1099 293.4259 468.0424 260.3624 121.74 381.1509 208.5534 260.5746 1268.184;
	3.8425 51.9206 86.6451 114.2958 14.574 33.3472 28.5292 16.4698 27.6493 29.5333 54.5919 81.4403 122.6079 65.98 192.2067 72.4127 89.8454 95.2093 88.3714 71.0333 9.5097 77.8102 66.7206 82.623 95.3807 67.9742 12.6404 1311.173 808.0281 808.0281 746.1415 117.9773 294.5714 182.84 206.8562 344.7587 1290.9503 307.2097 456.8097 255.4839 120.4769 369.932 211.2702 260.705 1304.3977;
	3.898 52.6708 90.4582 119.6538 14.8539 33.7385 27.5506 16.7116 27.7833 29.1049 53.8 80.259 120.8295 66.265 193.8144 73.0184 90.597 96.0057 88.56 69.0595 9.1835 78.7231 73.3257 86.0024 98.7614 68.2325 12.5358 1321.2497 782.9887 782.9887 748.8729 119.6695 295.2001 177.7594 207.7496 334.0752 1287.8869 312.026 457.9379 264.5396 122.2372 374.2719 212.273 266.907 1301.3024;
	3.9107 52.8422 88.5185 116.75 14.8594 33.3866 28.7131 16.3448 26.8776 29.7946 55.0749 82.1609 123.6929 67.2557 193.291 72.8213 90.3523 95.7465 89.8843 68.7622 9.571 77.902 71.7779 81.8733 97.7181 67.7575 12.8657 1343.0177 827.818 827.818 765.9719 119.3144 299.6142 176.9941 210.8558 353.2024 1323.5209 321.5903 456.0547 261.7449 122.5851 370.3684 216.1999 263.8404 1337.3076;
	3.8611 52.1723 86.8263 112.6151 14.3182 31.5866 26.7335 14.6928 25.8521 29.4334 54.4072 81.1649 122.1933 65.3791 192.8823 72.6673 90.1612 95.544 90.3575 72.2779 8.9112 73.7021 72.185 83.3649 95.5296 67.2956 12.8499 1302.1246 797.6507 797.6507 759.5978 118.0667 301.1918 186.0436 204.9723 340.331 1291.1971 315.0204 441.8263 255.8828 117.0458 350.4008 203.0389 262.4455 1304.6471;
	3.794 51.2651 89.8901 112.706 14.0868 31.8705 23.8698 16.949 25.9795 29.254 54.0755 80.67 121.4482 65.0164 187.6843 70.709 87.7315 92.9692 86.4034 68.69 7.9566 74.3644 73.2097 85.5081 97.2422 69.4557 13.1062 1299.201 774.2953 774.2953 740.3489 120.0815 288.0115 176.8083 203.8353 330.366 1273.1712 316.325 451.9137 260.4703 120.1211 353.5498 206.578 261.0812 1286.4334;
	3.7554 50.7437 88.7948 109.5505 14.4256 30.8489 25.7649 17.14 26.0881 28.8753 53.3756 79.6259 119.8764 67.2936 169.974 64.0367 79.4529 84.1964 85.0041 67.9786 8.5883 71.9807 69.3124 84.3785 97.1348 70.1919 12.6589 1261.4022 739.8922 739.8922 695.8647 118.6777 283.347 174.977 210.9744 315.6873 1193.259 303.3875 457.387 260.1826 116.8649 342.2167 196.1835 268.9293 1205.6888;
	3.8366 51.8416 88.8393 106.0372 14.5635 30.2936 22.338 14.9496 26.782 29.8442 55.1665 82.2975 123.8984 66.4088 180.0366 67.8277 84.1566 89.1809 78.5824 66.7534 7.446 70.6851 68.5168 80.9842 94.6269 54.1477 11.6194 1252.7368 734.6867 734.6867 654.462 115.9734 261.9413 171.8234 208.2006 313.4663 1175.3336 293.1973 455.8585 253.4648 115.8327 336.0571 188.5564 255.0232 1187.5766;
	3.8822 52.4568 92.7329 111.5831 14.2543 29.0466 19.1207 12.2198 26.7057 29.8096 55.1026 82.2022 123.7549 64.1268 173.8954 65.5141 81.286 86.1389 81.7345 65.5576 6.3736 67.7753 70.4653 83.303 101.2295 70.2558 9.8441 1191.6618 675.4534 675.4534 610.618 111.379 272.4484 168.7453 201.0462 288.1935 1130.5276 253.3531 451.743 271.1505 115.6209 322.2233 182.881 237.9855 1142.3039;
	3.8564 52.1084 86.6251 100.0321 14.5228 24.8176 15.5814 7.2849 26.6139 28.7104 53.0708 79.1711 119.1917 64.3781 174.8635 65.8788 81.7385 86.6184 82.9766 67.1763 5.1938 57.9078 68.5215 84.1587 97.2002 64.1996 8.5431 1224.2535 691.3073 691.3073 633.7044 112.3011 276.5888 172.912 201.8341 294.9578 1103.9539 273.1494 455.4645 260.3576 115.6518 275.3104 138.1061 228.781 1115.4534;
	3.1294 42.2845 83.0307 65.8281 14.6223 22.0865 25.4456 8.8926 26.5644 29.4019 54.349 81.078 122.0624 67.4846 184.6741 69.5749 86.3244 91.4781 84.2085 68.0375 8.4819 51.5353 69.9222 82.6474 87.9095 45.9418 8.0804 1249.2094 725.9712 725.9712 708.2309 114.6508 280.6949 175.1288 211.5732 309.7477 1104.4928 277.0401 452.9217 235.4719 116.064 245.0134 110.711 206.1103 1115.9979;
	3.0145 40.7326 84.4785 75.0393 14.4516 12.7952 26.9981 9.9328 27.7112 29.5221 54.5711 81.4093 122.5613 68.378 188.239 70.918 87.9908 93.244 85.0804 68.6638 8.9994 29.8555 70.4684 83.4532 79.0548 54.6761 9.5228 1208.2573 720.0982 720.0982 680.2461 116.7014 283.6012 176.7407 214.3744 307.2419 1134.9524 267.6162 474.8588 211.7538 112.1602 141.9418 85.8337 195.147 1146.7748;
	2.6426 35.7071 85.2231 85.9804 14.549 16.6345 27.918 12.5569 28.35 29.1108 53.8109 80.2753 120.854 67.0964 193.9979 73.0876 90.6828 96.0966 87.0825 69.7509 9.306 38.8137 71.7648 84.8023 95.6051 64.2807 11.0241 1141.1871 716.0168 716.0168 678.7483 112.4463 290.275 179.539 210.3564 305.5005 1043.0951 241.3917 477.2521 256.0851 119.8398 184.5316 72.6935 200.1377 1053.9607;
	3.2146 43.4361 87.9157 94.0518 14.3856 21.5752 26.7304 14.6924 28.4408 30.1289 55.6927 83.0826 125.0804 69.4737 183.5489 69.151 85.7984 90.9207 84.3799 70.3329 8.9101 50.3422 73.1713 85.6884 95.8174 66.3771 10.738 1003.5761 741.7778 741.7778 723.1657 110.5713 281.2665 181.0371 217.8093 316.4919 1060.5462 246.826 478.218 256.6538 123.3966 239.3411 89.7877 229.0412 1071.5936;
	3.2785 44.3001 89.7185 83.1079 14.6913 23.6949 22.5686 10.8441 28.1734 29.7114 54.9211 81.9315 123.3475 69.1316 186.2655 70.1744 87.0683 92.2664 86.6739 71.2347 7.5229 55.2882 73.5149 85.0697 87.7677 63.4885 7.2261 909.3486 699.5628 699.5628 636.7917 102.16 288.9129 183.3584 216.737 298.4801 916.7289 226.0027 475.0015 235.0922 122.2907 262.8559 103.9305 237.4424 926.2782;
];