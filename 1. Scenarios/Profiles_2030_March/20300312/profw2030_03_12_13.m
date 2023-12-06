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
	3.6388 49.1679 90.3732 109.1844 14.7247 32.3816 27.7772 12.0393 26.0717 28.8038 53.2433 79.4286 119.5793 69.0879 192.7119 72.6031 90.0816 95.4596 91.6283 68.7304 9.2591 75.557 70.1627 89.3622 98.6652 61.455 8.4144 1169.72 772.3039 772.3039 760.9439 107.9593 305.4276 176.9122 216.6 329.5163 1103.6137 283.2874 462.5007 264.2817 115.1509 359.2194 179.0462 218.6807 1115.1097;
	3.6211 48.9291 88.1479 108.1219 14.2922 31.9375 27.7084 10.4468 25.9587 25.6334 47.383 70.6862 106.4176 69.8292 198.1939 74.6684 92.6441 98.1751 92.3126 69.0105 9.2361 74.5209 68.4458 87.1048 95.908 59.681 6.7716 1239.9688 810.5514 810.5514 777.8045 112.3834 307.7087 177.6333 218.924 345.8353 1220.7714 271.3808 467.2522 256.8965 115.9584 354.2938 188.7091 217.6984 1233.4878;
	3.6284 49.028 88.9152 96.7185 14.7342 32.6076 24.1497 10.4018 26.1246 27.0845 50.0653 74.6876 112.4417 67.7704 195.779 73.7586 91.5153 96.9789 92.6715 71.3301 8.0499 76.0843 69.6074 86.9515 85.9798 61.0748 7.5859 1218.1433 796.0453 796.0453 764.8009 113.8677 308.905 183.6038 212.4693 339.646 1159.2324 263.9761 449.2721 230.3031 113.3467 361.7267 169.3218 232.0547 1171.3078;
	3.698 49.9686 88.3168 98.9638 14.7201 33.3582 20.7008 11.2973 26.1256 26.5482 49.074 73.2088 110.2155 65.6894 196.1616 73.9028 91.6942 97.1684 92.9006 71.4632 6.9003 77.8358 69.4261 87.2838 85.9839 56.1344 7.7026 1193.3405 829.4234 829.4234 753.8839 114.3274 309.6686 183.9465 205.9451 353.8873 1215.5162 273.5615 442.7901 230.314 108.5425 370.0534 183.7937 221.9909 1228.1779;
	3.5628 48.1415 83.101 86.5325 14.9784 32.83 18.0044 9.7234 23.3645 26.4166 48.8307 72.8458 109.669 65.783 195.2431 73.5567 91.2648 96.7135 92.8089 70.7248 6.0015 76.6034 70.1655 87.4163 76.0614 53.0748 7.5548 1153.0005 791.5017 791.5017 712.0851 105.0646 309.3629 182.0458 206.2385 337.7074 1147.2041 251.2393 406.5687 203.7358 109.2362 364.1946 193.8073 204.4213 1159.1541;
	3.6119 48.8049 82.8617 80.1633 15.1188 31.724 16.2048 7.5429 24.2088 28.176 52.0829 77.6974 116.973 65.9249 198.4626 74.7696 92.7697 98.3082 92.3887 72.4502 5.4016 74.0227 72.4707 88.2693 60.344 38.8318 5.6533 1092.2865 729.4944 729.4944 642.3283 92.7184 307.9622 186.4869 206.6835 311.2509 1099.4099 219.8069 358.3815 161.6357 81.143 351.9252 184.4494 174.8855 1110.8621;
	3.4526 46.6522 71.2882 67.592 15.2 30.0332 14.4311 5.8108 18.7931 28.0607 51.8697 77.3795 116.4944 68.5658 196.8062 74.1456 91.9955 97.4877 91.4644 72.9781 4.8104 70.0775 72.8351 82.7719 52.2932 26.9386 4.4076 1102.8004 702.1046 702.1046 566.9737 64.1952 304.8813 187.8457 214.9632 299.5646 1042.917 205.4091 290.8141 140.0711 64.8479 333.1686 159.4172 125.4908 1053.7807;
	3.6172 48.8759 71.1874 73.4744 15.2795 28.2603 14.3325 6.0552 15.0961 24.483 45.2564 67.5137 101.6415 68.241 198.6355 74.8348 92.8506 98.3939 91.8869 72.9992 4.7775 65.9408 62.5154 87.1336 63.7222 22.1145 3.8239 1108.4101 699.6107 699.6107 644.2004 63.9915 306.2895 187.9001 213.9446 298.5006 1044.5022 217.9542 244.217 170.6844 74.2069 313.5013 147.5607 130.9887 1055.3824;
	3.1392 42.417 59.933 65.3872 15.2355 23.8505 14.2857 4.4283 20.3683 22.455 41.5078 61.9215 93.2225 66.8652 191.9299 72.3085 89.7161 95.0722 91.6607 71.1939 4.7619 55.6511 53.4432 83.3854 59.9312 15.188 2.6944 1178.3538 770.0793 770.0793 739.2414 88.6607 305.5357 183.2532 209.6315 328.5672 1064.9186 243.9631 233.9991 160.5301 53.1741 264.581 139.2015 146.8173 1076.0116;
	2.8722 38.8093 50.5419 62.312 14.8306 18.3994 17.7674 2.4889 19.5292 20.1245 37.1998 55.4949 83.5472 67.2977 178.3181 67.1803 83.3533 88.3296 90.8763 69.141 5.9225 42.9319 45.592 71.193 38.9412 8.1306 1.3112 1042.8153 760.9175 760.9175 700.3077 100.287 302.921 177.9691 210.9874 324.6582 1062.6474 227.8385 351.8617 104.3068 40.437 204.1105 120.6543 122.1312 1073.7166;
	2.3176 31.3156 38.4467 46.434 14.0111 13.4219 17.398 1.268 17.174 16.0563 29.6798 44.2764 66.6579 65.5989 171.6649 64.6738 80.2434 85.034 92.75 70.755 5.7993 31.3177 38.0637 54.7291 30.2353 5.9851 2.0569 1059.1149 748.3363 748.3363 668.957 89.8257 309.1667 182.1235 205.6615 319.2902 1025.3689 207.4655 392.4845 80.9875 33.3107 148.8931 84.1769 82.724 1036.0498;
	1.5695 21.2068 29.2811 25.6598 10.0823 9.3958 17.0896 0.9719 8.9674 16.0456 29.66 44.2469 66.6134 60.5695 155.7143 58.6645 72.7874 77.1329 89.8302 66.3858 5.6965 21.9234 40.8557 37.1204 21.9579 6.9696 0.6668 944.2113 640.9321 640.9321 588.1612 91.2558 299.4341 170.8773 189.8934 273.4643 928.217 174.8949 377.09 58.8157 18.9708 104.2303 55.3662 62.6111 937.8859;
	1.0681 14.4321 28.8165 25.6778 8.1848 7.18 18.405 1.8213 14.4548 13.1888 24.3793 36.3691 54.7534 65.4063 175.7389 66.2086 82.1477 87.0521 92.2355 70.9251 6.135 16.7533 40.1578 36.8775 24.3805 11.3178 2.3214 1018.725 715.3225 715.3225 659.0616 96.9781 307.4517 182.5613 205.0575 305.2043 1009.8764 200.5706 437.032 65.3049 25.7174 79.6499 32.2311 49.6025 1020.3959;
	0.7787 10.5213 22.662 27.3457 7.134 6.7585 11.1316 2.1353 10.7402 15.9344 29.4544 43.9402 66.1518 64.3278 171.8362 64.7383 80.3234 85.1188 90.4314 70.0917 3.7105 15.7699 50.8188 35.6896 26.7013 11.2439 3.2516 912.0572 642.1727 642.1727 641.339 94.0547 301.4379 180.4163 201.6763 273.9937 802.9407 195.2516 397.1985 71.5214 19.8844 74.9746 25.4481 50.3118 811.3046;
	0.7885 10.6547 20.453 0.0 5.463 5.7708 9.9517 1.2028 7.1462 15.5676 28.7765 42.9288 64.6291 66.1246 158.0974 59.5623 73.9013 78.3133 82.7591 67.5818 3.3172 13.4652 52.7156 42.0542 23.7849 5.8352 2.5136 841.9183 604.8812 604.8812 613.5262 83.4617 275.8638 173.9558 207.3097 258.0827 752.2939 190.7409 331.5833 63.7096 17.5827 64.0173 21.379 45.3599 760.1303;
	0.9151 12.3647 17.1672 25.0293 6.8078 0.1699 5.4475 1.4532 9.1405 13.3552 24.6869 36.8281 55.4445 66.8298 170.0172 64.053 79.4732 84.2178 85.3402 70.8517 1.8158 0.3965 51.1228 44.5772 26.1461 4.953 2.2978 852.1523 526.462 526.462 557.5277 84.434 284.4674 182.3723 209.5203 224.6238 635.0936 188.3731 253.7024 70.0342 27.0011 1.8851 0.0 25.2875 641.7092;
	0.4547 6.1446 2.6064 0.4114 4.6787 0.0 2.6222 0.0009 2.325 11.9246 22.0424 32.8829 49.505 63.5438 180.0136 67.8191 84.1459 89.1695 85.7233 67.4267 0.8741 0.0 51.0289 38.7136 15.2486 3.7485 1.4477 818.0275 487.6868 487.6868 577.1273 83.75 285.7442 173.5565 199.2185 208.0797 721.6892 187.3681 221.8166 40.8445 31.0183 0.0 0.0 0.8844 729.2068;
	0.9466 12.7901 1.7489 0.0 1.3346 0.1378 0.0 0.0 0.0 17.9299 33.1431 49.443 74.4361 59.7457 137.7803 51.9079 64.4043 68.2493 84.8927 50.5915 0.0 0.3215 61.7966 33.9231 12.5502 1.2677 1.2391 724.7606 493.4607 493.4607 618.4232 92.9285 282.9758 130.2228 187.3108 210.5433 713.3175 199.1302 299.7831 33.6166 65.8139 1.5286 0.0 0.0364 720.7478;
	0.3687 4.9813 22.6053 34.5701 0.0 0.0168 0.0 1.6935 0.0 20.1321 37.214 55.5159 83.5789 54.3022 109.222 41.1488 51.0549 54.103 0.0 56.4113 0.0 0.0391 65.505 44.3983 21.5663 6.1234 2.1099 758.4286 464.8369 464.8369 595.7178 85.7846 0.0 145.2029 170.2448 198.3304 681.1573 179.6861 282.1316 57.767 86.8104 0.186 0.0 0.6935 688.2527;
	0.2234 3.0192 28.4734 53.6601 1.5468 0.0 0.0 3.2069 0.0 24.5457 45.3724 67.6867 101.902 46.2468 93.5734 35.2532 43.7401 46.3515 0.0 63.4713 0.0 0.0 69.7283 63.3545 34.3512 16.1693 2.9795 622.4609 326.4523 326.4523 561.8019 70.7573 0.0 163.3752 144.99 139.2863 576.9138 182.823 0.0 92.012 88.647 0.0 0.2996 0.038 582.9233;
	0.5618 7.5912 37.4201 63.9453 0.0 0.0 0.0 4.4975 0.0 23.987 44.3397 66.1461 99.5826 43.5883 104.3816 39.3252 48.7923 51.7053 60.4392 65.3952 0.0 0.0 52.7267 64.4302 34.376 5.2282 2.0842 567.0144 330.2865 330.2865 473.0216 54.8484 201.464 168.3273 136.6552 140.9222 628.7123 172.9398 0.0 92.0785 92.9574 0.0 3.0681 14.5243 635.2614;
	0.5117 6.9136 44.8335 66.943 0.0 0.0009 0.0541 3.2484 0.0 21.1565 39.1075 58.3408 87.8317 32.9311 119.6687 45.0845 55.9382 59.2777 47.2981 64.3204 0.018 0.002 51.1207 62.14 37.2505 10.7087 1.4329 439.0204 316.3354 316.3354 439.448 48.4359 157.6605 165.5608 103.2434 134.9698 668.6755 150.5898 0.1717 99.778 80.9077 0.0095 9.2874 11.609 675.6409;
	0.6643 8.9759 38.9556 63.2203 7.0562 0.2575 2.0082 3.5298 0.0 16.4772 30.4579 45.4373 68.4056 13.3114 130.8336 49.2908 61.1571 64.8083 55.9231 67.8778 0.6694 0.6009 24.7245 61.0922 32.1239 28.2385 1.6533 404.4634 357.8846 357.8846 477.541 47.2498 186.4105 174.7176 41.7331 152.6974 534.116 140.5784 0.0 86.0462 66.65 2.8568 37.2599 0.0 539.6797;
	0.6221 8.4057 46.3238 65.7579 0.1948 0.0257 4.9296 5.8379 0.0 20.6543 38.1791 56.9557 85.7465 4.8209 156.0755 58.8005 72.9562 77.3118 60.4991 69.4551 1.6432 0.06 65.1212 68.6571 41.9855 31.0198 2.8853 307.89 270.3831 270.3831 354.7514 41.3448 201.6638 178.7776 15.114 115.3634 381.4394 102.988 0.0 112.4612 63.1843 0.2853 15.4416 6.123 385.4127;
];
