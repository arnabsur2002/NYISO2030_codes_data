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
	3.8874 52.5273 90.4189 112.4547 15.0388 33.4736 31.6867 18.325 10.9009 18.0623 33.3879 49.8081 74.9859 50.3361 205.8991 77.5713 96.2459 101.9919 91.6037 72.4764 10.5622 78.1051 26.5512 89.0698 103.8059 75.9952 13.9271 1229.8658 778.0092 778.0092 749.0711 112.4834 305.3456 186.5544 157.8105 331.9506 1076.3155 272.7793 457.8187 278.0516 115.7518 371.3341 207.0719 275.1031 1087.5271;
	3.9092 52.8218 90.2322 110.9561 15.2893 34.1933 32.1192 17.847 12.3898 15.5188 28.6862 42.7942 64.4264 63.9207 202.4705 76.2796 94.6432 100.2935 90.239 73.2043 10.7064 79.7845 29.1825 84.267 99.7007 74.8396 13.299 1223.7999 757.9947 757.9947 750.629 112.4783 300.7966 188.4282 200.4 323.4111 1139.9927 254.4171 470.2655 267.0554 116.9866 379.3182 210.3904 274.0405 1151.8676;
	3.8037 51.397 88.676 108.9743 15.2204 33.4912 31.6593 17.5901 21.9298 15.5184 28.6855 42.7931 64.4247 58.4531 182.2154 68.6486 85.1751 90.2602 88.7814 70.4831 10.5531 78.1462 28.6994 85.4587 100.2758 72.5788 13.0762 1206.4308 755.2538 755.2538 709.3903 112.045 295.9381 181.4236 183.2584 322.2416 1201.7442 270.61 447.1563 268.5959 116.8496 371.5295 203.796 262.6267 1214.2624;
	3.7982 51.3218 90.308 113.3197 15.3384 32.6474 32.0031 17.9319 28.3256 29.7273 54.9505 81.9753 123.4134 65.2417 199.5813 75.1911 93.2926 98.8623 89.506 69.1084 10.6677 76.1772 28.3562 87.6462 101.1545 72.1954 13.3181 1236.5827 774.453 774.453 731.1605 112.1231 298.3533 177.8853 204.5416 330.4333 1191.8976 282.8645 456.4939 270.9495 117.2813 362.168 175.4285 263.2214 1204.3132;
	3.2878 44.4249 93.3892 116.0497 15.3447 30.5097 31.5796 18.6094 28.2347 29.025 53.6523 80.0386 120.4977 63.3029 197.7058 74.4845 92.416 97.9334 85.3898 67.2585 10.5265 71.1893 71.0439 88.8182 103.5961 72.9713 13.831 1259.5465 757.574 757.574 695.6367 111.3403 284.6327 173.1236 198.4632 323.2316 1146.2651 293.4691 449.3018 277.4896 117.3883 338.454 172.82 268.4133 1158.2054;
	3.6932 49.9029 91.0116 112.8464 14.8733 31.2252 18.729 18.9248 26.342 27.218 50.312 75.0556 112.9958 46.3957 199.4371 75.1368 93.2252 98.7909 56.5597 68.4818 6.243 72.8589 59.809 86.6923 103.8216 73.905 13.9725 1170.611 765.9858 765.9858 680.3037 111.2237 188.5325 176.2724 145.4569 326.8206 1128.5875 276.7634 440.1998 278.0935 116.2952 346.3918 143.4256 265.8604 1140.3437;
	3.7355 50.4745 93.2504 114.7546 14.8661 32.8948 13.3098 19.0148 26.3751 29.3334 54.2223 80.8891 121.778 61.4453 200.9678 75.7135 93.9408 99.5492 87.1346 72.0811 4.4366 76.7546 65.3008 88.1195 105.6769 73.9236 14.0063 1242.4938 788.3733 788.3733 699.0275 108.323 290.4487 185.5369 192.6392 336.3726 1143.2233 279.1873 397.1409 283.0632 119.4819 364.9132 164.6343 276.4233 1155.1319;
	3.6244 48.9736 92.7249 114.2962 14.2748 32.2365 1.0745 19.1619 7.2766 28.1813 52.0927 77.7121 116.9951 34.3317 200.5985 75.5743 93.7681 99.3662 81.7755 71.5134 0.3582 75.2186 66.4066 87.7179 104.4643 74.8145 14.1175 1233.3794 752.4765 752.4765 611.5998 105.1983 272.5851 184.0757 107.6346 321.0566 1140.3097 254.3029 150.0017 279.815 120.3823 357.6105 194.2511 281.8068 1152.1879;
	3.6124 48.812 89.9446 111.1558 14.0161 29.6514 0.616 18.3198 2.9599 28.351 52.4065 78.1801 117.6997 25.4807 195.9492 73.8227 91.5949 97.0632 83.7659 72.1046 0.2053 69.1866 67.5408 85.2602 100.4624 71.7144 13.7158 1121.6547 665.7711 665.7711 615.9072 107.3055 279.2197 185.5975 79.8856 284.0624 981.4616 263.1448 0.0 269.0957 118.8209 328.9328 175.804 277.8622 991.6851;
	3.8431 51.9287 91.1624 117.778 14.8524 30.7709 2.2688 18.5551 9.2205 25.3755 46.9061 69.9747 105.3466 19.6804 202.7617 76.3893 94.7793 100.4378 89.3247 73.1249 0.7563 71.7987 35.9982 85.8644 99.4653 74.0124 13.4211 929.0924 588.8823 588.8823 523.2598 111.4912 297.7488 188.2236 61.7007 251.2565 768.195 236.8873 0.0022 266.4248 119.8246 341.3517 163.4473 284.4244 776.197;
	3.6763 49.6752 93.5772 118.0511 14.985 26.5891 0.3501 18.7751 9.7102 28.437 52.5653 78.4172 118.0566 0.5459 203.6574 76.7267 95.198 100.8815 84.9962 73.3642 0.1167 62.0412 69.2468 87.4187 103.4207 73.8529 13.9096 790.1596 646.0404 646.0404 481.7683 113.9674 283.3208 188.8397 1.7116 275.6439 722.5226 191.9549 0.0 277.0198 121.7106 294.9614 148.0093 285.5908 730.0488;
	3.6189 48.8986 91.7289 115.3361 14.8476 19.9848 1.8579 18.1493 12.8805 27.322 50.5043 75.3425 113.4278 1.5365 205.2987 77.3451 95.9652 101.6945 41.7628 73.5868 0.6193 46.6311 70.9285 85.6719 100.0754 72.759 13.2353 542.2732 694.6917 694.6917 480.1333 108.4204 139.2093 189.4125 4.8171 296.4018 772.5591 197.9861 0.0 268.0591 121.0867 221.6977 142.7354 286.5291 780.6066;
	3.8636 52.2051 92.7806 117.2962 14.7955 22.5436 6.2968 18.6619 26.3904 23.4244 43.2996 64.5945 97.2467 48.8616 199.9542 75.3316 93.467 99.0471 57.3084 71.7053 2.0989 52.6017 69.0642 85.0588 102.5687 74.282 13.5789 606.0643 711.8487 711.8487 523.3906 111.1086 191.0279 184.5696 153.1879 303.7221 614.8557 214.8016 1.3255 274.7376 120.9879 250.0834 148.8458 283.9144 621.2605;
	3.7858 51.1544 91.3146 115.5414 14.7782 21.2634 0.3674 18.1015 19.2294 21.0997 39.0024 58.1839 87.5956 36.1977 203.7704 76.7693 95.2508 100.9374 57.379 72.4853 0.1225 49.6145 63.6326 84.6403 98.8059 73.2902 13.1368 518.1379 659.5423 659.5423 459.4117 97.8658 191.2634 186.5775 113.4846 281.4047 664.8713 216.6678 15.7964 264.6587 119.7159 235.8816 159.3012 282.5102 671.797;
	3.8525 52.0561 92.0206 113.5621 15.1485 20.7823 4.4353 18.886 16.6432 25.9634 47.9929 71.5959 107.7872 31.7292 204.2229 76.9398 95.4623 101.1616 73.2805 72.7739 1.4784 48.4921 70.5666 87.0871 100.7949 73.5059 13.5857 365.7537 673.2615 673.2615 457.1167 91.1313 244.2683 187.3202 99.4753 287.2582 595.7878 228.6284 57.1888 269.9863 117.8106 230.5452 174.2005 257.8723 601.9939;
	3.5876 48.4761 91.2495 117.5367 14.9229 11.5614 4.458 18.5613 18.6561 28.3285 52.3649 78.1181 117.6063 25.7902 195.7849 73.7608 91.5181 96.9818 65.3553 70.3498 1.486 26.9767 69.5367 87.7271 102.8239 74.4639 13.5204 462.787 556.7071 556.7071 410.4715 94.6361 217.8509 181.0805 80.8558 237.5283 529.8034 213.676 22.4779 275.4213 121.6499 128.255 167.0583 257.2745 535.3222;
	3.3336 45.0447 86.9164 110.6645 14.5077 18.029 3.4026 18.2058 14.2372 28.1672 52.0667 77.6733 116.9367 35.0647 193.7771 73.0044 90.5795 95.9872 62.6995 70.0406 1.1342 42.0677 70.2069 85.1901 100.4043 72.7927 13.4648 1048.6458 474.6887 474.6887 296.3539 94.2054 208.9985 180.2848 109.9327 202.5338 898.0465 217.5506 113.7869 268.9401 117.8804 200.0017 136.6499 247.016 907.4011;
	3.0653 41.4193 88.4409 109.9072 14.8872 21.4507 2.9984 18.0127 5.637 29.6102 54.734 81.6524 122.9273 58.7581 196.1711 73.9063 91.6986 97.1731 76.3169 70.2228 0.9995 50.0516 73.2158 87.041 100.0182 74.3163 13.814 1194.4595 582.0088 582.0088 210.9562 72.758 254.3895 180.7536 184.2146 248.3238 1065.5632 196.9023 130.1289 267.9058 122.6384 237.9598 181.1028 274.9295 1076.6628;
	2.2695 30.6656 90.9608 110.7853 14.4714 32.9911 3.0599 18.4522 3.465 26.3625 48.7308 72.6967 109.4445 62.2262 193.6219 72.9459 90.507 95.9104 56.3442 70.4327 1.02 76.9792 56.9454 88.6966 102.2998 76.2042 13.8925 1212.0001 694.7446 694.7446 304.2217 61.9912 187.8138 181.294 195.0877 296.4244 1223.8819 131.6416 235.6323 274.0174 124.0126 365.9813 166.8186 284.135 1236.6307;
	3.7994 51.3388 93.8029 84.729 15.1112 34.6617 11.5395 18.892 11.0626 18.7107 34.5865 51.5962 77.6778 66.8458 205.8873 77.5668 96.2403 101.986 47.8431 73.7591 3.8465 80.8774 49.8017 89.8856 105.9537 76.672 14.1213 1275.4078 761.1325 761.1325 388.9282 59.0157 159.4771 189.8562 209.5706 324.7499 1241.4491 116.6354 105.4294 283.8045 123.9888 384.5143 196.7055 285.0353 1254.3809;
	3.8271 51.712 93.6997 116.4363 15.27 34.8537 6.621 18.7348 12.2041 18.9173 34.9684 52.1659 78.5355 65.4617 205.0422 77.2485 95.8453 101.5674 73.1442 73.398 2.207 81.3252 73.1339 87.8868 102.96 75.9333 13.9022 1256.641 684.5184 684.5184 592.5409 53.4519 243.8141 188.9266 205.2312 292.0612 1252.3307 160.3503 22.581 275.7856 122.8933 386.6434 197.6522 284.686 1265.3758;
	3.8734 52.3379 95.157 118.6059 15.4137 34.9781 8.3929 18.7223 28.0108 30.9737 57.2544 85.4123 128.5878 67.418 205.4866 77.4159 96.053 101.7875 77.478 72.2305 2.7976 81.6156 74.7175 90.1396 106.3911 75.562 14.1159 1279.9917 707.7807 707.7807 526.9414 79.5809 258.2601 185.9215 211.3646 301.9865 1277.369 218.598 430.6623 284.9761 123.47 388.0238 210.6877 285.0 1290.675;
	3.9207 52.9777 94.396 118.1022 15.3535 34.6396 9.9713 18.676 28.4307 31.1414 57.5643 85.8746 129.2838 69.1164 203.2996 76.5919 95.0308 100.7042 74.969 71.2529 3.3238 80.8257 73.2247 89.529 104.6439 74.1647 13.9064 1282.7279 769.1494 769.1494 561.2578 111.9887 249.8966 183.4051 216.6892 328.1704 1258.0699 226.3089 457.9171 280.2963 121.7993 384.2686 212.4215 281.3186 1271.1748;
	3.9312 53.1188 95.0137 118.1669 15.3467 34.974 30.1394 18.2332 27.9733 29.3169 54.1918 80.8435 121.7094 69.5559 195.057 73.4866 91.1778 96.6212 78.1141 71.2918 10.0465 81.6061 74.5164 89.4532 105.4626 72.347 13.846 1261.7752 761.1609 761.1609 583.1907 116.6753 260.3803 183.5052 218.0672 324.762 1232.7245 234.6379 458.7 282.489 120.1191 387.9786 209.0178 282.8838 1245.5654;
];
