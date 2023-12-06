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
	0.7147 9.6576 56.063 64.798 7.5085 0.0 0.3319 8.3509 0.0574 19.627 36.2802 54.123 81.4819 0.1004 137.1433 51.6679 64.1065 67.9338 82.0393 66.5834 0.1106 0.0001 65.4258 70.6794 49.8646 50.4249 4.3876 62.0431 304.4442 304.4442 216.1792 45.5202 273.4642 171.3857 0.3147 129.8962 300.4004 91.0374 0.0 133.566 61.856 0.0003 6.2525 65.9937 303.5295;
	0.5171 6.9872 52.465 64.153 6.8797 0.0885 3.5777 10.0556 2.038 12.5779 23.25 34.6845 52.2173 6.9438 110.4438 41.609 51.626 54.7082 76.59 67.2792 1.1926 0.2064 34.2456 73.1599 51.9059 51.0886 5.9593 51.8136 218.452 218.452 168.4725 34.0173 255.2999 173.1767 21.7699 93.2062 282.845 103.488 48.5337 139.0337 74.0958 0.9814 6.5205 80.2856 285.7913;
	0.3737 5.0495 60.7849 66.6252 6.0838 0.3619 0.7728 11.0676 1.0271 11.2726 20.8372 31.085 46.7983 1.8521 75.0773 28.2849 35.0942 37.1894 65.7765 63.5885 0.2576 0.8445 28.5614 78.7134 55.9895 56.3692 6.4554 0.0 2.8203 2.8203 60.4925 18.5928 219.255 163.677 5.8067 1.2033 148.9099 60.8742 38.1462 149.9719 68.7515 4.015 20.3386 94.3676 150.461;
	0.4338 5.862 68.4584 73.4977 8.0657 0.4855 0.7246 12.6955 0.0164 16.2796 30.0926 44.8922 67.5849 1.4873 87.3099 32.8935 40.8123 43.2488 45.5653 60.2599 0.2415 1.1328 47.2461 81.1923 63.8328 66.4389 7.7111 0.0 2.1809 2.1809 84.0165 18.866 151.8842 155.1091 4.6629 0.9305 0.0 147.5328 43.2314 170.9806 69.1755 5.3856 24.2483 129.6126 0.0;
	0.4656 6.2908 78.368 73.8485 9.4122 0.3307 2.2811 12.9818 1.9704 15.7927 29.1925 43.5495 65.5635 8.6137 126.5879 47.6913 59.1725 62.7052 57.8557 67.5641 0.7604 0.7717 46.5389 79.4551 76.9494 69.6295 8.6689 0.0 0.0621 0.0621 54.5083 8.7168 192.8525 173.9101 27.0051 0.0265 0.0 83.3894 172.4137 206.1145 65.8203 3.6689 8.1719 143.0605 0.0;
	0.4985 6.7352 78.1649 63.3799 10.1126 3.8459 1.6626 12.0543 1.4143 9.6358 17.8116 26.5714 40.0032 3.8011 146.458 55.1772 68.4606 72.5478 82.6591 68.8646 0.5542 8.9737 36.7588 77.1314 58.6885 68.5255 7.9053 0.0 0.2526 0.2526 33.6697 7.7456 275.5303 177.2578 11.9171 0.1078 0.0 56.3387 90.3116 157.2015 43.9101 42.6637 24.3003 141.5657 0.0;
	0.4801 6.4871 56.0606 38.6682 9.9775 2.4479 4.1645 8.2806 1.9182 7.8906 14.5857 21.7589 32.758 3.2515 117.5561 44.2886 54.9506 58.2313 67.0305 67.3522 1.3882 5.7117 23.7429 53.0475 36.1975 64.1529 4.6708 0.0 15.3904 15.3904 68.5665 1.9364 223.4349 173.3648 10.194 6.5666 3.677 23.4102 144.5247 96.9577 24.8065 27.1549 33.5221 135.7134 3.7153;
	0.5645 7.627 30.0741 19.693 4.1178 2.0618 4.8833 6.8604 2.1871 5.5956 10.3434 15.4304 23.2304 0.3043 55.3135 20.839 25.8558 27.3995 19.057 41.6259 1.6278 4.8109 12.7894 4.1703 30.8595 59.8148 4.6409 0.0 6.8912 6.8912 16.2946 1.0127 63.5232 107.1452 0.954 2.9402 6.1221 2.9298 31.6878 82.6595 7.2321 22.8724 42.2485 100.7429 6.1858;
	0.6213 8.3945 24.7438 24.2952 4.2183 0.0718 9.6916 6.0369 4.9636 13.0385 24.1015 35.9547 54.1296 4.6981 11.4877 4.3279 5.3698 5.6904 10.5091 13.4189 3.2305 0.1674 6.2639 1.785 22.1338 54.0976 4.6182 0.0 43.1062 43.1062 10.5076 1.0055 35.0303 34.5402 14.7293 18.392 3.6781 0.5685 75.5227 59.2871 0.9125 0.7961 43.4126 71.417 3.7164;
	0.675 9.1209 30.5228 27.6887 8.1329 2.4727 13.9501 5.2312 7.3346 22.4893 41.5711 62.0159 93.3646 8.1312 14.392 5.4221 6.7274 7.129 45.8151 13.0082 4.65 5.7696 12.0909 30.4891 28.7642 50.5749 3.6702 26.1662 135.3107 135.3107 79.0943 13.2021 152.7171 33.4831 25.4925 57.7326 89.6382 4.3086 113.818 77.047 3.5395 27.4302 55.6592 86.2529 90.5719;
	0.8971 12.1215 42.2318 8.1787 11.3665 0.5153 8.5895 3.8831 1.7582 5.956 11.0095 16.4241 24.7264 6.4837 2.1493 0.8097 1.0047 1.0646 6.1 5.7756 2.8632 1.2024 30.4402 39.4497 43.7897 52.6747 1.5196 50.723 77.6179 77.6179 27.5558 5.2404 20.3333 14.8663 20.3272 33.117 100.9908 6.1515 33.3996 117.2938 0.5142 5.7164 24.0012 92.1782 102.0428;
	1.58 21.3498 62.1325 16.4489 14.0303 1.4178 3.4003 2.7246 5.3622 4.984 9.2128 13.7437 20.691 0.9323 2.6461 0.9969 1.2369 1.3108 7.2615 6.0008 1.1334 3.3081 52.4917 51.902 1.5928 51.2856 3.5961 138.3821 110.085 110.085 26.1066 2.4811 24.2051 15.4462 2.923 46.9696 126.2839 0.675 2.7939 4.2663 0.4485 15.7277 50.7406 133.8099 127.5993;
	2.2415 30.2879 80.9932 8.397 14.4204 0.0788 18.5072 0.8071 19.9605 24.8218 45.8827 68.448 103.048 8.8484 0.0622 0.0234 0.0291 0.0308 4.8636 6.514 6.1691 0.1838 34.3297 60.5309 62.4901 52.1276 0.3402 206.0705 186.5581 186.5581 88.7663 2.7268 16.2119 16.7671 27.7409 79.5981 184.2397 7.0575 85.62 167.3843 0.1115 0.8738 116.0103 169.0591 186.1588;
	1.7532 23.689 0.0 0.0 13.9166 17.1374 3.574 1.5924 0.9336 0.3402 0.6288 0.9381 1.4123 0.6066 0.262 0.0987 0.1225 0.1298 1.5413 2.882 1.1913 39.9873 41.4458 0.0 0.0 32.7238 0.4353 150.9736 224.9928 224.9928 86.1313 2.9458 5.1378 7.4183 1.9017 95.9969 179.2954 28.8199 20.6394 0.0 2.0379 190.1113 85.6116 131.0643 181.163;
	1.7461 23.5933 0.0 0.0 9.2402 0.0 3.737 0.1819 1.8066 0.9225 1.7052 2.5438 3.8297 3.1698 0.0 0.0 0.0 0.0 1.782 0.0 1.2457 0.0 20.3557 0.0 0.0 0.014 0.0003 276.4093 281.9701 281.9701 107.9331 5.0573 5.9399 0.0 9.9378 120.3072 253.5619 16.424 3.4062 0.0 1.1073 0.0 81.208 86.9343 256.2032;
	2.9005 39.1926 81.1797 0.1283 13.9598 0.0 6.2855 0.0802 1.5968 3.0956 5.7222 8.5363 12.8514 8.8531 7.4955 2.8239 3.5037 3.7129 11.4478 0.109 2.0952 0.0 24.0389 0.1095 0.0 3.1414 0.0 405.1633 292.099 292.099 172.1816 10.093 38.1592 0.2805 27.7557 124.6289 304.0372 39.6559 23.7324 0.0 1.4414 0.0 17.8562 156.051 307.2042;
	3.3372 45.0922 4.6917 6.5922 14.9086 0.4366 7.3206 2.4398 1.0563 0.1411 0.2608 0.389 0.5857 3.3387 0.8009 0.3017 0.3744 0.3967 2.5864 0.0 2.4402 1.0188 0.0 4.8847 4.0119 19.7345 1.2233 407.0669 402.4281 402.4281 177.588 25.8043 8.6213 0.0 10.4671 171.7027 464.4754 74.8019 30.7455 10.746 4.8425 4.8435 145.5049 202.7875 469.3137;
	2.6409 35.6847 0.4524 0.0 14.5559 18.2244 3.4667 0.2728 0.0 0.0043 0.008 0.0119 0.0179 0.8855 0.5411 0.2038 0.2529 0.268 0.1551 0.0 1.1556 42.5236 9.8804 18.3258 1.8591 3.1735 0.0097 576.0414 497.4704 497.4704 323.5443 33.6939 0.5169 0.0 2.7761 212.254 553.2199 93.4072 2.0147 4.9798 1.0498 202.1693 116.4912 205.7047 558.9826;
	2.9013 39.2027 85.312 1.6283 14.398 24.9114 7.3978 0.1938 1.7886 6.6977 12.3807 18.4695 27.8057 5.7451 0.8883 0.3347 0.4152 0.44 0.0 28.4962 2.4659 58.1266 23.0836 7.1311 0.6272 59.8136 0.3093 738.5427 473.5047 473.5047 357.7925 46.744 0.0 73.3493 18.0117 202.0287 595.6757 76.7289 32.9196 1.68 1.1751 276.3506 111.7292 202.5676 601.8807;
	2.7752 37.4986 4.752 4.7388 14.4466 0.844 19.4393 0.3101 25.8262 11.4162 21.1028 31.4812 47.3947 3.4433 18.9723 7.1477 8.8684 9.3979 0.3825 17.8807 6.4798 1.9694 47.4398 3.4485 3.4789 53.0107 0.238 709.6306 464.1094 464.1094 330.8799 45.8067 1.275 46.0249 10.7952 198.02 547.3637 72.4821 7.1406 9.3185 8.9604 9.3633 108.8339 174.8265 553.0655;
	3.051 41.2251 84.9564 0.1426 14.6435 4.4566 1.2174 0.2554 26.1132 15.9143 29.4174 43.885 66.0686 6.6562 26.2986 9.9078 12.2931 13.027 24.318 29.1542 0.4058 10.3987 69.3636 83.3274 8.7002 56.4265 0.5397 606.0989 397.2769 397.2769 242.9392 55.9267 81.0601 75.0431 20.8681 169.5048 548.6799 69.006 0.525 23.304 11.771 49.4384 113.0463 173.1155 554.3953;
	3.3271 44.9561 87.185 0.697 14.7171 22.6933 11.8185 13.1031 26.3578 22.7146 41.9877 62.6374 94.3002 9.3187 1.9008 0.7161 0.8885 0.9416 18.0086 48.2708 3.9395 52.9511 56.5554 81.2057 95.8697 68.1678 5.7593 695.8184 326.8252 326.8252 214.7518 59.9075 60.0285 124.2492 29.2152 139.4454 483.4228 100.4851 0.0 256.7939 13.5169 251.7448 8.0707 186.8389 488.4584;
	3.5781 48.3484 86.2905 112.2617 14.9588 25.5213 12.2941 15.3606 26.3846 24.2392 44.8058 66.8414 100.6294 7.9685 52.3645 19.728 24.4773 25.9387 17.6042 65.1022 4.098 59.5498 66.3026 81.2789 91.1229 70.7414 7.4287 726.1739 350.2916 350.2916 286.7794 47.1525 58.6808 167.5733 24.9823 149.4578 432.7343 98.0369 0.0 244.0791 11.5992 283.1166 141.9431 192.6751 437.242;
	3.4268 46.3031 86.5151 108.3247 14.9183 15.8647 10.2411 16.6978 27.2104 22.8145 42.1723 62.9128 94.7149 9.4354 43.3118 16.3175 20.2457 21.4544 2.7353 51.927 3.4137 37.0176 58.0929 82.6202 99.6228 71.8826 7.7286 703.3587 380.819 380.819 254.6165 49.2178 9.1178 133.6603 29.5812 162.4828 418.2979 76.9299 276.0724 266.8468 10.538 175.9921 136.8787 214.1502 422.6552;
];
