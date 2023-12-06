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
	3.7535 50.7181 88.9141 110.7592 15.2165 33.4544 27.0404 18.7363 26.6551 30.6866 56.7237 84.6207 127.396 66.2147 203.1264 76.5267 94.9498 100.6184 41.9341 70.9157 9.0135 78.0603 73.4731 89.048 102.503 74.5656 13.7491 1097.6179 686.2706 686.2706 580.0109 99.2405 139.7803 182.5372 207.592 292.8088 1170.3471 205.8674 469.906 274.5615 120.3504 371.121 148.549 277.5391 1182.5382;
	3.8567 52.1129 89.6455 116.1447 14.9795 33.1341 28.7072 18.3586 26.6778 30.7908 56.9163 84.9079 127.8284 67.7994 202.2825 76.2088 94.5553 100.2004 35.7909 71.2348 9.5691 77.3129 70.9731 88.1149 100.5775 70.8936 13.4228 1130.2095 706.1696 706.1696 594.9671 101.0527 119.3031 183.3585 212.5603 301.299 1194.7811 217.5416 473.0885 269.404 118.4472 367.5675 145.8802 278.7892 1207.2267;
	3.861 52.1708 90.6756 62.5307 14.9121 33.3209 26.7998 18.1453 27.0128 29.7711 55.0313 82.0959 123.595 64.02 198.7269 74.8692 92.8933 98.4391 37.5311 70.1647 8.9333 77.7487 70.2476 88.8811 102.2122 72.2911 13.7649 1104.5132 634.8311 634.8311 537.0537 104.5703 125.1035 180.6041 200.7114 270.8613 1159.2527 209.1989 459.2075 273.7827 120.0192 369.6393 134.56 281.8706 1171.3283;
	3.8129 51.5201 90.7823 80.4036 14.6482 32.3463 25.6906 18.2349 26.1291 29.5036 54.537 81.3585 122.4848 64.3042 201.3984 75.8757 94.142 99.7624 44.1953 71.7844 8.5635 75.4747 64.8687 88.2335 102.6964 72.5759 13.869 1096.879 634.6996 634.6996 510.5279 96.6886 147.3176 184.7733 201.6025 270.8052 1065.9139 226.4487 457.653 275.0797 121.3916 358.8282 165.0289 278.3332 1077.0172;
	3.7076 50.0977 91.1994 119.0428 14.891 32.415 23.6147 18.991 26.4522 30.0734 55.5903 82.9298 124.8504 64.1326 195.6158 73.6971 91.439 96.8981 79.3471 70.3497 7.8716 75.6351 59.0792 89.0126 105.1339 74.8608 14.0943 1084.3166 644.9434 644.9434 527.5656 98.6355 264.4903 181.0803 201.0645 275.1758 1166.4425 235.291 469.4328 281.6088 123.2101 359.5909 186.666 278.2725 1178.593;
	3.8546 52.0847 87.1932 115.1949 14.6526 33.815 27.3476 18.7142 26.7316 30.495 56.3695 84.0923 126.6004 64.4235 199.4563 75.144 93.2342 98.8004 88.0398 71.454 9.1159 78.9017 69.1878 86.6592 105.1481 73.7377 14.1178 1128.5484 669.0652 669.0652 505.5235 93.6065 293.4661 183.9228 201.9765 285.4678 1078.7764 224.4266 473.8289 281.6468 123.7606 375.1213 195.4118 275.4185 1090.0136;
	3.8737 52.3426 87.9849 112.5746 14.3952 33.2075 29.3717 18.2923 27.7299 30.2687 55.9512 83.4682 125.6609 63.9504 201.1399 75.7783 94.0212 99.6344 89.6765 72.7151 9.7906 77.4843 72.0497 85.1115 101.1322 75.1053 13.6407 1165.8684 706.6776 706.6776 577.14 96.8653 298.9215 187.1689 200.4932 301.5158 1119.7863 262.3545 475.0244 270.8898 123.0839 368.3823 199.5809 273.0079 1131.4508;
	3.7999 51.3452 86.8568 112.4166 14.341 33.0426 27.2372 18.3318 27.2842 30.7172 56.7803 84.705 127.523 63.9597 199.8198 75.2809 93.4041 98.9805 90.812 71.9051 9.0791 77.0995 74.5839 85.8587 104.9349 73.944 13.7173 1053.0139 662.075 662.075 543.3461 85.142 302.7067 185.0839 200.5222 282.4853 1043.5128 243.6131 469.2699 281.0757 120.7081 366.5528 196.4577 270.1528 1054.3827;
	3.7032 50.0382 78.9199 99.403 13.7983 32.5339 28.3169 17.5338 26.9957 30.5464 56.4645 84.2339 126.8137 65.3739 197.3 74.3316 92.2263 97.7323 90.4083 71.2361 9.439 75.9123 72.7235 84.4128 99.2411 71.7415 13.1908 1127.8004 713.909 713.909 563.6504 77.5809 301.3611 183.362 204.956 304.6012 1076.3823 273.1023 464.7334 265.8245 119.1346 360.909 172.7647 266.957 1087.5946;
	3.6465 49.2729 81.2037 109.9259 14.0491 32.986 29.5219 17.144 27.9858 31.1026 57.4928 85.7679 129.1231 64.6234 202.1824 76.171 94.5085 100.1508 92.8057 72.952 9.8406 76.9674 74.1606 84.2774 99.0785 70.0467 12.917 1193.9725 745.7643 745.7643 675.5994 92.1567 309.3523 187.7787 202.603 318.1928 1136.2127 315.9493 467.0465 265.3889 121.4155 365.9248 160.6914 246.8725 1148.0483;
	3.7365 50.4885 87.376 114.8249 14.3413 32.9918 27.9269 17.8816 28.1008 31.4629 58.1587 86.7613 130.6187 64.0159 203.4776 76.659 95.1139 100.7924 92.761 73.2091 9.309 76.981 75.0988 86.8951 100.9781 72.5571 13.1911 1175.9736 781.5107 781.5107 670.0989 86.8823 309.2033 188.4405 200.6984 333.4446 1112.5207 303.5215 461.6499 270.4771 120.0094 365.9896 168.6803 259.4587 1124.1094;
	3.634 49.1037 86.7495 114.3955 14.2808 33.0521 27.0225 17.4209 27.8752 30.8175 56.9657 84.9816 127.9393 67.8741 204.1296 76.9046 95.4187 101.1153 90.1898 72.0364 9.0075 77.1217 74.0802 85.6608 100.552 72.5118 13.0515 1097.5452 747.7235 747.7235 666.4535 94.1382 300.6326 185.4219 212.7945 319.0287 1093.7668 296.2414 459.063 269.3357 118.6593 366.6585 178.5709 260.6348 1105.1602;
	3.571 48.2518 86.6804 115.502 14.2577 32.3825 29.9056 17.9178 28.0202 30.9105 57.1376 85.2381 128.3254 67.3143 199.6209 75.206 93.3112 98.882 89.6889 71.1727 9.9685 75.5591 74.5085 88.1428 103.0533 73.1032 13.4382 1104.9385 755.7091 755.7091 671.5215 103.4872 298.963 183.1988 211.0393 322.4359 1023.2224 312.2876 456.3482 276.0357 115.0306 359.2297 136.7015 252.2552 1033.881;
	3.5552 48.0388 85.6406 111.4401 14.2755 32.363 28.1529 17.621 28.2242 30.2947 55.9992 83.5398 125.7688 66.4997 201.2881 75.8341 94.0905 99.7078 89.9954 71.406 9.3843 75.5136 73.8348 86.4381 100.8793 70.7608 12.9393 1025.3786 688.2705 688.2705 674.8219 98.3778 299.9848 183.7993 208.4854 293.6621 977.9315 307.2044 442.8869 270.2125 113.0522 359.013 125.4804 256.0865 988.1183;
	3.5846 48.4354 88.9268 113.5513 14.6137 32.4481 26.138 18.4456 28.3894 30.9694 57.2464 85.4004 128.5698 67.6959 200.1958 75.4226 93.5799 99.1668 89.3666 71.442 8.7127 75.7122 73.9865 88.5422 105.5102 71.8108 13.2399 1059.7702 693.1391 693.1391 632.9661 96.7686 297.8885 183.892 212.2359 295.7394 918.4973 309.8057 458.7462 282.6167 114.5735 359.9574 152.8536 249.2523 928.0649;
	3.5796 48.3686 87.4363 110.4624 14.5168 32.4767 26.5917 17.3818 28.1423 30.7434 56.8286 84.7771 127.6315 68.4376 200.3418 75.4776 93.6482 99.2391 86.1544 71.7889 8.8639 75.779 74.9402 85.0348 101.1551 71.5498 12.9177 1102.7363 736.608 736.608 631.6247 94.9187 287.1814 184.7849 214.561 314.2861 989.7728 291.2588 463.9384 270.9511 113.3685 360.2749 167.9135 247.1459 1000.0829;
	3.3519 45.2921 85.788 111.5594 14.5459 32.043 25.7794 15.9871 27.5257 30.3601 56.1201 83.7202 126.0403 64.1182 192.7209 72.6065 90.0858 95.4641 87.608 71.1135 8.5931 74.7671 73.4004 85.4034 97.3265 69.6489 11.628 1063.7214 706.2406 706.2406 656.3778 98.7619 292.0268 183.0463 201.0192 301.3293 1030.8964 301.3658 465.1792 260.6959 112.5156 355.4639 167.7452 229.2973 1041.6349;
	3.6196 48.9091 88.7153 110.8952 14.6726 31.4524 28.0619 14.5806 28.3295 30.2808 55.9736 83.5016 125.7112 68.907 187.5675 70.6649 87.6769 92.9113 88.0011 68.9451 9.354 73.3889 71.4662 84.4811 100.3158 66.1958 11.4368 1191.8573 718.6687 718.6687 665.6325 96.4179 293.3371 177.4648 216.0326 306.632 1109.0854 311.0203 479.2077 268.7031 113.6074 348.9117 174.8319 245.3222 1120.6384;
	3.5802 48.3762 89.2938 108.525 14.3684 32.066 27.2884 15.4923 28.1847 30.3882 56.1721 83.7978 126.1571 67.8485 189.4775 71.3846 88.5697 93.8575 89.1826 70.4553 9.0961 74.8206 74.2103 85.8596 101.4422 47.6821 12.151 1245.3507 759.748 759.748 633.5461 103.3552 297.2754 181.3522 212.7144 324.1591 1236.0212 300.7334 476.0967 271.7201 114.2069 355.7184 150.3861 232.0622 1248.8964;
	3.5954 48.5812 89.4515 105.2531 14.2153 27.3983 28.0474 15.1506 28.3713 30.1339 55.7021 83.0965 125.1013 66.8013 189.6855 71.4629 88.667 93.9605 89.6848 67.6124 9.3491 63.9293 73.6056 85.646 102.3263 52.6362 10.9756 1224.2528 747.9154 747.9154 596.7738 112.4071 298.9492 174.0346 209.4311 319.1106 1243.286 280.679 476.085 274.0884 112.282 303.9382 170.0378 253.3292 1256.2369;
	3.5779 48.3446 87.662 106.6433 14.1288 29.1425 31.9194 14.9444 28.4822 30.6878 56.726 84.624 127.401 67.4356 190.8351 71.896 89.2043 94.5299 90.8058 67.5045 10.6398 67.9991 74.6556 85.0705 100.2936 62.5755 10.3709 1188.761 749.8102 749.8102 608.4065 110.7819 302.6861 173.7567 211.4197 319.919 1222.3556 286.7159 479.713 268.6436 116.1813 323.287 156.8556 252.4302 1235.0884;
	3.637 49.1439 89.5592 102.1653 14.4765 30.009 30.4882 13.8926 28.4621 30.3503 56.102 83.6932 125.9997 69.6793 188.326 70.9507 88.0315 93.2871 88.6255 67.8704 10.1627 70.0209 73.1782 88.021 102.8356 67.1338 10.4935 1173.1525 767.0874 767.0874 687.9248 113.8077 295.4182 174.6985 218.4539 327.2906 1123.7228 305.7201 479.4519 275.4526 113.9351 332.8994 162.5551 249.8843 1135.4282;
	3.4346 46.4087 90.2997 95.1799 14.3015 28.5518 31.0722 13.226 28.3188 29.1249 53.837 80.3142 120.9126 68.8272 186.1372 70.1261 87.0083 92.2029 85.9742 68.8989 10.3574 66.6209 70.2621 86.165 99.5156 63.2674 9.9374 1125.5586 752.0309 752.0309 715.3136 113.275 286.5806 177.3458 215.7825 320.8665 1158.9164 299.6129 475.5704 266.5597 117.2655 316.7348 167.3997 237.6904 1170.9885;
	3.6173 48.8771 87.3218 99.7604 14.0399 32.1162 29.3031 12.388 27.8132 29.3964 54.3388 81.0628 122.0397 68.1929 183.376 69.0858 85.7176 90.8351 84.8261 70.4817 9.7677 74.9379 71.0552 81.9646 95.5087 57.9716 9.7892 1164.8823 711.274 711.274 699.4172 113.5746 282.7536 181.4201 213.7939 303.4769 1156.9786 298.0411 460.9577 255.8268 118.3752 356.2761 186.4127 219.6654 1169.0304;
];