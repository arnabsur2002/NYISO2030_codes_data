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
	3.5958 48.5876 89.5738 114.984 13.9416 32.6306 29.5427 18.8745 27.0476 27.0201 49.9463 74.51 112.1744 66.5388 186.7749 70.3664 87.3064 92.5188 81.6453 69.1178 9.8476 76.138 68.2989 83.0132 101.8028 74.948 13.8779 1300.9212 774.6984 774.6984 566.5036 110.8644 272.1511 177.9095 208.608 330.538 1300.403 228.2063 459.5097 272.686 122.5686 361.9818 199.8424 275.5593 1313.9489;
	3.6275 49.0156 89.758 111.8759 13.9701 32.4493 26.1843 18.2031 25.8083 22.3731 41.3564 61.6956 92.8824 65.5209 171.9439 64.7789 80.3738 85.1722 76.5236 68.0922 8.7281 75.7151 55.6922 85.0887 99.4175 74.8184 13.353 1319.5621 767.5591 767.5591 609.2093 108.6582 255.0787 175.2694 205.4167 327.4919 1305.6016 228.0858 441.228 266.2968 118.0202 359.9714 186.8763 273.2396 1319.2016;
	3.635 49.1168 91.8056 114.6297 14.027 34.2049 21.3281 18.2852 25.1246 22.3832 41.375 61.7234 92.9242 64.041 181.7282 68.465 84.9474 90.0189 80.3661 68.0399 7.1094 79.8113 54.8744 87.9713 100.8416 76.224 13.4969 1267.3971 764.2262 764.2262 631.2528 97.7045 267.887 175.1348 200.7772 326.0698 1306.6303 229.4671 400.2238 270.1113 119.172 379.4458 189.648 269.1368 1320.241;
	3.4774 46.9876 89.4636 114.0027 13.282 33.5302 23.7223 17.896 25.9636 27.4223 50.6896 75.619 113.8439 65.9733 188.7418 71.1074 88.2258 93.493 84.2802 68.8194 7.9074 78.2372 55.7877 86.4046 98.4968 75.1664 13.119 1287.1046 778.1527 778.1527 674.1339 107.1597 280.9342 177.1413 206.8351 332.0118 1321.4403 253.3954 431.439 263.8308 112.8226 371.9622 153.4727 272.5015 1335.2053;
	3.5826 48.4089 89.3527 112.8319 13.9295 33.2167 30.273 18.3242 26.559 30.2467 55.9105 83.4075 125.5695 65.7113 193.9968 73.0872 90.6822 96.0961 84.352 71.2253 10.091 77.5057 71.1268 84.799 99.9621 74.9555 13.0039 1260.0361 761.0493 761.0493 696.2344 105.6452 281.1733 183.3342 206.0137 324.7144 1295.9533 242.1633 458.5313 267.7557 112.8955 368.4845 187.7695 268.8076 1309.4529;
	3.4787 47.005 87.3724 112.7289 13.9348 33.544 29.8255 18.5126 27.2998 30.3303 56.065 83.638 125.9166 66.0721 197.1968 74.2928 92.1781 97.6812 86.2828 70.8838 9.9418 78.2693 70.6175 83.4517 97.582 73.7594 12.8914 1261.1533 756.9853 756.9853 749.7215 111.8662 287.6093 182.4552 207.1449 322.9804 1284.0778 251.42 452.7099 261.3802 114.4452 372.1146 177.2856 271.9986 1297.4536;
	3.4817 47.0458 88.2673 115.1602 14.2925 33.96 30.0953 18.8546 27.0464 30.6707 56.6943 84.5767 127.3297 64.3158 199.4138 75.128 93.2144 98.7794 86.697 71.9792 10.0318 79.24 71.9025 85.0497 100.0939 75.563 13.2476 1230.6832 716.2329 716.2329 711.938 107.1021 288.9901 185.2746 201.6387 305.5927 1287.1709 281.5047 446.4634 268.1088 113.948 376.7298 165.5826 276.5295 1300.579;
	3.6805 49.732 87.3345 118.8789 14.976 34.3662 30.6651 19.0159 28.044 29.6301 54.7707 81.7072 123.0097 67.6232 198.2342 74.6836 92.663 98.1951 86.0617 70.2599 10.2217 80.1878 71.2906 86.4613 100.1379 74.3085 13.3426 1285.9791 773.7752 773.7752 741.6013 110.5097 286.8724 180.8493 212.0079 330.1441 1316.5554 292.4726 471.6247 268.2264 115.1769 381.2359 188.8346 279.3721 1330.2695;
	3.7036 50.0434 86.9393 115.2881 15.0614 34.7417 31.7114 18.6843 27.337 29.8144 55.1114 82.2154 123.7748 68.8696 196.4889 74.0261 91.8471 97.3305 86.6901 70.7235 10.5705 81.064 72.7731 84.8731 99.5014 73.1931 12.9084 1313.5573 783.3766 783.3766 733.8256 116.4623 288.9669 182.0424 215.9156 334.2407 1333.5312 303.458 462.8366 266.5217 119.9423 385.4012 211.1655 271.5444 1347.4221;
	3.7223 50.2964 90.5754 118.0356 15.2733 34.0533 26.0104 18.5499 27.1748 29.4469 54.4321 81.202 122.2492 67.7524 196.7726 74.1329 91.9798 97.4711 85.5665 71.5794 8.6701 79.4578 72.8654 86.6435 100.3405 71.2509 12.9287 1265.697 785.5278 785.5278 744.817 113.9442 285.2216 184.2456 212.4128 335.1585 1282.0397 312.3177 443.3583 268.7693 119.0804 377.7649 216.3305 274.1433 1295.3943;
	3.8723 52.3234 94.6497 120.6994 15.3282 34.9453 28.0421 19.1398 28.3311 31.2639 57.7909 86.2126 129.7926 67.1458 195.9571 73.8257 91.5986 97.0671 87.1239 72.6599 9.3474 81.539 73.4639 88.2074 105.7532 75.9242 13.9023 1265.0074 791.639 791.639 764.3027 114.9652 290.4129 187.0268 210.5112 337.766 1325.44 321.7818 447.6049 283.2676 120.3316 387.6598 219.1743 279.2455 1339.2466;
	3.7606 50.814 88.9074 117.308 14.9962 34.8009 26.2836 18.8136 27.8914 30.1908 55.8072 83.2533 125.3374 66.9091 191.7892 72.2555 89.6503 95.0026 86.9434 69.6107 8.7612 81.2021 73.9615 86.24 102.5284 70.5063 13.3189 1246.6194 784.1379 784.1379 750.7328 114.5942 289.8115 179.1782 209.7692 334.5655 1273.81 319.2088 444.4831 274.6297 121.9836 386.0581 212.5322 267.6162 1287.0788;
	3.7092 50.12 88.8128 115.7852 14.8992 33.7117 26.2885 18.7996 27.2342 30.3757 56.149 83.7633 126.1052 66.9158 192.4809 72.516 89.9736 95.3452 88.6622 70.8071 8.7628 78.6607 74.4416 82.2313 99.6992 71.8269 13.4501 1267.4123 773.1395 773.1395 726.9787 115.3202 295.5405 182.2576 209.7901 329.8729 1268.3812 322.2429 440.4478 267.0514 120.7092 373.9756 212.9691 267.9686 1281.5935;
	3.7736 50.9894 91.1701 116.3599 15.0236 33.5807 27.7855 18.5109 27.8653 30.1378 55.7093 83.1074 125.1177 68.3882 191.9685 72.323 89.7341 95.0914 88.5121 73.3429 9.2618 78.355 75.2069 84.6213 98.7758 71.1081 13.2799 1285.2804 810.7961 810.7961 776.3182 116.5112 295.0402 188.7849 214.4064 345.9397 1295.0394 321.0971 455.4656 264.5781 118.951 372.522 211.0739 274.821 1308.5294;
	3.7955 51.2854 92.9649 115.9732 15.0025 33.5816 22.5975 18.949 26.8523 29.7625 55.0156 82.0725 123.5596 67.1453 187.3051 70.5661 87.5543 92.7814 84.6711 70.9288 7.5325 78.3571 75.7546 87.4141 101.9107 74.7008 13.7961 1293.5165 787.058 787.058 720.3434 115.9741 282.237 182.571 210.5096 335.8114 1277.7844 290.2314 455.1899 272.9751 119.1122 372.5319 207.2253 280.8051 1291.0947;
	3.7158 50.2085 88.9912 114.5895 14.7298 32.7377 24.5237 18.8353 27.2153 29.7902 55.0667 82.1487 123.6744 68.2429 180.8765 68.1442 84.5493 89.597 84.8461 71.3488 8.1746 76.388 73.2433 85.3112 99.6362 71.4712 13.1324 1225.3455 798.8357 798.8357 717.6871 104.5347 282.8204 183.652 213.9509 340.8366 1222.9665 293.8632 468.6272 266.8827 119.2522 363.1705 201.1407 282.2453 1235.7058;
	3.7548 50.7353 90.1028 110.9561 14.1043 31.901 21.898 18.0473 27.4754 28.6766 53.0083 79.078 119.0514 65.9656 188.5095 71.0199 88.1172 93.378 85.0514 69.6932 7.2993 74.4356 71.5158 81.7308 97.7408 59.1213 12.3602 1202.4561 756.3973 756.3973 663.1827 101.6504 283.5048 179.3905 206.811 322.7295 1155.7282 295.453 446.994 261.8057 117.2002 353.8881 186.1291 269.1302 1167.767;
	3.7327 50.4366 88.062 107.8831 14.2917 31.5192 18.7124 12.9275 27.5273 28.1493 52.0335 77.6238 116.8622 66.7331 186.3229 70.1961 87.0951 92.2948 83.9824 68.9074 6.2375 73.5449 70.0355 81.8006 96.8262 68.2297 9.3586 1174.9604 706.7652 706.7652 608.9894 94.4819 279.9413 177.3677 209.2171 301.5532 1141.3978 262.4908 445.204 259.3558 116.0812 349.6535 176.5928 248.2338 1153.2874;
	3.6606 49.4629 80.1606 94.6238 14.2714 24.4389 15.6466 7.0181 27.6053 28.4872 52.6581 78.5556 118.265 67.3214 189.2492 71.2985 88.463 93.7444 85.0517 68.1068 5.2155 57.0241 70.4811 82.524 88.0841 54.6038 6.8869 1184.7581 712.345 712.345 614.2766 104.1061 283.5057 175.3072 211.0617 303.9339 1141.2478 280.6238 444.4817 235.9395 112.828 271.1089 124.7575 227.4128 1153.1358;
	2.8889 39.0357 79.0913 62.9563 14.8504 22.1678 25.9263 9.1203 27.821 29.5947 54.7054 81.6097 122.8629 67.1775 191.1372 72.0098 89.3455 94.6796 87.5783 71.0368 8.6421 51.7249 72.1005 86.9801 89.4443 41.4323 7.7096 1202.4592 721.519 721.519 648.8739 105.9045 291.9277 182.849 210.6105 307.8481 1114.5798 281.7873 440.266 239.5831 106.6416 245.9151 108.9522 199.5077 1126.19;
	2.4398 32.9675 80.8409 69.3366 14.7175 11.875 25.094 9.4431 27.6569 28.7113 53.0723 79.1735 119.1952 64.7835 183.5607 69.1554 85.804 90.9266 86.6485 67.9004 8.3647 27.7083 70.2323 86.5738 84.9704 48.0423 9.1619 1198.9517 736.0715 736.0715 626.74 109.1787 288.8284 174.7757 203.1049 314.0572 1148.5147 264.5033 451.6164 227.5994 104.9448 131.7332 74.5875 196.4774 1160.4784;
	2.0047 27.0884 80.7326 79.7195 14.4873 15.714 25.1 11.508 27.5793 28.3542 52.4123 78.1888 117.7129 64.9088 188.1272 70.8758 87.9385 93.1886 85.3856 69.2649 8.3667 36.6661 73.8439 86.4721 98.0163 66.3348 9.957 1089.5977 706.8602 706.8602 649.775 106.8614 284.6185 178.2879 203.4978 301.5937 1061.7827 248.233 444.7796 262.5436 112.9267 174.3212 69.8778 194.0748 1072.843;
	2.5983 35.1089 83.514 89.3461 14.4259 17.7801 24.249 13.5247 27.4064 28.6854 53.0246 79.1022 119.088 64.197 192.3328 72.4603 89.9044 95.2718 87.8258 71.7708 8.083 41.487 75.0394 86.5463 94.9255 66.0822 9.5576 967.2705 760.2034 760.2034 720.1144 101.5969 292.7528 184.7383 201.2661 324.3535 1073.6624 271.4703 447.367 254.2649 114.0766 197.2409 75.7804 218.7073 1084.8464;
	2.7584 37.2721 84.8295 79.0631 14.2055 21.2809 21.2285 8.5307 27.4763 27.1156 50.1228 74.7734 112.5709 61.0598 185.157 69.7568 86.5502 91.7173 85.9651 70.5376 7.0762 49.6554 71.5199 82.9209 81.0612 60.1112 6.0624 887.0638 719.0663 719.0663 652.614 97.8176 286.5504 181.5639 191.4307 306.8016 905.3772 255.471 437.768 217.1281 111.0007 236.0758 94.0697 224.8077 914.8083;
];
