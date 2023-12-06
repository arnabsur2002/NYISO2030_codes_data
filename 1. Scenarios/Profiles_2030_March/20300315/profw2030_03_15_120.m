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
	4.0099 54.1825 94.8927 121.0439 14.9386 34.8593 31.5046 18.9337 11.6229 16.7723 31.0034 46.2509 69.6305 56.8955 202.9965 76.4778 94.8891 100.5541 92.5347 70.8742 10.5015 81.3384 24.9627 89.757 105.8363 73.8681 14.0129 1214.5973 819.4047 819.4047 745.1225 110.1806 308.4488 182.4303 178.3751 349.6127 1129.0529 271.4703 463.4287 283.4902 123.2518 386.706 212.2969 278.6682 1140.8139;
	3.9224 53.0007 94.2853 120.9217 14.9034 34.9489 32.0713 18.9159 12.7399 14.5263 26.8517 40.0574 60.3062 63.6193 197.5439 74.4235 92.3403 97.8532 91.6416 71.3988 10.6904 81.5474 29.3293 87.3482 104.2517 72.544 14.0033 1182.4011 803.5454 803.5454 770.252 112.8193 305.4721 183.7807 199.4552 342.846 1185.4428 267.9479 464.2584 279.2455 122.4161 387.6995 215.4595 276.5046 1197.7912;
	3.8704 52.298 91.7623 119.8496 14.8684 34.8789 33.1495 19.0771 23.8934 15.4257 28.5142 42.5376 64.0401 61.2779 179.1093 67.4784 83.7232 88.7216 91.0099 70.2639 11.0498 81.3841 28.1291 89.2577 105.4533 73.4615 14.0678 1207.082 811.818 811.818 762.6385 114.1326 303.3664 180.8594 192.1144 346.3757 1215.0462 288.1229 465.6236 282.4641 122.8336 386.9235 209.6352 268.1286 1227.703;
	3.7923 51.2423 89.0498 117.145 14.9461 33.984 31.5463 18.979 28.1377 30.0548 55.5558 82.8784 124.7729 65.5932 194.0641 73.1125 90.7137 96.1294 92.0262 66.5882 10.5154 79.2961 25.6386 86.5854 99.6111 72.0955 13.6271 1224.273 795.6665 795.6665 744.7208 114.2779 306.754 171.3982 205.6436 339.4844 1148.8666 290.5258 469.4989 266.8155 121.7371 376.9961 171.9405 258.1433 1160.834;
	3.205 43.3069 87.7431 114.8474 14.6157 29.877 30.8026 18.4707 27.5243 29.7301 54.9557 81.9831 123.4252 61.934 194.5859 73.3091 90.9576 96.3879 90.6917 65.6164 10.2675 69.7129 72.6574 85.9215 98.5402 68.9935 13.1998 1239.2895 760.0226 760.0226 713.2242 114.1702 302.3057 168.8969 194.1714 324.2763 1040.0912 294.4175 466.4662 263.9471 121.3007 331.4352 168.6251 251.0202 1050.9255;
	3.7562 50.7551 89.7245 113.8704 14.5951 32.1261 17.0117 18.4645 26.3402 29.7701 55.0296 82.0934 123.5912 48.9275 196.2963 73.9535 91.7571 97.2351 63.4533 68.1687 5.6706 74.9609 71.4074 86.9627 99.8528 70.3801 13.45 1170.9333 769.8977 769.8977 732.5184 115.9352 211.5109 175.4665 153.3944 328.4897 1092.801 297.0755 458.8817 267.4629 121.7288 356.3854 146.0501 253.9789 1104.1843;
	3.8358 51.8299 93.092 116.5518 14.892 32.9227 12.203 18.5356 26.3638 29.3823 54.3127 81.0238 121.9809 63.6206 196.4697 74.0188 91.8381 97.321 90.0204 71.1235 4.0677 76.8197 71.4498 88.9178 103.7871 72.2737 13.5497 1259.4098 789.2664 789.2664 761.8794 117.4741 300.068 183.072 199.4591 336.7536 1156.9611 327.7418 438.1722 278.0011 121.1738 365.2226 154.0957 266.81 1169.0128;
	3.9164 52.9191 94.0799 118.264 15.1441 33.7575 0.0 17.9874 26.6501 29.1816 53.9417 80.4703 121.1477 42.9898 200.7261 75.6224 93.8278 99.4295 90.6781 72.0766 0.0 78.7675 73.4764 86.5438 100.7471 71.6482 13.3642 1257.262 814.1929 814.1929 766.6648 117.7482 302.2602 185.5254 134.7788 347.389 1239.0706 330.8875 181.8506 269.8582 119.2138 374.4833 194.416 273.5124 1251.9776;
	3.8336 51.8 92.9689 118.2593 14.9077 31.5292 0.0 18.1428 15.5032 29.2354 54.0412 80.6188 121.3711 25.4465 198.3118 74.7128 92.6993 98.2335 89.3222 72.8721 0.0 73.568 74.3371 89.1645 103.5832 72.8728 13.2599 1141.6471 706.7969 706.7969 740.4516 119.8214 297.7405 187.5731 79.7781 301.5667 1068.497 306.3937 52.0088 277.4549 119.3341 349.7634 171.6133 276.9034 1079.6272;
	3.6012 48.6599 88.7427 115.393 14.341 26.6629 0.0 17.8982 3.5683 23.7031 43.8148 65.3631 98.4037 17.9927 188.1887 70.899 87.9673 93.2191 87.3571 71.2372 0.0 62.2134 49.5565 88.0218 102.8207 71.7877 12.8404 904.827 609.7069 609.7069 574.7718 117.637 291.1902 183.3649 56.4096 260.1416 804.46 258.7234 18.8219 275.4127 119.0901 295.7805 126.994 265.2375 812.8398;
	3.514 47.4813 92.558 111.6612 14.1479 22.4403 0.0 17.3017 3.8369 28.175 52.0811 77.6947 116.969 0.6441 192.7712 72.6254 90.1093 95.489 74.5717 70.5915 0.0 52.3607 70.0463 87.9504 101.8047 69.3005 12.9867 687.2462 643.4254 643.4254 529.0392 120.4222 248.5725 181.7028 2.0193 274.5282 715.3002 220.4807 14.4137 272.6911 118.157 248.9377 118.8267 267.912 722.7513;
	3.3375 45.0968 91.8445 111.3871 14.3629 18.1222 0.0 17.5065 1.4275 26.1382 48.3161 72.0781 108.5132 0.5436 197.3885 74.365 92.2677 97.7762 36.1294 71.2271 0.0 42.2852 70.9299 86.6149 101.0904 71.4078 13.1696 512.779 707.2691 707.2691 500.9377 112.2286 120.4312 183.3388 1.7042 301.7682 754.6526 208.7799 2.2514 270.7778 120.7545 201.0358 118.5967 273.1724 762.5136;
	3.6751 49.6587 92.6642 109.8466 14.409 19.418 0.0 16.7193 25.0623 22.759 42.0696 62.7596 94.4842 51.3004 192.3185 72.4549 89.8977 95.2647 49.3362 71.157 0.0 45.3086 71.2786 84.7179 99.7679 69.5036 13.2046 579.8389 718.3103 718.3103 542.819 113.9872 164.4541 183.1583 160.8338 306.4791 609.1248 241.4025 16.7343 267.2355 119.8951 215.4099 119.3503 269.4076 615.4698;
	3.7681 50.9158 91.5825 111.5549 14.4611 20.0677 1.3479 17.5126 18.2427 19.8767 36.7417 54.8114 82.5183 36.2336 194.8942 73.4252 91.1017 96.5406 49.7803 70.8899 0.4493 46.8245 63.2259 83.7799 99.0319 70.3243 13.0301 536.5822 702.6694 702.6694 472.8722 98.9942 165.9342 182.4707 113.5973 299.8056 706.0482 242.83 37.3289 265.2641 119.9716 222.6172 141.7074 265.8186 713.4029;
	3.8631 52.1992 92.9392 115.1377 14.8535 19.384 1.1405 17.8795 0.0 20.7381 38.334 57.1869 86.0945 32.7488 187.6967 70.7136 87.7373 92.9753 64.874 70.285 0.3802 45.2293 60.1714 87.0388 103.0217 71.9453 13.56 379.8215 676.1073 676.1073 426.1201 87.1296 216.2468 180.9138 102.6718 288.4724 608.3869 228.394 59.5754 275.951 119.2951 215.0328 156.6335 254.523 614.7243;
	3.4673 46.8508 89.9212 114.1421 14.24 8.7194 0.0 17.497 0.0 26.125 48.2916 72.0416 108.4583 24.6752 182.0615 68.5906 85.1032 90.1839 57.4442 70.2434 0.0 20.3453 67.3671 88.1167 102.2035 71.2085 13.5696 355.5614 542.7441 542.7441 396.2733 88.4269 191.4806 180.8066 77.36 231.5708 478.591 210.9799 43.4748 273.7593 119.9533 96.7272 126.9088 235.5785 483.5763;
	3.5369 47.7912 88.4539 111.2545 13.9958 15.4921 0.0 17.932 0.0 26.5563 49.089 73.2311 110.249 33.9072 178.4956 67.2472 83.4363 88.4176 40.4812 66.6222 0.0 36.1483 64.5758 84.9997 102.5459 72.1807 13.0791 973.9436 471.4785 471.4785 297.8518 82.2251 134.9373 171.4856 106.3036 201.1642 829.9754 216.7983 104.0571 274.6766 115.6294 171.8594 121.4517 233.8794 838.621;
	3.4559 46.6965 88.5776 113.3841 14.3666 20.5051 0.0563 18.0099 0.0 26.8237 49.5832 73.9684 111.359 56.6311 185.0653 69.7223 86.5073 91.6719 56.9396 66.7668 0.0188 47.8452 67.22 84.6047 99.4411 73.6079 13.2878 1174.6056 561.5694 561.5694 226.8154 64.6925 189.7987 171.8579 177.546 239.603 980.99 196.9793 120.2628 266.36 117.9704 227.4698 169.6376 260.9964 991.2087;
	2.6066 35.2205 93.8162 116.3406 14.7774 32.5674 1.3806 18.4426 0.0252 18.5769 34.3391 51.2272 77.1223 63.4274 187.7513 70.7342 87.7628 93.0024 24.3911 66.5662 0.4602 75.9905 29.9254 85.5416 99.8299 74.4908 13.3303 1164.4737 685.4214 685.4214 293.3031 56.239 81.3037 171.3415 198.8535 292.4465 1130.0696 130.355 246.4807 267.4016 118.9439 361.2806 166.1617 268.7543 1141.8411;
	3.9082 52.8083 93.5912 81.8458 14.2932 33.1732 1.3344 17.3039 0.0 5.4378 10.0517 14.9952 22.5752 51.9487 191.1034 71.9971 89.3297 94.6628 20.6745 69.3279 0.4448 77.4041 22.4302 85.6787 102.8288 74.7812 13.1792 1250.7065 702.6011 702.6011 378.027 50.8964 68.915 178.4501 162.8663 299.7765 1129.4679 105.514 0.0 275.4343 115.1793 368.0011 189.2404 268.8491 1141.2332;
	3.8556 52.0971 94.1549 118.1333 14.6918 32.6524 3.3039 17.8127 0.2672 4.1867 7.739 11.545 17.381 59.1224 194.0449 73.1053 90.7047 96.1199 56.8496 68.6089 1.1013 76.1889 52.5509 84.5228 102.9495 73.9899 13.138 1250.6323 684.9053 684.9053 621.7183 50.0569 189.4987 176.5995 185.3568 292.2263 1217.1683 149.3064 18.4666 275.7576 116.0849 362.2239 189.8009 270.3386 1229.8472;
	3.8093 51.4724 88.7249 111.0211 14.4657 32.0382 2.3614 15.2172 25.7578 24.6042 45.4805 67.8479 102.1447 61.5019 193.3941 72.8601 90.4005 95.7975 68.9675 68.446 0.7871 74.7557 71.9165 85.784 97.5814 70.7649 12.4662 1253.2734 683.3451 683.3451 544.8679 75.4771 229.8915 176.1803 192.8166 291.5606 1222.2346 201.7636 399.9979 261.3787 116.8804 355.4101 192.4092 254.4133 1234.9662;
	3.7892 51.1999 91.0518 113.1553 14.8716 31.8663 6.3345 17.6751 26.8421 27.4422 50.7265 75.674 113.9268 64.1287 192.01 72.3386 89.7535 95.1119 67.7898 69.7813 2.1115 74.3547 70.8925 84.3623 99.2709 71.9423 13.2219 1274.714 793.9518 793.9518 640.7231 116.8104 225.966 179.6171 201.0521 338.7528 1267.3582 237.9728 439.8588 265.9043 117.6214 353.5036 200.2293 267.1824 1280.5598;
	3.7412 50.5518 89.6214 115.9295 15.283 32.0404 28.6597 17.0421 26.2329 27.3695 50.5921 75.4735 113.625 65.299 193.9757 73.0792 90.6723 96.0856 72.06 71.5487 9.5532 74.7609 71.4466 84.5821 102.203 72.7207 12.7743 1241.7529 759.1774 759.1774 628.7681 119.4166 240.1999 184.1665 204.7212 323.9157 1210.3239 231.8238 445.7287 273.7581 114.0261 355.4348 190.1079 265.8923 1222.9315;
];