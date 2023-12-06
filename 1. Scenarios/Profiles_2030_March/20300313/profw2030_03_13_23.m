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
	0.7859 10.6189 55.5223 64.0991 7.2355 4.6877 0.0159 8.6402 0.0 17.1946 31.7839 47.4153 71.3835 0.0171 119.0828 44.8637 55.6643 58.9875 76.1915 67.044 0.0053 10.9379 63.0475 70.3734 49.1184 44.9911 4.3989 152.0324 321.8302 321.8302 211.9561 44.7285 253.9717 172.5713 0.0535 137.3142 359.6779 84.3425 0.0 131.5671 61.9109 52.0019 23.6399 69.3692 363.4245;
	0.4757 6.428 50.7515 62.2991 6.6676 3.9641 0.0 12.1354 0.0 10.2553 18.9568 28.2798 42.575 0.198 117.683 44.3364 55.01 58.2942 75.1216 67.8339 0.0 9.2496 32.1873 69.6144 54.0201 48.2793 6.0855 51.1797 205.3215 205.3215 145.898 31.3698 250.4054 174.6046 0.6207 87.6038 258.2417 87.2894 0.0 144.6968 83.0886 43.9752 0.7363 85.4186 260.9317;
	0.3808 5.1453 54.4867 63.0571 5.8901 6.3709 0.0 12.0613 0.0 9.4357 17.4418 26.0198 39.1726 4.511 87.066 32.8016 40.6983 43.128 69.0287 64.8372 0.0 14.8655 28.7298 71.8179 55.8088 50.6122 6.0173 0.0 5.5898 5.5898 17.8966 18.0451 230.0956 166.8912 14.1426 2.385 131.6248 3.5253 0.0 149.4879 71.1599 70.6749 7.0743 97.7562 132.9959;
	0.4982 6.7323 63.2614 73.1079 8.4452 7.8345 0.0 14.3552 0.8989 15.8372 29.2748 43.6723 65.7484 17.5153 98.3201 37.0415 45.9589 48.7027 52.3037 65.071 0.0 18.2805 52.4531 77.0744 62.5338 63.5409 7.3628 2.1018 8.6545 8.6545 95.746 19.9918 174.3456 167.4928 54.9129 3.6926 2.8134 9.3439 15.3482 167.5012 68.2029 86.9109 8.4963 132.345 2.8427;
	0.4587 6.1984 72.565 72.9496 9.6417 2.1394 0.2829 14.7827 0.8156 15.2291 28.1507 41.9953 63.2237 15.5727 132.2861 49.838 61.8361 65.5278 56.0216 67.2134 0.0943 4.9919 49.8879 81.4191 77.307 67.8865 8.5637 8.8978 0.1725 0.1725 5.9159 10.6944 186.7388 173.0074 48.8225 0.0736 0.0 3.558 0.7678 207.0724 67.1572 23.733 0.029 134.2959 0.0;
	0.3982 5.3807 69.1496 55.1879 9.4707 3.4249 0.0339 12.9198 0.4251 9.2972 17.1857 25.6377 38.5974 5.0896 156.5162 58.9666 73.1622 77.5301 80.1705 67.515 0.0113 7.9915 39.2698 75.9641 54.3933 64.0434 7.8116 20.817 5.5334 5.5334 5.8309 10.503 267.235 173.7838 15.9566 2.3609 0.1172 2.6347 0.0 145.6963 48.2065 37.9941 16.5883 127.2833 0.1185;
	0.3307 4.4688 43.1929 32.8312 8.5738 1.6756 3.547 7.9967 2.4025 7.7559 14.3367 21.3875 32.1988 6.054 121.3178 45.7058 56.709 60.0946 62.4971 68.6013 1.1823 3.9098 28.5356 48.2675 27.7743 58.9231 4.3234 26.7934 10.6791 10.6791 8.2745 10.4405 208.3237 176.5799 18.98 4.5564 10.7906 1.9507 0.1115 74.3955 23.6472 18.5883 22.7826 113.9186 10.903;
	0.3612 4.88 0.0 20.9099 2.9498 2.1686 4.4998 6.2952 2.0785 5.3265 9.846 14.6883 22.1131 8.7961 66.5409 25.0689 31.104 32.961 17.0717 49.8833 1.4999 5.06 15.1141 4.2087 15.593 53.6034 4.27 13.0716 24.5203 24.5203 21.8009 3.2068 56.9056 128.3998 27.577 10.462 27.0629 4.8041 55.205 41.767 7.2425 24.0568 0.2184 91.5213 27.3448;
	0.5233 7.0709 24.4391 25.1415 3.4604 0.4687 4.7657 5.9308 10.4122 12.0091 22.1986 33.1159 49.8559 5.7784 18.6564 7.0287 8.7208 9.2414 7.5338 20.2702 1.5886 1.0936 9.2008 34.4674 26.6582 45.7001 4.5575 0.8414 16.1374 16.1374 56.3689 1.5819 25.1126 52.1756 18.1161 6.8853 9.2657 4.5493 132.5454 71.4059 6.3824 5.1992 4.2301 61.5616 9.3622;
	0.5556 7.5073 29.1247 25.8231 7.5048 3.1996 2.0674 4.6957 4.4968 12.9678 23.9709 35.7598 53.8362 3.1839 7.3232 2.759 3.4232 3.6276 9.6286 15.4217 0.6891 7.4658 15.1495 30.8268 25.6613 43.9519 3.2224 16.4338 25.0912 25.0912 10.9518 2.0499 32.0953 39.6955 9.9821 10.7056 0.0 1.3427 21.1085 68.7357 6.8405 35.4946 51.0595 80.8899 0.0;
	0.8132 10.9881 40.8002 2.9091 10.827 3.2554 1.7307 3.5772 3.405 3.8719 7.1572 10.6772 16.0744 1.1034 1.7607 0.6634 0.823 0.8722 13.0667 12.2497 0.5769 7.596 34.5213 36.1527 38.4229 42.8452 1.2636 52.8094 57.7518 57.7518 67.7068 5.4158 43.5556 31.5306 3.4593 24.6408 46.5609 3.8054 1.2103 102.9185 1.0563 36.1135 8.3714 87.0072 47.0459;
	1.427 19.2826 61.1737 1.9203 13.574 4.926 5.581 0.8265 9.8694 11.65 21.5349 32.1258 48.3652 10.4062 20.4029 7.6867 9.5372 10.1065 1.7456 11.1288 1.8603 11.4941 55.9535 53.9306 0.0918 39.2707 0.7075 147.9894 87.103 87.103 38.5977 6.048 5.8188 28.6456 32.6248 37.164 104.4218 4.6596 73.0056 0.2458 8.7847 54.6463 9.1872 118.1811 105.5096;
	2.178 29.4291 79.6151 1.533 14.2611 6.9163 9.4064 0.0679 13.2063 25.1713 46.5288 69.4118 104.4991 54.2085 87.835 33.0913 41.0577 43.509 37.3178 10.9301 3.1355 16.1379 38.1283 58.5744 60.7481 27.0513 0.5454 231.6945 158.5787 158.5787 81.1461 8.9815 124.3926 28.1342 169.9509 67.6602 173.7854 5.1739 95.1076 162.7182 15.1247 76.7244 115.7227 158.8291 175.5957;
	1.6967 22.9264 4.9581 0.9522 14.0629 20.1712 21.8819 0.459 26.439 4.7543 8.7883 13.1105 19.7377 47.1448 41.4135 15.6023 19.3584 20.5142 6.7412 8.0392 7.294 47.0661 47.1459 0.0 0.2084 12.7946 0.4991 200.1612 213.2543 213.2543 105.0103 12.6517 22.4706 20.693 147.8054 90.9885 190.9086 14.5726 248.3089 0.5583 38.4053 223.7656 83.2976 135.7847 192.8973;
	1.9228 25.9814 6.3958 12.2457 9.1941 6.8628 18.6439 0.114 26.9021 4.946 9.1426 13.639 20.5335 38.9067 36.4932 13.7486 17.0585 18.0769 11.2089 2.7343 6.2146 16.0133 30.4367 0.0 0.196 0.0 0.7439 298.6805 283.5017 283.5017 113.7322 9.2165 37.3629 7.0382 121.9777 120.9607 276.6911 18.4674 198.2309 0.525 41.0875 76.1318 81.2067 103.1817 279.5733;
	2.6987 36.4655 81.6198 10.0086 13.5361 1.6537 8.8613 0.3036 7.7913 3.8881 7.1871 10.7217 16.1415 11.7342 32.2377 12.1454 15.0693 15.9689 2.122 0.8667 2.9538 3.8586 45.4011 1.42 0.2212 0.0 1.522 402.5497 311.0264 311.0264 188.4809 11.2028 7.0732 2.2309 36.7883 132.7046 311.9553 36.9872 68.0482 0.5924 48.9709 18.3448 1.5268 159.8096 315.2048;
	3.4649 46.8184 8.7191 36.8943 14.9337 13.3014 29.9487 0.4879 18.2973 3.7072 6.8527 10.2229 15.3905 18.1318 5.2475 1.9769 2.4529 2.5993 9.4149 0.0856 9.9829 31.0366 2.5558 6.5039 5.3734 0.0 1.211 407.0981 408.5774 408.5774 207.2559 24.9028 31.3831 0.2205 56.8456 174.3264 475.4363 73.0361 297.2555 14.3929 19.9556 147.5567 148.5053 223.3343 480.3888;
	2.8011 37.8487 15.1016 37.3031 15.2707 20.433 23.7641 1.6477 27.105 1.7054 3.1524 4.7028 7.08 10.294 8.5913 3.2367 4.0159 4.2557 27.3194 0.8668 7.9214 47.6771 16.6827 42.1001 33.8852 0.0 0.1213 560.7436 509.6174 509.6174 360.134 35.9472 91.0645 2.2312 32.273 217.4368 544.1063 101.1365 343.4379 90.7639 46.0352 226.6704 122.5387 233.2338 549.7741;
	2.9425 39.7603 84.0186 10.0177 15.2894 25.0695 26.9762 0.0009 27.1139 8.5784 15.857 23.6556 35.6133 8.0991 20.8347 7.8494 9.739 10.3204 19.0344 38.2406 8.9921 58.4954 30.7277 17.4201 6.4393 49.4192 0.0 735.6502 456.1557 456.1557 385.0764 47.1311 63.448 98.4313 25.3917 194.6264 582.741 79.7032 382.5451 17.2481 0.2754 278.104 110.065 205.5393 588.8112;
	2.8568 38.602 1.0387 0.5617 15.0772 0.1044 20.4373 0.0001 27.8102 20.2847 37.4959 55.9366 84.2122 6.6146 0.579 0.2181 0.2707 0.2868 6.4554 12.2618 6.8124 0.2436 57.7853 6.201 15.2663 44.6117 0.0 694.3304 444.3721 444.3721 350.5733 46.0566 21.5179 31.5619 20.7375 189.5988 531.5898 76.4784 190.4381 40.892 0.0 1.1583 106.9949 171.4284 537.1272;
	2.8693 38.7711 80.9759 0.0184 14.4852 0.0014 11.4872 0.0 27.2776 20.7547 38.3647 57.2325 86.1633 8.0931 17.4903 6.5894 8.1757 8.6638 11.1528 20.1714 3.8291 0.0034 68.8522 81.5316 12.3516 42.7518 0.0 514.7641 379.5773 379.5773 249.5497 57.8372 37.1762 51.9214 25.3731 161.953 483.0763 78.367 114.7535 33.0845 0.0 0.0159 99.0527 159.5295 488.1084;
	3.3671 45.4964 83.9839 0.0 14.0067 19.8287 13.1867 10.6768 27.2681 21.9912 40.6503 60.6423 91.2966 10.4862 0.075 0.0283 0.0351 0.0372 62.8132 47.5405 4.3956 46.2671 54.1737 74.5812 90.2936 56.9825 3.41 682.5044 325.7174 325.7174 224.6028 63.7611 209.3772 122.3693 32.8758 138.9727 467.0639 107.9254 53.1045 241.858 0.0 219.9669 0.298 187.9388 471.9292;
	3.3656 45.4763 79.5265 105.7475 13.6837 20.22 14.7128 12.3939 27.1097 23.138 42.7703 63.8048 96.0578 7.2501 51.6625 19.4635 24.1492 25.5909 17.2882 63.1276 4.9043 47.18 56.7776 76.5703 86.0815 52.8523 6.2672 695.7505 347.7544 347.7544 288.6111 49.9448 57.6273 162.4905 22.7299 148.3752 400.9233 99.7347 89.2027 230.5754 1.7339 224.3074 142.5922 151.1591 405.0996;
	3.2043 43.2977 81.3683 97.176 13.7584 12.1156 11.8313 13.6841 27.0093 23.2142 42.9112 64.015 96.3743 9.8406 46.4539 17.5012 21.7145 23.0109 4.398 51.8044 3.9438 28.2697 58.32 79.8231 96.6127 61.0423 6.5513 615.8292 370.6508 370.6508 239.0833 50.2735 14.6599 133.3446 30.8517 158.1444 366.4258 77.0918 315.3383 258.784 3.7811 134.4023 143.5955 203.603 370.2428;
];