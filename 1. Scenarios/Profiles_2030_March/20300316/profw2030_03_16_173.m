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
	3.511 47.4413 83.761 108.6706 13.9633 31.6457 30.7545 17.8055 27.773 29.109 53.8075 80.2702 120.8464 69.3793 202.8787 76.4334 94.834 100.4957 88.0869 73.9133 10.2515 73.8399 74.494 81.4745 97.0269 71.4483 13.2551 1297.0405 781.2816 781.2816 603.6683 94.2541 293.6231 190.2531 217.5134 333.3468 1252.8173 216.0569 467.7308 259.8936 113.5326 351.0561 196.4231 254.0341 1265.8675;
	3.7156 50.206 87.6018 111.0753 14.1576 32.1275 28.4824 18.1332 28.1252 30.0379 55.5246 82.8318 124.7028 68.812 193.9961 73.0869 90.6819 96.0958 88.118 73.8198 9.4941 74.9641 74.5435 85.105 98.4889 72.7961 13.4415 1352.7882 789.6262 789.6262 641.4592 94.1541 293.7266 190.0124 215.7348 336.9072 1293.0648 221.1435 471.8332 263.8096 113.1438 356.4009 188.3162 262.4843 1306.5343;
	3.7174 50.2308 89.7492 112.2319 14.5327 32.8446 23.5237 17.6885 28.2003 31.028 57.3548 85.562 128.8131 68.3748 193.8006 73.0132 90.5905 95.9989 87.5151 73.0785 7.8412 76.6373 74.9814 85.9514 99.2678 75.4703 13.4208 1350.8178 781.1039 781.1039 661.4285 89.3017 291.717 188.1041 214.3644 333.271 1310.5872 220.8403 445.8073 265.8959 114.8462 364.3558 194.5786 263.1201 1324.2392;
	3.826 51.6981 89.9305 116.8519 14.2468 33.7998 25.4343 17.3196 28.2209 30.991 57.2863 85.46 128.6595 68.9223 198.6514 74.8408 92.858 98.4017 86.3976 72.6561 8.4781 78.8663 75.2408 85.617 98.4178 72.6023 12.9937 1350.5516 799.3497 799.3497 666.861 94.1697 287.9921 187.017 216.0808 341.0559 1311.9305 238.618 466.6019 263.6192 117.1484 374.9528 169.9137 262.3156 1325.5965;
	3.882 52.4541 94.0879 118.2839 14.7114 33.9945 31.733 17.3611 28.1624 31.3295 57.9121 86.3934 130.0648 68.3541 199.4864 75.1553 93.2483 98.8154 84.7953 72.807 10.5777 79.3204 75.5953 84.0981 101.3419 75.599 13.0485 1303.5723 766.3422 766.3422 668.4981 98.875 282.651 187.4054 214.2992 326.9727 1257.8417 230.8581 477.2109 271.4514 117.411 377.1121 201.6104 265.4484 1270.9442;
	3.9105 52.8401 93.3942 118.9567 15.2649 34.4833 31.3622 17.3938 28.4288 31.342 57.9351 86.4278 130.1166 69.7278 199.1515 75.0292 93.0918 98.6495 83.5298 71.7885 10.4541 80.4609 75.5935 85.0148 99.949 75.0872 13.0155 1331.852 765.3147 765.3147 691.0251 97.3026 278.4328 184.7837 218.6062 326.5343 1245.0119 232.3391 474.4768 267.7205 117.8575 382.5343 190.8746 268.1515 1257.9808;
	3.8864 52.5144 94.0283 120.6807 15.3496 34.9954 31.7529 17.408 28.3514 31.2533 57.7713 86.1835 129.7487 68.4879 197.8976 74.5568 92.5056 98.0283 77.7353 72.015 10.5843 81.6559 75.6129 85.6897 103.9613 76.0596 13.3129 1244.713 738.6878 738.6878 653.3024 82.0118 259.1178 185.3668 214.7187 315.1735 1216.5662 244.5144 475.5357 278.4676 119.731 388.2154 175.6006 265.2584 1229.2387;
	3.8793 52.4175 93.8276 120.188 15.3099 34.7132 30.9324 18.1607 28.1449 30.7089 56.765 84.6822 127.4886 69.271 197.089 74.2521 92.1277 97.6278 75.3637 69.3373 10.3108 80.9974 75.2251 88.2402 102.9741 76.2017 13.84 1311.9567 766.52 766.52 686.1204 98.9757 251.2123 178.4744 217.1738 327.0485 1250.4612 253.311 466.8273 275.8236 118.9855 385.085 186.2633 273.8879 1263.4869;
	3.8646 52.2198 95.2606 120.8127 15.4232 35.002 32.4385 18.5106 28.3409 31.0914 57.472 85.7369 129.0764 69.3074 198.5595 74.8061 92.815 98.3562 88.0621 70.2993 10.8128 81.6712 74.4363 89.5087 105.7466 76.186 13.4529 1302.407 814.9651 814.9651 782.6887 111.9532 293.5405 180.9506 217.2882 347.7184 1298.3293 284.0038 479.2526 283.2498 121.6317 388.2884 212.0245 274.9295 1311.8536;
	3.7953 51.2827 94.2852 120.5744 15.3767 35.0076 28.9396 18.4728 28.3224 31.2765 57.8141 86.2472 129.8447 67.9805 197.3113 74.3359 92.2315 97.7379 87.3017 70.5343 9.6465 81.6844 74.4951 89.6446 104.7161 76.2237 13.4943 1286.0182 829.1246 829.1246 797.2616 116.8254 291.0057 181.5556 213.128 353.7598 1263.4101 317.4289 468.9568 280.4895 121.1832 388.3507 215.0823 277.9289 1276.5706;
	3.8665 52.2447 91.6458 120.1244 15.2672 35.1429 30.3826 17.5013 27.9693 31.0573 57.4089 85.6427 128.9347 69.5096 196.7774 74.1347 91.982 97.4734 88.056 71.1512 10.1275 82.0 73.5058 86.2421 101.8962 71.4714 13.3528 1308.522 835.6508 835.6508 795.4114 119.5196 293.5201 183.1433 217.9219 356.5443 1301.7386 312.6467 476.8952 272.9361 119.7305 389.8515 217.7349 271.3858 1315.2984;
	3.8677 52.2611 90.7254 117.9545 15.2618 34.9278 28.0247 17.4075 27.3723 29.6847 54.8717 81.8578 123.2365 68.3781 200.0888 75.3823 93.5299 99.1138 88.1152 70.8147 9.3416 81.4982 73.0795 86.8545 102.6832 69.6778 13.0405 1321.2094 826.624 826.624 788.951 122.3116 293.7174 182.2773 214.3745 352.6929 1290.3891 319.2107 466.9352 275.0442 119.8506 387.4655 217.4339 270.0677 1303.8307;
	3.9001 52.6991 92.1953 115.6146 15.1655 34.9189 28.275 17.7227 27.9058 30.2817 55.9753 83.5041 125.715 68.3635 200.6762 75.6036 93.8044 99.4047 90.7144 71.3639 9.425 81.4775 72.6636 81.7657 100.5861 72.3868 13.4476 1318.991 833.6713 833.6713 805.9369 121.4018 302.3813 183.6908 214.3289 355.6997 1312.6206 353.6189 460.589 269.4271 118.2809 387.3676 213.6237 263.1886 1326.2937;
	3.7949 51.2773 88.7717 115.249 15.1139 34.3136 27.4538 17.9572 26.4845 29.4277 54.3967 81.1492 122.1697 66.3186 195.545 73.6705 91.4059 96.863 89.6586 71.0742 9.1513 80.0651 73.597 84.5767 99.6472 71.821 13.4482 1293.7385 810.2116 810.2116 769.3873 120.5946 298.8619 182.9452 207.9177 345.6903 1284.6792 345.6271 441.5455 266.9122 114.1047 380.6523 208.3697 259.1656 1298.0613;
	3.8496 52.0164 89.8852 117.6069 14.7292 34.1273 24.3004 17.9718 27.5555 28.5456 52.766 78.7166 118.5074 67.4309 196.9734 74.2086 92.0736 97.5706 91.6093 69.7326 8.1001 79.6304 73.579 87.5245 102.5458 70.5664 13.3934 1260.3317 804.521 804.521 798.7656 120.8623 305.3645 179.4918 211.405 343.2623 1226.9184 343.725 463.2591 274.6761 117.487 378.5856 209.4374 254.7628 1239.6988;
	3.8142 51.5387 86.9465 113.4083 14.907 33.8919 23.7705 17.568 27.6642 28.9594 53.5311 79.8578 120.2255 67.1913 175.3345 66.0563 81.9587 86.8518 89.5249 68.7676 7.9235 79.0812 73.2444 85.4998 99.8761 67.7768 13.2393 1245.124 764.4204 764.4204 719.9998 115.8824 298.4162 177.0079 210.6538 326.1527 1181.9936 320.0741 448.6525 267.5251 116.2298 375.9745 202.1907 262.208 1194.306;
	3.7253 50.3364 87.4596 110.7841 14.4777 31.8486 22.4421 17.0071 26.9466 28.8032 53.2423 79.427 119.5769 65.1726 191.0149 71.9638 89.2884 94.619 86.6916 68.6929 7.4807 74.3135 73.1653 83.201 100.6857 56.1225 12.4612 1130.3118 700.3431 700.3431 626.8102 109.4894 288.9719 176.8156 204.3248 298.813 1082.8515 303.1713 466.0656 269.6939 111.4925 353.3077 200.0961 253.3563 1094.1312;
	3.7287 50.3833 89.2718 110.1992 14.6958 30.3713 18.3716 12.1054 27.0415 28.5711 52.8133 78.7871 118.6135 64.805 187.5546 70.6601 87.6709 92.905 92.0056 67.5881 6.1239 70.8663 72.6238 82.8749 100.6596 68.791 9.5304 1220.9842 701.2372 701.2372 621.1793 109.1733 306.6853 173.972 203.1726 299.1945 1177.9261 296.4323 442.1375 269.624 105.2859 336.9187 199.8645 238.6669 1190.1962;
	3.679 49.7117 82.9696 102.634 14.62 25.2011 16.3606 0.9384 27.1969 28.9219 53.4618 79.7545 120.0699 65.3082 196.262 73.9406 91.7411 97.2181 92.3572 69.3617 5.4535 58.8025 72.017 83.4987 98.464 59.0135 7.5352 1226.1171 704.1043 704.1043 646.4039 109.5119 307.8574 178.5373 204.75 300.4178 1161.6229 303.4774 449.4635 263.7429 95.9621 279.5637 143.3756 218.6599 1173.7232;
	3.0956 41.828 80.53 68.6462 15.0616 23.1671 27.3092 7.8429 27.5953 30.0941 55.6284 82.9867 124.9359 67.5602 189.5431 71.4093 88.6004 93.89 90.9763 64.8838 9.1031 54.0565 71.9405 83.1216 90.8917 42.1288 7.4595 1237.8827 717.5541 717.5541 668.3408 105.4763 303.2543 167.0111 211.8105 306.1564 1159.8058 302.1729 443.3085 243.46 94.274 257.0001 124.2844 194.5045 1171.8871;
	2.4922 33.6754 78.6418 69.6952 13.99 11.9771 24.9443 2.3581 26.2126 28.8509 53.3305 79.5586 119.7751 63.3062 185.2547 69.7936 86.5958 91.7657 89.9725 66.5824 8.3148 27.9465 72.197 77.0599 77.9748 43.0911 7.7648 1171.6795 705.776 705.776 619.8048 105.7671 299.9084 171.3832 198.4736 301.1311 1098.4962 278.1529 432.665 208.8612 79.9614 132.8658 79.4648 181.697 1109.9388;
	2.2814 30.8268 81.7741 88.1394 14.1552 16.4186 25.5462 8.5297 26.2791 27.6141 51.0442 76.1478 114.6402 61.2527 192.2125 72.415 89.8482 95.2123 88.333 66.2899 8.5154 38.3101 69.5033 83.2744 98.771 60.7176 9.9873 1090.1996 666.3181 666.3181 628.2328 101.4796 294.4434 170.6304 192.0354 284.2957 1016.3294 247.6608 434.4386 264.5652 101.1572 182.1372 68.873 192.6256 1026.9161;
	2.7895 37.6928 82.0306 88.033 13.9502 19.0168 23.094 10.7354 26.6024 27.7268 51.2526 76.4589 115.1084 62.6875 187.4785 70.6314 87.6353 92.8673 87.2758 66.2073 7.698 44.3725 71.6207 84.5589 96.0163 63.1684 9.7137 937.6139 719.9293 719.9293 698.4189 95.3679 290.9192 170.4178 196.5337 307.1698 1012.749 255.2528 425.2879 257.1865 105.6104 210.9596 81.5914 211.1808 1023.2985;
	3.0795 41.6114 88.6411 81.5704 14.185 23.3242 20.1232 9.6926 27.0941 27.798 51.3841 76.655 115.4036 64.9012 184.9562 69.6812 86.4563 91.6179 87.364 68.076 6.7077 54.4232 71.454 87.0269 87.9985 64.5347 7.3239 846.2727 673.6203 673.6203 643.0874 96.0529 291.2133 175.2278 203.4739 287.4113 882.9568 240.8868 432.0561 235.7102 107.0497 258.7433 95.4739 228.7684 892.1543;
];