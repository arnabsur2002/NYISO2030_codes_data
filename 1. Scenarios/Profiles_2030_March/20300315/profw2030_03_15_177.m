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
	4.01 54.1841 94.9814 119.9307 14.8159 34.3077 32.4948 18.8548 12.6237 18.861 34.8642 52.0105 78.3016 57.2782 205.9691 77.5977 96.2786 102.0266 91.2673 72.7235 10.8316 80.0513 28.0264 88.0278 105.5114 76.1638 14.1088 1291.7551 790.5537 790.5537 736.4181 115.4646 304.2245 187.1904 179.575 337.3029 1145.8545 267.3187 479.9913 282.6199 121.5109 380.5866 219.1082 281.0929 1157.7905;
	3.9772 53.7412 94.3533 118.5997 14.5588 33.6828 33.1889 18.4231 13.5808 15.9221 29.4317 43.9063 66.1007 66.1712 204.6538 77.1021 95.6637 101.375 90.0035 71.9861 11.063 78.5932 31.5005 86.8473 101.2725 73.7788 13.8484 1292.1364 808.8031 808.8031 805.8884 116.6138 300.0118 185.2925 207.4557 345.0893 1251.0216 265.8806 479.6644 271.2657 121.633 373.6543 213.4972 276.5522 1264.0531;
	3.9168 52.925 89.4764 113.3166 14.8489 34.0654 34.0673 18.4052 24.9885 16.3768 30.2722 45.1602 67.9885 64.8707 195.1982 73.5398 91.2438 96.6912 86.9747 71.4114 11.3558 79.486 29.6902 85.1777 101.4929 74.41 13.6249 1268.9495 808.373 808.373 736.3352 113.1799 289.9158 183.813 203.3784 344.9058 1235.3549 277.1481 479.6893 271.8561 119.6126 377.8993 213.7835 259.1189 1248.2232;
	3.838 51.8597 89.113 114.4086 14.8276 33.4511 32.795 18.9033 28.4312 29.938 55.3399 82.5562 124.288 69.1875 206.1503 77.6659 96.3633 102.1163 89.3243 71.6641 10.9317 78.0525 28.5643 85.7142 103.107 73.4197 13.9087 1259.6474 789.0612 789.0612 775.0195 116.0626 297.7478 184.4636 216.9122 336.6661 1202.1998 303.6501 480.1249 276.1796 120.5852 371.0838 179.7964 249.8642 1214.7227;
	3.3975 45.9072 89.8224 116.9686 14.8781 31.298 32.3999 19.0456 28.3813 29.9941 55.4437 82.7111 124.521 67.7728 204.7387 77.1341 95.7034 101.4171 87.9911 72.0589 10.8 73.0288 70.9792 86.5862 104.1278 74.0664 13.7157 1258.8648 790.0683 790.0683 764.3163 114.7651 293.3038 185.4798 212.4769 337.0958 1138.7767 312.87 480.0038 278.9137 121.5384 347.1997 185.8821 260.7971 1150.6389;
	3.8655 52.232 92.6095 115.9215 14.9202 34.0232 21.4626 19.0907 27.2422 29.0437 53.6869 80.0903 120.5755 57.1255 203.6306 76.7166 95.1855 100.8682 58.4321 71.2107 7.1542 79.3874 70.2868 86.6623 104.2391 72.2514 13.937 1221.3661 784.8501 784.8501 753.6464 114.3001 194.7738 183.2965 179.096 334.8694 1155.2878 297.0873 478.7523 279.2119 122.2423 377.4306 172.2748 264.8535 1167.3221;
	3.8819 52.4531 91.8964 113.3955 14.3387 34.2831 14.0287 18.8308 26.2631 29.0482 53.6951 80.1025 120.5939 68.8856 201.9944 76.1002 94.4206 100.0577 86.1842 71.5565 4.6762 79.9938 72.4275 86.0592 102.9057 70.0576 13.9033 1235.3409 777.9952 777.9952 737.7331 111.974 287.2805 184.1867 215.9658 331.9446 1126.601 299.3978 446.2585 275.6404 122.2903 380.3135 185.8903 267.1939 1138.3365;
	3.8984 52.6755 94.9031 116.5754 14.4226 34.5431 12.2349 18.9987 16.8852 28.7142 53.0777 79.1815 119.2073 53.9961 205.4153 77.389 96.0197 101.7522 85.0561 73.1718 4.0783 80.6005 72.4331 86.0354 104.6249 72.0847 14.0498 1230.0346 763.8706 763.8706 731.6136 116.6351 283.5204 188.3445 169.2849 325.9181 1166.8785 298.5864 191.1559 280.2452 121.7727 383.198 206.2113 273.7806 1179.0335;
	3.7585 50.7849 93.8375 115.5935 14.7193 32.2235 15.065 18.5374 10.6692 29.5164 54.5607 81.3938 122.538 32.0209 204.5646 77.0685 95.6221 101.3308 86.1132 73.7054 5.0217 75.1882 73.5071 87.2871 101.9901 71.1932 13.4656 1077.9425 675.3451 675.3451 712.4318 113.3728 287.0441 189.7178 100.3898 288.1472 981.8175 292.4082 289.0097 273.1879 120.9811 357.4659 185.4998 271.742 992.0447;
	3.7568 50.7633 89.5297 115.4087 15.1334 31.1044 14.0496 18.6736 4.8115 24.0682 44.4897 66.3698 99.9194 25.6744 195.3471 73.5959 91.3134 96.7649 84.6021 73.185 4.6832 72.577 34.9405 86.3177 101.9981 72.1665 13.31 913.3886 593.4592 593.4592 562.2035 114.0726 282.007 188.3784 80.4926 253.2092 786.8548 267.1351 294.2538 273.2093 120.7878 345.0516 160.6285 274.625 795.0512;
	3.5069 47.3857 89.1147 114.4932 14.5796 24.688 2.4664 17.988 0.0 27.0565 50.0135 74.6103 112.3254 19.8862 199.3287 75.0959 93.1746 98.7372 78.0686 71.5461 0.8221 57.6054 64.6886 85.7981 101.5357 69.2623 13.247 754.2648 629.331 629.331 511.9317 110.9818 260.2286 184.1599 62.3458 268.5145 738.8432 207.0703 78.6623 271.9706 118.6062 273.8725 140.1189 263.6352 746.5395;
	3.3884 45.7841 91.2055 116.0219 14.8784 19.8926 13.9891 18.5704 0.8361 26.8484 49.6288 74.0364 111.4614 17.7155 202.7668 76.3912 94.7817 100.4403 38.7929 72.9564 4.663 46.4161 68.4586 86.0732 102.7577 72.3875 13.7488 521.4173 676.9653 676.9653 494.058 111.8111 129.3098 187.7899 55.5405 288.8385 785.5485 216.4431 236.4559 275.2438 121.2189 220.6755 142.7848 273.4615 793.7313;
	3.7648 50.8713 92.9796 114.8938 15.0302 21.3082 18.4098 17.6303 25.0125 23.0409 42.5907 63.537 95.6546 56.1529 203.8553 76.8013 95.2905 100.9795 62.6086 73.1571 6.1366 49.7191 65.9961 84.3172 103.7752 70.2502 13.3376 598.9699 684.7719 684.7719 507.0654 108.1071 208.6952 188.3065 176.0469 292.1693 633.9626 230.833 317.8601 277.9692 120.0132 236.3789 146.3993 268.8846 640.5663;
	3.8298 51.7487 94.4922 119.2998 15.2579 20.5944 17.6187 19.0153 18.849 24.0111 44.3842 66.2125 99.6825 44.0273 205.3246 77.3548 95.9773 101.7073 61.1122 73.3194 5.8729 48.0536 70.0427 88.6819 106.4115 72.3507 13.9043 491.3399 694.0773 694.0773 464.5318 98.2896 203.7073 188.7242 138.0314 296.1396 687.6251 246.3173 426.6419 285.0309 119.6492 228.4604 161.4816 268.4561 694.7879;
	3.8705 52.2996 93.189 118.587 15.259 20.0849 10.2634 18.7399 5.3165 26.8633 49.6564 74.0776 111.5235 35.4775 201.3499 75.8574 94.1194 99.7384 73.4634 71.7829 3.4211 46.8647 70.6397 87.6357 104.8685 71.6936 13.9204 386.6289 664.6072 664.6072 428.364 90.3418 244.8779 184.7694 111.2267 283.5657 606.0004 237.6236 355.847 280.8977 122.8036 222.808 165.7125 243.6779 612.3129;
	3.6104 48.7839 91.4811 118.534 14.8374 10.1846 9.2286 18.6933 0.0047 29.2971 54.1553 80.7891 121.6275 25.492 189.9428 71.5598 88.7872 94.0879 65.3607 72.0452 3.0762 23.7641 72.8659 85.401 103.5028 71.0972 13.969 410.6832 577.3118 577.3118 410.2036 100.2107 217.869 185.4447 79.9207 246.3197 515.2081 228.5755 145.0429 277.2397 120.1296 112.9813 154.5995 243.3521 520.5748;
	3.5238 47.6139 90.2292 117.9166 14.8166 18.2154 6.0029 19.0584 0.0978 28.5485 52.7715 78.7247 118.5195 34.6715 193.754 72.9957 90.5687 95.9758 65.1132 70.5703 2.001 42.5027 72.361 85.4493 105.355 73.7702 13.8707 841.4257 469.7174 469.7174 298.1954 99.1686 217.0439 181.6481 108.6997 200.4127 772.0637 232.3276 115.3762 282.2008 121.4373 202.07 128.0694 249.2557 780.106;
	3.2853 44.3922 88.1237 111.4767 14.3551 20.3695 5.3306 18.4091 0.0 27.2604 50.3905 75.1727 113.172 58.7063 196.4127 73.9973 91.8115 97.2928 79.968 72.0515 1.7769 47.5289 70.5927 82.7673 99.0102 70.7309 13.4343 1130.192 557.2298 557.2298 219.712 76.3516 266.5602 185.4607 184.0521 237.7514 981.3582 214.9164 140.018 265.2058 121.3096 225.9661 164.5173 271.0894 991.5807;
	2.5397 34.317 90.9748 116.5232 14.5104 32.8669 8.3497 18.9539 0.0 24.2665 44.8563 66.9168 100.7429 65.7734 192.2215 72.4183 89.8524 95.2167 60.239 69.8505 2.7832 76.6895 53.4416 86.4579 103.1204 73.932 13.9225 1202.2516 694.6197 694.6197 309.1528 71.5722 200.7968 179.7953 206.2086 296.3711 1179.4358 145.3718 273.1737 276.2154 123.3631 364.6037 164.0758 277.4138 1191.7216;
	3.8645 52.2178 89.721 86.3777 14.5038 32.6229 0.519 19.1092 0.0 14.8497 27.4495 40.9492 61.6488 64.6254 197.5874 74.4399 92.3606 97.8747 48.1675 71.1891 0.173 76.1202 44.0552 86.6564 105.3349 74.5874 14.1257 1245.7591 686.6559 686.6559 407.2897 64.2373 160.5582 183.241 202.6094 292.9732 1166.5989 128.126 0.0604 282.1472 123.5644 361.8971 177.7497 276.6426 1178.751;
	3.8328 51.7893 90.3353 118.5715 14.1555 32.0242 1.3349 19.1205 0.0 15.1506 28.0056 41.7789 62.8979 64.2896 194.2032 73.1649 90.7787 96.1983 71.9795 70.2314 0.445 74.7232 67.5618 85.8841 105.0041 74.486 14.0647 1206.7927 662.0092 662.0092 662.8797 55.8733 239.9317 180.7758 201.5566 282.4573 1204.9264 174.4669 0.0 281.261 122.9373 355.2554 174.9832 281.6281 1217.4777;
	3.7874 51.1759 91.1183 117.0668 14.4271 31.9691 0.0 18.9064 25.9841 29.3127 54.1841 80.832 121.6922 64.9338 197.0296 74.2297 92.0999 97.5984 74.485 69.8171 0.0 74.5945 72.7887 88.7045 104.3284 74.6202 13.9577 1256.7077 650.3826 650.3826 548.2713 79.2249 248.2834 179.7094 203.5762 277.4966 1213.443 223.0339 382.2354 279.451 122.1491 354.6437 184.2285 281.4261 1226.083;
	3.7707 50.9511 93.0766 118.8532 14.1927 32.5217 1.2925 19.1086 26.5482 30.296 56.0018 83.5436 125.7745 67.8171 190.6929 71.8425 89.1379 94.4595 69.415 71.4843 0.4308 75.8841 74.0786 88.7309 105.9544 74.9856 13.8967 1264.6515 754.9877 754.9877 677.5035 117.7603 231.3832 184.0008 212.6158 322.1281 1235.1847 265.0511 442.7075 283.8065 120.3042 360.7746 190.9704 283.3264 1248.0512;
	3.566 48.1847 87.7236 114.4975 13.9749 32.3689 27.5311 18.4645 26.4213 27.9934 51.7454 77.1939 116.215 66.8474 188.3731 70.9685 88.0535 93.3104 74.7395 70.1373 9.177 75.5274 74.8688 84.6348 104.1891 74.3378 13.4417 1249.6641 719.0549 719.0549 618.7965 117.1233 249.1315 180.5337 209.5757 306.7968 1180.1121 244.7317 438.1356 279.0778 119.6727 359.079 139.9888 271.5878 1192.4049;
];
