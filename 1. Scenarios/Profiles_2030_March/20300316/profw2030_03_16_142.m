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
	3.7245 50.3266 93.9796 117.0777 14.2722 32.5545 28.8452 17.3894 27.4885 29.6964 54.8934 81.8902 123.2852 67.4064 185.4778 69.8777 86.7001 91.8762 80.5379 69.2831 9.6151 75.9605 74.0004 88.0336 102.1549 71.5801 12.9453 1297.246 805.543 805.543 581.4397 110.2602 268.4596 178.3348 211.328 343.6983 1278.8922 220.0219 438.0959 273.6291 113.0854 361.1378 190.3302 277.4559 1292.214;
	3.7593 50.7965 90.6195 113.7083 13.9708 31.6846 27.1263 14.4836 27.2267 30.5554 56.4813 84.259 126.8514 68.1865 172.396 64.9492 80.5851 85.3962 82.2196 68.8531 9.0421 73.9307 73.378 85.3036 96.7801 67.7522 12.3042 1295.1412 825.391 825.391 640.9718 101.7367 274.0653 177.2281 213.774 352.1668 1284.1399 224.1521 446.9733 259.2325 112.1517 351.4876 176.8986 264.5884 1297.5163;
	3.7584 50.7845 89.7935 113.9527 14.0415 32.3793 22.4543 15.6799 27.5919 30.2607 55.9365 83.4462 125.6278 66.7732 187.3509 70.5834 87.5756 92.804 80.7998 70.4315 7.4848 75.5518 72.0094 85.7996 96.9588 72.2534 12.943 1293.2915 778.2985 778.2985 624.3982 90.1161 269.3327 181.291 209.3429 332.074 1281.3323 213.2697 411.6252 259.7111 114.9398 359.1949 189.9013 259.7576 1294.6795;
	3.5817 48.3961 89.802 115.0665 13.9445 31.3377 24.0509 16.8446 27.482 30.7154 56.777 84.7001 127.5156 67.8201 189.7368 71.4822 88.6909 93.9859 84.9287 70.7419 8.017 73.1214 73.8813 86.6397 98.4179 68.6354 13.173 1275.2756 801.9397 801.9397 661.4413 90.7242 283.0957 182.0898 212.6251 342.1609 1284.3452 235.165 432.3527 263.6195 118.5605 347.6399 160.3635 261.6699 1297.7238;
	3.6254 48.9878 87.8976 111.4639 13.2014 31.647 29.8934 13.4718 26.5435 30.6194 56.5995 84.4354 127.117 66.6638 190.5857 71.8021 89.0877 94.4064 86.4511 71.7102 9.9645 73.843 74.1769 82.008 96.6898 67.6836 12.7963 1250.6998 794.8324 794.8324 663.3272 101.9077 288.1702 184.5823 209.0 339.1285 1241.5489 217.4836 450.4376 258.9905 117.2695 351.0705 193.4445 248.7739 1254.4817;
	3.7941 51.2671 91.1386 116.5789 13.956 32.7336 29.3214 16.7596 27.3057 30.5958 56.5559 84.3703 127.019 67.5705 171.4621 64.5974 80.1486 84.9336 86.3986 70.2637 9.7738 76.3784 74.9623 85.5285 97.2009 67.096 12.8072 1268.7554 786.8892 786.8892 730.3705 106.7363 287.9955 180.8588 211.8426 335.7394 1244.0243 227.1469 448.7009 260.3594 121.1378 363.1248 182.3821 264.9481 1256.9829;
	3.5836 48.4219 87.6708 113.2209 13.9733 32.1827 30.4274 15.2765 26.7233 30.2239 55.8684 83.3447 125.4749 67.1577 187.2795 70.5565 87.5423 92.7687 87.8096 71.4932 10.1425 75.093 74.0898 83.8446 94.7443 62.8077 12.4737 1251.1844 760.213 760.213 714.8724 107.0749 292.6986 184.0237 210.5484 324.3575 1254.3563 263.1038 457.3436 253.7795 117.5356 357.0136 167.0595 243.633 1267.4225;
	3.6318 49.0733 87.7836 116.2511 12.8373 32.1225 28.639 15.2963 25.7693 29.8646 55.2043 82.3539 123.9834 68.6279 185.1327 69.7477 86.5388 91.7052 86.0374 68.4801 9.5463 74.9525 73.5872 87.0462 97.1501 60.6612 11.7732 1244.256 766.663 766.663 689.1005 109.8039 286.7914 176.268 215.1578 327.1095 1229.9445 263.0808 442.9587 260.2234 117.3792 356.3458 178.2697 258.6701 1242.7564;
	3.7041 50.0506 89.7677 118.0647 14.545 33.4511 30.2642 15.6407 26.2912 30.5036 56.3854 84.1159 126.636 68.8935 192.2508 72.4294 89.8661 95.2312 89.397 69.6733 10.0881 78.0526 73.7201 87.7815 98.983 62.7438 11.5149 1274.55 809.9816 809.9816 773.2831 120.2482 297.99 179.3393 215.9905 345.5922 1293.3246 276.0109 451.2177 265.1331 117.9985 371.0843 209.5408 263.6174 1306.7968;
	3.7075 50.0966 89.0858 112.5975 14.7505 32.7901 23.8037 14.2611 26.175 30.5257 56.4263 84.1769 126.7278 69.0905 189.9588 71.5659 88.7947 94.0959 88.0864 70.2825 7.9346 76.5103 74.665 85.7987 96.5844 63.7151 11.506 1250.5811 816.6855 816.6855 785.1872 123.0034 293.6213 180.9074 216.6079 348.4525 1278.862 305.0657 444.0286 258.7081 116.5767 363.752 206.5353 263.9485 1292.1835;
	3.8418 51.9117 86.4048 110.2614 14.9241 33.1622 25.539 12.5539 26.2615 31.3305 57.914 86.3963 130.0692 69.6827 190.7666 71.8702 89.1723 94.496 87.8968 72.2193 8.513 77.3784 75.5747 82.9807 77.2685 64.1264 8.6496 1254.2951 822.941 822.941 771.1456 120.4681 292.9892 185.8927 218.4647 351.1215 1283.6103 297.4312 449.2675 206.9692 115.4131 367.8792 214.1924 262.4126 1296.9812;
	3.8822 52.4571 86.9346 112.7353 15.051 34.5635 23.7316 13.1774 26.6071 31.2125 57.6959 86.0709 129.5793 69.6736 188.6984 71.091 88.2055 93.4715 88.3213 69.5391 7.9105 80.6482 75.729 84.9816 96.9855 60.101 11.828 1271.787 817.1889 817.1889 767.7963 120.5263 294.4043 178.9939 218.4363 348.6672 1309.1151 290.9828 463.1404 259.7825 121.4077 383.4245 215.1151 264.1687 1322.7517;
	3.8756 52.3684 89.2681 114.4397 15.1483 34.1137 25.6916 15.672 26.6655 30.8253 56.9801 85.0032 127.9718 68.9575 187.0436 70.4676 87.432 92.6518 86.8596 67.6905 8.5639 79.5986 73.6335 82.7857 100.7411 68.9996 12.5456 1294.7365 842.1279 842.1279 802.6695 115.8013 289.5319 174.2356 216.191 359.3079 1326.696 314.2029 453.8258 269.8421 121.1859 378.4344 217.4574 267.9047 1340.5157;
	3.8186 51.598 89.74 114.6572 15.0872 33.3562 25.4293 15.6223 26.7407 29.9996 55.4537 82.7261 124.5436 69.8458 186.381 70.218 87.1223 92.3236 85.8892 70.9911 8.4764 77.8311 72.7504 85.2626 98.1316 69.3692 12.9548 1274.032 858.7831 858.7831 792.3091 119.2815 286.2973 182.7312 218.976 366.4141 1293.6569 316.7283 463.6977 262.8524 116.8789 370.0315 206.0156 265.6681 1307.1325;
	3.81 51.4808 90.8045 115.7599 14.8446 33.0317 23.1765 14.7966 27.292 29.4317 54.404 81.1601 122.186 69.7367 185.1399 69.7504 86.5421 91.7088 84.7366 68.9512 7.7255 77.074 73.9844 86.2037 97.1072 62.0877 12.8523 1255.3264 830.835 830.835 785.9943 120.464 282.4553 177.4807 218.6339 354.4896 1275.9323 309.3695 470.1159 260.1085 115.0105 366.4319 204.691 245.7555 1289.2232;
	3.8661 52.2397 91.3016 116.5671 15.1272 32.8853 25.2702 14.5819 27.7816 29.7898 55.0661 82.1477 123.6729 69.2594 170.1412 64.0997 79.5311 84.2793 83.3626 68.7942 8.4234 76.7324 72.7107 85.2994 97.2474 48.6198 12.0136 1245.0619 822.4104 822.4104 713.1152 115.4437 277.8755 177.0766 217.1377 350.8951 1237.2198 280.1655 471.143 260.4842 114.6142 364.8079 207.8186 260.6183 1250.1075;
	3.9068 52.7894 93.1756 115.8198 15.1389 32.7789 23.1383 16.4971 26.7499 29.1274 53.8416 80.3211 120.9229 68.3803 188.0268 70.838 87.8916 93.1389 84.4716 67.6415 7.7128 76.484 72.2537 82.3739 98.4735 53.9185 11.876 1207.5244 785.163 785.163 648.71 117.077 281.5721 174.1093 214.3814 335.0029 1184.1065 289.5415 467.9939 263.7683 113.818 363.627 205.0587 252.4706 1196.4409;
	3.8879 52.5338 95.0893 114.8126 15.1918 30.2888 19.3794 14.4481 26.7248 28.5042 52.6895 78.6024 118.3355 67.4316 186.3257 70.1971 87.0964 92.2962 84.1676 68.197 6.4598 70.6738 71.1801 88.1194 105.5911 71.1211 10.5098 1145.8508 747.5032 747.5032 617.2862 109.5 280.5585 175.5393 211.4072 318.9347 1165.2552 279.177 464.3986 282.8332 116.3509 336.0036 194.0576 251.1972 1177.3933;
	3.794 51.2658 85.9677 101.7992 15.1093 25.5733 16.6292 8.2349 26.803 28.1677 52.0675 77.6744 116.9384 64.8932 184.7169 69.591 86.3444 91.4993 86.2266 67.722 5.5431 59.671 72.6008 85.8109 98.1543 64.0729 9.1197 1218.1427 741.3716 741.3716 639.0629 115.4852 287.4219 174.3166 203.449 316.3185 1162.9546 305.9616 459.4716 262.9133 117.1232 283.6932 138.2983 227.6161 1175.0687;
	3.0084 40.6496 83.0299 68.4056 15.3015 23.481 26.5468 9.3134 26.8067 29.7671 55.024 82.0849 123.5784 67.5466 190.7685 71.8709 89.1732 94.4969 88.8956 71.2881 8.8489 54.7889 75.4749 88.9388 94.581 47.4085 7.9291 1177.9828 768.8681 768.8681 698.9735 116.2706 296.3188 183.4958 211.7678 328.0504 1090.6931 305.3036 439.4178 253.3421 117.5031 260.4821 114.9119 204.2931 1102.0545;
	2.6925 36.3816 82.8474 80.6072 15.2052 13.4175 25.275 10.2256 26.796 29.0231 53.6487 80.0333 120.4897 67.7514 188.3086 70.9442 88.0233 93.2785 83.6941 71.652 8.425 31.3075 75.0109 89.5076 89.583 55.5848 9.4568 1201.1488 762.0326 762.0326 682.1646 120.2257 278.9803 184.4323 212.4098 325.1339 1140.6155 298.2987 457.2345 239.9544 114.7441 148.845 81.0094 195.3709 1152.4969;
	2.4189 32.6841 82.2543 91.4123 15.2738 17.1426 26.4819 12.0114 27.8997 29.1187 53.8255 80.2971 120.8869 67.4446 186.0425 70.0904 86.964 92.1559 88.5129 69.5016 8.8273 39.9995 75.2034 89.9514 103.9002 67.9611 10.2752 1117.5479 735.0531 735.0531 678.7644 114.8598 295.0431 178.8972 211.448 313.6227 1072.425 272.4211 474.5689 278.3041 117.226 190.1689 69.7579 195.8165 1083.5961;
	2.9316 39.6121 80.8531 91.7366 14.8502 18.9263 25.6103 13.7799 27.8659 28.8551 53.3382 79.5701 119.7924 68.3918 173.2403 65.2673 80.9798 85.8144 88.8281 67.3315 8.5368 44.1614 74.2532 89.7148 97.2805 62.4972 9.9504 945.8004 769.0863 769.0863 747.7373 115.9147 296.0936 173.3114 214.4175 328.1435 1067.5574 301.048 474.7036 260.5727 119.3334 209.9558 77.2266 210.3978 1078.6778;
	3.2122 43.4039 86.405 83.8989 14.9517 22.3203 22.3165 10.3261 28.1259 28.7243 53.0965 79.2095 119.2494 67.3466 174.0658 65.5783 81.3656 86.2233 87.9145 67.785 7.4388 52.0807 73.5176 87.8376 89.2676 56.0561 7.4743 778.833 690.576 690.576 647.0053 111.8841 293.0483 174.4786 211.1408 294.6458 888.272 275.2271 473.7979 239.1096 119.0535 247.6066 95.8272 229.2468 897.5248;
];
