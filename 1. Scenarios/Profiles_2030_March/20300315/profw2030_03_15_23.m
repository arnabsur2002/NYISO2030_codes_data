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
	3.8293 51.742 94.5451 120.3051 15.2473 34.6931 31.2731 18.2784 10.8858 17.6278 32.5847 48.6099 73.182 48.3957 198.6844 74.8532 92.8734 98.4181 83.7921 67.1569 10.4244 80.9506 27.6435 88.3319 103.3358 75.2735 13.932 1237.8875 786.7093 786.7093 731.0185 108.2642 279.3071 172.8621 151.727 335.6626 1150.7796 257.6174 447.6848 276.7923 121.5144 384.8621 213.0428 284.6473 1162.7668;
	3.8339 51.8044 94.0277 118.1447 15.2099 34.6176 32.584 18.5331 12.6804 13.8758 25.6492 38.2636 57.6056 60.3762 189.8815 71.5367 88.7586 94.0576 77.1993 70.2806 10.8613 80.7743 28.3651 86.7357 102.1 73.8139 13.8418 1198.1976 782.8104 782.8104 718.2287 112.2596 257.3309 180.9025 189.2875 333.9991 1195.4256 252.7092 459.3646 273.4822 122.9228 384.0243 210.1397 285.1428 1207.8779;
	3.671 49.603 88.7632 111.0096 15.1273 32.9112 33.1326 18.2061 23.9631 14.6437 27.0686 40.3811 60.7935 62.0288 172.6929 65.061 80.7239 85.5432 84.5384 70.9713 11.0442 76.7929 27.0701 85.607 98.2292 72.5098 13.4657 1198.1979 796.2623 796.2623 744.2139 113.0201 281.7948 182.6804 194.4688 339.7386 1224.1831 276.9305 462.1639 263.1139 119.9256 365.0953 201.0026 267.3977 1236.935;
	3.5525 48.0015 87.0437 110.9744 14.9524 32.2824 31.8901 17.4833 27.9185 28.1103 51.9614 77.5162 116.7002 68.0117 192.4068 72.4881 89.939 95.3085 84.459 66.7685 10.63 75.3255 22.8681 82.928 96.8255 70.8716 13.0159 1232.9762 817.83 817.83 779.703 115.5068 281.5301 171.8624 213.2259 348.9408 1205.2784 310.8031 474.0102 259.3541 115.6267 358.1192 173.6786 261.0931 1217.8333;
	2.4875 33.6114 88.33 110.6035 14.629 25.5013 30.6816 17.7608 27.0812 28.7459 53.1363 79.2689 119.3389 66.5991 192.0788 72.3646 89.7857 95.146 84.3018 67.3902 10.2272 59.5031 70.5992 83.8846 97.9013 70.5701 13.0175 1229.9842 823.5422 823.5422 787.6865 116.3722 281.006 173.4624 208.7973 351.378 1166.152 310.244 451.3179 262.2357 117.7867 282.8949 160.0829 260.6858 1178.2994;
	3.5677 48.2073 90.7494 111.644 14.9758 31.0807 18.0143 18.2964 25.4771 28.3474 52.3998 78.1702 117.6848 56.6605 194.5767 73.3056 90.9533 96.3833 57.6675 68.254 6.0048 72.5217 69.2594 84.5594 98.7317 72.744 13.6975 1168.8796 817.9228 817.9228 757.7047 118.2076 192.2251 175.686 177.6383 348.9804 1148.8796 297.1955 448.4148 264.46 116.4312 344.7888 156.6951 266.7246 1160.8471;
	3.498 47.265 90.1029 110.9084 14.5137 31.8454 13.2566 18.0134 25.1057 28.1677 52.0676 77.6746 116.9387 65.0894 190.982 71.9513 89.273 94.6027 81.073 70.2485 4.4189 74.306 69.5353 86.0062 101.3655 71.9072 13.5426 1238.7395 817.3719 817.3719 740.6394 120.2255 270.2435 180.8198 204.0642 348.7454 1156.891 307.641 380.7251 271.5146 116.7263 353.2718 161.447 262.5384 1168.942;
	3.8297 51.7471 94.5321 114.867 15.1381 33.0418 9.6439 18.7444 12.4105 28.6859 53.0254 79.1035 119.0898 45.5771 195.2021 73.5413 91.2456 96.6931 84.0886 70.8855 3.2146 77.0976 71.8581 86.0633 101.1827 73.9401 13.8945 1304.1746 824.2719 824.2719 772.1159 120.2698 280.2952 182.4594 142.8903 351.6894 1277.2977 325.9019 178.3217 271.025 121.2552 366.5441 203.0891 280.5708 1290.6028;
	3.864 52.2114 95.0442 118.9335 15.3751 32.3838 3.5094 19.1155 3.9455 28.9554 53.5237 79.8468 120.2089 26.5566 196.0501 73.8608 91.642 97.1132 88.0416 73.0225 1.1698 75.5622 73.5057 87.4475 104.9164 75.6228 14.1476 1230.4659 709.4194 709.4194 727.3229 119.2621 293.4721 187.9602 83.2585 302.6856 1087.5231 296.8377 54.4991 281.026 123.2339 359.2443 192.8404 279.0874 1098.8515;
	3.7573 50.7691 92.3528 118.7016 15.2898 31.5067 0.7417 18.5849 0.7018 23.963 44.2953 66.0798 99.4828 16.0015 189.0119 71.2091 88.3521 93.6268 84.0942 71.3647 0.2472 73.5157 46.4002 85.6648 103.1568 73.7417 13.9664 1034.6735 574.0369 574.0369 571.6583 112.7894 280.3141 183.6929 50.167 244.9224 839.3019 254.4668 11.5057 276.3129 121.2802 349.5147 156.3533 274.3072 848.0446;
	3.5348 47.7634 91.7814 115.3139 14.6237 26.5632 1.2541 18.2569 0.0 27.7926 51.3741 76.6401 115.3812 0.0 194.7291 73.3631 91.0245 96.4588 80.341 71.5157 0.418 61.9808 69.092 86.8479 100.8924 71.337 13.6714 825.1319 613.5062 613.5062 505.3085 115.1794 267.8032 184.0817 0.0 261.7626 750.0702 216.1391 1.5653 270.2475 119.4276 294.6742 143.8837 271.2027 757.8834;
	2.9554 39.9343 88.229 110.0218 14.3984 16.3544 0.002 17.4754 0.0 24.7032 45.6634 68.1208 102.5555 0.0 201.0363 75.7392 93.9728 99.5831 38.4158 71.7456 0.0007 38.1603 67.8993 85.1579 97.4786 71.2536 13.2275 607.3275 673.7437 673.7437 500.9237 113.5273 128.0527 184.6734 0.0 287.464 802.3757 212.2268 12.6852 261.1034 120.7283 181.425 125.5067 264.15 810.7338;
	3.6506 49.3273 90.0149 111.5693 14.6278 19.1185 1.0798 17.2286 24.6583 23.6341 43.6872 65.1728 98.1172 41.4331 197.601 74.445 92.367 97.8814 58.5835 71.9235 0.3599 44.6098 68.9952 83.3786 97.7798 69.879 13.205 615.1823 683.1553 683.1553 528.7524 114.7656 195.2782 185.1313 129.8984 291.4796 611.9853 241.6535 42.1754 261.9103 119.2455 212.0878 136.4407 271.1489 618.3601;
	3.4231 46.2534 87.4516 110.2673 14.4122 15.5982 0.2155 17.3713 17.509 22.0308 40.7235 60.7515 91.4611 12.8103 199.1455 75.0269 93.0889 98.6465 58.2072 73.1131 0.0718 36.3958 67.448 81.9639 96.5285 70.1818 12.9025 482.5233 653.6558 653.6558 486.5561 96.4868 194.024 188.1932 40.1621 278.8931 650.4367 244.2579 72.3898 258.5585 119.4845 173.036 149.7583 265.8263 657.2121;
	3.6723 49.6205 89.7237 113.7404 14.9824 17.068 0.0664 17.4824 3.01 26.2588 48.539 72.4106 109.0138 15.192 188.8217 71.1375 88.2632 93.5326 67.6817 71.8748 0.0221 39.8253 68.8113 83.94 96.8547 70.4624 13.1197 385.328 660.1313 660.1313 434.04 85.3317 225.6057 185.006 47.6288 281.656 597.0499 229.484 45.6377 259.4322 117.8512 189.341 152.3863 252.6806 603.2692;
	3.399 45.9286 89.0685 112.3441 14.955 8.6707 0.0 17.387 0.4756 26.084 48.2158 71.9285 108.2879 19.0734 176.914 66.6513 82.697 87.6342 60.2109 71.3845 0.0 20.2316 65.8566 84.9679 97.7489 69.808 13.3106 445.0646 532.337 532.337 409.3084 92.9086 200.7029 183.7439 59.7977 227.1304 490.546 219.3917 0.0003 261.8274 115.4253 96.1866 143.7082 242.502 495.6559;
	3.4989 47.2781 91.9577 117.1785 15.3115 18.9355 0.0 18.469 2.9515 27.4877 50.8106 75.7994 114.1156 26.5637 181.3403 68.3189 84.766 89.8267 58.0097 70.0976 0.0 44.1829 67.2667 85.5957 104.8434 69.82 13.5606 1049.9072 463.3079 463.3079 305.0197 90.0145 193.3655 180.4313 83.2809 197.678 844.8354 231.8927 100.6123 280.8306 115.0019 210.0583 138.0623 255.0673 853.6357;
	3.2687 44.1667 89.3055 111.2143 14.9273 21.9266 0.0 17.7887 1.553 27.9951 51.7486 77.1987 116.2222 46.9337 182.0247 68.5768 85.086 90.1657 71.3606 69.3414 0.0 51.1621 68.6234 83.7914 100.1682 68.9629 13.3634 1191.7805 544.0562 544.0562 207.5023 66.3653 237.8687 178.4849 147.1435 232.1306 1007.6234 205.6538 113.6151 268.3077 117.5988 243.2391 170.5673 269.8788 1018.1195;
	2.5263 34.1362 90.6266 111.1005 14.89 33.1131 0.0 18.2256 22.0413 23.8757 44.1339 65.8391 99.1204 60.0336 186.422 70.2334 87.1414 92.3439 48.8447 68.8116 0.0 77.264 50.5762 85.3722 101.0918 71.3365 13.6031 1170.1513 665.5517 665.5517 284.7287 63.2306 162.8156 177.1211 188.2133 283.9687 1152.7352 138.8928 266.4441 270.7817 114.1602 367.3351 161.34 270.6829 1164.7428;
	3.7686 50.9222 91.2783 85.1808 14.9878 32.7287 0.0 18.0383 13.4408 15.2115 28.1183 41.947 63.1509 64.338 198.6996 74.8589 92.8805 98.4256 40.0499 72.2196 0.0 76.3669 43.7793 87.6243 104.1311 73.5027 13.6697 1285.3641 674.572 674.572 362.4368 54.7874 133.4995 185.8935 201.7084 287.8174 1182.0579 122.9868 37.5906 278.9226 115.9922 363.0699 182.8086 274.2319 1194.371;
	3.7199 50.264 90.0361 116.7491 14.1306 31.7671 0.0 18.466 2.219 16.067 29.6995 44.3059 66.7022 63.8359 201.0246 75.7349 93.9673 99.5773 59.7664 72.0884 0.0 74.1232 65.6889 85.1787 104.1705 72.6756 13.5608 1241.5632 651.2451 651.2451 575.1017 49.1836 199.2212 185.5557 200.1343 277.8646 1209.6175 159.7174 2.5004 279.0281 115.9092 352.403 180.9634 275.9511 1222.2177;
	3.8569 52.1148 94.39 119.6239 14.8727 32.7839 0.0 18.8671 27.8492 30.8812 57.0834 85.1572 128.2037 66.9512 202.1712 76.1668 94.5033 100.1453 62.901 72.8206 0.0 76.4957 75.4578 89.5988 104.7204 73.5185 13.8125 1240.5085 668.2747 668.2747 486.031 67.0961 209.6699 187.4404 209.901 285.1305 1210.1894 211.4093 428.945 280.501 118.6258 363.6822 196.6428 279.0775 1222.7955;
	3.8349 51.8178 94.2899 120.2722 14.9591 32.9191 0.0 18.9834 28.2739 30.9067 57.1306 85.2277 128.3098 68.3322 197.765 74.5068 92.4437 97.9627 61.1686 73.2488 0.0 76.8112 74.5692 88.4841 104.8523 74.5444 13.71 1305.8443 772.9468 772.9468 611.9822 108.4282 203.8955 188.5426 214.2306 329.7906 1259.1549 252.5298 457.5086 280.8544 119.432 365.1824 200.8113 280.3045 1272.2711;
	3.8356 51.8271 94.6872 119.4416 15.0143 33.3625 28.9389 18.7904 28.1687 29.0204 53.6438 80.026 120.4788 67.369 193.3433 72.841 90.3768 95.7724 69.2958 71.7787 9.6463 77.8459 74.5637 88.4217 106.0627 73.1481 13.6276 1333.0804 786.2548 786.2548 604.3108 108.1076 230.986 184.7587 211.211 335.4687 1251.4039 242.5269 469.1223 284.0965 121.5699 370.1016 200.1191 284.3619 1264.4393;
];