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
	3.8189 51.602 93.55 111.1492 15.0945 33.8407 27.5003 19.1471 27.4955 30.8251 56.9797 85.0026 127.9709 68.9446 196.6197 74.0753 91.9083 97.3953 35.4421 71.0748 9.1668 78.9616 74.1216 87.2812 105.2036 76.2608 14.069 1200.4155 740.2065 740.2065 625.2167 109.1858 118.1404 182.9467 216.1506 315.8214 1195.4497 218.17 464.1247 281.7955 123.5547 375.4059 138.8852 279.5459 1207.9023;
	3.7156 50.2062 93.8988 115.2585 15.1709 32.5541 27.0048 19.0738 26.0859 30.4558 56.2971 83.9841 126.4377 65.7892 190.4279 71.7426 89.014 94.3282 32.7745 72.2993 9.0016 75.9595 74.5957 87.3888 104.6193 75.4728 13.7083 1210.7171 733.4621 733.4621 613.5869 106.5026 109.2484 186.0986 206.258 312.9438 1174.9847 221.3082 438.3111 280.2302 122.7628 361.1333 131.5026 279.5159 1187.2241;
	3.8821 52.4564 94.8376 64.9463 15.3632 33.6205 29.2936 19.0846 27.3694 30.5862 56.538 84.3436 126.9789 67.8449 191.24 72.0486 89.3936 94.7305 30.2877 70.291 9.7645 78.4479 75.0174 87.5887 106.0339 75.7016 13.8111 1231.6235 707.787 707.787 615.1002 111.0848 100.9589 180.9293 212.703 301.9891 1172.7146 229.5079 458.4546 284.0194 122.5868 372.9637 142.3565 281.0196 1184.9304;
	3.9238 53.0193 95.3374 87.8523 15.4089 33.8197 28.0097 19.0771 27.375 30.6181 56.5971 84.4318 127.1116 68.1493 193.0829 72.7429 90.255 95.6434 37.069 70.1014 9.3366 78.9126 69.9317 88.2603 106.0633 75.8129 14.0016 1270.3035 722.96 722.96 594.1363 103.5851 123.5633 180.4413 213.6571 308.4629 1123.8157 256.1688 469.566 284.0982 123.1592 375.173 187.441 280.8479 1135.5221;
	3.6898 49.8568 94.8755 119.2729 15.3396 34.7579 24.9663 19.0112 27.6322 30.2509 55.9184 83.4192 125.5872 69.2716 194.737 73.366 91.0282 96.4627 77.4386 70.3402 8.3221 81.1018 61.7854 88.0626 106.0367 75.598 13.8949 1252.7201 705.4022 705.4022 594.6144 100.3603 258.1285 181.0558 217.1757 300.9716 1200.178 250.4664 468.214 284.0268 122.8667 385.5813 205.0178 275.5143 1212.6799;
	3.9113 52.8504 94.3727 119.1117 15.2499 34.9421 27.9371 18.8623 27.4959 30.7367 56.8164 84.7588 127.604 69.4953 198.0094 74.5989 92.5579 98.0837 87.8019 71.5806 9.3124 81.5315 72.6724 87.829 106.2096 74.6699 13.9665 1251.7113 719.0659 719.0659 533.2709 97.4255 292.673 184.2486 217.8771 306.8014 1112.9456 229.9455 465.0527 284.4899 123.9081 387.624 208.0458 278.6664 1124.5388;
	3.7784 51.055 94.4962 117.6375 14.9518 33.1097 28.3297 18.6812 26.8119 30.2839 55.9794 83.5103 125.7242 66.9397 197.5486 74.4253 92.3425 97.8555 90.9045 71.6957 9.4432 77.256 73.6942 87.8699 105.1211 75.5139 13.8189 1240.998 697.9835 697.9835 567.7547 95.6067 303.0151 184.5448 209.8649 297.8063 1082.8338 248.1938 452.0041 281.5742 123.6616 367.2973 199.403 274.3113 1094.1134;
	3.7506 50.6788 90.8417 118.5712 15.2801 33.0519 28.1194 18.6111 27.0139 29.6036 54.7219 81.6343 122.9 66.9426 195.0255 73.4747 91.1631 96.6057 88.4077 69.9709 9.3731 77.121 72.5448 87.425 105.5329 74.6107 13.5366 1172.5036 649.0182 649.0182 504.0457 77.4392 294.6922 180.1052 209.8741 276.9144 1052.1759 234.0489 457.3747 282.6774 122.374 366.6554 195.4457 262.3007 1063.1361;
	3.6707 49.599 93.5376 120.7604 15.0497 33.4912 28.2736 18.6735 25.7761 30.1101 55.6581 83.0309 125.0026 68.2884 198.5437 74.8002 92.8076 98.3484 88.9426 69.7077 9.4245 78.1462 72.5418 85.4105 103.6977 73.4086 13.4186 1158.5577 717.8366 717.8366 558.3565 76.9798 296.4753 179.4278 214.0933 306.2769 1101.3354 266.8825 447.5383 277.7617 122.3932 371.5292 184.7723 272.4402 1112.8076;
	3.619 48.9 90.9002 116.213 15.0114 32.8308 29.294 17.9459 26.3586 29.8213 55.1242 82.2344 123.8034 67.7495 198.0488 74.6137 92.5763 98.1032 89.5631 68.7045 9.7647 76.6053 71.8193 84.802 101.4264 73.866 13.079 1106.9892 701.8204 701.8204 618.6056 85.3064 298.5435 176.8457 212.404 299.4434 1063.201 294.0911 455.771 271.6778 121.4744 364.2033 163.6505 266.7004 1074.276;
	3.6378 49.1546 90.6752 116.6882 15.1306 33.1721 27.7289 18.5002 27.1796 30.0769 55.5967 82.9394 124.8648 66.6562 198.3785 74.738 92.7304 98.2666 89.7279 70.0492 9.243 77.4015 73.0251 85.0799 100.4654 74.6597 13.3691 1103.9312 705.7123 705.7123 536.5821 84.8877 299.0931 180.3067 208.9762 301.1039 1033.0132 280.8033 464.9536 269.1036 122.4225 367.989 169.4715 271.3816 1043.7738;
	3.5575 48.0696 89.0134 113.5622 15.0147 33.0331 27.0868 17.8574 26.6974 30.3655 56.1301 83.7351 126.0628 66.9872 195.5875 73.6864 91.4258 96.884 88.1393 68.3673 9.0289 77.0773 73.1762 83.0584 98.0164 73.9306 13.2196 1030.2085 708.9733 708.9733 584.3032 92.054 293.7978 175.9775 210.014 302.4953 1057.1207 266.5207 459.9409 262.5438 117.6915 366.4477 182.7686 263.3899 1068.1324;
	3.7839 51.1292 91.4703 116.1298 15.2735 34.1581 29.8934 18.5834 27.6616 30.6832 56.7175 84.6114 127.3819 69.1203 198.9884 74.9677 93.0155 98.5687 86.2862 69.4542 9.9645 79.7021 74.1428 87.6292 102.6601 75.184 13.5927 1047.9135 732.5389 732.5389 626.4816 98.1149 287.6206 178.7754 216.7015 312.5499 1029.2692 289.1954 473.6486 274.9823 121.5529 378.9266 158.7929 268.2353 1039.9908;
	3.7485 50.6498 91.7036 115.7768 14.898 33.5976 28.6987 19.0201 26.0722 30.7524 56.8454 84.8021 127.6691 67.7702 200.5675 75.5627 93.7537 99.3509 89.1419 69.3575 9.5662 78.3943 73.6314 87.817 103.8137 76.3776 14.0529 971.527 700.0384 700.0384 658.622 96.7321 297.1396 178.5263 212.4688 298.683 974.7671 297.2559 466.6081 278.0723 121.3805 372.7091 152.9673 272.2587 984.921;
	3.7356 50.4762 92.3514 118.2651 14.7791 32.7409 26.4896 19.0603 27.6119 31.2225 57.7143 86.0983 129.6206 69.2335 197.8961 74.5562 92.5049 98.0276 85.9492 71.4226 8.8299 76.3954 73.8295 89.3652 105.7085 75.8988 14.0907 971.3698 692.2238 692.2238 648.4782 97.6256 286.4975 183.842 217.0563 295.3488 910.6385 317.3316 479.2099 283.1479 120.9506 363.2053 176.9193 262.9208 920.1243;
	3.6329 49.0881 91.1808 118.1266 14.8725 32.8935 26.9192 17.9656 27.1697 30.7343 56.8118 84.752 127.5937 68.2155 198.2296 74.6819 92.6608 98.1928 87.2785 70.3861 8.9731 76.7515 74.889 86.8995 104.3693 75.3152 13.6874 1039.1358 721.2246 721.2246 619.9966 102.697 290.9283 181.1739 213.8647 307.7225 1003.9892 299.7253 477.1384 279.5605 120.1283 364.8984 174.8782 252.9535 1014.4474;
	3.6446 49.2464 93.571 120.7327 15.1988 34.3246 26.1663 18.4699 27.3818 31.2395 57.7457 86.1452 129.6911 67.6268 197.2062 74.2963 92.1824 97.6858 90.1718 71.81 8.7221 80.0907 75.8121 89.8346 106.2129 75.5162 13.5909 1037.1158 759.2167 759.2167 658.2878 99.7166 300.5728 184.8392 212.0191 323.9325 1115.4803 288.8993 469.7674 284.4987 122.866 380.774 185.9777 237.3153 1127.0999;
	3.8578 52.1274 94.2522 120.2978 15.4023 33.8599 26.8706 15.4048 27.7998 31.2018 57.6761 86.0414 129.5349 67.6749 190.432 71.7441 89.0159 94.3302 87.2889 70.1612 8.9569 79.0064 74.1483 89.9797 106.2917 70.3477 12.6882 1215.9521 756.2872 756.2872 667.5327 99.0701 290.963 180.5952 212.1699 322.6825 1179.9064 320.7188 477.4407 284.71 120.7938 375.6192 197.2477 257.1788 1192.1971;
	3.7242 50.3228 91.7601 113.7955 15.1668 33.7376 27.1956 15.9534 27.7455 31.055 57.4048 85.6366 128.9255 67.8342 196.8824 74.1743 92.0311 97.5255 88.0388 70.7086 9.0652 78.721 73.3017 89.7849 105.2883 47.4336 12.4966 1266.548 800.7389 800.7389 646.1498 102.8906 293.4625 182.004 212.6694 341.6486 1272.6307 321.2147 472.2134 282.0221 118.4725 374.2623 155.2647 236.7759 1285.8873;
	3.8498 52.0195 92.2401 109.8198 15.3613 30.7908 28.1845 15.4076 28.437 31.3435 57.938 86.4321 130.123 64.4913 197.7511 74.5016 92.4372 97.9558 91.5998 70.1235 9.3948 71.8452 75.6718 89.8523 105.9586 51.0515 11.721 1290.2435 809.6998 809.6998 656.5803 108.7594 305.3328 180.498 202.1888 345.4719 1319.7122 298.5855 475.92 283.8177 121.4155 341.5725 181.3074 246.1483 1333.4592;
	3.8151 51.5498 89.477 110.3241 15.0344 32.0912 31.4872 15.1784 28.4701 31.3393 57.9302 86.4205 130.1055 64.9233 194.8399 73.4048 91.0763 96.5137 90.3943 69.7784 10.4957 74.8794 75.5982 89.3342 102.6009 59.4807 11.3353 1276.6277 817.2184 817.2184 686.0344 106.4811 301.3143 179.6098 203.5434 348.6798 1300.8079 302.4484 478.9702 274.8239 119.7773 355.9979 161.5892 245.4477 1314.358;
	3.8028 51.3835 87.7794 104.2981 15.0901 32.3638 29.6608 13.8224 28.0973 30.968 57.2438 85.3965 128.564 65.4634 195.7514 73.7482 91.5024 96.9652 90.5348 72.1957 9.8869 75.5156 74.6776 89.0285 102.7471 65.9026 11.334 1293.9827 800.4126 800.4126 748.3833 108.8809 301.7826 185.832 205.2367 341.5094 1222.8329 314.1142 477.0938 275.2155 113.752 359.0229 162.2148 239.3561 1235.5708;
	3.7663 50.8911 89.2721 101.5469 15.2109 31.707 30.593 13.4499 28.3961 30.9245 57.1635 85.2766 128.3835 66.7066 187.8685 70.7784 87.8176 93.0605 89.2596 70.0303 10.1977 73.9829 73.7513 89.5855 102.7229 62.8855 10.5975 1276.368 788.6403 788.6403 769.45 107.4886 297.5321 180.2581 209.1341 336.4865 1213.1313 298.8282 477.4204 275.1506 115.9164 351.7361 175.9043 232.3867 1225.7681;
	3.8817 52.4502 89.9693 108.7311 15.1974 34.3695 29.0075 13.7293 28.4267 30.8712 57.0649 85.1296 128.1621 65.2665 188.0838 70.8595 87.9182 93.1671 91.098 68.3428 9.6692 80.1955 73.3163 88.8152 103.2013 63.2902 10.8709 1248.7525 790.0651 790.0651 790.7376 112.0431 303.6599 175.9144 204.6193 337.0945 1215.1836 307.1184 474.4582 276.432 116.046 381.2724 188.0051 230.3837 1227.8418;
];