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
	3.652 49.347 87.1157 107.0352 14.7907 32.2632 30.8022 11.6667 28.0151 27.5801 50.9814 76.0542 114.4992 68.179 191.7044 72.2235 89.6107 94.9606 81.2407 68.248 10.2674 75.2808 71.2799 85.8619 96.2833 63.296 8.8287 1131.7838 804.0567 804.0567 759.2884 114.1082 270.8024 175.6704 213.7504 343.0642 1164.744 295.5471 478.4657 257.9016 119.5869 357.9062 199.1242 235.1754 1176.8767;
	3.6303 49.0527 87.245 108.5428 14.8231 31.944 29.6684 11.6026 28.1615 25.4509 47.0455 70.1827 105.6596 66.4833 187.501 70.6399 87.6458 92.8784 71.6597 61.9877 9.8895 74.5361 72.5072 83.831 96.4833 63.4244 7.9501 1080.724 776.2884 776.2884 722.3497 110.4877 238.8657 159.5565 208.4343 331.2164 1172.7465 258.2748 458.5614 258.4373 117.6304 354.3659 203.4277 239.9421 1184.9626;
	3.6061 48.7263 91.7399 101.0543 14.9657 32.7517 27.9128 11.5554 27.9964 27.0616 50.023 74.6245 112.3468 66.257 184.5201 69.5169 86.2524 91.4018 80.7486 66.9052 9.3043 76.4206 72.4191 88.0743 91.1516 63.0711 9.2006 1198.8705 815.6361 815.6361 744.3136 117.6986 269.162 172.2142 207.7246 348.0047 1181.4943 261.7185 458.7259 244.1562 119.5 363.3255 194.5023 244.9163 1193.8015;
	3.641 49.1979 90.9694 102.6473 15.0817 33.3957 23.7022 11.7092 27.4703 27.8453 51.4715 76.7854 115.6 63.2429 187.2295 70.5376 87.5189 92.7439 83.5049 67.7839 7.9007 77.9232 73.4784 87.625 86.6713 58.5706 8.4488 1122.4906 802.7655 802.7655 738.4974 116.2451 278.3497 174.4758 198.2749 342.5133 1194.5042 256.4716 438.8721 232.1553 117.986 370.4692 197.395 242.241 1206.9469;
	3.5293 47.6887 83.9815 85.7634 14.3998 31.1509 19.99 8.724 23.573 27.2046 50.2872 75.0187 112.9402 63.8115 191.0582 71.9801 89.3086 94.6405 87.6056 69.2298 6.6633 72.6855 73.1235 83.161 68.6431 47.1898 7.0887 1204.1386 798.6985 798.6985 740.4451 111.646 292.0188 178.1978 200.0575 340.778 1225.4714 247.5275 357.5888 183.8655 112.022 345.5676 201.1353 214.0666 1238.2367;
	3.6696 49.5838 83.3685 77.7288 15.129 31.4748 18.07 6.5982 25.6215 29.685 54.8723 81.8587 123.2378 64.1513 189.1373 71.2564 88.4107 93.689 90.6046 68.7239 6.0233 73.4411 75.1174 84.0485 54.4506 35.0702 4.8736 1183.1391 717.4955 717.4955 633.7234 91.2723 302.0154 176.8955 201.123 306.1314 1158.4186 193.8044 335.4842 145.8498 101.1737 349.1602 194.7035 181.651 1170.4855;
	3.504 47.3467 74.5141 68.3005 15.004 30.2489 16.3141 5.564 19.8951 29.4754 54.4848 81.2807 122.3676 66.5511 186.5613 70.2859 87.2065 92.4129 89.552 70.8027 5.438 70.5809 75.413 81.485 49.2861 25.7998 4.3004 1208.6068 688.8945 688.8945 573.4377 65.8701 298.5065 182.2462 208.6468 293.9283 1123.6568 190.5511 276.5962 132.0163 80.4929 335.5617 167.389 137.3821 1135.3616;
	3.5977 48.6129 71.6623 72.145 14.9572 29.1655 16.5538 5.5004 17.5849 25.1824 46.5493 69.4425 104.5452 68.0821 187.8928 70.7875 87.829 93.0725 88.8168 70.4974 5.5179 68.0527 63.0666 82.2958 57.2266 20.412 3.3364 1265.0185 689.5407 689.5407 607.9969 66.2325 296.0561 181.4605 213.4467 294.204 1143.0198 191.562 242.6873 153.2857 80.3767 323.5421 155.1808 142.9191 1154.9262;
	2.8396 38.3692 59.9402 65.3803 14.4887 22.8847 15.3136 3.4531 20.624 22.241 41.1121 61.3312 92.3337 63.8637 179.3793 67.5801 83.8494 88.8553 84.5274 66.8891 5.1045 53.3976 52.7367 78.6234 53.2897 12.0712 2.2133 1220.9504 771.1449 771.1449 748.9748 84.6903 281.758 172.1728 200.2215 329.0218 1128.4949 222.9077 233.958 142.7402 55.1462 253.8676 144.2464 152.181 1140.2501;
	2.628 35.5098 50.6726 61.6122 14.8153 18.1667 19.4511 1.956 22.5592 19.7378 36.485 54.4285 81.9418 65.8262 173.2214 65.2602 80.971 85.805 85.5161 67.0678 6.4837 42.3889 46.0895 67.4711 33.0463 6.8344 0.7546 1146.893 768.0518 768.0518 739.9991 102.1962 285.0538 172.6327 206.3741 327.7021 1153.2553 219.3502 350.175 88.517 43.1482 201.5291 132.4315 134.6208 1165.2684;
	2.1721 29.3497 37.4635 43.3725 14.1347 13.8176 19.512 1.0614 20.4887 15.7671 29.1452 43.479 65.4574 65.1665 169.5124 63.8628 79.2372 83.9678 85.2828 68.7517 6.504 32.241 36.7504 50.3327 22.6626 4.6023 0.5992 1159.0935 793.4891 793.4891 786.0843 108.0448 284.276 176.9671 204.3058 338.5553 1138.6316 239.8402 386.4763 60.7034 35.894 153.283 94.6385 101.2164 1150.4923;
	1.5787 21.332 30.0506 26.5275 10.3619 10.0915 19.5018 1.1404 18.917 17.7938 32.8915 49.0677 73.8711 66.0802 178.1826 67.1293 83.29 88.2625 84.9294 70.0819 6.5006 23.5468 45.6632 25.5886 18.6688 6.8341 0.7191 1062.122 750.6603 750.6603 733.2802 105.2834 283.0979 180.3911 207.1702 320.2817 1056.6984 207.2862 379.6567 50.0057 28.8264 111.948 66.9123 78.5406 1067.7057;
	1.1208 15.1451 28.6082 26.9311 9.8252 7.6514 18.4629 1.9186 15.6327 14.0815 26.0294 38.8308 58.4595 63.4599 181.0616 68.2139 84.6358 89.6886 86.1928 66.291 6.1543 17.8533 42.0702 33.1294 22.3286 9.7382 2.4016 1034.6588 763.5587 763.5587 708.3424 99.798 287.3093 170.6331 198.9555 325.785 1037.3031 219.3728 398.478 59.8087 30.5296 84.8795 54.9875 52.3164 1048.1084;
	0.8588 11.6049 24.6913 31.1563 8.2481 7.9338 12.6196 2.5126 13.2507 17.3111 31.9994 47.7368 71.8674 65.3413 183.7614 69.2311 85.8978 91.026 82.3178 68.021 4.2065 18.5121 50.0454 35.7981 25.9238 10.666 3.7164 966.5919 736.9443 736.9443 697.5235 90.6697 274.3926 175.0862 204.8537 314.4296 905.5614 217.2397 386.9686 69.4387 33.6744 88.0117 39.9381 54.815 914.9943;
	0.7921 10.7027 23.7299 0.8318 6.3609 7.7145 10.6626 1.6506 12.67 16.8811 31.2045 46.5509 70.0821 65.3041 178.3394 67.1883 83.3633 88.3402 75.4873 69.3265 3.5542 18.0006 50.6514 42.0292 23.0861 3.453 2.5622 858.298 670.5502 670.5502 627.2558 79.0765 251.6244 178.4465 204.7373 286.1014 792.2855 199.4727 319.6794 61.8377 27.9755 85.5799 40.0112 45.8083 800.5385;
	0.9531 12.8784 19.0191 28.1967 7.7211 0.3131 5.3731 1.1088 9.522 15.2626 28.2127 42.0878 63.3629 65.2241 186.9333 70.426 87.3805 92.5972 84.5096 71.0933 1.791 0.7306 51.0781 36.2326 20.6704 1.5722 1.0439 890.5268 595.9693 595.9693 592.0847 81.3096 281.6986 182.9944 204.4865 254.2802 680.6604 190.1392 228.6566 55.3671 30.4401 3.4734 46.8262 19.3078 687.7506;
	0.5367 7.2525 19.0449 9.8176 5.8633 0.0028 3.6323 2.806 10.7471 18.1306 33.5142 49.9966 75.2696 59.0447 176.5244 66.5045 82.5149 87.4412 82.0423 62.6015 1.2108 0.0066 55.117 33.3846 14.6567 4.0411 1.4387 840.9172 555.6919 555.6919 609.2805 78.5898 273.4744 161.1365 185.1131 237.0952 755.2951 197.7652 227.9079 39.2591 39.0455 0.0312 12.7809 1.9176 763.1628;
	1.0633 14.3671 0.2063 4.714 1.5809 0.0351 1.9981 0.0936 0.0949 20.215 37.3671 55.7444 83.9228 65.0 141.9576 53.4817 66.3569 70.3186 84.149 54.2198 0.666 0.082 68.0528 3.4803 11.2081 1.667 1.0946 845.9886 563.4569 563.4569 657.4578 92.222 280.4967 139.562 203.7837 240.4083 769.5823 221.0301 338.9882 30.0217 78.2423 0.3899 9.7794 0.0 777.5988;
	0.5216 7.0477 25.355 45.0164 0.0508 2.1877 1.8011 2.53 1.3995 24.7513 45.7524 68.2535 102.7553 64.945 132.2681 49.8312 61.8276 65.5188 10.0806 64.6272 0.6004 5.1047 70.4937 48.404 26.4979 6.9117 2.4344 884.4309 544.6316 544.6316 647.5707 87.6327 33.6021 166.3505 203.6114 232.3762 731.2741 202.256 362.0148 70.9765 96.0008 24.2692 29.7777 6.9829 738.8916;
	0.309 4.175 30.0581 59.5175 1.646 0.0154 1.3041 3.624 4.9088 27.137 50.1622 74.8322 112.6595 62.3482 117.7393 44.3576 55.0363 58.322 8.4704 69.5844 0.4347 0.036 73.2255 66.7965 38.7017 20.1436 3.0145 711.5064 380.6863 380.6863 613.3551 75.1206 28.2348 179.1104 195.4702 162.4262 603.8452 208.1895 125.8558 103.6653 99.3216 0.1711 20.0201 32.6633 610.1352;
	0.7172 9.6914 47.3113 81.6109 5.3857 0.7663 2.0324 4.959 5.2649 26.8726 49.6736 74.1032 111.5619 55.2133 137.3237 51.7359 64.1908 68.0231 84.0995 73.8157 0.6775 1.7881 71.4032 81.3237 42.7999 14.4243 2.6362 588.1696 355.1655 355.1655 529.802 60.5275 280.3315 190.0018 173.101 151.5373 635.8302 198.584 372.8944 114.6426 100.5269 8.5011 15.5952 49.4202 642.4535;
	0.5592 7.5555 45.117 71.95 0.0 0.0062 1.601 2.8136 2.9529 25.5453 47.22 70.443 106.0516 38.3039 162.1798 61.1003 75.8096 80.3356 84.8665 73.5755 0.5337 0.0144 72.7674 70.2684 40.461 14.8891 1.4622 443.4563 340.8956 340.8956 482.0773 58.0609 282.8884 189.3836 120.0879 145.4488 681.9306 171.7572 154.9974 108.3776 81.608 0.0683 10.59 36.6252 689.0341;
	0.6164 8.3294 42.7791 70.6844 6.3654 0.0136 0.1324 3.2123 3.6673 19.0337 35.1836 52.4869 79.0188 19.2647 160.1678 60.3423 74.8691 79.3389 84.5383 73.23 0.0441 0.0318 50.0659 68.0863 37.9796 29.7656 1.7175 455.8943 402.7068 402.7068 525.2701 62.5444 281.7944 188.4943 60.3973 171.8216 562.7784 149.4709 43.9499 101.7312 64.0797 0.1512 3.7541 47.0753 568.6407;
	0.3343 4.5172 48.921 74.1244 0.0 0.7164 0.9665 5.552 2.8392 23.2095 42.9024 64.0019 96.3545 7.6502 177.4807 66.8648 82.9619 87.9149 88.2521 73.8291 0.3222 1.6716 69.6301 66.7256 43.8475 35.494 2.972 329.6152 331.8285 331.8285 398.9085 56.9018 294.1737 190.0363 23.9844 141.5802 413.3726 120.4548 95.8078 117.4486 64.0096 7.9474 25.3079 58.8586 417.6785;
];
