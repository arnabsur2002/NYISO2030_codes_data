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
	3.7495 50.6634 87.2752 106.7125 15.3085 33.4592 27.4201 12.1928 27.8176 28.1959 52.1197 77.7523 117.0557 54.1792 180.8957 68.1514 84.5582 89.6065 85.0925 71.2487 9.14 78.0714 73.5891 87.3304 88.1222 63.8126 9.8196 1159.7153 761.1185 761.1185 696.2258 107.5494 283.6417 183.3944 169.859 324.7439 1038.1842 279.0733 449.726 236.0416 110.7033 371.1738 199.7184 220.8168 1048.9986;
	3.8344 51.8108 83.6931 100.775 15.2375 33.1883 28.1461 11.5966 27.9 26.0286 48.1134 71.7758 108.058 53.2591 186.3304 70.1989 87.0986 92.2986 82.7649 68.3939 9.382 77.4394 71.4677 80.4736 84.0941 58.8918 8.0654 1153.3417 735.3442 735.3442 630.9593 107.3303 275.8831 176.0462 166.9745 313.7468 1092.6159 250.7486 451.6366 225.252 109.0436 368.1691 205.6716 200.3965 1103.9973;
	3.8096 51.4762 88.1607 94.58 15.3873 34.2308 25.6087 10.1584 28.392 27.6133 51.0428 76.1458 114.637 48.5487 190.4063 71.7345 89.0039 94.3175 86.9522 71.0187 8.5362 79.872 71.1002 82.9518 76.5722 58.8328 9.2058 1162.1523 758.3527 758.3527 700.973 110.6006 289.8406 182.8022 152.2068 323.5638 1051.4893 249.8455 454.2588 205.1042 113.5462 379.7341 192.7096 208.2052 1062.4424;
	3.6821 49.753 86.616 98.038 15.3502 34.1415 23.3821 10.7057 27.6096 26.6937 49.3429 73.61 110.8194 55.48 185.1774 69.7645 86.5596 91.7274 84.5777 69.1376 7.794 79.6635 69.4598 81.5897 72.5801 53.1704 8.2648 1179.822 796.3039 796.3039 755.1045 111.7606 281.9257 177.9603 173.9373 339.7564 1151.4963 259.2736 450.3753 194.4111 108.3387 378.7431 196.5084 222.3695 1163.491;
	3.6715 49.6095 80.5872 81.3225 15.2666 32.4994 19.2259 9.3253 24.2646 26.6573 49.2757 73.5096 110.6683 58.1653 187.6997 70.7148 87.7387 92.9768 85.1963 66.6924 6.4086 75.8319 69.6005 81.8106 60.8498 50.7651 7.5431 1151.5502 760.2381 760.2381 711.0248 106.6513 283.9876 171.6663 182.356 324.3683 1100.5127 245.764 401.9774 162.9906 109.0238 360.5264 201.0914 164.419 1111.9764;
	3.595 48.576 75.4358 74.5743 14.8719 31.2201 16.4457 6.9325 25.2987 28.5405 52.7567 78.7026 118.4864 55.347 182.2471 68.6605 85.1899 90.2759 78.9236 65.5516 5.4819 72.8469 72.5311 77.2134 37.733 35.5142 5.4879 1159.5174 698.9361 698.9361 628.551 92.4548 263.0787 168.73 173.5202 298.2127 1099.4928 218.8595 323.9508 101.0705 90.5699 346.3352 193.8814 154.9597 1110.9459;
	2.9239 39.5078 61.4109 57.7951 14.3403 27.5496 14.1199 5.1636 19.4347 27.8419 51.4654 76.7762 115.5862 61.038 178.4362 67.2248 83.4086 88.3882 83.6816 65.1777 4.7066 64.2824 70.4437 70.1219 20.3461 24.408 3.9822 1166.0063 654.8313 654.8313 498.6254 62.1715 278.9385 167.7675 191.3623 279.3947 1040.4864 193.9817 257.952 54.4985 79.0383 305.6168 154.3481 94.6877 1051.3248;
	3.32 44.8606 61.5657 61.522 14.1574 27.3397 15.0848 4.6642 16.792 24.2373 44.8023 66.8363 100.6217 57.6867 160.9942 60.6536 75.2554 79.7483 84.3317 58.1601 5.0283 63.7926 56.1335 69.9927 35.2821 16.5622 2.6683 1222.6398 689.7298 689.7298 580.5091 64.367 281.1057 149.7042 180.8556 294.2847 1078.9064 197.9141 211.0369 94.5056 73.5606 303.2882 145.3174 123.6706 1090.145;
	2.9158 39.3994 51.3833 53.5603 14.2456 23.3039 15.189 2.7742 20.3594 20.8302 38.5043 57.4408 86.4768 60.3832 169.4971 63.857 79.23 83.9602 84.8329 65.6605 5.063 54.3759 41.3275 63.987 42.8864 8.5414 1.7662 1211.8823 772.2708 772.2708 703.4072 89.3878 282.7764 169.0102 189.3094 329.5022 1102.4686 238.1047 226.704 114.8742 46.9133 258.5184 138.5116 134.087 1113.9526;
	2.4037 32.4789 36.0988 40.9015 14.1087 16.8142 19.6347 0.5266 21.6641 17.8959 33.0803 49.3494 74.2952 61.8981 169.077 63.6988 79.0337 83.7521 85.6264 64.9141 6.5449 39.2332 36.6355 38.1184 0.0 1.7661 0.042 1130.382 785.5901 785.5901 723.6764 109.7826 285.4213 167.089 194.059 335.1851 1154.6868 228.3504 344.3281 0.0 29.749 186.526 115.778 42.4127 1166.7148;
	1.4975 20.2346 0.0 0.0 12.1057 10.6325 16.8178 0.1758 18.4737 13.6545 25.2402 37.6533 56.6869 62.2206 169.4258 63.8302 79.1967 83.9249 87.104 67.8335 5.6059 24.8091 28.3061 10.8575 0.0 0.9247 0.579 1122.6662 778.8198 778.8198 706.6084 104.8094 290.3468 174.6037 195.0699 332.2965 1083.1481 225.2655 334.6609 0.0 24.8967 117.9495 74.4482 48.8583 1094.4309;
	1.1041 14.9186 3.7515 1.7056 8.2452 7.1654 17.6569 0.1917 17.4863 15.1514 28.0071 41.7811 62.9012 62.0164 176.4602 66.4804 82.4849 87.4094 86.7565 67.8084 5.8856 16.7193 37.2372 0.0 3.7302 1.4873 0.6555 998.5063 709.6845 709.6845 650.0241 102.843 289.1883 174.539 194.4298 302.7987 1031.1805 189.5795 366.0009 9.9916 11.2367 79.4883 52.4966 33.0529 1041.922;
	1.0077 13.6165 23.5127 22.7478 8.5622 6.6965 17.3855 1.8036 16.1489 14.3852 26.5908 39.6683 59.7203 61.6354 173.7711 65.4672 81.2279 86.0773 80.9842 65.2501 5.7952 15.6251 39.741 28.2123 18.3989 9.3284 2.4496 935.7742 696.7406 696.7406 637.1544 97.2542 269.9475 167.9539 193.2352 297.276 996.6996 197.6791 416.3567 49.2829 26.0155 74.2863 45.6811 36.65 1007.0819;
	0.9055 12.2349 20.7047 29.5718 7.7837 7.3865 12.3583 2.5517 13.8442 17.2371 31.8625 47.5326 71.5601 62.0658 179.0202 67.4448 83.6815 88.6775 85.4167 66.273 4.1194 17.2353 47.1568 32.3224 21.7253 10.6152 3.9115 890.4065 680.5732 680.5732 620.0161 88.3021 284.7225 170.5869 194.5848 290.3779 865.2538 207.4521 405.9003 58.1928 30.9846 81.9414 41.1977 42.6134 874.2668;
	0.9144 12.3554 20.8875 0.6 6.2805 8.2455 11.0468 2.0878 14.2008 16.3848 30.2871 45.1823 68.0218 62.1258 176.8005 66.6086 82.644 87.5779 78.9768 68.7801 3.6823 19.2394 53.898 43.8792 23.4125 6.9106 3.8024 858.4969 644.2475 644.2475 590.1721 79.3979 263.2559 177.0402 194.7727 274.8789 824.0038 190.0336 349.2549 62.7121 32.1788 91.4698 35.9331 46.2813 832.5872;
	0.9531 12.878 16.0165 25.9272 6.6561 0.1462 5.6523 1.4484 10.0874 14.4084 26.6337 39.7322 59.8166 61.5452 167.0618 62.9396 78.0917 82.7539 81.2753 67.3193 1.8841 0.3411 48.9638 39.6571 22.3662 5.3214 2.4075 825.4065 503.6918 503.6918 520.6337 76.8777 270.9177 173.28 192.9526 214.9085 622.0674 180.9747 227.5361 59.9096 25.0431 1.6216 0.4546 23.9212 628.5473;
	0.6138 8.2941 2.0108 12.0334 6.39 2.6517 3.8644 3.3074 12.53 18.6713 34.5136 51.4875 77.5141 62.644 158.6578 59.7734 74.1633 78.591 80.8757 65.3154 1.2881 6.1873 55.7528 41.7402 15.4655 44.8219 1.8802 773.4741 525.9064 525.9064 550.1426 77.135 269.5856 168.1221 196.3974 224.3867 731.2226 183.6185 232.6311 41.4256 35.253 29.4163 10.1795 19.4512 738.8395;
	1.0934 14.7738 3.3387 51.524 2.8618 8.567 2.3558 3.5096 2.4796 20.035 37.0343 55.2479 83.1755 62.697 114.4782 43.129 53.5119 56.7066 78.3711 47.6792 0.7853 19.9897 67.1986 41.0576 16.2113 4.6275 1.9679 733.0127 514.3732 514.3732 582.8134 86.3005 261.2371 122.7264 196.5635 219.4659 719.7457 190.854 326.1408 43.4231 78.1153 95.0369 17.5598 2.8552 727.2431;
	0.456 6.1612 23.3895 41.9367 0.922 8.5895 0.0 2.1691 1.2086 23.186 42.859 63.9372 96.257 60.2421 104.8742 39.5108 49.0226 51.9493 2.4857 58.8224 0.0 20.0423 70.6105 50.9199 23.9971 9.5893 2.2123 788.818 488.2225 488.2225 595.4935 86.4782 8.2855 151.4089 188.8672 208.3083 666.9479 184.6296 319.5627 64.278 94.0763 95.2866 1.2719 27.115 673.8952;
	0.307 4.1486 27.7801 56.5094 2.3231 17.3247 0.6351 3.2374 5.0139 23.6964 43.8025 65.3447 98.3761 61.762 103.696 39.0669 48.4719 51.3657 24.5036 68.2549 0.2117 40.4243 69.0518 67.3509 36.4575 22.3357 3.0079 681.2505 361.3814 361.3814 603.6544 74.7304 81.6787 175.6883 193.6323 154.1894 583.7561 188.4165 67.155 97.6541 93.0977 192.1885 29.9247 11.6233 589.8369;
	0.6962 9.4078 44.9833 81.4645 6.025 16.5895 7.5082 4.6992 18.4553 24.8695 45.971 68.5797 103.2463 56.0326 120.169 45.273 56.172 59.5256 84.1225 70.0709 2.5027 38.7088 69.7028 83.7497 41.9901 16.4263 2.4379 572.1497 352.5875 352.5875 518.5078 59.609 280.4083 180.3626 175.6698 150.4373 621.0477 183.4536 325.2903 112.4736 98.3457 184.0329 63.2399 41.3027 627.517;
	0.4119 5.5655 42.084 72.2797 0.5293 1.4294 0.6154 2.7575 1.1798 21.3186 39.4072 58.7877 88.5046 40.0882 138.2337 52.0787 64.6162 68.4739 84.3476 69.3287 0.2051 3.3352 69.2666 75.5412 40.7773 18.8216 1.4444 411.2538 337.1363 337.1363 493.9272 54.457 281.1586 178.4524 125.6818 143.8448 666.608 157.6327 36.4759 109.2249 80.8438 15.8565 24.1663 35.929 673.5518;
	0.5982 8.0825 38.9704 64.749 7.5331 4.32 1.3841 2.8655 1.7968 16.2334 30.0072 44.7648 67.3932 20.3985 139.0543 52.3879 64.9998 68.8804 86.0657 68.5269 0.4614 10.0801 45.4218 67.6032 36.4264 29.69 1.5545 406.8415 388.7095 388.7095 532.0367 56.8059 286.8857 176.3884 63.9521 165.8494 523.9953 138.2331 12.4849 97.5707 56.3634 47.9237 51.411 73.0339 529.4536;
	0.0455 0.6153 47.2227 65.503 0.2591 0.0004 0.7725 5.7834 0.0 19.6942 36.4045 54.3084 81.761 6.2574 148.4085 55.912 69.3723 73.514 89.6816 67.6517 0.2575 0.001 68.2841 74.8017 48.0899 40.7787 2.7697 263.9462 302.1776 302.1776 397.2453 52.1451 298.9387 174.1357 19.6179 128.9291 355.3808 118.6302 1.0247 128.8122 55.266 0.0047 6.9745 63.0263 359.0827;
];