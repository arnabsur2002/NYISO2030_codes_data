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
	3.6277 49.0179 87.9737 116.3263 14.7319 14.1856 14.7697 16.5839 26.6635 24.6881 45.6357 68.0794 102.4932 5.9406 13.173 4.9628 6.1576 6.5252 10.8178 24.9312 4.9232 33.0998 50.894 86.1936 99.3603 71.2105 6.6779 684.1689 405.8533 405.8533 205.8599 36.9593 36.0595 64.173 18.6246 173.1641 513.0561 52.176 297.1853 266.1436 15.3047 157.3657 120.0442 227.3607 518.4004;
	3.5491 47.9561 90.1762 117.0637 14.6367 16.0686 13.5774 16.4941 26.8035 23.7606 43.9211 65.5217 98.6425 4.7462 9.4064 3.5438 4.397 4.6595 8.7291 12.522 4.5258 37.4933 61.1115 86.9691 102.6413 73.2427 6.5501 673.2754 382.6953 382.6953 175.9456 34.0075 29.0971 32.2316 14.88 163.2833 486.1055 52.6552 287.824 274.9319 14.7381 178.2538 117.6947 232.2574 491.1691;
	3.391 45.8195 89.8106 115.1972 14.516 12.9072 12.6746 17.1639 27.9723 24.2409 44.8089 66.8461 100.6365 6.2663 8.8449 3.3323 4.1345 4.3813 14.8719 20.5127 4.2249 30.1168 63.0121 87.6938 101.9281 73.2357 7.7744 615.2078 343.1626 343.1626 151.057 33.5007 49.573 52.7997 19.6458 146.416 402.3299 38.5632 235.1386 273.0217 46.3369 143.1837 92.8442 222.8447 406.5209;
	3.0957 41.8291 93.64 118.5871 14.5375 13.307 11.5782 17.4074 27.5294 24.3467 45.0045 67.1379 101.0758 9.4061 6.2572 2.3574 2.9249 3.0995 8.0509 21.4149 3.8594 31.0498 66.8141 89.463 105.4468 75.4249 9.4546 479.8712 275.8535 275.8535 154.6591 28.0084 26.8363 55.1219 29.4896 117.6975 315.9512 30.2915 179.6072 282.4468 15.6022 147.6195 89.4176 234.253 319.2424;
	2.4316 32.8559 93.9143 117.4359 14.5171 15.2767 9.8386 17.0901 18.046 23.008 42.53 63.4463 95.5181 11.9705 12.4453 4.6887 5.8174 6.1647 19.1451 23.5199 3.2795 35.6456 60.9794 88.9641 105.5032 74.7238 9.0405 333.8484 209.0176 209.0176 131.0728 25.6937 63.8171 60.5403 37.5293 89.1808 190.5126 29.1362 155.5356 282.5977 12.5424 169.4692 94.2056 235.5804 192.4971;
	3.2058 43.3175 94.6435 118.9998 14.4758 24.5635 11.2837 17.3403 12.2732 21.884 40.4522 60.3467 90.8516 24.4633 13.6702 5.1502 6.39 6.7715 25.1012 24.1978 3.7612 57.3148 66.6432 88.3847 103.6147 74.2467 7.7685 314.3302 195.9649 195.9649 125.5871 24.7995 83.6708 62.2852 76.6959 83.6117 171.2994 31.5101 173.7775 277.5395 14.1175 272.491 103.7586 224.4816 173.0838;
	2.7959 37.7781 94.5249 119.4751 14.6037 25.1665 12.6916 16.2313 13.9865 27.9582 51.6803 77.0969 116.069 38.574 24.81 9.347 11.5972 12.2896 34.3996 35.4492 4.2305 58.7217 73.4221 88.7967 104.7522 75.4826 10.1774 252.9672 216.0774 216.0774 102.9741 13.9183 114.6655 91.2463 120.9347 92.193 190.0809 20.4756 148.4502 280.5863 13.3765 279.18 110.9069 247.5902 192.0609;
	1.9636 26.5329 76.5398 118.7017 14.9391 22.3937 12.691 17.3915 20.666 30.1087 55.6556 83.0271 124.9969 41.509 30.9378 11.6557 14.4616 15.325 48.8252 59.0162 4.2303 52.2519 75.77 85.4611 102.8786 75.5748 12.0101 156.7422 178.4205 178.4205 102.0698 9.1405 162.7506 151.9078 130.1362 76.1261 138.7561 20.8666 164.0545 275.5677 10.9931 248.4205 102.9289 210.2831 140.2015;
	2.6125 35.3001 87.6923 107.3765 14.2864 25.3731 10.6624 16.037 21.3291 29.5352 54.5953 81.4455 122.6157 42.4475 25.4329 9.5817 11.8884 12.5982 60.8051 57.9122 3.5541 59.204 75.5517 84.7653 100.3288 73.4729 11.0096 122.8091 143.3518 143.3518 92.0004 6.4649 202.6837 149.0662 133.0788 61.1634 120.1766 17.4433 124.1168 268.7379 18.1712 281.4727 83.9792 219.8075 121.4284;
	2.0813 28.1225 91.0056 116.8963 13.9581 15.2917 10.194 16.7364 26.4324 29.6355 54.7807 81.7221 123.0321 47.5381 47.3488 17.8384 22.1328 23.4542 67.9565 47.6594 3.398 35.6806 75.5888 87.2778 104.235 74.3705 11.285 240.8289 228.3406 228.3406 103.9151 7.5898 226.5218 122.6755 149.0384 97.4253 223.506 21.4951 92.2599 279.2008 5.5347 169.6357 86.3274 220.4246 225.8342;
	1.623 21.9306 83.5272 108.2044 12.7801 26.3066 13.3908 15.6409 26.6525 29.1738 53.9274 80.449 121.1156 56.7655 15.0383 5.6656 7.0295 7.4492 64.2061 37.3469 4.4636 61.382 74.282 83.0704 97.5145 71.0708 10.4711 347.6523 311.9328 311.9328 167.3797 12.4064 214.0204 96.1311 177.9674 133.0913 338.1619 25.8643 161.5189 261.1996 0.3614 291.8274 95.2617 189.1442 341.6844;
	1.508 20.3759 85.4527 93.361 11.5443 28.7576 18.0887 16.5217 26.927 28.1812 52.0926 77.7119 116.9948 53.5262 9.0254 3.4003 4.2188 4.4707 71.7621 51.8749 6.0296 67.1011 74.727 82.4991 98.1622 71.3675 11.2208 357.0867 345.3815 345.3815 260.9869 14.5389 239.2069 133.5261 167.812 147.3628 402.1187 34.5338 185.0956 262.9346 0.638 319.018 97.9297 176.5378 406.3074;
	2.8156 38.0448 88.7767 90.5469 13.4837 31.6305 19.6132 15.383 28.1806 28.7364 53.1189 79.2429 119.2998 58.1242 42.5292 16.0226 19.88 21.0668 83.5259 65.2035 6.5377 73.8046 73.8898 83.25 97.3315 69.0213 9.5054 599.4488 449.33 449.33 314.2452 24.1245 278.4198 167.8339 182.2272 191.7141 600.0056 55.7648 213.8022 260.7093 2.6748 350.888 128.1515 206.3992 606.2556;
	3.5243 47.6214 89.2229 106.2237 14.2585 29.6054 21.6724 15.7246 28.3604 30.388 56.1717 83.7972 126.1562 57.8573 61.1954 23.055 28.6053 30.3131 87.7746 62.48 7.2241 69.0792 71.3107 86.4602 96.9653 69.8768 9.9089 755.545 588.9747 588.9747 399.1268 27.984 292.582 160.8236 181.3904 251.2959 736.2198 73.0874 292.6346 259.7284 1.4659 328.4221 123.1336 255.5021 743.8888;
	3.7787 51.0584 90.4912 109.6806 14.9697 33.1228 26.8773 17.2007 28.4976 25.5314 47.1944 70.4047 105.9939 66.4217 86.4664 32.5757 40.418 42.831 86.6374 56.5374 8.9591 77.2866 47.5164 87.2522 98.0963 68.6207 12.3731 1017.5368 676.3111 676.3111 511.9509 36.3639 288.7913 145.5275 208.2409 288.5594 982.2831 109.8928 445.3924 262.7581 16.9997 367.4425 156.2005 256.8578 992.5152;
	3.8058 51.4245 94.0423 113.4375 15.1361 33.2259 27.8679 17.651 28.4706 21.5477 39.8305 59.4193 89.4554 68.059 108.7998 40.9897 50.8576 53.8939 86.4736 61.8224 9.2893 77.5272 44.222 87.4751 100.2042 70.799 12.2142 1028.359 738.7083 738.7083 686.2186 45.2914 288.2452 159.131 213.3741 315.1822 1019.3407 158.227 410.1219 268.4042 11.2964 368.5863 160.8531 268.9735 1029.9588;
	3.8058 51.4243 94.339 117.8644 15.3378 34.3114 29.7348 18.3891 28.3508 20.1522 37.2511 55.5713 83.6623 66.3791 152.416 57.4218 71.2456 75.4991 88.6346 68.6483 9.9116 80.06 32.14 88.309 102.2066 74.6577 12.4455 1031.9313 768.6234 768.6234 765.8276 82.0279 295.4487 176.7008 208.1074 327.946 1061.4397 213.2152 433.73 273.7676 10.1591 380.6283 203.4922 283.1543 1072.4964;
	3.8639 52.2097 95.0237 118.3642 15.3307 34.626 28.8267 18.4598 28.3773 18.5031 34.2027 51.0238 76.816 67.3354 177.667 66.935 83.049 88.0071 89.3445 69.3696 9.6089 80.794 37.951 89.0235 105.4429 75.0918 13.2154 1082.7899 782.6859 782.6859 760.2641 98.1835 297.8148 178.5575 211.1057 333.946 1044.8513 242.942 451.2976 282.4364 115.9107 384.1175 198.9644 280.2569 1055.7351;
	3.7209 50.2781 90.31 116.7111 15.3875 34.3044 29.2525 13.2572 27.4738 20.4617 37.8232 56.4248 84.9472 66.1983 185.8991 70.0364 86.897 92.0849 88.8836 67.7958 9.7508 80.0437 53.2215 86.2588 105.1329 67.5188 12.6968 1123.2436 776.2706 776.2706 688.4621 103.8856 296.2786 174.5066 207.5406 331.2088 1007.4012 237.5982 446.4112 281.6059 119.2126 380.5505 194.1498 273.9553 1017.895;
	3.634 49.1039 91.5572 110.2888 15.1819 33.6288 30.4493 9.2589 26.6997 20.3507 37.618 56.1187 84.4864 63.5986 201.4845 75.9081 94.1823 99.8051 88.8232 69.9437 10.1498 78.4672 52.8636 41.9778 51.3989 67.8288 11.3211 1125.4649 774.016 774.016 713.8591 106.0583 296.0773 180.0352 199.3903 330.2468 1049.8236 259.3383 456.0514 137.6757 121.5718 373.0555 195.9249 239.2265 1060.7592;
	3.6342 49.1063 92.3837 118.8886 14.9088 33.8361 30.3922 18.9496 17.0762 19.5703 36.1753 53.9665 81.2463 64.1299 203.0001 76.4791 94.8907 100.5558 86.726 72.6376 10.1307 78.9509 41.9666 83.5784 106.2182 76.0781 13.94 1141.1121 764.8535 764.8535 690.2988 106.391 289.0866 186.9694 201.0559 326.3375 998.4496 259.854 452.0919 284.5131 122.6768 375.3552 200.9757 267.964 1008.8501;
	3.6413 49.2013 91.7051 119.9474 14.7729 34.2023 30.4524 18.9286 9.2504 18.9536 35.0355 52.2661 78.6863 59.8843 188.5131 71.0212 88.1189 93.3797 84.8202 70.2376 10.1508 79.8055 40.9166 89.2734 105.7133 75.2977 14.0226 1169.8404 738.0589 738.0589 677.9927 108.4678 282.734 180.7918 187.7455 314.9051 1044.6112 256.5358 447.1858 283.1607 123.207 379.4179 183.3884 239.2665 1055.4926;
	3.648 49.2928 91.8479 115.9551 14.6968 33.3076 30.3015 18.8874 19.1463 17.7802 32.8664 49.0302 73.8148 67.4108 193.1611 72.7723 90.2916 95.6821 85.8867 68.5716 10.1005 77.7177 44.9877 87.4564 92.0794 76.021 14.0699 1109.8349 767.4563 767.4563 699.0528 109.6288 286.2889 176.5035 211.3421 327.448 1076.3881 254.2304 449.4588 246.6413 120.4016 369.4924 186.7803 254.7447 1087.6004;
	3.0688 41.4662 90.0419 115.1457 14.1985 27.8339 30.5016 18.9615 7.3636 7.4198 13.7154 20.4607 30.8035 65.3599 194.6949 73.3502 91.0085 96.4419 86.1516 68.8536 10.1672 64.9457 45.9286 87.0843 104.2699 73.9452 14.1148 1105.7576 751.0067 751.0067 736.7144 110.7969 287.1719 177.2293 204.9122 320.4295 1067.0486 271.8953 433.8576 279.2943 120.9371 308.7705 179.7243 255.3093 1078.1637;
];
