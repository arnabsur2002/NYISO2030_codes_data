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
	3.4957 47.235 84.4755 111.1549 14.7213 0.3454 13.6618 15.8941 26.5251 25.4549 47.053 70.1938 105.6763 5.8055 20.8878 7.8694 9.7638 10.3468 13.5203 28.9078 4.5539 0.806 64.5883 82.2394 91.4231 68.5841 7.1387 635.0304 380.1309 380.1309 201.0833 36.9605 45.0677 74.4087 18.2011 162.1892 482.0721 55.8084 287.4062 244.8834 14.6977 3.8317 111.3025 221.7296 487.0936;
	3.5622 48.1328 87.3057 110.1845 14.5326 2.2629 13.8674 16.7676 26.2578 26.168 48.3712 72.1603 108.6369 7.2285 13.0872 4.9305 6.1175 6.4827 12.1701 15.9103 4.6225 5.2802 68.9651 82.8123 96.0337 71.7872 7.4058 650.9808 371.2372 371.2372 166.8939 34.824 40.5668 40.9532 22.6623 158.3945 468.4412 52.721 318.4158 257.233 13.684 25.1035 105.1244 220.8619 473.3207;
	3.4099 46.0751 89.2994 114.6914 15.0213 11.5395 14.0026 17.1688 27.5625 25.8584 47.7988 71.3064 107.3514 11.1131 18.6202 7.0151 8.7039 9.2235 22.052 23.7675 4.6675 26.9256 69.5001 83.0567 96.5211 73.4918 8.4394 624.7871 336.296 336.296 152.2508 33.2317 73.5067 61.1775 34.8412 143.4863 402.6238 39.6503 269.6315 258.5386 21.6878 128.0119 90.9135 210.3867 406.8178;
	2.9515 39.8817 88.4997 110.9683 14.7703 11.0902 13.1242 15.3581 27.3073 24.8605 45.9542 68.5546 103.2086 12.8763 15.2615 5.7497 7.1339 7.5598 13.4519 24.1995 4.3747 25.8772 69.0547 81.9087 95.6194 73.8242 9.2485 514.8256 266.9795 266.9795 161.2958 28.2289 44.8398 62.2895 40.3688 113.9113 320.542 35.6614 207.3062 256.1235 2.5551 123.0277 80.1378 214.2566 323.8809;
	2.4355 32.9086 90.4434 114.2959 15.0104 12.852 11.1265 16.9799 18.5169 22.3651 41.3415 61.6734 92.849 17.1382 17.0817 6.4354 7.9847 8.4614 22.6155 25.3079 3.7088 29.9881 57.43 85.4353 99.5539 74.271 9.4107 391.7037 198.8084 198.8084 127.81 27.4587 75.3851 65.1425 53.7305 84.8249 190.6054 33.5759 184.7463 266.6622 10.3669 142.572 86.319 231.8244 192.5909;
	2.9396 39.7206 90.1719 118.4394 14.1474 20.0785 12.0559 17.3691 10.43 20.1148 37.1819 55.4681 83.5069 29.9582 20.2026 7.6112 9.4435 10.0073 34.4494 29.1473 4.0186 46.8499 61.7076 83.9077 98.2279 72.3746 8.1703 312.1248 204.6492 204.6492 128.2877 26.9559 114.8314 75.0251 93.9229 87.317 162.859 35.8881 197.2286 263.1103 11.846 222.7379 90.8349 222.2925 164.5555;
	2.4519 33.1306 87.8164 115.4252 14.1329 20.5787 11.8086 17.1121 11.1944 26.7152 49.3826 73.6691 110.9084 37.9903 20.6724 7.7882 9.6631 10.24 35.4098 35.8305 3.9362 48.0169 70.065 83.5823 98.5139 75.2872 11.0576 248.5262 224.1966 224.1966 89.0611 16.7692 118.0326 92.2278 119.1046 95.6572 165.7786 22.4828 154.2077 263.8764 7.8756 228.2863 89.7614 229.1557 167.5055;
	1.5024 20.3013 65.6354 112.5839 13.9537 17.1186 11.1333 17.9081 16.5721 28.7543 53.1518 79.2921 119.3737 42.5523 28.2976 10.661 13.2275 14.0172 51.0636 56.7805 3.7111 39.9434 75.4071 82.4287 96.8493 75.035 12.5759 144.81 163.8177 163.8177 76.3055 8.9365 170.212 146.1532 133.4072 69.8956 108.1191 21.1186 161.644 259.4179 4.4703 189.9021 81.0742 196.4598 109.2453;
	2.5851 34.9309 80.6894 104.6954 13.9943 21.7568 9.5571 18.0819 19.1802 28.5489 52.7722 78.7257 118.5211 43.3763 14.9931 5.6486 7.0084 7.4268 58.7909 51.8236 3.1857 50.7658 73.2667 81.9735 97.4529 73.8107 11.8594 128.9145 119.7312 119.7312 42.8125 7.0115 195.9696 133.394 135.9904 51.0853 95.8619 16.448 135.3028 261.0345 14.4634 241.3551 75.8686 225.1859 96.8605;
	1.9075 25.7744 82.462 110.819 11.7862 13.0866 10.0383 18.2578 25.7405 29.6708 54.846 81.8195 123.1788 45.0936 10.0818 3.7983 4.7127 4.994 70.9927 48.2728 3.3461 30.5354 74.4716 82.3549 96.6187 75.1155 12.3246 255.7937 190.5954 190.5954 70.9433 7.713 236.6424 124.2542 141.3746 81.3207 214.3058 18.6069 85.0455 258.8002 0.0104 145.1742 77.721 207.2847 216.5382;
	1.6169 21.8472 76.2234 104.936 11.1958 23.4702 13.6113 17.4446 26.2586 29.2348 54.04 80.6171 121.3686 52.5908 14.5683 5.4885 6.8099 7.2164 70.7956 37.1225 4.5371 54.7638 73.6257 84.7846 89.6734 75.112 11.662 386.2456 248.4815 248.4815 141.6217 12.8178 235.9854 95.5535 164.8791 106.0188 309.4014 26.9853 175.3457 240.1966 0.4915 260.3627 92.346 178.4927 312.6243;
	1.7292 23.3647 84.5521 93.0218 11.9341 28.2636 19.0483 17.5746 26.8855 29.0195 53.6422 80.0235 120.475 54.0416 70.5274 26.5708 32.9675 34.9357 81.9876 51.7686 6.3494 65.9484 71.2674 85.2814 93.2301 73.8869 11.839 445.4579 309.3252 309.3252 241.0403 12.9883 273.2919 133.2525 169.4276 131.9787 386.0721 37.7182 191.3942 249.7235 0.6581 313.5375 107.5693 177.5914 390.0937;
	2.9865 40.3538 82.7488 86.6322 13.9658 26.94 20.3706 16.9617 26.9387 28.0681 51.8834 77.3998 116.525 52.4252 48.8966 18.4215 22.8563 24.2209 86.5378 64.1623 6.7902 62.8601 68.5597 84.1659 95.1874 72.3793 11.0978 593.6322 369.2593 369.2593 278.582 21.6467 288.4592 165.1539 164.3601 157.5506 552.0482 55.1064 198.6564 254.9661 0.1712 298.8546 129.1884 208.0956 557.7987;
	3.2913 44.4722 81.9235 101.8579 14.0095 22.9634 19.8553 16.7465 25.2125 29.0619 53.7204 80.1403 120.6508 53.2047 67.6651 25.4924 31.6295 33.5178 88.194 59.3729 6.6184 53.5814 65.5063 85.9055 93.0208 71.7118 11.0705 717.0965 510.2982 510.2982 343.5019 28.458 293.9801 152.8261 166.8039 217.7272 634.0436 75.9371 243.565 249.1629 0.0114 254.7411 113.2542 226.5981 640.6482;
	3.6419 49.2095 86.2828 105.9874 14.1692 30.1866 23.2144 17.2655 25.7973 24.9945 46.2019 68.9242 103.765 62.6001 101.7837 38.3464 47.578 50.4184 86.5943 58.5162 7.7381 70.4354 46.046 86.635 94.5372 72.2605 12.3007 858.1612 615.035 615.035 451.7182 33.9399 288.6476 150.6207 196.2598 262.4149 826.3037 104.6336 378.0979 253.2247 0.1511 334.8702 137.494 241.8314 834.911;
	3.6654 49.5282 88.676 109.1165 14.4986 32.2097 28.0247 17.6634 26.5637 20.6432 38.1587 56.9252 85.7006 62.0884 132.6616 49.9795 62.0116 65.7138 89.5096 66.1941 9.3416 75.156 41.2885 86.0623 97.0837 72.941 12.5571 928.9245 676.7814 676.7814 584.0927 46.56 298.3652 170.3838 194.6557 288.7601 914.7514 150.9642 390.1655 260.0457 0.0111 357.3133 157.1057 257.8698 924.2801;
	3.5836 48.4223 86.7474 110.6003 13.9946 31.8259 30.8651 17.3724 25.8324 19.4812 36.0108 53.721 80.8767 64.7735 153.7902 57.9396 71.888 76.1798 87.9964 68.1012 10.2884 74.2605 26.1874 81.7224 94.4143 73.4568 12.2486 990.7926 712.2306 712.2306 667.7855 81.7902 293.3213 175.2927 203.0737 303.8851 967.8683 196.2352 405.8994 252.8956 0.0 353.0559 197.3911 263.5562 977.9503;
	3.593 48.5493 90.1214 113.5831 14.0297 31.3386 29.838 17.388 24.6734 9.6511 17.8399 26.6137 40.0667 62.9329 158.5795 59.7439 74.1267 78.5522 87.0197 68.977 9.946 73.1234 7.9171 82.0182 95.8983 70.2608 12.6707 1039.4905 668.6953 668.6953 616.6756 93.1691 290.0655 177.547 197.3033 285.31 991.7942 210.6718 395.7623 256.8705 99.2202 347.6494 197.7406 251.2186 1002.1254;
	3.8246 51.6784 89.4642 117.9905 14.4932 33.5848 31.2754 12.4009 25.8101 18.7735 34.7024 51.7692 77.9383 61.737 164.4624 61.9603 76.8766 81.4663 83.9505 70.8065 10.4251 78.3645 43.4513 81.8432 99.8213 59.8951 12.6272 1211.3097 697.802 697.802 580.1677 101.4467 279.835 182.2561 193.5539 297.7289 1066.9885 229.8344 435.7848 267.3784 112.8401 372.5671 214.0108 256.985 1078.1029;
	3.8072 51.4441 90.2916 105.3931 14.5198 32.5566 30.6874 7.9381 25.5594 19.0496 35.2128 52.5306 79.0845 61.523 189.5124 71.3977 88.586 93.8748 84.6401 72.9875 10.2291 75.9653 43.5123 8.3277 38.4989 61.4413 9.6967 1237.8497 749.9005 749.9005 644.7679 105.949 282.1336 187.8699 192.8828 319.9576 1097.0213 258.2169 437.0004 103.122 115.8452 361.1607 209.8307 224.2354 1108.4486;
	3.7846 51.1389 92.5198 114.6272 14.5245 31.9045 31.017 18.3718 15.8306 19.4009 35.8622 53.4994 80.5431 62.4562 189.4428 71.3715 88.5535 93.8403 85.2121 71.2145 10.339 74.4438 38.0165 69.7128 100.5248 71.7955 13.5328 1255.3948 745.8623 745.8623 681.9767 111.0419 284.0403 183.3063 195.8087 318.2346 1094.169 248.9372 437.4709 269.2628 116.4094 353.9269 203.4744 265.0581 1105.5666;
	3.5785 48.3532 88.3596 115.2583 14.2997 30.6631 31.7044 17.3364 9.5851 20.1603 37.266 55.5936 83.6959 60.8007 188.4628 71.0023 88.0954 93.3548 85.6637 71.9153 10.5681 71.5473 25.5193 84.53 101.872 73.2326 13.178 1290.4069 735.0987 735.0987 696.7974 111.7729 285.5456 185.1102 190.6183 313.6421 1179.8036 251.109 459.9254 272.8715 116.5286 340.1565 207.4312 229.3608 1192.0932;
	3.7285 50.3804 90.865 114.6258 14.4998 32.5692 31.7735 17.3799 18.4653 19.4139 35.8864 53.5354 80.5973 64.7796 184.6199 69.5545 86.2991 91.4512 84.5442 66.7356 10.5912 75.9948 26.7868 82.4699 83.258 74.5038 13.4653 1221.0117 733.3708 733.3708 688.9405 114.0928 281.8141 171.7775 203.0927 312.9049 1130.6704 253.8799 458.0003 223.0124 117.3137 361.3011 210.6312 246.3291 1142.4482;
	2.4999 33.7798 83.4996 88.1789 13.1906 31.2118 31.5719 16.5083 1.0471 16.6741 30.8217 45.98 69.2226 59.9054 183.9673 69.3086 85.994 91.128 85.2822 64.7478 10.524 72.8275 26.8025 75.4777 97.2932 72.0419 13.3931 1175.3185 708.1653 708.1653 682.2467 106.9646 284.2739 166.6611 187.8114 302.1505 1067.6676 251.9109 451.7541 260.6068 117.5341 346.2429 200.2012 247.3903 1078.7892;
];