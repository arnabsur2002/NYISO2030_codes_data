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
	4.0087 54.166 94.1544 120.7807 15.3005 35.0805 31.2654 18.5621 10.2171 17.4268 32.2131 48.0556 72.3475 57.2876 200.5732 75.5648 93.7563 99.3537 91.1422 67.8687 10.4218 81.8546 23.6339 89.2489 105.7232 75.3596 14.0112 1241.7091 783.9872 783.9872 592.8182 108.6541 303.8072 174.6942 179.6044 334.5012 1089.9063 249.0857 443.6144 283.1872 121.392 389.1602 219.8389 285.2042 1101.2595;
	3.9496 53.3681 92.4082 116.4835 15.0172 35.0275 31.507 17.5891 11.7654 13.9328 25.7545 38.4207 57.8421 61.8932 193.4926 72.8972 90.4466 95.8463 88.1603 70.5891 10.5023 81.7307 26.0058 82.4401 99.1219 72.2216 13.107 1247.7897 806.5086 806.5086 685.0069 113.0387 293.8675 181.6964 194.0435 344.1103 1183.8017 249.3014 449.9262 265.5051 117.8451 388.5712 218.4912 277.043 1196.1329;
	3.9084 52.8108 92.5325 116.642 15.3209 35.1419 32.9021 18.4757 23.4909 15.2648 28.2167 42.0937 63.3719 54.5337 177.6928 66.9447 83.0611 88.0199 87.9742 69.4244 10.9674 81.9978 27.4666 85.9184 101.4924 75.4279 13.6362 1223.6425 780.9559 780.9559 673.4817 111.6699 293.2472 178.6986 170.9706 333.2079 1180.4574 262.8675 457.6329 271.8547 119.2439 389.841 218.8965 276.6853 1192.7538;
	3.8779 52.3987 91.2904 117.7299 15.1849 34.6499 30.9487 18.4023 28.1134 30.0741 55.5915 82.9316 124.8531 63.3477 201.7664 76.0143 94.3141 99.9448 90.2045 68.1967 10.3162 80.8497 26.9072 86.4912 101.4995 74.7971 13.5019 1206.3102 769.0188 769.0188 690.1435 111.5262 300.6817 175.5384 198.6036 328.1147 1115.6137 274.2034 465.9604 271.8735 118.2592 384.3828 188.4087 268.4949 1127.2347;
	3.2775 44.2858 90.0805 118.7445 15.0829 31.8436 30.9346 18.5222 27.5793 30.1346 55.7034 83.0984 125.1042 59.7627 198.1856 74.6653 92.6402 98.171 87.2898 66.8682 10.3115 74.3016 73.3399 87.5887 100.3375 74.959 13.8796 1255.9346 809.6431 809.6431 748.2247 110.6646 290.966 172.1189 187.3641 345.4477 1134.9587 296.2123 462.4337 268.7612 120.2651 353.2512 186.1897 269.2655 1146.7812;
	3.7117 50.1531 90.2413 118.0118 14.9381 34.0911 17.989 18.5455 26.1221 29.8399 55.1587 82.2859 123.881 46.41 199.8734 75.3011 93.4292 99.0071 54.9547 67.9141 5.9963 79.5459 73.5175 88.9627 102.3925 74.1422 13.7147 1203.0401 789.1015 789.1015 742.8176 111.7534 183.1824 174.811 145.5015 336.6833 1177.6197 285.7732 453.8824 274.2656 115.447 378.1841 164.7114 273.381 1189.8866;
	3.7545 50.732 88.4214 114.661 14.8345 34.3818 12.6212 18.7588 25.1629 29.0532 53.7044 80.1164 120.6148 62.7951 197.4073 74.372 92.2764 97.7855 83.7576 70.3469 4.2071 80.2243 72.4076 87.576 103.0244 72.8915 13.7344 1277.8186 783.404 783.404 723.3419 109.9144 279.192 181.073 196.8712 334.2524 1195.3501 303.2146 423.2864 275.9581 118.276 381.4092 188.7471 268.4881 1207.8017;
	3.7457 50.6131 91.8724 113.8718 14.6075 33.6972 2.6434 18.366 0.1175 28.5629 52.7981 78.7644 118.5793 43.9662 197.672 74.4718 92.4002 97.9166 79.1687 68.7342 0.8811 78.6267 70.1276 85.7796 100.1773 71.7137 13.5151 1271.8456 814.1291 814.1291 750.7261 114.1452 263.8956 176.922 137.84 347.3617 1232.5113 312.1381 177.66 268.332 119.8848 373.8139 200.7686 266.7895 1245.35;
	3.7506 50.6783 92.4636 115.7784 14.9984 31.7584 6.6761 18.8598 0.9928 27.7803 51.3516 76.6064 115.3305 28.1151 200.9985 75.725 93.9551 99.5644 84.8393 70.541 2.2254 74.103 69.1983 87.3242 103.6932 71.4272 13.7315 1132.1387 710.1109 710.1109 750.1579 115.1846 282.7976 181.5726 88.1448 302.9806 1036.6266 302.39 45.0673 277.7497 120.1946 352.3069 189.8225 276.019 1047.4248;
	3.8116 51.5026 90.3966 116.1323 15.2573 29.7294 2.2578 18.57 0.7085 24.1641 44.667 66.6343 100.3176 23.1951 193.7635 72.9993 90.5732 95.9805 84.1037 70.0883 0.7526 69.3687 45.7537 87.333 101.9624 72.264 13.3019 951.9909 631.7166 631.7166 590.2777 109.5118 280.3457 180.4074 72.7197 269.5324 824.6323 257.4091 18.5171 273.1137 121.2641 329.7984 164.0805 268.4187 833.2222;
	3.6746 49.6515 90.9115 114.8463 15.023 26.9141 2.9814 18.7316 0.0 28.3033 52.3181 78.0484 117.5014 7.0836 193.1421 72.7652 90.2827 95.6727 76.5984 69.4038 0.9938 62.7995 69.5681 88.8151 104.1703 75.2638 13.4923 824.4816 696.9376 696.9376 520.7361 113.2024 255.3278 178.6456 22.2081 297.3601 746.3615 209.5645 5.375 279.0277 118.8002 298.5665 153.1385 276.4928 754.1361;
	3.5827 48.4095 93.822 117.4494 15.2679 19.9825 1.5103 18.8008 0.0 27.058 50.0163 74.6144 112.3316 4.9357 202.1905 76.1741 94.5123 100.1548 40.5169 71.8318 0.5034 46.6258 69.9703 89.3258 105.3259 76.3901 13.8101 619.0777 761.1895 761.1895 540.0644 114.4281 135.0564 184.8953 15.4739 324.7742 821.439 230.8915 16.3432 282.123 123.3457 221.6726 152.4017 283.7284 829.9956;
	3.7933 51.2565 93.7062 120.1453 15.2917 22.6148 4.4787 19.0007 25.3547 23.6252 43.6709 65.1483 98.0804 49.0068 199.3913 75.1195 93.2038 98.7682 57.912 71.2846 1.4929 52.7678 68.4708 89.4283 106.2375 75.8974 14.0475 668.3273 755.1793 755.1793 540.5204 111.047 193.0399 183.4868 153.643 322.2098 633.1745 248.1513 61.3131 284.5648 122.7382 250.873 154.4722 283.3582 639.7701;
	3.6049 48.7103 89.1326 113.7801 14.7974 21.1601 0.199 18.1506 16.2371 20.3282 37.5764 56.0565 84.3928 32.8483 198.0557 74.6163 92.5795 98.1067 56.8308 71.4472 0.0663 49.3735 63.248 88.0689 102.328 75.2754 13.6037 509.9294 701.7082 701.7082 473.4719 95.1923 189.4359 183.9053 102.9837 299.3955 660.81 258.7641 2.4905 274.093 122.8895 234.7355 159.5357 265.8084 667.6935;
	3.6214 48.9325 89.9419 114.8634 15.2799 19.8184 1.1902 18.5349 0.2155 25.487 47.1124 70.2824 105.8098 30.5858 197.3385 74.3461 92.2443 97.7514 70.0795 71.2357 0.3967 46.2429 69.0771 89.5687 104.1212 75.92 13.6978 369.8806 704.6075 704.6075 437.2407 83.2297 233.5982 183.3609 95.8906 300.6325 602.9786 248.7586 85.1126 278.8962 123.5405 219.8519 161.9172 253.5869 609.2597;
	3.503 47.3337 92.7052 117.2946 15.3405 10.8753 3.001 18.5971 4.8328 28.2368 52.1952 77.865 117.2254 26.2396 187.6554 70.6981 87.718 92.9549 59.0331 70.1956 1.0003 25.3756 69.5787 89.4946 104.1631 75.3253 13.7903 431.0277 582.7586 582.7586 394.0969 89.208 196.777 180.6836 82.2645 248.6437 508.6525 219.3409 98.287 279.0082 123.8696 120.6431 157.0679 251.836 513.951;
	3.5635 48.1509 93.7142 116.6282 15.4228 19.5034 2.3058 19.1535 0.4764 28.534 52.7447 78.6846 118.4593 35.4673 190.097 71.618 88.8593 94.1643 63.2613 69.5011 0.7686 45.508 70.0153 89.8784 106.2311 76.4563 14.0291 994.7629 507.4532 507.4532 297.2597 93.7721 210.871 178.896 111.1948 216.5134 859.8015 232.6429 105.7607 284.5475 123.6096 216.3579 139.355 258.4357 868.7578;
	3.1759 42.9134 92.759 115.5388 15.4234 22.0138 0.1917 18.8713 1.6984 29.1544 53.8915 80.3956 121.0351 55.9652 187.4681 70.6275 87.6304 92.8621 74.0754 68.7587 0.0639 51.3656 70.0257 89.4474 104.8028 76.3189 13.9205 1224.4927 581.7602 581.7602 201.6219 64.1269 246.9178 176.985 175.4585 248.2177 1032.886 200.7124 133.6768 280.7217 123.312 244.2068 171.8965 275.2752 1043.6452;
	2.3092 31.202 94.9554 116.6592 15.3708 32.6783 1.5865 18.7441 0.4528 25.4064 46.9633 70.0599 105.4749 58.0598 182.7173 68.8377 85.4097 90.5088 44.1019 67.9354 0.5288 76.2493 50.3449 89.9803 104.586 75.4739 13.7932 1175.9644 663.1565 663.1565 239.4725 57.207 147.0064 174.8658 182.0252 282.9468 1174.9419 129.0265 262.3901 280.1411 122.3965 362.511 161.8934 283.5352 1187.1809;
	3.7106 50.1381 94.8909 87.8761 15.3509 33.4006 3.5169 17.729 0.0282 15.6889 29.0007 43.2633 65.1326 64.7471 191.4938 72.1442 89.5122 94.8562 40.7479 71.2342 1.1723 77.9347 43.3569 89.7345 105.7131 75.8725 13.5002 1276.4309 695.556 695.556 331.3791 52.5208 135.8262 183.3571 202.991 296.7705 1214.1074 111.2899 162.5876 283.1601 120.3034 370.5237 186.6334 283.6119 1226.7543;
	3.7098 50.1273 92.5188 113.8013 15.0234 33.0672 3.4961 18.2617 0.0667 15.3861 28.441 42.4284 63.8758 62.1592 188.9214 71.1751 88.3098 93.582 63.1971 69.9714 1.1654 77.1568 60.0262 88.7965 105.3447 74.6716 13.7519 1263.3199 669.8356 669.8356 579.3873 47.6047 210.657 180.1066 194.8775 285.7965 1249.7629 151.9674 121.3479 282.1734 117.8369 366.8256 190.6913 280.1915 1262.7812;
	3.6761 49.672 93.1781 115.127 15.1661 34.0085 13.9301 18.5088 27.5631 29.894 55.2586 82.4349 124.1053 64.2729 190.3025 71.6954 88.9554 94.2661 71.4959 69.6959 4.6434 79.3533 72.3647 89.5188 105.7101 74.0179 13.9344 1298.4197 681.6053 681.6053 532.2464 72.4163 238.3196 179.3973 201.5043 290.8182 1261.5401 214.8172 451.2244 283.152 119.4134 377.2681 197.4724 271.296 1274.6811;
	3.7196 50.2597 92.9666 117.6106 15.2751 34.3809 8.3203 18.5175 27.5947 29.6587 54.8236 81.786 123.1284 66.3495 186.605 70.3024 87.227 92.4346 66.1443 69.3213 2.7734 80.2221 71.0312 88.6613 104.1922 73.0194 13.8519 1333.7016 754.2918 754.2918 627.6478 113.919 220.4811 178.4333 208.0146 321.8312 1285.3129 251.36 475.6995 279.0862 114.0858 381.3988 200.0489 266.0187 1298.7016;
	3.7036 50.0432 92.7111 119.4937 14.9708 34.8394 29.5779 17.7965 26.3618 27.7458 51.2877 76.5112 115.1872 64.4232 185.1706 69.7619 86.5565 91.724 65.6037 68.8223 9.8593 81.292 70.7957 88.9253 105.4634 71.739 13.6617 1327.3942 745.0628 745.0628 603.0279 112.7813 218.6789 177.1488 201.9756 317.8935 1241.1631 242.7621 474.4502 282.4913 112.5514 386.4856 194.8116 262.5464 1254.0918;
];
