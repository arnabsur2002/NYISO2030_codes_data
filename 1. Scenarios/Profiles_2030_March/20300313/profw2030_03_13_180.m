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
	0.7839 10.5922 62.0615 68.4618 7.5385 6.2896 13.1153 8.5932 22.2764 20.6531 38.177 56.9526 85.7418 66.3086 145.7888 54.9251 68.1478 72.2163 71.6049 69.7849 4.3718 14.6758 70.6922 78.9999 51.7999 50.2478 4.3461 192.1045 334.881 334.881 223.618 44.2965 238.6829 179.6264 207.8865 142.8826 370.716 87.7768 325.282 138.7497 70.5819 69.7729 40.1836 74.2899 374.5776;
	0.5968 8.0637 57.0986 61.1649 6.7224 9.4288 10.0615 10.9353 17.3664 12.5784 23.251 34.686 52.2195 66.0087 127.6236 48.0815 59.6566 63.2182 72.4552 71.5982 3.3538 22.0005 37.6774 75.434 51.7758 50.2098 6.1623 76.5101 223.0184 223.0184 151.7658 30.2428 241.5175 184.2939 206.9462 95.1545 286.4667 89.8044 172.9254 138.6853 80.8287 104.5967 31.1596 98.5693 289.4507;
	0.339 4.5808 61.8372 62.1301 4.9191 4.2235 3.3188 11.3488 0.6123 9.6528 17.8431 26.6184 40.0739 31.425 86.8978 32.7383 40.6197 43.0447 53.2813 68.0622 1.1063 9.8549 26.4034 76.6015 53.9191 54.2 6.2042 0.8426 4.0504 4.0504 6.3915 16.1704 177.6044 175.1924 98.5217 1.7282 147.6382 3.5264 54.02 144.4261 77.4144 46.8532 9.3518 105.2953 149.1761;
	0.4162 5.6238 65.6202 68.2016 7.2175 3.0111 8.5005 13.164 4.0809 14.5681 26.929 40.1727 60.4798 53.2387 94.3588 35.5491 44.1073 46.7405 37.9074 68.5885 2.8335 7.026 45.6893 80.1161 60.539 64.0738 7.3213 7.2158 9.8402 9.8402 11.0158 20.8284 126.3581 176.5471 166.9105 4.1985 6.9251 15.615 57.1616 162.158 72.7722 33.4036 13.5013 138.0957 6.9973;
	0.4825 6.5199 76.8191 69.8969 8.5161 6.2049 7.1224 13.3305 2.844 12.5738 23.2425 34.6733 52.2004 66.3066 123.9846 46.7105 57.9556 61.4156 49.4756 68.013 2.3741 14.4781 40.7197 78.4414 76.6849 64.6846 7.3374 25.3641 17.7477 17.7477 3.6474 9.0808 164.9187 175.0657 207.8801 7.5723 2.8314 1.6929 25.9938 205.406 70.2411 68.8328 23.4828 137.185 2.8609;
	0.5077 6.8596 80.882 62.4718 9.2002 4.3872 6.9896 13.3863 12.8223 9.1758 16.9613 25.3029 38.0934 66.3575 148.9416 56.1129 69.6216 73.7781 77.8371 70.2501 2.3299 10.2367 37.5797 81.0752 59.2949 69.8536 7.9476 16.0688 26.572 26.572 0.1018 10.3084 259.4571 180.8238 208.0396 11.3374 1.1116 8.8962 58.3763 158.8257 55.7493 48.6682 27.2185 139.7352 1.1232;
	0.4968 6.7124 60.5269 40.3465 8.7621 2.8115 4.3507 7.9549 2.9064 7.3185 13.5281 20.1813 30.3828 65.7338 116.7268 43.9761 54.563 57.8205 64.184 68.9799 1.4502 6.5602 25.3378 58.1559 34.7264 62.089 4.1112 23.2554 5.0016 5.0016 0.0 2.7431 213.9467 177.5545 206.0845 2.134 4.142 3.8699 85.4845 93.0171 28.1742 31.189 31.915 136.3176 4.1852;
	0.4811 6.5012 33.8468 24.817 3.3125 2.7996 4.7491 7.0441 2.3557 4.2559 7.867 11.7361 17.6686 34.3119 60.7919 22.903 28.4167 30.1132 18.0765 46.7222 1.583 6.5325 11.285 35.9175 29.424 60.1036 4.1401 7.0225 5.2417 5.2417 0.0 3.3079 60.2551 120.263 107.5724 2.2365 8.741 15.4187 66.5999 78.8143 8.2908 31.0574 5.6004 101.0447 8.832;
	0.641 8.6611 27.997 24.6374 2.9968 6.1651 12.1611 5.8388 1.3622 0.0 0.0 0.0 0.0 52.5097 14.7907 5.5723 6.9138 7.3266 12.7001 17.6334 4.0537 14.3852 3.4243 36.3207 24.9023 52.7941 4.2059 1.0894 38.745 38.745 0.2196 2.6855 42.3336 45.3884 164.6251 16.5312 4.3167 19.6489 286.9816 66.7026 2.2255 68.3913 20.0095 79.1571 4.3616;
	0.7407 10.008 35.5011 28.3212 7.4507 4.3238 5.6694 4.8586 4.4188 0.0074 0.0137 0.0204 0.0307 56.7351 5.1729 1.9489 2.418 2.5624 2.8937 13.3601 1.8898 10.0888 10.353 40.4786 31.4821 51.6335 3.0658 45.3977 112.3062 112.3062 24.2764 0.4259 9.6457 34.3889 177.8722 47.9173 32.0755 23.3646 313.5605 84.3271 3.3695 47.9648 52.2077 109.9079 32.4096;
	0.9119 12.3218 44.8511 1.8654 11.1681 3.3468 6.3678 3.5056 7.552 0.2201 0.4069 0.607 0.9138 49.3592 6.3216 2.3816 2.955 3.1314 2.6565 12.0266 2.1226 7.8093 27.993 40.455 40.9351 54.656 1.1821 49.9998 79.8708 79.8708 18.2212 1.3553 8.8551 30.9565 154.7477 34.0782 57.4981 34.1578 207.3232 109.6477 0.1366 37.1277 20.6933 109.4357 58.0971;
	1.7781 24.0257 64.1303 0.4833 13.6418 9.7252 15.5996 0.9233 22.3935 1.1458 2.118 3.1597 4.7569 60.8345 13.1274 4.9457 6.1363 6.5026 2.4084 11.3242 5.1999 22.6922 49.1332 56.6499 3.6088 50.5771 0.3709 165.7522 120.1531 120.1531 193.6952 8.3741 8.0279 29.1484 190.7245 51.2653 137.6981 108.0346 425.4398 9.6664 2.4006 107.8852 51.534 145.3948 139.1325;
	2.2921 30.9718 83.841 0.3283 14.598 3.2474 13.6805 0.4126 12.7206 21.9358 40.548 60.4896 91.0668 63.1508 11.7772 4.437 5.5051 5.8338 3.25 10.7169 4.5602 7.5772 30.0897 73.8215 69.635 57.522 0.2737 240.0323 191.0323 191.0323 336.8597 7.1376 10.8335 27.5853 197.9864 81.5071 207.1283 115.0506 364.1898 186.5223 10.3736 36.0241 119.5759 190.5909 209.2859;
	1.8653 25.2038 4.2179 1.2811 14.1978 19.6356 22.9896 3.3969 26.0322 0.2332 0.4312 0.6432 0.9683 63.7832 24.6527 9.2878 11.5237 12.2117 2.5064 9.0043 7.6632 45.8164 44.6086 34.5003 6.5659 35.5268 1.6729 216.8026 234.0447 234.0447 366.9932 18.6983 8.3545 23.1771 199.969 99.8591 213.5008 92.3313 457.0 17.5871 13.3794 217.8245 91.3638 148.8913 215.7248;
	2.3361 31.5652 19.6369 8.1802 9.9561 7.0086 20.3832 10.9586 20.1939 4.1931 7.7509 11.5628 17.4077 65.6824 10.8765 4.0977 5.0841 5.3877 1.7302 1.0792 6.7944 16.3533 29.782 47.6213 19.7087 53.8783 6.5743 292.3643 283.8648 283.8648 123.4639 9.9418 5.7674 2.7778 205.9233 121.1157 279.247 113.8118 457.0 52.7911 33.1357 77.7483 92.1758 115.6892 282.1558;
	3.1948 43.1683 88.4503 12.8566 14.0223 8.557 9.8068 7.5627 22.1254 0.6095 1.1267 1.6808 2.5304 66.1355 48.2537 18.1793 22.5558 23.9024 0.2734 6.9432 3.2689 19.9663 44.5958 63.0374 35.8579 56.0118 4.6295 366.6407 299.9577 299.9577 190.076 11.8105 0.9113 17.8718 207.3436 127.982 307.8575 47.7563 457.0 96.0481 8.0614 94.9255 34.8572 210.5937 311.0643;
	3.3475 45.2317 3.1247 1.2357 14.3057 0.6067 4.6479 0.3916 7.4675 0.0042 0.0078 0.0116 0.0175 30.0302 2.5275 0.9522 1.1814 1.252 0.0009 3.6445 1.5493 1.4156 0.6436 2.7365 0.0231 4.4288 0.0874 349.4936 370.8468 370.8468 200.3655 23.0223 0.003 9.3809 94.1488 158.228 447.2239 73.7014 353.3021 0.0619 0.0 6.7303 137.0095 229.6397 451.8825;
	2.5608 34.6026 6.3348 2.9089 14.0553 18.4247 3.695 0.7188 8.089 0.1133 0.2095 0.3125 0.4704 48.9017 0.4154 0.1565 0.1942 0.2058 0.0084 1.8271 1.2317 42.9909 14.9681 5.32 2.1754 0.633 0.3799 516.8084 477.5714 477.5714 344.1135 27.5226 0.0279 4.703 153.3134 203.7638 534.7744 88.0543 218.0548 5.8271 0.4899 204.3908 112.2467 233.931 540.345;
	2.6974 36.4474 82.755 0.0109 14.772 23.0725 4.4106 0.4794 3.9533 6.7815 12.5354 18.7004 28.1534 9.0282 25.9611 9.7807 12.1353 12.8598 0.7996 42.4424 1.4702 53.8358 25.6263 0.3551 2.3253 58.8743 0.1209 724.2334 436.5342 436.5342 371.2996 41.4844 2.6654 109.2469 28.3048 186.2546 598.0533 71.6836 163.2598 6.2284 0.0 255.9509 99.8019 215.396 604.2831;
	2.6476 35.7747 0.1744 0.215 14.2629 0.0 18.3623 0.9431 26.5413 15.7243 29.0661 43.3609 65.2797 21.8204 4.636 1.7466 2.167 2.2964 0.0 19.343 6.1208 0.0 42.2981 0.0654 3.4649 51.6598 0.2793 679.2862 405.2974 405.2974 331.5933 42.2832 0.0 49.7889 68.4098 172.9269 525.2932 64.8245 119.0971 9.2811 0.0 0.0 95.3526 188.8004 530.765;
	3.119 42.1439 86.8684 5.499 14.1883 0.0155 1.9247 1.8724 27.1767 18.3667 33.9506 50.6476 76.2497 9.1188 17.5641 6.6172 8.2102 8.7004 0.0 30.146 0.6416 0.0361 61.5585 79.7991 7.4903 60.7429 1.6802 655.5869 384.2913 384.2913 240.3728 48.2624 0.0 77.5958 28.5886 163.9643 571.7565 66.9939 170.1246 20.0634 0.4797 0.1717 99.4123 188.6816 577.7123;
	3.3278 44.9664 88.0204 0.4142 14.0238 19.813 11.0625 13.7514 25.6994 16.6891 30.8496 46.0216 69.2852 9.5617 0.0 0.0 0.0 0.0 0.0 45.9801 3.6875 46.2304 36.73 71.9043 96.2903 68.7079 6.0002 731.3403 306.2923 306.2923 207.8281 56.0474 0.0 118.3529 29.9773 130.6847 502.9692 91.3349 8.9066 257.9205 6.4848 219.7927 0.0 207.7552 508.2085;
	3.5579 48.0751 91.4098 113.6579 14.0522 23.7037 12.9897 17.0932 26.0425 16.6915 30.8539 46.028 69.2949 8.2648 27.3253 10.2946 12.773 13.5355 0.0 59.0445 4.3299 55.3085 42.2561 79.0356 93.2385 72.9196 8.5645 805.3702 362.3136 362.3136 281.569 43.2804 0.0 151.9806 25.9112 154.5871 484.7868 94.8232 14.454 249.7459 6.937 262.9525 132.9337 213.8936 489.8367;
	3.3535 45.3127 88.8568 109.3956 14.055 13.5921 10.0051 17.5969 26.6523 17.406 32.1746 47.9982 72.2611 10.9853 18.4167 6.9384 8.6087 9.1227 0.0 41.4232 3.335 31.715 38.5026 82.4391 98.0442 72.7947 8.1402 719.7922 374.6853 374.6853 249.5009 45.2992 0.0 106.6234 34.4403 159.8657 437.3626 67.9578 300.1801 262.6185 7.7037 150.782 122.4827 232.0077 441.9184;
];