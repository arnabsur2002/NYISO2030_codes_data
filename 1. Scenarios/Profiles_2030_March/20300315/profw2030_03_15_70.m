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
	3.8531 52.0633 88.4873 101.9162 14.8669 32.7373 32.494 17.4019 12.1921 17.7648 32.838 48.9879 73.7509 46.3917 203.0 76.4791 94.8907 100.5558 90.6966 68.1206 10.8313 76.3871 25.6991 84.0337 99.1207 73.6219 13.4367 1179.0583 807.3473 807.3473 737.4391 118.7052 302.3219 175.3426 145.4442 344.4682 1059.3256 264.6117 440.7453 265.502 118.7463 363.1662 206.0318 264.3793 1070.3603;
	3.901 52.7116 91.3599 112.9575 14.7801 34.1923 32.9173 17.7265 13.1137 15.9021 29.3948 43.8513 66.0178 59.4052 203.4258 76.6395 95.0897 100.7667 92.4231 71.2267 10.9724 79.7821 29.1868 81.8589 96.6316 73.3702 13.0679 1258.5372 830.6006 830.6006 795.9126 121.7996 308.077 183.3376 186.2433 354.3896 1218.3425 276.483 456.1244 258.8345 119.1302 379.3067 210.4039 261.7463 1231.0336;
	3.8521 52.0499 90.4377 113.3436 15.0752 34.5317 33.408 17.4865 22.7875 15.2083 28.1123 41.938 63.1374 57.9701 188.606 71.0562 88.1623 93.4257 90.5821 72.4703 11.136 80.574 23.7931 83.6885 96.6468 73.4909 12.9523 1229.8731 833.3281 833.3281 774.1269 119.5618 301.9404 186.5388 181.744 355.5533 1232.5381 301.0678 451.3564 258.8755 118.4488 383.0719 215.9667 254.4125 1245.377;
	3.782 51.1034 89.9116 115.0227 15.2923 33.7255 32.6093 17.4564 28.3227 29.3154 54.1891 80.8395 121.7034 66.1907 198.2233 74.6795 92.6579 98.1897 89.6302 69.0886 10.8698 78.6929 23.5327 82.8071 96.5978 71.5774 12.9328 1251.8431 839.8828 839.8828 782.1421 120.4085 298.7675 177.8343 207.5169 358.35 1217.1994 317.1845 462.02 258.744 118.0715 374.1285 185.5908 248.6894 1229.8786;
	3.4105 46.0827 90.9969 113.2254 15.3049 30.2127 32.4476 17.4127 28.3133 29.1889 53.9553 80.4907 121.1783 64.0421 202.04 76.1174 94.442 100.0803 91.1709 71.1522 10.8159 70.4963 70.2598 85.5606 97.8431 69.9023 12.5499 1298.0163 846.6453 846.6453 788.3417 122.8882 303.9029 183.146 200.7805 361.2353 1189.073 336.5904 465.4132 262.0798 117.346 335.1595 186.3122 258.5967 1201.4592;
	3.8891 52.5499 89.1102 110.426 15.3404 31.3829 20.92 17.4461 26.5059 26.6581 49.2771 73.5117 110.6715 54.7977 201.3275 75.849 94.1089 99.7273 63.9797 70.8811 6.9733 73.2267 69.2088 85.9452 98.7169 71.4227 13.0666 1263.2639 833.2167 833.2167 780.8143 122.808 213.2658 182.4483 171.7982 355.5058 1219.7699 326.8206 453.2495 264.4203 117.1038 348.1405 162.9999 257.0008 1232.4758;
	3.9222 52.9979 89.7263 111.3168 15.4162 32.8229 14.0891 17.4443 26.18 28.4022 52.5011 78.3213 117.9123 66.1684 195.5784 73.683 91.4215 96.8795 88.5829 71.0097 4.6964 76.5867 70.7973 86.6559 99.4561 71.6017 12.9517 1292.5932 828.8905 828.8905 755.5514 120.0406 295.2763 182.7791 207.4468 353.6599 1232.457 325.6546 431.4618 266.4001 118.6967 364.1152 181.7922 264.0556 1245.2951;
	3.9066 52.7865 90.0189 116.3851 15.3681 32.0176 3.4541 17.4205 4.9654 28.2187 52.1619 77.8153 117.1505 43.1601 198.6778 74.8507 92.8703 98.4148 88.4078 71.48 1.1514 74.7078 71.3434 84.728 97.3973 71.0926 12.852 1248.2274 777.8229 777.8229 710.8144 121.3346 294.6927 183.9898 135.3128 331.8711 1226.405 314.1704 176.8803 260.8857 117.0806 355.1822 197.2882 262.6987 1239.1801;
	3.9206 52.9762 87.5122 113.5315 15.2302 29.8124 3.5341 17.5266 1.8324 27.8004 51.3886 76.6616 115.4137 26.9007 199.0903 75.0061 93.0631 98.6191 91.0347 73.0677 1.178 69.5624 69.7645 83.738 97.8509 71.0687 12.7384 1175.7055 701.693 701.693 722.1871 119.5131 303.4491 188.0763 84.3375 299.389 1050.1383 271.3985 198.4638 262.1006 117.4911 330.7194 188.7477 267.5838 1061.0772;
	3.9249 53.0338 88.6041 116.4829 15.4042 31.1279 8.193 17.5831 15.0163 22.9557 42.4333 63.3022 95.3011 24.3842 192.4372 72.4996 89.9532 95.3236 91.8197 72.5984 2.731 72.6317 41.1719 83.0468 98.5117 70.3586 12.2917 915.893 635.9702 635.9702 576.093 120.999 306.0656 186.8685 76.4478 271.3473 831.8248 262.0144 311.815 263.8707 119.3502 345.3119 169.3466 273.4836 840.4896;
	3.7877 51.1796 87.9902 111.6497 15.346 26.0801 5.4473 15.6931 3.6294 27.8671 51.512 76.8458 115.6909 21.9753 198.3648 74.7328 92.724 98.2598 83.5621 72.9455 1.8158 60.8536 70.7594 84.7185 98.2083 69.4056 11.8831 785.924 724.0797 724.0797 550.6699 122.0177 278.5402 187.7619 68.8955 308.9407 763.9612 222.1465 166.6703 263.0579 117.7289 289.3155 152.8349 265.9405 771.9191;
	3.6649 49.5213 89.3117 111.8693 15.3026 19.277 6.7325 17.6118 7.5658 26.7024 49.359 73.634 110.8556 48.6536 197.3133 74.3366 92.2325 97.7389 31.4943 70.9767 2.2442 44.9798 73.7549 84.2683 98.983 71.7983 13.0231 579.2905 788.8343 788.8343 549.9457 118.2399 104.9809 182.6942 152.5355 336.5693 842.5488 229.4503 226.8172 265.133 122.0035 213.8467 146.9902 275.0945 851.3254;
	3.9185 52.9476 91.752 112.8118 15.3554 21.902 3.3618 17.7206 26.0325 25.632 47.3803 70.6821 106.4116 53.0753 192.6889 72.5944 90.0709 95.4482 52.9592 70.4189 1.1206 51.1047 74.6945 83.4466 101.3464 72.2146 13.3345 547.4389 735.0557 735.0557 536.5042 112.7559 176.5306 181.2585 166.3982 313.6238 568.972 239.3136 146.3661 271.4635 122.0811 242.9662 159.1586 278.6431 574.8988;
	3.8602 52.1603 87.5776 112.4352 15.0143 19.7132 0.0 17.6202 17.8564 23.4739 43.3912 64.7311 97.4523 39.465 193.3375 72.8388 90.374 95.7695 47.5964 70.7786 0.0 45.9974 72.6227 82.3146 100.1621 71.8147 13.1072 480.4385 687.1678 687.1678 460.4485 96.057 158.6548 182.1843 123.7282 293.1916 632.2364 236.5388 28.1469 268.2913 122.4307 218.6848 158.6344 268.6925 638.8222;
	3.9225 53.002 87.2836 109.6662 14.96 18.881 5.2753 17.4095 2.3516 24.5024 45.2923 67.5673 101.7221 30.8688 187.8168 70.7589 87.7934 93.0348 59.4838 69.5039 1.7584 44.0556 70.3026 83.4932 98.1152 70.8026 13.1021 387.011 688.5698 688.5698 439.0178 90.5891 198.2792 178.9032 96.7777 293.7898 608.4977 240.9666 127.5115 262.8087 121.0154 209.453 171.2363 238.3163 614.8362;
	3.6018 48.6679 86.4089 109.5711 15.0113 9.4659 4.2439 17.4973 3.4251 27.7092 51.2201 76.4103 115.0353 25.3107 161.5772 60.8733 75.528 80.0371 37.3504 69.2032 1.4146 22.0872 71.6739 84.327 98.5811 70.0503 13.3378 430.4454 537.4315 537.4315 386.0331 89.0687 124.5012 178.1292 79.3525 229.3041 478.6818 204.8346 61.8498 264.0565 120.2869 105.0089 154.5898 221.8216 483.6681;
	3.4392 46.4716 86.8717 113.7161 14.5147 16.8207 5.1886 18.4805 8.0711 27.4955 50.825 75.8209 114.148 31.5273 176.7115 66.575 82.6024 87.5339 62.6225 70.837 1.7295 39.2483 68.0373 85.7715 104.8441 71.263 13.2509 991.9295 476.1377 476.1377 303.0555 91.5776 208.7418 182.3347 98.8423 203.1521 822.9417 230.7958 103.4995 280.8324 118.9058 186.5978 129.9045 202.789 831.514;
	3.2419 43.8053 87.1287 114.0098 14.2933 19.7451 1.5992 18.0694 1.3789 28.4445 52.5793 78.438 118.0879 53.7149 179.8818 67.7694 84.0843 89.1043 73.1376 70.0677 0.5331 46.072 69.9453 86.4321 100.9718 70.8189 13.2452 1178.3588 567.1481 567.1481 221.8267 68.2985 243.792 180.3544 168.4035 241.9832 1002.4737 200.0658 117.7929 270.4602 116.2018 219.0394 167.8301 238.0457 1012.9161;
	2.4181 32.6743 89.5667 112.4621 14.3458 32.1168 2.7469 18.6039 1.1047 21.148 39.0918 58.3172 87.7963 63.6148 176.475 66.4859 82.4918 87.4167 50.2852 69.2356 0.9156 74.9392 30.3646 87.0938 102.6399 72.1579 13.2919 1175.3812 690.7869 690.7869 286.3886 56.3963 167.6175 178.2127 199.4409 294.7357 1121.1807 128.3002 257.7275 274.9282 118.6963 356.2825 160.7419 254.1925 1132.8597;
	3.8098 51.4786 90.8542 84.2095 14.4241 32.6368 2.2276 17.7121 1.1783 9.3167 17.2217 25.6914 38.6783 63.7059 194.7113 73.3564 91.0162 96.45 44.1046 71.7157 0.7425 76.1525 35.4152 86.8193 103.9586 73.0344 13.2439 1240.4711 729.6184 729.6184 363.9866 49.9318 147.0153 184.5963 199.7267 311.3039 1135.3448 107.8117 123.877 278.4605 117.5255 362.0508 191.0736 258.7588 1147.1713;
	3.7698 50.9382 90.383 116.8716 14.3866 31.8342 0.9886 18.3893 0.1668 5.6356 10.4173 15.5406 23.3962 61.6071 197.2016 74.2946 92.1803 97.6836 61.9632 71.4955 0.3295 74.2798 57.5951 87.0803 104.2946 73.5195 13.462 1203.5668 672.5916 672.5916 592.693 45.3318 206.5441 184.0295 193.1467 286.9724 1165.0917 141.5772 84.4357 279.3606 118.8404 353.1472 185.5373 266.0737 1177.228;
	3.7447 50.5993 91.1135 117.0908 14.6414 32.5413 13.3174 18.1053 27.9337 27.6765 51.1595 76.32 114.8993 63.7019 196.5172 74.0367 91.8604 97.3446 57.6059 71.6473 4.4391 75.9297 67.9483 87.8859 103.8461 73.0997 13.495 1260.9544 682.5689 682.5689 534.0775 68.8924 192.0198 184.4203 199.7141 291.2294 1227.0714 194.5554 451.0046 278.1592 117.369 360.9913 200.0128 260.7873 1239.8534;
	3.8274 51.717 93.5474 119.6232 14.2754 32.0537 7.8366 18.9523 27.7294 26.116 48.275 72.0168 108.421 63.3663 200.5295 75.5483 93.7359 99.3321 63.9347 73.1471 2.6122 74.792 69.6297 87.6352 106.353 75.5828 13.9026 1304.1795 760.3666 760.3666 583.1907 105.871 213.1158 188.2809 198.6618 324.4231 1242.0505 220.8369 458.1981 284.8741 116.5345 355.5828 200.5694 263.7193 1254.9885;
	3.7116 50.1512 91.6041 119.61 14.0352 32.3544 30.5204 18.7168 27.6998 22.23 41.0918 61.3008 92.2881 67.2608 191.5837 72.178 89.5542 94.9008 66.5167 72.3454 10.1735 75.4936 68.1883 86.9377 106.7602 76.3154 13.9514 1314.8663 764.6861 764.6861 602.9826 110.9309 221.7223 186.2172 210.8716 326.2661 1234.6291 223.8418 472.6358 285.9648 120.8134 358.9181 196.1416 262.3806 1247.4898;
];
