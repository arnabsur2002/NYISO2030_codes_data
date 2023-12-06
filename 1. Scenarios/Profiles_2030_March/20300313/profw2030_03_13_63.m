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
	0.7522 10.1637 53.8823 64.5981 7.324 7.025 0.0 7.8854 2.9488 20.1366 37.2222 55.5282 83.5974 10.4591 138.6894 52.2504 64.8292 68.6996 79.2501 66.2211 0.0 16.3916 68.6863 70.5947 49.1778 47.4728 4.6898 192.6937 344.0187 344.0187 218.1701 44.8859 264.167 170.4532 32.7907 146.7813 409.2748 78.2131 1.8 131.7262 62.5917 77.9304 5.8757 69.1072 413.5381;
	0.554 7.4851 51.2106 63.1038 6.6622 6.9516 1.5364 10.8605 1.7034 12.798 23.6569 35.2915 53.1312 10.0692 110.1579 41.5013 51.4924 54.5666 71.3249 65.4863 0.5121 16.2205 35.6822 72.079 53.4188 54.5861 6.4469 77.8477 224.9634 224.9634 140.7103 29.0028 237.7497 168.5618 31.5682 95.9844 298.846 78.9321 12.0659 143.0862 75.8592 77.1167 11.8644 91.7261 301.959;
	0.3949 5.3363 60.5296 72.7745 6.2583 11.7391 4.8552 11.5945 5.2723 10.5145 19.436 28.9946 43.6512 16.5293 57.0653 21.499 26.6747 28.2672 61.9791 53.9081 1.6184 27.3912 30.2697 81.4453 56.7975 59.8304 6.87 23.9293 23.7114 23.7114 3.8255 14.0048 206.597 138.7597 51.8216 10.1169 172.9035 0.0 25.6072 152.1361 70.145 130.2256 35.9145 104.4203 174.7046;
	0.4856 6.562 66.3288 78.2634 7.6116 11.9985 6.3949 13.1437 1.8312 14.6667 27.1111 40.4444 60.8888 10.6392 74.0338 27.8918 34.6065 36.6726 45.6814 56.9948 2.1316 27.9965 48.7914 80.6629 60.1731 68.2839 7.673 29.8256 36.5989 36.5989 11.4885 16.0376 152.2713 146.7048 33.3554 15.6155 25.6311 0.0 46.8307 161.178 63.3638 133.1034 29.6955 139.3308 25.8981;
	0.5539 7.4848 78.2243 79.6495 10.1341 10.8688 13.43 13.1181 13.4678 15.0194 27.7632 41.4172 62.3533 27.1009 112.3371 42.3223 52.5111 55.646 57.2058 62.8944 4.4767 25.3606 48.41 81.0699 74.2382 66.7827 8.4222 52.5199 61.1527 61.1527 25.1844 2.871 190.686 161.8904 84.9651 26.0918 91.3045 0.0 130.2718 198.8524 61.0949 120.5713 46.5708 146.9468 92.2556;
	0.5122 6.9204 79.9693 65.2808 9.8504 4.1379 3.5847 11.6009 5.0105 8.0958 14.9649 22.3247 33.6097 11.6083 126.9266 47.8189 59.3308 62.8729 80.484 57.4102 1.1949 9.6551 35.633 81.1412 56.5627 67.1549 7.6989 54.0056 35.9697 35.9697 11.8787 8.4633 268.2799 147.774 36.3937 15.3471 52.2943 0.0 36.1106 151.5073 50.1754 45.9029 24.3402 142.0175 52.8391;
	0.5132 6.9347 61.0374 45.1639 8.4052 2.803 3.5549 7.9959 1.9182 7.0095 12.957 19.3293 29.1001 19.8251 112.8173 42.5033 52.7355 55.8839 66.1617 56.6976 1.185 6.5404 24.1566 60.2082 38.8364 64.6292 4.2789 53.7909 34.7422 34.7422 35.0817 0.5405 220.5389 145.9398 62.1544 14.8233 29.8683 0.0161 0.4028 104.026 26.0994 31.0952 32.0189 150.2641 30.1794;
	0.6892 9.312 35.8402 28.1077 3.6859 3.1195 4.5356 6.2752 1.9084 4.6742 8.6402 12.8895 19.4051 21.9306 65.1435 24.5424 30.4508 32.2687 21.0169 40.0582 1.5119 7.2789 12.5512 37.505 33.4786 52.7269 3.8057 27.8617 25.4613 25.4613 17.1146 0.0 70.0563 103.1099 68.7555 10.8635 39.6981 0.0043 30.4306 89.6747 10.177 34.6057 21.6641 113.1424 40.1116;
	0.6492 8.7714 30.0364 26.0791 3.2984 1.9824 0.1993 5.0947 0.0272 0.0 0.0 0.0 0.0 27.8156 17.5223 6.6014 8.1906 8.6796 35.4467 15.8901 0.0664 4.6257 4.2212 38.2462 27.6824 47.7322 3.5592 21.5309 35.3727 35.3727 8.5683 0.0 118.1556 40.9011 87.2057 15.0924 17.0235 0.0 10.319 74.1493 0.8281 21.9919 0.0822 83.7096 17.2008;
	0.7128 9.6319 33.3241 28.4357 6.8823 7.2943 6.2166 4.8089 2.1659 0.0293 0.0542 0.0808 0.1217 30.032 8.7503 3.2966 4.0902 4.3344 28.5779 5.6204 2.0722 17.0201 8.5634 40.2759 29.3033 45.8862 3.2333 45.7183 110.422 110.422 16.2375 0.0627 95.2596 14.467 94.1543 47.1134 34.8966 0.0016 52.1123 78.4911 3.4433 80.9183 46.4161 101.6482 35.2601;
	0.903 12.2012 46.2796 32.1714 10.3801 2.5636 1.7791 4.1021 2.5532 0.0002 0.0004 0.0006 0.0009 11.57 0.0 0.0 0.0 0.0 0.7784 1.1335 0.593 5.9816 15.0503 45.3772 44.8199 52.0961 1.5428 67.8522 70.9575 70.9575 6.0696 0.0925 2.5947 2.9178 36.2735 30.2752 63.0313 0.0183 2.8765 120.0532 3.9482 28.4384 0.0166 106.9552 63.6879;
	1.6737 22.6155 69.1482 26.0939 13.4775 6.2243 0.475 5.2 3.9456 0.0074 0.0137 0.0204 0.0307 7.0369 4.1849 1.5766 1.9562 2.073 1.6706 2.2509 0.1583 14.5233 44.7934 59.1975 7.1875 48.5105 3.2501 153.2465 108.4885 108.4885 1.4101 3.1227 5.5687 5.7938 22.0617 46.2884 124.9244 0.0111 0.0006 19.2524 16.3268 69.0478 19.816 144.314 126.2256;
	2.3264 31.4348 89.0187 65.1857 14.314 4.0913 2.0688 3.86 6.0534 22.5673 41.7153 62.231 93.6884 10.7491 3.4502 1.2998 1.6128 1.709 1.5316 2.4069 0.6896 9.5463 33.2103 69.9398 67.9223 58.0453 3.0351 231.1374 163.2155 163.2155 1.1487 2.9574 5.1053 6.1954 33.6998 69.6386 183.038 0.0731 0.0 181.9348 36.0757 45.3859 108.3077 188.1547 184.9446;
	1.8545 25.0582 82.9688 54.2464 14.4035 21.0549 2.5873 2.2646 13.8922 1.3081 2.4181 3.6073 5.4307 26.0163 4.1538 1.5649 1.9417 2.0576 0.6608 0.1064 0.8624 49.1282 42.5758 63.4218 21.9411 34.3949 2.7793 178.7257 210.0367 210.0367 1.0717 4.0301 2.2027 0.2739 81.5647 89.6156 190.5207 6.5162 0.2131 58.7708 26.9502 233.5694 83.3679 148.1507 192.5053;
	2.2412 30.2842 23.1908 31.8949 10.2561 7.1828 1.906 0.0018 23.2486 4.0224 7.4353 11.092 16.6989 18.0711 3.7353 1.4072 1.746 1.8503 3.7935 0.0 0.6353 16.7599 29.7474 39.1156 4.0401 0.8689 0.1023 268.4052 259.6583 259.6583 80.4713 5.1429 12.6451 0.0 56.6553 110.7875 261.5146 10.3111 0.0 10.8216 7.2743 79.6814 86.4643 107.4944 264.2387;
	3.0068 40.6289 85.1235 37.0036 14.3246 3.2824 7.2752 0.0117 8.932 0.0147 0.0272 0.0405 0.061 32.4705 2.6573 1.0011 1.2421 1.3163 5.166 0.0 2.4251 7.6589 40.8025 41.6228 3.9173 1.813 0.0251 433.9495 291.331 291.331 167.3793 11.0782 17.2201 0.0 101.7994 124.3012 351.6984 32.8509 6.1671 10.4928 1.904 36.4124 2.9579 184.9576 355.3619;
	3.3855 45.7457 34.775 34.3263 15.0474 2.0321 0.2017 0.0005 5.4623 0.387 0.7154 1.0672 1.6067 5.257 2.1122 0.7958 0.9873 1.0463 5.8997 0.0 0.0672 4.7415 0.5471 38.4192 3.7188 2.6944 0.089 394.5687 384.3127 384.3127 199.7174 26.2212 19.6658 0.0 16.4815 163.9734 483.3119 68.2835 0.1685 9.9611 12.5855 22.5426 136.983 229.8594 488.3464;
	2.8122 37.9988 27.789 9.7968 14.9892 19.531 0.0 0.0049 5.6971 0.04 0.0739 0.1102 0.1659 6.277 0.0026 0.001 0.0012 0.0013 6.3135 0.0701 0.0 45.5724 12.3111 31.5806 5.6269 0.0311 0.0 587.6623 500.9452 500.9452 349.938 37.7674 21.0448 0.1803 19.6792 213.7366 606.6092 94.1393 0.0 15.072 10.3322 216.6641 114.2963 223.5105 612.9281;
	2.8547 38.5733 82.8226 0.1007 14.8503 24.9817 0.0 0.0 0.3927 6.7026 12.3897 18.483 27.826 5.1784 0.0 0.0 0.0 0.0 2.0825 33.6546 0.0 58.2906 23.2957 3.9784 0.0 52.0041 0.0 818.8371 462.0365 462.0365 378.9455 48.9224 6.9417 86.627 16.235 197.1356 668.029 76.3511 0.0 0.0 0.7462 277.1302 107.0166 203.0304 674.9876;
	2.8084 37.9478 0.0807 0.0 14.0932 0.0 17.6089 0.0 25.8249 13.4824 24.922 37.1787 55.9724 3.3114 0.0 0.0 0.0 0.0 0.3498 15.144 5.8696 0.0 52.5756 0.0016 0.0 36.9145 0.0 750.6073 408.7675 408.7675 320.9513 47.3996 1.166 38.9807 10.3816 174.4075 565.0042 69.5941 0.0 0.0 1.5421 0.0 102.1915 169.8696 570.8897;
	2.5206 34.0582 82.2129 0.0 13.9822 0.0 0.0 0.0 25.9143 14.7604 27.2843 40.7029 61.2779 7.8107 12.058 4.5428 5.6364 5.9729 0.0322 22.2129 0.0 0.0 57.3969 76.5827 0.0 51.2807 0.0 630.6806 383.514 383.514 243.9682 58.0399 0.1072 57.1761 24.4877 163.6326 559.7403 72.7058 0.0 0.0 0.5076 0.0 99.289 162.8669 565.5709;
	2.8185 38.0847 86.5251 1.4511 14.1302 21.3385 12.4014 11.4731 26.4813 22.3137 41.2465 61.5316 92.6355 10.1776 6.4553 2.432 3.0175 3.1976 6.4375 52.4321 4.1338 49.7899 51.2449 77.9383 89.632 67.6844 1.8301 764.0459 320.4836 320.4836 225.0222 65.1082 21.4585 134.9603 31.9081 136.7397 543.8856 105.4414 12.7531 240.0858 13.4172 236.7156 3.6768 188.2764 549.5511;
	3.5551 48.0367 88.658 113.4455 13.8767 23.9633 13.764 14.3926 27.258 22.8961 42.3231 63.1378 95.0535 8.3467 60.0501 22.6235 28.07 29.7458 23.6178 68.2212 4.588 55.9144 58.5611 82.6787 91.4286 69.1243 6.447 773.605 349.7916 349.7916 287.5187 49.7038 78.7259 175.6015 26.1681 149.2444 455.1846 101.3338 14.5942 244.898 11.6331 265.8329 139.3108 197.5129 459.9261;
	3.4164 46.1637 90.167 110.8215 13.4884 16.0833 11.6697 16.593 27.4817 24.555 45.3895 67.7122 101.9404 12.0663 48.4371 18.2484 22.6415 23.9932 15.8705 52.1789 3.8899 37.5278 58.5679 83.4221 98.8769 70.5039 6.818 762.5872 371.0391 371.0391 261.0147 48.2141 52.9017 134.3087 37.8295 158.31 446.6281 79.3393 306.4883 264.849 11.8797 178.4177 140.5292 225.8421 451.2805;
];
