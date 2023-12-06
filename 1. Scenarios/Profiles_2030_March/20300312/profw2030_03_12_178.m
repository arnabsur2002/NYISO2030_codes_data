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
	3.8372 51.849 91.5102 110.9581 15.1756 32.5405 29.3583 12.6649 27.804 28.2198 52.1638 77.8181 117.1547 63.8267 175.3204 66.051 81.9521 86.8448 70.8787 68.4688 9.7861 75.9278 70.7085 86.9626 98.7408 63.9487 9.6581 1105.7478 735.8601 735.8601 680.371 106.5705 236.2622 176.2387 200.1053 313.967 1064.1089 280.7494 454.9006 264.4843 114.9955 360.9826 200.9968 236.5702 1075.1933;
	3.8897 52.5588 90.3368 111.9661 15.385 34.3972 30.4567 12.6053 28.3244 25.9558 47.9789 71.5751 107.7559 65.188 180.5041 68.0039 84.3752 89.4125 69.2111 67.2575 10.1522 80.2602 69.7049 87.1469 99.5813 62.4786 9.1936 1142.256 766.7246 766.7246 696.0974 107.5279 230.7038 173.1209 204.3731 327.1358 1168.5136 250.7473 470.9391 266.7356 112.4668 381.5799 212.843 242.3025 1180.6856;
	3.8747 52.3557 90.7721 100.1283 15.1524 33.5832 26.0426 11.2505 27.3792 25.3596 46.8768 69.9309 105.2806 64.8197 171.7452 64.704 80.2809 85.0738 73.7589 66.9754 8.6809 78.3608 65.4125 86.6164 88.6736 57.5197 9.1568 1138.2423 740.0573 740.0573 623.0165 105.4723 245.863 172.3948 203.2184 315.7578 1074.0612 232.2895 454.2628 237.5185 111.9874 372.5498 192.1558 254.0184 1085.2493;
	3.7978 51.3165 87.6341 101.4171 14.9407 32.5099 20.6629 11.8449 25.9568 26.5085 49.0005 73.0992 110.0504 62.6782 174.6126 65.7843 81.6212 86.4942 83.7185 67.3976 6.8876 75.8564 66.7606 85.989 87.0995 53.874 8.0423 1083.0817 740.358 740.358 649.4549 105.0009 279.0618 173.4815 196.5047 315.8861 1064.0947 226.8919 411.8124 233.3023 108.3079 360.6429 187.7462 244.4049 1075.179;
	3.6504 49.3252 81.956 80.3122 14.5402 31.1165 17.905 9.3959 21.3776 25.4167 46.9824 70.0885 105.5179 62.5742 181.2033 68.2673 84.702 89.7589 84.4352 66.9829 5.9683 72.6052 63.2616 86.073 72.0829 48.5215 7.4664 1081.2553 733.0757 733.0757 647.1339 103.0062 281.4506 172.4142 196.1787 312.779 1019.5428 224.9149 336.3707 193.0793 100.9753 345.186 191.3195 213.8549 1030.163;
	3.6493 49.3101 77.4014 76.1142 14.2375 31.9288 17.364 7.623 23.3916 27.8878 51.5502 76.9028 115.7768 65.4464 180.6213 68.048 84.4299 89.4705 84.2462 67.1517 5.788 74.5005 58.2954 84.9585 58.5267 35.8764 5.945 1103.5999 721.4888 721.4888 601.5737 93.4415 280.8208 172.8486 205.1833 307.8352 1076.5904 193.7112 326.2541 156.768 94.5187 354.1964 189.3035 180.1862 1087.8049;
	3.5317 47.7213 66.444 59.7276 14.3783 29.675 14.7915 6.5681 16.896 27.3104 50.4829 75.3106 113.3797 69.3952 188.5615 71.0395 88.1416 93.4037 86.1986 70.4038 4.9305 69.2416 63.4468 80.3012 50.6979 25.7742 4.9256 1199.6386 697.6699 697.6699 528.0053 66.0967 287.3288 181.2196 217.5633 297.6725 1079.3073 183.6405 268.6748 135.7981 77.481 329.1945 164.7183 129.236 1090.5501;
	3.6468 49.2768 67.599 68.5324 14.5766 29.7151 16.2792 6.999 16.5884 22.6122 41.7984 62.3549 93.875 69.0906 183.693 69.2053 85.8658 90.9921 87.5461 67.7554 5.4264 69.3352 36.2374 83.8787 62.4379 18.2316 4.2185 1251.483 745.9713 745.9713 634.0457 69.2444 291.8204 174.4026 216.6085 318.2811 1120.5498 201.6216 245.8395 167.2444 82.151 329.6392 158.5661 137.928 1132.2222;
	2.8945 39.1106 59.4156 66.7956 14.6799 24.3503 14.9917 5.3593 19.7336 20.8392 38.521 57.4658 86.5144 67.708 172.9755 65.1675 80.856 85.6832 85.7215 66.11 4.9972 56.8174 39.9585 83.0483 61.1579 11.8801 3.2929 1189.2402 795.3675 795.3675 733.8287 87.0385 285.7383 170.1673 212.2737 339.3568 1119.4563 229.5935 241.1409 163.8159 48.2593 270.1261 142.6936 150.7221 1131.1173;
	2.6504 35.8129 47.3414 62.9368 14.7014 19.252 19.4511 2.5292 20.9895 17.697 32.7126 48.8007 73.4692 68.6758 166.9642 62.9028 78.0461 82.7055 84.8407 67.764 6.4837 44.9213 35.4815 66.6933 37.0182 4.9007 1.4874 1151.4333 800.6593 800.6593 749.7257 109.2098 282.8024 174.4248 215.308 341.6146 1116.1474 226.9184 380.7381 99.156 38.6343 213.5686 126.8434 122.7489 1127.7739;
	2.2976 31.0453 37.3147 49.4469 14.0856 15.558 19.6367 1.4205 20.2712 15.428 28.5185 42.544 64.0497 69.1063 162.2817 61.1387 75.8573 80.386 84.7222 72.8349 6.5456 36.3021 34.7609 55.5576 25.8197 2.6986 3.519 1159.0882 827.4215 827.4215 737.6691 106.4302 282.4073 187.4771 216.6576 353.0332 1109.0699 222.1096 429.4787 69.1599 31.6575 172.5904 93.3331 89.3902 1120.6227;
	1.519 20.5254 27.6351 28.5315 10.402 10.9751 20.2373 1.5002 18.079 14.7447 27.2554 40.6597 61.2129 67.7685 163.662 61.6587 76.5025 81.0698 83.8103 73.5277 6.7458 25.6085 40.8307 38.6441 20.9313 5.5171 4.7192 1047.8784 739.421 739.421 647.0856 105.047 279.3678 189.2605 212.4632 315.4863 992.0891 187.4189 427.6163 56.0661 21.5035 121.7503 66.2032 68.5805 1002.4233;
	1.0826 14.6289 25.9935 29.0169 9.6061 9.2839 19.2233 2.2144 16.9328 13.4024 24.7742 36.9582 55.6404 64.4082 169.9163 64.015 79.426 84.1678 85.2525 71.3834 6.4078 21.6625 38.9678 39.0067 23.7755 8.8295 2.5782 1082.0688 780.7295 780.7295 671.2485 104.3225 284.1749 183.7409 201.9283 333.1113 1055.7963 200.9224 442.5773 63.6843 27.5192 102.9896 51.7056 43.8253 1066.7942;
	0.7877 10.644 23.6233 34.0148 7.9459 9.1598 14.1427 2.7143 14.7016 16.7866 31.0298 46.2904 69.69 66.9167 175.7101 66.1978 82.1343 87.0378 86.7611 70.5927 4.7142 21.3728 49.1295 40.5495 26.3975 9.0972 3.8455 1020.4108 767.9952 767.9952 707.6436 101.1437 289.2037 181.7057 209.7928 327.6779 902.6381 202.3429 434.596 70.7076 26.8592 101.6123 38.1999 47.1276 912.0406;
	0.8107 10.9548 23.8723 62.0274 6.8771 8.9385 12.4329 2.0339 13.9305 15.0729 27.862 41.5646 62.5753 65.2315 171.7406 64.7023 80.2787 85.0715 78.7149 70.8846 4.1443 20.8566 28.7049 49.6531 25.922 6.3635 3.4955 905.5904 696.2685 696.2685 643.6439 91.0736 262.3829 182.457 204.5096 297.0746 840.6024 193.4381 357.4333 69.434 30.2584 99.1582 33.833 50.0792 849.3587;
	0.8591 11.6081 18.3324 30.539 7.6802 9.6761 7.0993 1.4838 11.9252 12.2866 22.7116 33.8813 51.0081 62.3463 173.1476 65.2324 80.9365 85.7685 81.1643 69.7071 2.3664 22.5775 43.637 47.0063 24.8601 3.901 2.5124 835.5394 600.4786 600.4786 581.1269 84.441 270.5476 179.4263 195.464 256.2042 640.7399 183.0005 245.0633 66.5896 30.1661 107.3398 0.7188 24.4047 647.4143;
	0.5652 7.6376 17.7992 15.2778 5.8635 4.3912 4.1148 1.5997 11.4562 14.8182 27.3913 40.8624 61.5181 62.2929 176.5224 66.5038 82.514 87.4402 83.2821 66.9997 1.3716 10.2461 45.7038 41.6869 13.885 6.2211 1.7377 772.2556 554.0986 554.0986 580.9716 80.7321 277.6072 172.4574 195.2966 236.4154 715.0966 183.5855 229.6362 37.192 32.5039 48.7129 2.1749 10.7438 722.5455;
	1.069 14.4439 0.5094 6.9305 2.3343 2.5534 11.734 0.1322 3.3298 19.6164 36.2606 54.0937 81.4378 63.238 130.3152 49.0955 60.9148 64.5515 81.2367 56.8223 3.9113 5.9579 64.9475 31.4071 9.9871 2.0817 1.5137 775.9791 545.9229 545.9229 619.4797 90.349 270.789 146.2608 198.2595 232.9271 728.3834 204.1576 334.4785 26.7512 63.7759 28.3255 2.5236 3.7114 735.9707;
	0.5097 6.8871 24.2138 40.0229 0.9359 4.1942 0.5439 1.8387 1.9156 23.2481 42.9737 64.1083 96.5147 60.3794 120.2367 45.2985 56.2036 59.5591 11.7445 63.9402 0.1813 9.7865 69.545 46.0514 19.448 6.5213 2.0753 833.5755 511.7506 511.7506 611.9954 86.8221 39.1485 164.5822 189.2975 218.3469 673.5382 196.6554 319.7406 52.0927 86.8892 46.5279 5.6876 11.4329 680.5543;
	0.3657 4.9415 28.3856 53.8874 2.3159 4.3981 4.1749 3.1632 3.9205 26.5732 49.1201 73.2776 110.319 63.0237 112.9305 42.5459 52.7885 55.94 57.6023 68.8837 1.3916 10.2623 69.3801 62.5168 28.7624 16.9471 2.884 690.2804 365.7139 365.7139 611.2671 72.3892 192.0078 177.3069 197.5877 156.0379 569.568 201.5805 63.3533 77.0421 87.6045 48.7901 6.7298 0.1152 575.501;
	0.6955 9.3977 39.4915 70.3957 4.9497 0.1913 1.1361 3.9975 0.8001 26.6054 49.1797 73.3665 110.4528 53.5081 119.0641 44.8567 55.6555 58.9783 82.5223 70.066 0.3787 0.4464 71.1848 69.249 27.8135 12.2317 2.1361 569.9539 338.7106 338.7106 496.7615 51.1075 275.0743 180.3501 167.755 144.5165 598.0026 174.3731 14.6351 74.5006 95.4861 2.1222 0.0786 38.423 604.2318;
	0.478 6.4586 41.5047 64.9669 0.2702 0.2095 3.3885 2.1675 3.3869 25.0485 46.3017 69.0731 103.9891 40.2773 139.3534 52.5006 65.1396 69.0285 81.544 70.6546 1.1295 0.4889 70.1135 66.1769 29.9413 11.3534 1.175 414.385 344.8095 344.8095 454.6605 50.1899 271.8135 181.8651 126.2748 147.1187 642.9479 155.8656 89.9014 80.1998 72.7432 2.3242 0.0061 31.9218 649.6453;
	0.5919 7.9983 41.3766 66.0919 6.7874 3.2937 0.9833 3.3478 3.7386 20.2918 37.5091 55.9562 84.2418 20.5695 152.1536 57.323 71.123 75.3691 83.9605 73.2209 0.3278 7.6852 47.6388 64.386 33.41 28.0932 1.7246 364.0631 364.7505 364.7505 481.3522 48.1071 279.8682 188.4708 64.4883 155.6269 485.9075 136.795 80.3428 89.491 55.5064 36.5378 0.7935 1.1844 490.969;
	0.0648 0.8753 51.4458 72.0124 1.5508 4.5842 5.4321 6.1248 4.4448 24.4345 45.1668 67.3799 101.4401 7.5975 167.7241 63.1891 78.4013 83.0819 89.5252 71.7724 1.8107 10.6964 70.1639 72.9734 44.8542 32.5757 3.2229 277.5997 289.4158 289.4158 357.0313 46.2406 298.4175 184.7424 23.8191 123.4841 352.707 106.5064 39.8317 120.1452 55.5662 50.8539 15.8463 58.4448 356.381;
];
