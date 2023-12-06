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
	3.7247 50.3295 91.5058 118.4916 14.4732 14.8036 16.0616 17.4748 27.6944 14.7869 27.3333 40.776 61.388 8.1366 11.1088 4.1852 5.1927 5.5027 8.1994 24.0911 5.3539 34.5418 40.2251 86.2978 97.2424 70.6361 6.3422 665.0936 384.8321 384.8321 199.9751 36.0084 27.3312 62.0105 25.5092 164.195 494.4263 45.9345 338.1892 260.4707 15.8396 164.2216 117.4801 225.4812 499.5766;
	3.5933 48.5534 89.9856 116.4601 14.4888 15.895 14.3274 16.7003 26.5535 14.7537 27.2721 40.6846 61.2504 7.5595 9.8246 3.7014 4.5924 4.8666 8.2243 16.7659 4.7758 37.0884 49.9707 88.156 97.6846 70.7022 5.5739 665.4145 353.9845 353.9845 158.966 30.715 27.4143 43.1555 23.7 151.0334 472.1601 42.465 322.2882 261.6552 14.1106 176.329 107.4957 211.2875 477.0785;
	3.3212 44.8762 89.7545 114.5157 14.4873 11.9823 12.5848 16.7724 25.9495 13.531 25.0119 37.3128 56.1742 7.2785 10.8956 4.1048 5.093 5.3971 14.216 22.4352 4.1949 27.9587 46.1638 88.2186 100.0711 72.1793 6.0377 612.8314 322.6514 322.6514 139.8809 28.635 47.3865 57.7483 22.8192 137.6646 388.8455 34.4699 247.9355 268.0475 6.6721 132.9236 82.0549 205.6554 392.896;
	2.9737 40.1808 90.5226 114.0871 15.0758 12.076 11.5891 17.9723 26.1485 20.1066 37.1668 55.4456 83.473 11.2958 10.8292 4.0798 5.062 5.3642 7.8682 22.5759 3.863 28.1773 58.9745 88.9882 104.3701 75.1627 9.6866 536.9743 274.3077 274.3077 156.5995 27.0869 26.2273 58.1105 35.414 117.038 331.7472 26.7182 193.1866 279.5628 14.6243 133.9628 78.3911 203.6135 335.2029;
	2.5312 34.2022 93.9295 119.1252 15.0718 14.5361 10.2859 18.9786 16.7968 21.7138 40.1377 59.8775 90.1453 18.056 19.4721 7.336 9.1021 9.6455 19.3879 24.9245 3.4286 33.9176 53.0452 89.8793 106.3532 76.1947 10.6251 400.791 208.9803 208.9803 153.4784 26.7654 64.6263 64.1558 56.6079 89.1649 187.6325 31.8212 184.1336 284.8745 16.3078 161.2541 87.6051 219.3856 189.587;
	3.1153 42.094 93.7404 119.2186 14.6405 21.1087 11.1934 18.7962 8.6922 19.5085 36.0612 53.7962 80.9898 35.9461 21.5322 8.1121 10.0651 10.666 31.6253 28.3972 3.7311 49.2537 57.0403 88.0975 103.7021 75.4925 8.628 348.6892 204.5858 204.5858 124.4702 24.5226 105.4177 73.0945 112.6959 87.2899 164.8586 27.6393 204.2589 277.7735 15.5206 234.1663 91.8323 206.0656 166.5759;
	2.7236 36.8024 90.472 114.0054 14.6415 21.3753 12.7126 17.4609 12.7263 26.009 48.0772 71.7217 107.9766 49.2375 30.126 11.3498 14.0822 14.9229 39.0564 38.6129 4.2375 49.8757 68.6312 84.6896 100.6275 73.4248 11.2837 287.6143 237.1078 237.1078 101.9139 16.4292 130.188 99.3898 154.3663 101.166 197.8771 19.563 198.1431 269.538 11.8484 237.1235 96.0559 219.7876 199.9383;
	1.8717 25.2906 71.8964 110.7826 14.6366 17.2836 13.0609 17.9024 20.4532 28.352 52.4082 78.1827 117.7037 52.649 31.3524 11.8118 14.6554 15.5304 51.0321 57.3909 4.3536 40.3284 74.1268 83.8907 97.3523 75.3739 12.8953 156.009 191.8533 191.8533 84.8125 10.8695 170.1069 147.7242 165.0618 81.8574 125.3367 15.9238 194.0975 260.7652 10.049 191.7328 86.2101 196.7847 126.6423;
	2.6836 36.2613 87.1618 103.2477 14.6326 21.6362 10.9741 18.2207 20.9834 28.1035 51.9488 77.4974 116.672 48.4767 21.5463 8.1175 10.0717 10.673 57.2658 53.9861 3.658 50.4844 73.1508 86.9434 97.9657 73.7658 12.8276 143.5356 140.7173 140.7173 61.1078 6.2348 190.886 138.9602 151.9809 60.0394 101.5961 15.6341 147.6352 262.4082 18.8918 240.0172 76.6052 230.6079 102.6544;
	1.8546 25.0593 85.1228 109.5729 13.4309 12.7626 10.3963 17.0257 25.8455 28.4024 52.5015 78.3219 117.9132 48.1991 13.5626 5.1096 6.3397 6.7182 68.4319 47.7384 3.4654 29.7793 72.8834 83.4342 98.3478 70.5525 12.0924 268.7856 235.3399 235.3399 80.1691 7.2983 228.1063 122.8788 151.1107 100.4117 222.5831 16.6423 57.9675 263.4317 0.104 141.5794 68.7619 204.1248 224.9016;
	1.4722 19.892 76.1243 102.0357 11.9227 23.7297 13.8304 15.8466 25.949 26.8887 49.7033 74.1476 111.6288 50.176 10.0832 3.7988 4.7133 4.9947 59.8252 36.9513 4.6101 55.3694 70.175 81.7454 89.8677 69.9873 11.5508 417.8318 295.6174 295.6174 128.8774 12.0266 199.4174 95.1127 157.3086 126.1301 326.7009 23.28 158.4672 240.7172 0.0001 263.2419 80.5131 172.1192 330.104;
	1.593 21.5249 83.9305 83.2354 11.77 27.7453 19.7987 16.3417 26.3334 26.8555 49.642 74.0561 111.4911 48.4702 21.8948 8.2487 10.2345 10.8456 64.7472 55.4911 6.5996 64.739 69.6475 77.4229 90.0645 70.1695 11.5217 478.6754 359.2288 359.2288 227.658 15.8158 215.8238 142.8342 151.9606 153.271 407.1438 38.3546 183.5618 241.2442 1.6347 307.7877 96.3251 183.6152 411.3849;
	2.8237 38.1539 86.3411 76.1556 14.2238 30.3253 20.8019 13.0894 26.755 27.2806 50.4277 75.2282 113.2557 52.6184 39.3357 14.8195 18.3872 19.4849 77.8707 63.0161 6.934 70.759 70.8548 73.2018 92.412 68.0648 6.612 641.7336 438.347 438.347 279.8219 17.2913 259.5691 162.2037 164.9657 187.028 578.9482 52.4958 198.5359 247.5322 2.108 336.4084 137.2085 202.0387 584.9789;
	3.4023 45.9729 84.2701 96.1379 14.6893 27.6651 20.2478 13.5148 26.0109 28.2403 52.2017 77.8747 117.2399 44.2816 60.098 22.6416 28.0923 29.7695 80.711 58.5716 6.7493 64.552 67.6688 81.4436 94.3952 68.0441 8.2721 836.1175 561.1287 561.1287 326.8906 26.8536 269.0365 150.7633 138.8287 239.4149 702.7044 77.0479 205.8706 252.8443 0.0247 306.8986 128.9515 237.0704 710.0242;
	3.5147 47.4915 83.2079 101.6389 14.503 31.4842 23.2431 16.3248 25.9147 23.753 43.9071 65.5007 98.611 53.7926 90.7309 34.1823 42.4114 44.9434 77.5909 57.3476 7.7477 73.4632 46.0893 82.0333 96.5045 70.2448 11.3399 997.2871 642.7757 642.7757 419.9316 33.243 258.6362 147.613 168.647 274.251 895.0634 109.9122 345.196 258.4943 0.0 349.2652 146.3467 224.4107 904.387;
	3.81 51.4811 87.9755 110.8477 15.3043 33.743 26.5 16.8369 27.7352 20.1994 37.3384 55.7015 83.8583 64.3749 140.0946 52.7798 65.4861 69.3957 84.6331 66.4213 8.8333 78.7336 50.0648 82.5567 98.5244 71.6229 12.2222 1129.0765 733.7262 733.7262 600.4494 47.1041 282.1104 170.9686 201.824 313.0565 999.748 162.3498 371.4797 263.9047 3.2767 374.3219 174.1175 252.4686 1010.1621;
	3.6596 49.4498 89.3975 114.1167 14.9453 32.7397 28.3756 17.7118 25.9275 9.7454 18.0142 26.8737 40.4582 62.2982 165.2215 62.2462 77.2314 81.8423 84.8172 67.2117 9.4585 76.3927 29.3593 84.9248 101.5779 73.7797 12.7149 1090.0896 669.7455 669.7455 543.3996 80.875 282.7242 173.0031 195.3134 285.7581 941.3609 199.029 353.8599 272.0837 0.1417 363.1929 201.6475 270.7911 951.1667;
	3.6638 49.5064 93.9413 117.9402 15.0415 34.0916 25.3333 18.6178 24.4141 7.2552 13.4112 20.0068 30.1202 62.8015 186.7827 70.3693 87.31 92.5226 85.8792 70.1781 8.4444 79.547 31.7384 88.3363 105.9187 74.8348 13.7653 1132.1822 689.7089 689.7089 645.3882 96.5436 286.2641 180.6386 196.8912 294.2758 988.7674 231.1442 349.8085 283.7108 108.6109 378.1892 193.7519 271.364 999.0671;
	3.7521 50.6993 94.2188 119.3122 15.234 35.0149 29.007 13.9171 25.9922 19.062 35.2358 52.5648 79.1361 64.1481 180.2495 67.9079 84.2561 89.2864 87.3452 67.4118 9.669 81.7015 49.6058 89.4942 106.2365 66.3754 12.8596 1289.0961 738.3383 738.3383 638.4041 111.1555 291.1507 173.5182 201.1131 315.0243 1117.9791 248.2036 430.7219 284.562 115.4537 388.4324 207.4674 279.634 1129.6247;
	3.7428 50.5736 94.5234 112.338 15.2723 34.9286 29.9065 9.1779 26.338 19.7926 36.5862 54.5795 82.1691 64.6282 189.7411 71.4838 88.6929 93.988 87.8057 67.6601 9.9688 81.5001 49.1396 43.9014 51.429 64.8706 11.7925 1308.1664 714.6472 714.6472 643.6472 105.9491 292.6858 174.1572 202.6181 304.9161 1104.3751 247.5305 436.779 137.7564 121.2059 387.4746 214.4624 251.9304 1115.879;
	3.8819 52.4534 94.8537 119.3851 14.9481 34.8058 29.1629 18.7914 15.9051 20.0466 37.0558 55.28 83.2238 66.8695 193.4117 72.8668 90.4087 95.8063 91.3009 69.9363 9.721 81.2136 44.2645 81.9767 104.0425 73.0125 13.861 1278.0742 757.5937 757.5937 712.8399 109.7137 304.3365 180.0162 209.6449 323.24 1108.4489 244.3626 419.7783 278.6853 117.2448 386.1128 214.1483 279.1704 1119.9952;
	3.9055 52.7718 94.6975 121.3354 14.8689 34.5704 29.2913 18.1327 0.0 20.5159 37.9232 56.574 85.1719 60.4241 190.8312 71.8946 89.2025 94.528 91.1237 71.4862 9.7638 80.6642 48.1543 87.529 105.5929 74.5233 13.8871 1341.4151 765.4685 765.4685 723.3764 114.8457 303.7457 184.0058 189.4378 326.5999 1176.6885 256.4414 389.3842 282.838 117.8642 383.5008 211.8988 254.2787 1188.9457;
	3.9314 53.1218 95.3704 120.8263 15.2649 35.0882 31.0669 18.3902 19.1291 18.615 34.4096 51.3324 77.2807 66.3629 195.9359 73.8177 91.5886 97.0566 90.6467 69.6162 10.3556 81.8725 48.726 86.8958 96.8146 75.9228 14.0138 1282.6731 773.6664 773.6664 716.6415 115.1373 302.1556 179.1922 208.0566 330.0976 1155.1381 252.3572 450.5965 259.3249 119.0143 389.2455 215.7935 270.137 1167.1708;
	3.9187 52.9496 94.9791 118.6913 15.044 35.0303 31.8657 18.6718 10.7532 17.0921 31.5944 47.1326 70.9579 66.478 202.2873 76.2106 94.5576 100.2028 91.5258 70.2803 10.6219 81.7374 47.6104 86.5407 105.7929 75.1891 13.9957 1291.6224 768.6218 768.6218 764.7145 113.3506 305.086 180.9016 208.4175 327.9453 1135.7038 261.5428 441.479 283.3739 121.4365 388.6027 211.726 271.4443 1147.534;
];
