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
	0.633 8.5538 58.2137 64.1914 7.4292 1.7609 0.003 8.9151 4.8203 18.4372 34.0809 50.842 76.5424 4.0724 160.62 60.5127 75.0805 79.5629 81.8963 71.6189 0.001 4.1088 65.7942 68.0052 49.6543 48.5999 4.4846 196.6856 320.811 320.811 230.129 48.8439 272.9877 184.3473 12.7676 136.8794 384.5607 84.6295 27.3542 133.0027 65.0135 19.5342 0.0 66.1664 388.5666;
	0.4722 6.3798 52.8476 63.1857 6.5336 4.1062 0.3023 11.7328 14.7499 11.239 20.7752 30.9925 46.659 6.9868 133.144 50.1612 62.2371 65.9527 74.7528 72.3714 0.1008 9.5811 32.6522 67.7024 51.764 49.2992 6.3339 63.2552 220.1641 220.1641 142.9559 30.1913 249.176 186.2842 21.9044 93.9367 287.8412 88.8574 52.3689 138.6536 78.4681 45.5511 0.0 80.1437 290.8396;
	0.2754 3.7216 54.6962 62.5247 5.4138 0.1888 0.0 11.0512 5.29 7.9215 14.6428 21.8442 32.8863 0.4593 82.0739 30.9209 38.3648 40.6552 63.8962 65.9838 0.0 0.4406 2.6541 68.3882 50.8983 54.2862 5.632 0.0518 26.2056 26.2056 10.0618 17.5695 212.9872 169.8425 1.4398 11.1811 165.261 8.8622 32.3588 136.3348 69.1525 2.0946 0.0 84.8454 166.9825;
	0.3649 4.9304 63.5549 73.1951 7.1944 0.2158 0.0019 13.2481 6.408 14.4527 26.7156 39.8544 60.0005 0.8096 97.0264 36.5541 45.3542 48.0619 49.8388 64.9255 0.0006 0.5036 46.0219 73.7158 56.3252 65.1915 7.2281 0.0 45.6459 45.6459 46.8495 20.5176 166.1295 167.1184 2.5383 19.4756 6.5941 15.87 15.8782 150.8711 64.5497 2.3944 1.3504 136.9742 6.6628;
	0.4561 6.1628 72.7979 72.3922 8.8002 0.9592 0.0 13.7934 4.7218 14.1127 26.0871 38.9168 58.589 1.7566 132.7964 50.0303 62.0746 65.7805 57.8179 67.0405 0.0 2.2382 42.9928 73.617 64.4063 69.3012 8.5292 15.5262 51.7041 51.7041 25.1414 10.5235 192.7263 172.5625 5.5072 22.0604 15.2412 11.3358 33.1775 172.5168 54.8367 10.6413 5.6966 152.356 15.4;
	0.4148 5.6053 66.9481 54.3592 7.6865 3.6993 0.0976 11.2213 2.9844 8.0274 14.8384 22.136 33.3257 8.8315 158.51 59.7177 74.0942 78.5178 83.3264 70.4016 0.0325 8.6318 28.4859 65.0815 44.7736 66.296 6.3335 16.3147 46.8364 46.8364 43.3912 9.116 277.7547 181.2139 27.6879 19.9835 27.3975 7.6761 11.9762 119.9293 42.3078 41.0379 22.5684 140.3252 27.6829;
	0.373 5.0403 51.0093 37.0658 8.4135 2.4462 3.5706 7.6017 6.112 5.693 10.5234 15.6989 23.6346 12.9965 124.4554 46.8878 58.1757 61.6488 63.3413 66.8001 1.1902 5.7078 0.0 44.166 26.4572 62.8671 3.2454 28.2863 61.7747 61.7747 27.9979 3.1575 211.1376 171.9436 40.7457 26.3572 44.9429 8.9876 77.5352 70.8676 18.6756 27.1363 27.9391 137.9252 45.4111;
	0.4134 5.5853 31.3521 26.1498 3.4169 2.2734 4.6672 6.3587 13.2691 3.9496 7.3007 10.8912 16.3967 18.2935 64.5682 24.3257 30.1819 31.9838 18.8838 46.8543 1.5557 5.3046 4.7278 26.9651 27.2923 55.419 3.8247 45.2878 51.2054 51.2054 67.9331 4.9381 62.9459 120.603 57.3527 21.8476 105.3372 14.0095 308.8303 73.1045 9.1049 25.2197 0.2973 100.8598 106.4344;
	0.5569 7.5244 27.1694 24.6109 4.0157 1.1359 14.0946 4.6204 23.2027 0.6485 1.1987 1.7883 2.6922 15.6465 12.1179 4.5654 5.6644 6.0026 0.5886 16.1387 4.6982 2.6504 2.9654 30.2294 22.0061 51.4517 3.356 2.7544 25.9271 25.9271 96.7298 22.1919 1.9619 41.5411 49.054 11.0622 24.446 60.8803 313.6379 58.945 0.1326 12.6006 6.4173 75.9411 24.7007;
	0.5591 7.5553 28.7484 24.2344 7.8316 0.3325 9.039 4.0306 15.3015 0.3679 0.6801 1.0146 1.5274 3.0814 6.0794 2.2904 2.8418 3.0114 0.3837 12.6229 3.013 0.7758 10.3483 29.725 22.2696 46.3477 2.978 42.2095 59.9483 59.9483 149.8796 21.3005 1.2791 32.4914 9.6605 25.5779 66.8607 40.8348 281.894 59.6508 0.1455 3.6883 49.349 78.8065 67.5572;
	0.7 9.459 39.1141 1.2457 11.2656 0.0 1.8505 3.0088 12.8809 0.4182 0.7731 1.1534 1.7364 2.2179 10.5558 3.9769 4.9342 5.2288 1.896 11.4738 0.6168 0.0 29.3226 41.1484 41.855 52.1989 1.2763 83.4856 54.5138 54.5138 7.5761 0.8016 6.3201 29.5336 6.9533 23.2592 55.7286 0.8253 16.4316 112.1117 0.337 0.0 0.3764 81.5467 56.3091;
	1.5088 20.3872 59.7091 1.8286 13.9251 0.0049 1.4969 0.0 10.1352 0.5992 1.1077 1.6524 2.4877 0.1418 26.9565 10.1557 12.6006 13.3529 9.4997 11.1734 0.499 0.0114 48.233 55.1598 0.0 49.5556 0.0 184.3431 77.0161 77.0161 13.5199 3.791 31.6656 28.7604 0.4447 32.8602 123.5144 1.7914 0.6217 0.0 15.1498 0.054 1.7097 121.0635 124.8011;
	2.2602 30.5403 79.8393 6.4371 14.6148 1.1293 0.0568 0.0 5.965 24.9193 46.063 68.7169 103.453 0.5758 32.9337 12.4076 15.3946 16.3137 1.0529 10.5283 0.0189 2.6351 34.9842 58.9172 54.884 56.3976 0.0003 236.7641 72.3468 72.3468 0.0 2.0256 3.5097 27.0998 1.8052 30.868 148.0738 0.0 0.8949 147.0108 48.3404 12.5281 100.2364 158.3953 149.6163;
	1.7251 23.3096 7.7733 25.3022 14.434 18.181 1.9866 0.0 19.0531 7.916 14.6326 21.829 32.8634 2.7485 13.407 5.051 6.267 6.6411 2.7163 10.2348 0.6622 42.4223 46.9629 0.7198 0.0 33.3142 0.0097 189.8459 159.031 159.031 0.0 5.9632 9.0544 26.3444 8.6169 67.8532 161.6427 6.2036 21.9336 0.0 7.0599 201.6875 71.3595 131.6541 163.3265;
	1.7765 24.0038 0.6871 4.5071 9.7257 0.0 0.0099 0.0 1.4478 2.7027 4.996 7.453 11.2205 10.4357 19.7182 7.4287 9.2171 9.7674 7.2715 47.9724 0.0033 0.0 30.2642 0.0 0.0 0.0017 0.0 266.9692 236.3733 236.3733 79.1242 8.2938 24.2385 123.4812 32.7173 100.8526 232.977 11.4615 0.0801 0.0 0.0 0.0 74.2832 100.9499 235.4038;
	3.0204 40.8126 82.8718 0.4014 13.9267 0.0 0.3363 0.0 5.6345 1.7289 3.1959 4.7677 7.1777 4.9673 14.656 5.5216 6.8508 7.2598 0.7331 5.2709 0.1121 0.0 47.8109 0.0573 0.0 0.0 0.0 381.2402 272.4651 272.4651 166.1017 14.2366 2.4438 13.5673 15.5731 116.2518 306.2378 40.2416 1.2568 0.0 0.0008 0.0 1.0168 174.0045 309.4278;
	3.4242 46.2681 4.0191 6.6289 14.1972 1.2104 8.5047 0.0 8.0256 2.1227 3.9238 5.8536 8.8126 10.1126 10.8239 4.0779 5.0596 5.3616 15.7028 4.0047 2.8349 2.8243 5.9424 0.7689 0.0022 0.098 0.0031 385.0833 371.2013 371.2013 176.7603 24.9204 52.3426 10.3082 31.7044 158.3792 456.6022 70.9268 116.6407 0.006 0.3772 13.4276 139.7539 216.7248 461.3585;
	2.5599 34.5893 0.1097 0.0557 13.7683 17.4932 0.1571 0.0 0.0012 0.3076 0.5686 0.8482 1.277 1.4811 10.8653 4.0934 5.0789 5.3821 5.4036 6.3229 0.0524 40.8174 14.1432 0.9406 0.0007 0.0 0.0 505.7433 450.7874 450.7874 259.0371 31.2284 18.0119 16.2752 4.6435 192.3359 509.7443 85.5095 0.0 0.0018 0.2991 194.0577 106.3092 213.7032 515.0542;
	2.8875 39.0166 83.7398 1.0452 14.2075 24.9205 1.6563 0.0 0.0 7.7624 14.3487 21.4055 32.2259 7.4757 16.7403 6.3068 7.8251 8.2923 4.2497 40.7383 0.5521 58.1478 4.1541 0.3069 0.2012 59.0459 0.0046 698.5032 445.7883 445.7883 305.2558 42.8099 14.1655 104.8606 23.4374 190.203 605.6087 69.9511 3.0355 0.5389 4.7109 276.4512 109.7735 197.2514 611.9171;
	2.896 39.1307 9.638 3.3013 14.199 8.8355 20.2272 0.0 26.4888 21.3486 39.4626 58.8705 88.6291 3.5097 18.3312 6.9062 8.5688 9.0803 7.9583 19.4788 6.7424 20.6162 55.5876 0.3292 0.268 51.4691 0.0485 693.6154 435.2687 435.2687 304.3088 40.2713 26.5277 50.1384 11.0033 185.7146 548.7426 69.9494 171.2372 0.7178 32.4746 98.0152 115.7941 183.6436 554.4586;
	3.0651 41.4165 88.2018 2.1279 14.0059 4.5656 7.191 0.0 26.5478 22.3914 41.3901 61.7458 92.958 8.0442 23.0236 8.674 10.7622 11.4047 12.352 27.9715 2.397 10.6531 67.0902 75.4479 0.0 51.6263 0.0213 623.2543 374.6265 374.6265 230.1613 55.9115 41.1733 71.9987 25.2196 159.8406 555.9713 74.0123 134.9695 0.0 3.5926 50.648 106.3157 177.3437 561.7627;
	3.567 48.1985 93.1525 9.7126 14.3286 23.5757 12.8424 13.0785 26.965 25.3604 46.8784 69.9333 105.2842 10.8352 7.7278 2.9114 3.6123 3.8279 21.525 45.9783 4.2808 55.01 57.7217 79.6622 96.2935 66.4363 5.9693 644.2947 302.1431 302.1431 183.8754 56.1495 71.75 118.3484 33.9698 128.9144 473.1794 95.7429 54.8481 257.9289 13.2726 261.5331 13.9805 201.6325 478.1084;
	3.6426 49.2189 93.5691 115.8691 13.7223 24.7615 14.1872 15.5881 26.7008 26.1205 48.2834 72.0293 108.4397 4.9928 56.2001 21.1731 26.2703 27.8387 37.8111 65.4382 4.7291 57.7769 66.758 86.9983 97.6702 69.6349 7.7624 726.0491 323.8097 323.8097 244.647 43.2311 126.0371 168.4381 15.653 138.1588 433.7866 88.7038 33.2359 261.6166 11.2123 274.688 136.2205 203.4453 438.3052;
	3.4298 46.3444 89.3582 110.2469 13.4614 14.9638 10.9451 16.4406 25.6893 26.2128 48.454 72.2838 108.8229 2.6507 44.8223 16.8866 20.9518 22.2027 21.5965 45.3095 3.6484 34.9155 58.8809 85.68 101.324 70.3739 7.2924 703.4778 365.3814 365.3814 252.203 49.7135 71.9882 116.6268 8.3102 155.896 440.7089 75.4988 275.5193 271.4037 11.1611 165.9983 132.2725 225.3495 445.2996;
];