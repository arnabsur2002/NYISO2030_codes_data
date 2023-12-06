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
	3.898 52.6701 92.7176 114.9017 15.2811 34.1191 30.3648 18.7938 27.7643 30.7806 56.8975 84.8799 127.7862 66.3273 197.302 74.3324 92.2272 97.7333 37.1807 72.6538 10.1216 79.6112 73.1612 88.7877 105.7244 73.7612 13.9468 1144.6045 686.4747 686.4747 591.4205 107.6581 123.9358 187.011 207.9449 292.8959 1128.2998 215.4881 477.9958 283.1904 120.5466 378.4946 151.0464 277.027 1140.0529;
	3.8071 51.4428 93.7629 119.5326 15.3178 33.1333 29.5932 18.8579 26.6168 29.2233 54.0189 80.5856 121.3211 67.9024 192.7723 72.6258 90.1098 95.4895 32.3581 73.5378 9.8644 77.3111 69.3337 88.4257 104.766 74.5185 13.9237 1177.8184 719.1527 719.1527 594.6065 107.8007 107.8603 189.2866 212.8833 306.8385 1160.323 215.6936 468.2015 280.6233 121.0819 367.559 139.5522 278.8201 1172.4097;
	3.815 51.5492 93.4711 67.1036 15.1775 34.132 30.3812 18.6518 27.9203 29.2695 54.1042 80.7129 121.5128 67.7654 195.2349 73.5536 91.261 96.7094 37.4687 73.7738 10.1271 79.6413 69.1274 87.3893 105.0965 74.2927 13.8957 1196.3743 731.3913 731.3913 588.4778 110.0581 124.8956 189.894 212.4536 312.0603 1210.2674 217.4411 465.631 281.5085 120.542 378.6374 141.2117 275.9045 1222.8744;
	3.8028 51.3846 93.1549 84.958 15.1651 34.5278 29.4291 18.7575 27.7263 30.4137 56.2193 83.8681 126.2629 67.5612 202.615 76.334 94.7107 100.3651 49.8025 73.8551 9.8097 80.5648 68.2347 86.0992 103.4718 74.7312 13.98 1239.5353 759.5687 759.5687 572.6135 102.7372 166.0084 190.1032 211.8136 324.0827 1153.0157 240.0951 468.2828 277.1567 118.2106 383.0279 178.0571 275.9008 1165.0263;
	3.5666 48.1931 94.7469 120.6261 15.3148 34.7471 25.9346 18.9116 28.3008 30.8932 57.1056 85.1903 128.2535 67.1995 198.5877 74.8167 92.8282 98.3702 84.3568 73.1119 8.6449 81.0766 63.3966 85.8921 104.1071 75.6408 13.861 1222.4214 719.2285 719.2285 570.072 103.1813 281.1893 188.1901 210.6796 306.8708 1225.666 242.6543 469.3032 278.8584 116.722 385.4612 195.7826 279.6443 1238.4334;
	3.8177 51.5861 94.4608 120.8244 15.3615 35.1143 30.5397 18.9945 28.4717 31.2821 57.8244 86.2627 129.868 68.7048 202.2718 76.2047 94.5503 100.1951 92.1025 72.8243 10.1799 81.9334 71.3875 86.9243 105.6464 75.3489 13.9816 1267.3257 752.3139 752.3139 546.5299 103.7456 307.0084 187.45 215.3988 320.9873 1180.3059 234.236 477.7876 282.9813 115.5642 389.5348 206.5383 281.3244 1192.6007;
	3.8512 52.0386 95.0098 120.5726 15.2825 34.8133 30.6795 18.8619 28.4338 31.3286 57.9104 86.391 130.0611 69.4258 202.1769 76.169 94.5059 100.1481 92.3867 70.9393 10.2265 81.2311 73.818 85.7136 104.5396 76.2635 13.8832 1258.5341 767.9209 767.9209 585.0167 98.4362 307.9555 182.5978 217.6593 327.6463 1200.9011 250.8557 479.2853 280.0167 120.0068 386.1959 207.9899 283.5142 1213.4105;
	3.8888 52.5464 93.9469 120.6839 15.04 34.3942 29.7485 18.7384 28.2833 31.0383 57.3738 85.5904 128.8559 69.5572 202.0305 76.1138 94.4375 100.0756 91.2238 70.1409 9.9162 80.2532 73.9362 84.32 104.3568 76.3684 13.9691 1189.1951 714.6744 714.6744 571.1761 85.6996 304.0792 180.543 218.0712 304.9278 1126.2545 246.4702 477.7605 279.5272 113.4583 381.5468 204.4442 271.0067 1137.9863;
	3.8977 52.6659 95.3121 121.3402 14.863 35.0423 30.576 18.9036 28.2897 30.9472 57.2055 85.3393 128.4779 69.3698 201.113 75.7681 94.0086 99.6211 91.3588 69.475 10.192 81.7655 73.0471 86.9771 105.3221 76.5003 14.1453 1215.4179 796.3993 796.3993 637.1535 81.8801 304.5294 178.8287 217.4838 339.797 1204.4678 292.8331 478.8431 282.1129 120.1531 388.7364 191.0346 284.8338 1217.0143;
	3.9162 52.9158 95.1391 120.9946 15.1275 34.6894 31.8859 19.1138 28.3869 30.3832 56.1629 83.784 126.1363 69.8695 201.3176 75.8452 94.1043 99.7224 92.3252 69.2727 10.6286 80.942 72.4249 87.7692 103.9468 76.6276 14.1256 1221.0355 810.6443 810.6443 715.6245 91.8953 307.7507 178.3081 219.0502 345.8749 1243.4563 309.0351 479.886 278.429 121.8947 384.8214 176.7477 283.0904 1256.4089;
	3.8972 52.6597 94.8328 120.8274 14.6575 34.7096 29.5701 18.8256 27.9676 30.8544 57.034 85.0835 128.0927 69.4391 204.497 77.043 95.5904 101.2973 92.3751 70.7847 9.8567 80.9891 73.209 88.0222 102.3452 76.5583 14.0034 1173.593 795.8925 795.8925 656.3115 89.7349 307.917 182.2 217.7011 339.5808 1162.554 303.5025 478.282 274.1389 122.2501 385.0455 173.3125 279.6712 1174.664;
	3.914 52.8874 94.2327 120.0186 15.0285 34.6295 29.2692 18.4732 28.0541 30.4472 56.2811 83.9604 126.4019 69.5223 202.5685 76.3165 94.689 100.3421 92.3324 69.5628 9.7564 80.8023 72.7634 85.7958 100.9077 75.9193 13.8278 1136.4737 790.4084 790.4084 672.9933 93.8119 307.7748 179.0548 217.9618 337.2409 1175.005 291.4612 478.922 270.2886 118.7638 384.1571 189.647 273.6645 1187.2446;
	3.8944 52.622 92.6732 118.4123 14.9264 34.0704 30.4404 17.952 27.7555 29.4491 54.4363 81.2082 122.2585 69.6764 201.9788 76.0944 94.4134 100.05 89.6921 69.5902 10.1468 79.4975 67.2641 87.3284 100.3238 73.8637 13.6026 1148.6674 791.1393 791.1393 708.1391 99.7554 298.9737 179.1253 218.4449 337.5528 1109.0662 306.315 476.037 268.7246 116.2567 377.9538 165.6092 268.5897 1120.619;
	3.9197 52.9644 93.5066 118.0181 14.8936 33.9234 29.9892 18.1782 28.2192 30.2427 55.9032 83.3965 125.553 69.853 204.8435 77.1736 95.7524 101.469 92.1466 71.3115 9.9964 79.1547 72.8504 87.6858 100.5298 74.0257 13.6339 1141.9737 764.6157 764.6157 727.0602 103.0745 307.1555 183.5561 218.9985 326.236 1088.0209 319.9298 476.3051 269.2763 118.3503 376.324 166.2432 277.3324 1099.3544;
	3.8668 52.2495 89.7555 112.3727 14.991 32.3674 28.6637 18.0529 28.4721 30.255 55.926 83.4306 125.6043 69.7769 201.9015 76.0652 94.3772 100.0117 91.41 71.1961 9.5546 75.5239 71.1953 87.5283 97.8038 73.9945 13.6714 1078.7103 727.0966 727.0966 699.6651 106.2608 304.6999 183.2591 218.7601 310.2279 967.6691 328.3717 476.0951 261.9746 115.6218 359.0622 184.2852 260.9251 977.749;
	3.7174 50.2297 90.3568 114.6728 14.7962 32.3951 28.7792 17.6282 28.4111 30.3925 56.1801 83.8096 126.175 69.0931 199.9219 75.3194 93.4519 99.0311 92.0326 70.7139 9.5931 75.5886 73.2197 84.6247 97.0528 73.4148 13.0399 1166.4766 765.1687 765.1687 688.9741 111.6061 306.7754 182.0177 216.6163 326.472 1040.2782 316.5078 477.4578 259.9628 115.5392 359.3699 185.6967 265.0182 1051.1144;
	3.6066 48.7334 90.9265 118.4716 14.4007 33.1314 26.3391 17.667 27.7663 29.2615 54.0895 80.6909 121.4797 66.4212 196.4985 74.0297 91.8516 97.3353 92.7104 71.447 8.7797 77.3066 70.8462 87.1184 100.1113 72.4904 12.7999 1167.6856 761.7964 761.7964 717.7402 113.9937 309.0347 183.9049 208.2394 325.0331 1129.8815 322.4646 462.6888 268.1552 118.4744 367.5377 184.5532 250.9058 1141.6511;
	3.5852 48.444 90.1885 114.1108 14.0415 30.914 24.8511 15.31 26.5659 29.0012 53.6083 79.9731 120.399 66.2007 189.9348 71.5568 88.7835 94.084 88.9907 67.606 8.2837 72.1326 68.841 84.2946 98.3081 70.7714 12.0608 1155.8026 716.5274 716.5274 687.5268 103.4136 296.6357 174.0181 207.548 305.7183 1080.4706 318.1334 443.4959 263.3254 115.672 342.9388 184.2085 252.0119 1091.7255;
	3.5623 48.1344 87.2354 108.3601 14.1675 31.6141 24.4594 15.2875 26.311 28.9727 53.5556 79.8944 120.2805 66.0486 188.7371 71.1056 88.2236 93.4907 84.5834 68.3044 8.1531 73.7661 69.6243 84.664 98.4485 48.8044 12.4888 1163.8549 754.9395 754.9395 640.0214 110.496 281.9445 175.8157 207.0714 322.1075 1145.365 305.5002 435.401 263.7012 119.1747 350.7053 159.3052 232.4948 1157.2959;
	3.5961 48.5919 84.8127 105.3463 13.9952 27.1564 24.9523 13.3894 26.4465 29.8152 55.113 82.2177 123.7784 64.4181 184.8895 69.6561 86.4251 91.5848 84.1401 64.999 8.3174 63.365 70.6329 82.2936 97.1594 46.7166 10.3766 1210.6508 765.1633 765.1633 640.3661 115.9569 280.4671 167.3076 201.9595 326.4697 1230.7391 289.9984 441.9817 260.2484 114.0701 301.2553 176.2176 234.5496 1243.5593;
	3.5671 48.1993 87.3498 112.7116 14.0676 29.0755 30.1045 15.2123 26.5863 29.9653 55.3904 82.6316 124.4014 65.4875 186.3118 70.1919 87.0899 92.2893 80.0627 65.9448 10.0348 67.8427 72.0052 84.4113 99.2384 57.297 10.6854 1230.0217 754.8814 754.8814 680.8128 116.1642 266.8756 169.7421 205.3123 322.0827 1204.3508 309.3653 449.6735 265.8172 116.0006 322.5438 153.4918 243.9753 1216.8961;
	3.5468 47.9247 85.8439 101.5739 14.4526 28.3886 28.1119 13.1803 27.2464 29.6414 54.7917 81.7384 123.0567 67.723 183.1786 69.0115 85.6253 90.7373 83.2625 66.7851 9.3706 66.2401 69.7627 87.4202 98.096 58.7956 9.9261 1192.0018 767.4685 767.4685 756.9114 112.5052 277.5418 171.9051 212.3207 327.4532 1096.8174 318.0293 455.3251 262.757 112.783 314.9245 151.8127 223.1506 1108.2426;
	3.3746 45.5978 84.7502 90.9906 13.975 25.9799 28.5129 11.3871 26.3106 28.425 52.5431 78.384 118.0067 66.7153 183.7032 69.2091 85.8706 90.9972 83.1033 65.9797 9.5043 60.6198 70.3146 83.4005 90.2532 53.01 8.2619 1096.7354 783.8053 783.8053 746.8038 112.2142 277.011 169.8319 209.1616 334.4236 1117.0097 306.8867 435.249 241.7495 113.0568 288.2041 160.925 210.9307 1128.6453;
	3.5626 48.138 86.2148 100.2242 13.9843 30.0381 25.1753 12.3943 26.2199 27.0011 49.9111 74.4575 112.0953 65.212 185.5672 69.9114 86.7419 91.9205 82.3524 67.4824 8.3918 70.0888 69.3512 86.3363 95.551 55.4396 9.8484 1036.9748 733.7522 733.7522 692.6032 108.9821 274.5081 173.6998 204.4484 313.0676 1035.8622 273.0799 427.2776 255.9401 115.8172 333.2223 159.7169 219.331 1046.6525;
];
