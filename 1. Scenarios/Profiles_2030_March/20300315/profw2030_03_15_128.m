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
	3.983 53.819 90.3944 110.8261 15.1779 33.5017 31.6188 17.771 12.2545 16.3138 30.1558 44.9866 67.727 54.0653 195.2016 73.5411 91.2454 96.6929 87.4344 67.2925 10.5396 78.1707 25.1165 85.1764 100.1898 73.8638 13.3457 1172.1535 754.7567 754.7567 668.2715 109.2076 291.4481 173.211 169.5021 322.0295 1086.0494 254.1663 448.0603 268.3656 119.4844 371.6458 209.6993 271.0423 1097.3624;
	3.9663 53.5935 90.6257 110.9666 15.0756 34.4303 31.1314 17.6364 13.5132 13.3163 24.615 36.7207 55.2828 62.3248 160.2165 60.3606 74.8919 79.363 84.2721 67.3073 10.3771 80.3373 28.3947 81.9006 99.2701 71.9463 12.8255 1241.3422 784.1619 784.1619 749.951 115.4692 280.907 173.2492 195.3968 334.5757 1262.8316 255.93 437.1935 265.9021 119.2211 381.9463 215.4774 275.1827 1275.9861;
	3.9285 53.0821 92.544 115.1902 15.0164 34.6519 31.9068 18.4691 24.3954 13.8924 25.6798 38.3092 57.6743 55.281 141.2203 53.2039 66.0123 69.9533 84.9444 68.6147 10.6356 80.8545 26.8575 85.5061 103.2259 72.3123 13.2021 1202.9165 780.2546 780.2546 705.4604 106.607 283.1481 176.6144 173.3134 332.9086 1212.7626 263.3775 440.8485 276.4978 118.3306 384.4055 214.5885 269.6822 1225.3955;
	3.7683 50.9174 90.7256 113.236 14.578 33.8928 29.9991 18.2672 28.1123 27.7655 51.324 76.5654 115.2688 63.5652 187.9867 70.8229 87.8728 93.119 81.7754 56.3653 9.9997 79.0832 24.59 83.6253 102.1867 72.071 12.899 1140.527 755.2157 755.2157 690.2641 109.0315 272.5845 145.0845 199.2856 322.2253 1110.2133 277.9102 409.9645 273.7143 116.2812 375.984 173.1366 262.1773 1121.7781;
	3.3313 45.0136 88.0426 113.0527 14.2067 30.4897 30.5778 17.828 28.0877 27.327 50.5136 75.3564 113.4486 63.499 190.1092 71.6225 88.865 94.1704 84.1897 66.1221 10.1926 71.1427 71.7336 83.8454 98.7785 69.6968 12.7853 1231.6728 789.8427 789.8427 749.5974 112.6173 280.6322 170.1984 199.078 336.9996 1111.4517 316.4286 437.317 264.5851 115.3121 338.2325 179.0357 246.7049 1123.0293;
	3.7934 51.257 88.7539 112.1347 14.2276 31.84 19.2915 18.0479 26.9668 27.8686 51.5146 76.8497 115.6967 51.1116 191.9994 72.3347 89.7486 95.1067 55.486 68.2815 6.4305 74.2934 72.6652 84.0579 99.1117 72.2471 13.2383 1209.7137 818.8523 818.8523 773.1011 115.5933 184.9534 175.7569 160.2418 349.377 1166.5848 320.6151 438.6725 265.4777 114.6697 353.2119 162.2639 257.5111 1178.7367;
	3.7693 50.9313 88.4714 110.9034 13.9293 32.1956 15.0885 17.8912 26.3189 26.5039 48.9921 73.0866 110.0315 65.5438 186.691 70.3347 87.2672 92.4772 83.7697 69.288 5.0295 75.123 70.9146 84.205 99.2663 71.2621 13.1327 1255.745 818.6661 818.6661 747.6149 115.2223 279.2324 178.3476 205.4888 349.2975 1189.7716 318.2319 408.9453 265.892 116.3768 357.1562 174.4001 255.0369 1202.165;
	3.7003 49.9987 86.4854 109.9627 12.5429 31.9014 13.1301 17.2807 3.8594 28.1671 52.0665 77.673 116.9363 43.743 194.2655 73.1884 90.8078 96.2292 87.2153 69.9897 4.3767 74.4366 70.3282 78.8148 96.5554 70.4499 12.6441 1259.7818 779.5023 779.5023 739.2905 117.0385 290.7177 180.1537 137.1402 332.5876 1217.8807 323.8751 170.4966 258.6306 116.9624 353.8927 197.8863 260.3128 1230.567;
	3.5908 48.5191 86.0935 110.1231 12.9877 28.9048 13.4346 17.4488 4.4364 28.8805 53.3851 79.6401 119.8977 25.4634 193.1775 72.7785 90.2992 95.6902 86.5637 71.6108 4.4782 67.4444 73.8635 82.4906 97.142 69.8967 12.8741 1123.2785 641.8862 641.8862 702.4718 112.2004 288.5456 184.3263 79.8312 273.8714 971.9416 288.6206 18.9901 260.2018 118.3393 320.6502 175.8174 260.6696 982.066;
	3.6166 48.8686 87.0316 102.8972 14.1646 28.0207 5.319 17.8129 2.0666 23.386 43.2287 64.4888 97.0875 21.1509 187.2944 70.5621 87.5492 92.7761 85.0327 71.7678 1.773 65.3817 49.855 84.6597 97.2945 71.0074 12.3193 1006.1324 614.4066 614.4066 605.4059 116.5731 283.4423 184.7305 66.3108 262.1468 804.7299 273.7443 1.501 260.6102 119.9053 310.8433 147.7755 265.2087 813.1125;
	3.5653 48.1755 90.0048 112.6601 14.332 25.299 16.022 17.462 6.0048 25.6343 47.3846 70.6885 106.4212 0.9398 191.1463 72.0133 89.3498 94.6841 70.0656 70.317 5.3407 59.0309 69.7758 84.9875 97.8973 68.5011 13.0181 811.7998 696.5019 696.5019 567.0483 117.3572 233.552 180.996 2.9464 297.1741 765.6445 234.71 0.0053 262.225 118.9453 280.6499 143.2265 267.8828 773.6199;
	3.3547 45.3287 88.272 109.5723 14.4791 17.7628 22.0354 17.3581 8.3451 26.0608 48.173 71.8646 108.1917 1.6553 196.3559 73.9759 91.785 97.2647 38.837 69.9675 7.3451 41.4465 70.8743 82.3169 98.0739 69.0179 12.4676 564.6196 744.2224 744.2224 557.518 116.4139 129.4568 180.0965 5.1897 317.5349 788.826 234.708 0.0655 262.698 120.2265 197.0484 125.2607 261.0735 797.043;
	3.7115 50.1504 88.0621 109.7393 14.6614 20.1033 13.4922 17.2355 25.8632 22.9091 42.347 63.1734 95.1073 49.7011 194.3835 73.2329 90.863 96.2877 60.8516 70.9949 4.4974 46.9077 71.1614 81.9878 98.826 67.1803 12.7051 653.7807 743.4942 743.4942 550.9626 114.055 202.8387 182.741 155.8198 317.2242 642.8644 254.7235 20.3857 264.7124 119.7044 223.0127 136.3998 259.4317 649.5609;
	3.6088 48.7632 86.5428 109.3852 14.2219 18.187 12.895 17.3838 19.3194 21.8382 40.3676 60.2205 90.6617 36.0951 199.3496 75.1038 93.1844 98.7476 58.5718 72.5968 4.2983 42.4363 70.4227 80.0902 96.6068 69.3886 12.9326 564.3087 715.441 715.441 498.2197 95.4085 195.2393 186.8644 113.1631 305.2548 686.3041 244.1181 0.913 258.7683 117.1559 201.7542 147.2502 257.1472 693.4531;
	3.6272 49.011 85.6823 109.6432 14.5059 18.0879 6.578 17.1282 3.6299 23.5372 43.5082 64.9057 97.7152 31.9337 200.259 75.4464 93.6094 99.198 76.0872 73.334 2.1927 42.2052 69.3084 82.2925 97.008 71.1796 12.79 423.9343 680.1087 680.1087 459.344 85.6414 253.6241 188.7618 100.1165 290.1797 590.0501 236.1679 12.7467 259.843 114.335 200.6555 154.5343 230.0004 596.1964;
	3.252 43.941 88.4449 115.2143 14.0072 9.4584 0.0 17.4608 0.0 25.8371 47.7595 71.2478 107.2631 23.6719 185.8595 70.0215 86.8785 92.0653 63.1564 70.953 0.0 22.0696 70.2413 84.7491 99.5271 71.4049 13.2483 426.0878 533.2368 533.2368 402.9888 86.5645 210.5213 182.6332 74.2145 227.5144 453.1203 224.1317 0.0 266.5905 118.8598 104.925 135.9737 227.2755 457.8403;
	3.4261 46.2939 88.4896 113.3517 14.1849 19.2562 3.8164 17.8336 2.224 27.409 50.6651 75.5824 113.7889 36.6382 190.8745 71.9108 89.2227 94.5494 64.7163 70.1269 1.2721 44.9311 70.6038 79.2184 100.4467 72.6939 13.2321 1099.0846 500.5417 500.5417 309.0438 88.6067 215.7208 180.5068 114.8656 213.5645 865.7819 241.7147 107.8394 269.0536 113.6379 213.6151 128.8101 217.756 874.8005;
	3.233 43.6845 88.3466 117.409 14.0196 24.4241 4.4799 17.3958 4.0695 28.1754 52.0817 77.6957 116.9704 60.2218 196.5301 74.0416 91.8664 97.3509 80.1745 69.9964 1.4933 56.9897 72.4093 81.4379 97.8393 71.895 13.3513 1289.9504 583.0842 583.0842 224.0345 63.8115 267.2484 180.171 188.8035 248.7826 1060.2581 211.6921 130.697 262.0696 116.9551 270.9452 173.038 246.5151 1071.3025;
	2.5397 34.3168 90.4138 118.3896 14.189 34.5013 9.7417 18.1135 1.1847 24.4593 45.2127 67.4484 101.5432 66.5194 193.0944 72.7472 90.2604 95.6491 57.2345 71.4773 3.2472 80.503 53.0144 84.8301 100.2502 74.2492 13.3628 1326.0183 717.1005 717.1005 300.1589 55.3872 190.7815 183.9826 208.5473 305.9629 1264.9206 134.8813 258.8689 268.5272 117.2362 382.7342 170.6061 263.1896 1278.0968;
	3.7404 50.5413 87.2735 83.8954 14.717 33.9868 2.5531 17.4701 1.5874 15.3357 28.3479 42.2894 63.6665 68.8714 198.0585 74.6174 92.5808 98.1081 46.3025 72.9189 0.851 79.3025 46.418 84.1919 100.0568 74.1179 13.2582 1357.7488 779.0487 779.0487 394.7439 51.4965 154.3415 187.6934 215.9212 332.3941 1322.206 122.7594 7.6721 268.0094 117.4402 377.0268 195.3571 258.2278 1335.979;
	3.7987 51.3288 88.0165 116.2992 14.5569 33.3483 0.9582 18.315 0.0 13.4249 24.8158 37.0203 55.7339 66.3566 192.8653 72.6609 90.1533 95.5356 66.5383 71.2474 0.3194 77.8128 65.6793 83.5934 101.2094 74.9619 13.377 1313.8447 717.0612 717.0612 602.6132 50.6862 221.7943 183.391 208.0368 305.9461 1297.8614 163.626 0.0 271.0967 114.8112 369.9441 201.4248 262.1582 1311.3808;
	3.8944 52.6217 89.4294 116.1784 14.604 34.6253 0.7661 18.5962 25.4923 28.217 52.1588 77.8106 117.1434 66.0583 200.8047 75.652 93.8645 99.4684 69.1807 71.093 0.2554 80.7924 72.1965 88.0957 103.569 76.3189 13.8728 1337.4792 695.9343 695.9343 503.5827 74.7014 230.6025 182.9937 207.1018 296.932 1290.425 205.9527 380.6479 277.4169 119.589 384.1101 213.1705 260.1588 1303.8669;
	3.8829 52.4672 91.4949 115.0517 14.8784 33.7013 2.582 18.8368 25.6848 29.8116 55.1063 82.2078 123.7633 64.724 200.4612 75.5226 93.704 99.2982 69.8075 71.5089 0.8607 78.6363 70.9439 87.5294 104.3702 76.2631 13.8178 1345.8311 794.2171 794.2171 582.2837 113.1323 232.6917 184.064 202.9186 338.866 1306.2249 236.8362 427.0564 279.563 120.0014 373.8596 206.3225 268.9074 1319.8314;
	3.8888 52.5462 93.0991 117.5783 14.8918 34.4093 29.9261 18.7104 26.0809 28.6987 53.0492 79.139 119.1433 66.3355 195.0161 73.4712 91.1587 96.601 75.0688 72.3276 9.9754 80.2885 71.4331 87.0887 105.8477 75.153 13.6347 1351.2658 769.5653 769.5653 581.0971 117.0843 250.2294 186.1715 207.9707 328.3479 1246.7705 242.4663 448.2685 283.5206 121.6342 381.7143 209.0052 275.9315 1259.7577;
];