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
	3.5597 48.0996 90.4379 112.5656 15.2053 13.6621 13.7987 17.7468 25.673 20.9887 38.7973 57.8779 87.1348 8.2141 17.1225 6.4508 8.0038 8.4816 10.9356 27.2491 4.5996 31.8781 55.5037 88.736 103.3484 73.0285 8.1006 582.7563 383.8039 383.8039 210.0232 38.0489 36.4521 70.1392 25.7523 163.7563 500.5294 54.9696 276.0929 276.8261 13.1487 151.5577 113.5567 247.7546 505.7433;
	3.5608 48.1143 91.0488 111.6485 14.9502 15.497 12.7813 16.3802 23.7104 23.1853 42.8576 63.9351 96.254 7.6598 13.8091 5.2025 6.4549 6.8403 11.7695 16.5046 4.2604 36.1596 62.2565 89.0979 102.0822 72.4888 6.262 568.5445 354.9332 354.9332 161.6142 34.3174 39.2317 42.4829 24.0144 151.4381 473.2059 51.258 282.2315 273.4343 11.2848 171.9133 110.1502 238.1471 478.1351;
	2.8619 38.6703 90.0926 109.8471 14.3723 10.7128 11.4813 17.1494 24.7787 24.278 44.8775 66.9484 100.7905 8.9454 15.1118 5.6933 7.0639 7.4856 19.9155 23.5401 3.8271 24.9966 65.3588 89.5562 100.9372 74.384 7.3631 525.5022 325.6112 325.6112 138.334 32.2785 66.385 60.5924 28.045 138.9275 384.8327 38.1709 224.4995 270.3675 6.1068 118.8408 76.7005 224.6919 388.8414;
	2.1748 29.3861 89.0199 101.2822 14.045 0.0 9.4274 15.7868 20.9263 20.4307 37.7659 56.3393 84.8185 10.3067 12.1709 4.5853 5.6892 6.0288 12.9348 24.2029 3.1425 0.0 53.9798 89.6534 99.4593 75.2522 6.503 412.2237 246.3176 246.3176 150.4299 30.5816 43.116 62.2982 32.313 105.0955 283.0825 35.4454 117.9308 266.4088 0.0 0.0 52.6902 215.1403 286.0313;
	2.1102 28.513 88.8522 108.1048 14.0531 7.0775 9.8955 16.3511 14.6607 18.5665 34.3199 51.1986 77.0792 13.921 15.0942 5.6867 7.0557 7.4769 20.0351 25.5249 3.2985 16.5141 54.3515 89.1015 100.3823 74.8076 8.7615 310.9948 201.6511 201.6511 136.7569 27.9184 66.7838 65.7011 43.6441 86.0378 162.7341 34.1907 145.2155 268.881 6.7873 78.5127 66.9173 224.9993 164.4293;
	2.9541 39.9161 91.4018 111.7155 14.2033 19.9888 10.7015 17.4965 5.0247 16.8089 31.0709 46.3517 69.7823 29.4422 17.5059 6.5952 8.183 8.6715 31.8801 26.7952 3.5672 46.6405 55.7507 89.6583 103.892 75.2188 8.0962 288.2445 172.7511 172.7511 118.8178 24.962 106.2669 68.971 92.3052 73.7072 141.0331 32.8199 176.1977 278.2822 9.6577 221.7424 78.9341 225.312 142.5022;
	2.46 33.2403 89.691 110.1118 14.1675 20.2957 10.7073 17.0748 7.5637 20.112 37.1767 55.4603 83.4951 39.911 23.9764 9.033 11.2076 11.8767 35.7404 36.0265 3.5691 47.3566 63.7399 88.4 102.0227 76.0962 10.7377 244.6441 192.0587 192.0587 96.3376 17.2183 119.1348 92.7323 125.1262 81.9451 143.0144 23.5599 144.933 273.2752 8.6985 225.1468 84.5829 242.4671 144.5042;
	1.6423 22.1907 67.3491 109.9608 14.2997 16.3597 11.2066 17.1495 15.1168 22.3112 41.242 61.5249 92.6254 38.634 29.6007 11.1519 13.8366 14.6627 52.9728 58.5525 3.7355 38.1726 60.2403 87.8425 101.5357 73.1842 11.6569 146.6493 162.7943 162.7943 85.5612 8.5187 176.576 150.7143 121.1227 69.4589 114.5944 26.22 165.4418 271.9705 8.5668 181.4836 87.7374 219.5188 115.7881;
	2.8389 38.3601 86.0305 103.249 14.7931 22.5675 10.3167 17.5547 19.0023 22.759 42.0697 62.7598 94.4845 46.1327 24.0922 9.0766 11.2617 11.9341 65.279 54.7872 3.4389 52.6574 61.7165 88.8446 100.8113 71.9435 11.6855 157.6244 131.156 131.156 80.164 7.7445 217.5966 141.0225 144.6324 55.9599 118.7518 21.3957 144.5956 270.0304 18.8131 250.3484 78.6591 255.5147 119.9888;
	2.041 27.5781 82.725 106.1088 12.641 13.6672 9.4204 17.0058 25.4194 21.74 40.1861 59.9497 90.254 45.3427 10.3512 3.8998 4.8386 5.1275 69.8207 44.1291 3.1401 31.8902 53.4465 85.9842 98.0828 71.1141 11.4721 228.0866 185.9729 185.9729 71.5023 8.5644 232.7358 113.5883 142.1553 79.3484 189.8128 23.7165 51.3062 262.7217 3.3735 151.6153 75.9271 221.0819 191.79;
	1.655 22.3624 75.6507 99.2998 12.5824 24.45 13.3712 15.8484 25.79 25.1688 46.5241 69.4048 104.4886 52.6684 5.4838 2.066 2.5634 2.7164 63.6615 34.366 4.4571 57.05 59.434 85.9049 89.7075 70.9644 11.1504 390.8237 289.6712 289.6712 150.1768 14.5717 212.205 88.4581 165.1224 123.593 316.5838 33.0794 171.2798 240.288 0.491 271.2319 91.2618 188.2826 319.8816;
	1.7039 23.0239 81.9259 87.57 12.0755 28.2975 18.7464 16.3152 25.8543 24.1728 44.6831 66.6584 100.3538 56.5981 32.984 12.4265 15.4181 16.3386 75.485 51.0098 6.2488 66.0275 66.1772 85.0029 91.0752 70.5742 11.5581 449.02 336.5933 336.5933 252.6487 15.9925 251.6168 131.2994 177.4427 143.6131 380.2484 41.4868 192.6599 243.9515 0.0 313.9136 103.3441 183.6859 384.2094;
	2.783 37.6039 85.172 84.356 14.1243 29.3474 18.4683 14.6494 26.2787 22.2654 41.1573 61.3986 92.4352 60.5415 42.9542 16.1828 20.0786 21.2773 81.0328 58.2647 6.1561 68.4772 65.0335 84.7324 94.2717 72.1149 10.4979 636.0512 419.2158 419.2158 299.2304 21.5875 270.1092 149.9734 189.8059 178.8654 567.4439 54.4592 210.8467 252.5136 0.0 325.56 119.2915 211.4215 573.3548;
	3.4983 47.2691 86.3063 102.5351 14.2928 29.2934 21.0139 16.9674 25.9755 25.8992 47.8743 71.4191 107.521 58.2789 65.1175 24.5326 30.4386 32.2559 81.9582 55.2676 7.0046 68.3512 53.9387 85.2596 95.46 74.0531 11.1758 757.3051 534.8055 534.8055 371.2036 20.0244 273.194 142.2589 182.7123 228.1837 701.7805 74.5274 269.4845 255.6965 0.0 324.9613 125.4011 259.5218 709.0907;
	3.5997 48.6396 85.7851 102.3243 14.2219 31.4581 22.6036 15.8583 26.0632 18.9267 34.9857 52.1918 78.5745 60.1341 80.8533 30.461 37.7942 40.0506 78.277 56.5459 7.5345 73.4023 31.3305 84.1747 92.6675 72.6511 11.7082 948.4116 600.1818 600.1818 448.3334 30.5024 260.9232 145.5493 188.5286 256.0776 891.8102 103.8778 369.3077 248.2166 0.0 348.9756 127.1955 248.7368 901.0999;
	3.5949 48.575 88.1603 104.7871 13.9906 31.4787 25.0795 15.7191 26.2844 13.2843 24.5558 36.6325 55.15 63.448 126.8114 47.7754 59.2769 62.8159 85.6165 66.9722 8.3598 73.4503 37.6998 84.3588 96.3354 70.5761 11.1894 1024.5936 668.5988 668.5988 626.2765 44.0331 285.3885 172.3866 198.9181 285.2688 918.7078 153.7515 362.3494 258.0412 0.0 349.2038 141.6585 263.0388 928.2776;
	3.6012 48.6605 87.2314 111.5559 14.0982 31.5374 27.2521 17.4606 25.8506 9.3609 17.3034 25.8133 38.8617 65.3492 152.9541 57.6246 71.4971 75.7656 85.8097 69.5528 9.084 73.5872 2.4717 83.4376 98.5734 72.5879 12.2505 1003.6116 702.8168 702.8168 698.2917 77.3754 286.0323 179.0292 204.8785 299.8685 891.4247 205.6855 368.7484 264.036 0.0 349.8546 169.265 271.6746 900.7104;
	3.7815 51.096 89.9206 113.859 14.1854 32.8912 29.4986 18.376 26.9305 8.7434 16.1621 24.1106 36.2984 69.1034 190.7486 71.8634 89.1639 94.4871 90.8733 73.0313 9.8329 76.746 6.2548 84.0333 101.6242 72.6414 13.2085 1119.5657 741.8677 741.8677 709.0469 90.4605 302.9109 187.9829 216.6486 316.5302 996.6542 234.7259 434.9208 272.2076 107.4284 364.8726 191.2248 266.3482 1007.036;
	3.7958 51.2896 88.6477 117.49 14.4754 32.24 29.8374 13.5435 26.8979 9.0636 16.754 24.9936 37.6278 65.5614 189.414 71.3606 88.5401 93.826 86.5263 70.3688 9.9458 75.2267 19.1954 84.5247 102.124 67.289 13.0366 1159.3118 741.5058 741.5058 689.2544 103.8875 288.4211 181.1295 205.544 316.3758 1005.9761 225.3208 426.9709 273.5465 115.7284 357.6493 205.7556 274.0247 1016.455;
	3.7747 51.0039 94.1112 113.0379 14.7174 32.4718 29.644 9.2973 26.6946 8.698 16.0781 23.9853 36.1098 65.0458 194.6979 73.3513 91.01 96.4434 84.7793 71.1598 9.8813 75.7675 17.2333 41.7844 51.8394 67.9682 11.6068 1151.9845 757.1268 757.1268 726.1157 107.426 282.5977 183.1656 203.9274 323.0408 1020.7412 238.5791 436.3735 138.8555 121.5764 360.2203 203.4996 250.0189 1031.3739;
	3.8735 52.3392 94.5252 121.2629 14.887 33.6898 30.3546 18.9073 18.7016 10.0783 18.6296 27.7917 41.8402 60.5461 187.961 70.8132 87.8608 93.1063 85.1821 70.2887 10.1182 78.6095 10.245 82.4489 106.3388 75.0551 13.9412 1158.6062 778.0153 778.0153 749.3297 107.3338 283.9405 180.9233 189.8202 331.9532 1021.1502 240.9682 444.1989 284.8362 121.2588 373.7321 211.988 282.0067 1031.7872;
	3.7895 51.2042 92.495 121.219 14.8435 33.0222 29.9287 17.9016 9.2975 10.8538 20.063 29.9301 45.0596 56.8051 186.3804 70.2177 87.122 92.3233 84.0793 70.2719 9.9762 77.0518 12.6791 85.9399 105.0179 74.6963 13.6646 1173.5768 748.0305 748.0305 697.7887 104.3455 280.2644 180.88 178.0916 319.1597 1038.6403 244.4667 439.9824 281.2979 117.6927 366.3262 210.2114 253.9663 1049.4595;
	3.8534 52.0681 94.713 119.072 14.9295 33.1279 30.6109 18.411 17.3246 8.4683 15.6536 23.3521 35.1564 57.4059 189.2555 71.3009 88.4659 93.7475 85.1826 68.5582 10.2036 77.2985 12.8653 87.2137 101.4299 76.3449 13.8514 1166.1084 751.6795 751.6795 633.775 111.1995 283.942 176.4689 179.9752 320.7166 1048.7499 241.4707 449.8548 271.6871 120.36 367.499 208.3251 270.9862 1059.6744;
	3.7202 50.2686 92.3231 116.0415 14.5022 33.1696 32.1375 18.234 9.893 5.3427 9.8759 14.7329 22.1803 55.6982 186.1823 70.1431 87.0294 92.2252 85.7691 66.6748 10.7125 77.3957 11.2756 86.7518 106.3055 74.8317 13.5917 1201.5717 761.3626 761.3626 637.8297 113.0692 285.897 171.6212 174.6213 324.848 1083.0974 246.0832 438.8361 284.747 122.3365 367.9611 204.9823 274.9355 1094.3796;
];