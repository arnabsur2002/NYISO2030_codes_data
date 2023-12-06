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
	3.6398 49.1816 91.8146 115.7081 15.3955 14.3949 13.5344 18.0662 26.2806 22.4382 41.4768 61.8752 93.1527 5.4134 20.494 7.721 9.5797 10.1517 11.1839 31.3376 4.5115 33.5881 56.1418 82.7413 98.2898 74.2853 7.683 686.0792 415.1225 415.1225 224.9767 29.2375 37.2798 80.663 16.9718 177.119 554.6828 57.6066 264.718 263.2762 7.0491 159.6873 119.3482 233.0302 560.4608;
	3.576 48.319 90.8207 115.9569 15.3618 15.7969 13.6247 17.4971 26.7791 21.0838 38.9731 58.1401 87.5297 3.2868 8.8738 3.3432 4.148 4.3956 7.814 15.2942 4.5416 36.8595 57.561 82.8642 97.7176 73.558 6.9907 657.0731 382.4345 382.4345 173.5652 21.415 26.0467 39.3673 10.3046 163.1721 510.0262 55.8093 250.6198 261.7434 6.0318 175.2406 114.2476 223.7824 515.339;
	3.2948 44.5202 90.2873 112.484 15.0657 13.2197 12.5103 17.4427 27.5609 22.111 40.8718 60.9727 91.794 5.1611 11.9581 4.5051 5.5897 5.9234 15.8966 23.8806 4.1701 30.846 63.7153 83.409 96.9178 74.2029 8.139 589.7778 344.1066 344.1066 145.8566 21.3606 52.9886 61.4687 16.1809 146.8188 401.0775 38.398 205.926 259.6013 4.3559 146.6508 89.8943 204.3374 405.2553;
	3.0954 41.8252 90.3003 112.3431 14.9876 13.5442 12.5972 17.7185 26.782 22.8173 42.1775 62.9205 94.7265 10.2076 9.2101 3.4698 4.3052 4.5622 8.4467 23.4458 4.1991 31.6031 66.308 84.2768 102.043 75.1059 10.0808 505.5549 289.2424 289.2424 161.2355 26.7822 28.1557 60.3495 32.0022 123.4101 347.7549 35.461 173.5491 273.3295 1.3301 150.2503 85.5728 211.1058 351.3774;
	2.6647 36.0055 90.224 114.5303 14.6456 14.5536 11.9 17.7038 17.6652 18.4077 34.0264 50.7607 76.42 16.7632 8.961 3.376 4.1888 4.4388 17.1908 23.7248 3.9667 33.9584 49.8732 81.8835 99.297 74.2093 10.0185 382.6168 221.7188 221.7188 140.4346 18.321 57.3027 61.0677 52.5549 94.6 221.6681 29.1062 167.7908 265.974 8.9616 161.4481 90.4681 218.7293 223.9771;
	3.3393 45.1212 92.9887 116.8044 14.5818 22.327 11.5915 17.8806 9.8789 9.3603 17.3023 25.8117 38.8593 30.1717 4.8565 1.8297 2.2701 2.4057 21.4017 20.6407 3.8638 52.0963 35.2893 83.2266 100.4711 74.2956 8.5923 301.6678 204.7299 204.7299 118.1361 23.247 71.3392 53.1293 94.5924 87.3514 182.0923 30.0379 186.3396 269.119 11.4076 247.6806 95.3706 232.6646 183.9891;
	2.6495 35.7999 90.4644 112.9571 14.1776 22.5045 12.5345 15.9103 12.0281 21.9849 40.6388 60.6251 91.2708 39.3904 10.9723 4.1338 5.1289 5.4351 24.8965 29.8384 4.1782 52.5106 47.2279 82.9045 98.3034 74.012 10.599 225.7334 229.8128 229.8128 97.8651 11.3087 82.9884 76.8042 123.4941 98.0535 188.8243 23.3169 145.6345 263.3128 6.4919 249.6503 93.5513 237.9978 190.7912;
	1.7642 23.8389 71.584 111.722 14.895 18.2518 12.1854 15.1959 17.9987 21.0398 38.8917 58.0188 87.347 42.5255 16.6907 6.2881 7.8019 8.2677 44.4311 49.2959 4.0618 42.5876 56.9733 82.9813 97.6057 74.1528 12.0406 106.2109 177.6306 177.6306 92.5546 8.7428 148.1035 126.8877 133.3232 75.7891 131.1189 24.5164 164.328 261.4438 6.9674 202.4739 91.7081 200.6488 132.4848;
	2.5618 34.6159 84.1315 101.5354 14.4873 22.0433 9.6638 15.2433 10.0372 21.2057 39.1984 58.4763 88.0358 45.0444 6.781 2.5547 3.1697 3.359 56.594 45.9289 3.2213 51.4344 49.404 84.7396 98.0367 70.2175 11.1612 82.8417 130.4831 130.4831 70.6465 5.6135 188.6467 118.2212 141.2203 55.6728 104.0163 15.7623 119.6553 262.5984 18.0638 244.5338 73.4182 214.3289 105.0998;
	1.879 25.39 85.5782 102.3957 13.4302 13.6084 7.8684 15.776 22.5876 27.1876 50.2558 74.9718 112.8697 42.4704 0.0 0.0 0.0 0.0 63.202 38.2833 2.6228 31.7529 63.1553 84.6671 97.0011 72.0184 11.5745 195.3996 197.0888 197.0888 73.7144 9.476 210.6733 98.5412 133.1505 84.0912 198.13 20.43 0.0 259.8245 1.62 150.9625 71.1154 208.8466 200.1939;
	1.6833 22.7445 81.1523 100.4026 13.5756 25.3838 12.4725 15.7322 24.4668 28.1887 52.1064 77.7325 117.0258 49.1773 3.4881 1.3141 1.6305 1.7278 59.7146 35.3771 4.1575 59.2288 70.7 85.6675 93.2075 73.3384 11.6782 291.6497 276.4703 276.4703 146.3132 11.5492 199.0487 91.0606 154.1775 117.9607 299.4834 24.3589 154.7597 249.6629 5.3171 281.5907 89.48 185.2819 302.603;
	1.6827 22.7373 88.6541 89.4043 12.5938 28.5554 17.8522 17.4572 25.2285 27.8866 51.5479 76.8993 115.7715 50.7873 1.7164 0.6466 0.8023 0.8502 71.5309 49.8284 5.9507 66.6292 69.2219 88.3635 99.1941 72.113 12.475 331.5371 353.7894 353.7894 256.5691 16.5921 238.4363 128.2585 159.2252 150.9502 407.3181 38.6601 180.8616 265.6984 3.9042 316.7741 100.9824 194.8641 411.561;
	2.9472 39.8232 86.5876 83.9843 14.5447 29.2661 18.6979 14.3751 25.7597 27.5048 50.8422 75.8466 114.1867 52.292 42.8452 16.1417 20.0277 21.2233 77.7358 65.7893 6.2326 68.2876 68.7414 83.3667 95.2828 65.179 9.9943 495.6984 442.863 442.863 285.8017 23.3585 259.1193 169.3418 163.9425 188.9549 562.4153 51.6719 192.1803 255.2217 0.1024 324.6587 133.8808 209.9346 568.2738;
	3.4585 46.7318 83.5767 98.5017 15.0182 29.09 19.6852 14.7046 25.2886 28.3479 52.4006 78.1714 117.6866 53.9759 62.1766 23.4247 29.0639 30.7991 83.4236 56.8527 6.5617 67.8768 59.7957 81.5859 93.6857 69.0055 9.8345 602.9243 584.6554 584.6554 374.557 25.5083 278.0788 146.3389 169.2218 249.453 713.449 72.3236 220.7482 250.9439 0.0305 322.7056 132.3551 241.958 720.8808;
	3.5209 47.5755 80.9877 95.7823 14.7007 31.5959 25.9689 15.403 24.9815 22.631 41.8331 62.4068 93.953 61.3901 82.9215 31.2402 38.761 41.075 78.0049 49.891 8.6563 73.7238 27.6374 81.5282 93.5164 64.6282 11.3098 876.4069 688.8054 688.8054 485.9162 28.5007 260.0162 128.4195 192.4663 293.8903 917.238 108.0356 394.1885 250.4904 0.0095 350.5041 150.9973 236.6116 926.7926;
	3.6556 49.3958 87.242 100.649 15.3159 32.2791 27.5423 17.2002 25.7865 18.9175 34.9687 52.1664 78.5363 63.0821 126.8259 47.7809 59.2837 62.8231 85.3422 59.9339 9.1808 75.318 40.0444 80.5648 96.6201 66.9951 11.6991 986.8602 747.5954 747.5954 660.6894 36.3703 284.474 154.2699 197.771 318.974 966.6868 144.6858 334.6298 258.8038 0.0029 358.0832 167.5417 258.3201 976.7565;
	3.6091 48.7667 87.0022 106.0563 15.0176 32.3578 30.3905 17.156 26.2355 15.6633 28.9533 43.1927 65.0263 63.4063 150.9475 56.8686 70.5592 74.7717 84.9394 65.8671 10.1302 75.5015 6.1426 81.5479 96.7729 70.2168 11.0506 924.0472 775.5551 775.5551 663.2377 73.2875 283.1313 169.5422 198.7872 330.9035 924.3031 183.9689 381.1467 259.213 0.0857 358.9556 202.9028 265.1429 933.9313;
	3.8047 51.4098 89.8097 109.6542 14.7447 33.2832 29.617 17.6896 25.7918 16.4401 30.3893 45.3349 68.2514 61.7677 168.67 63.5454 78.8434 83.5505 85.0793 68.2802 9.8723 77.6609 33.3706 81.7283 99.5509 68.3329 12.7364 987.7162 794.6863 794.6863 700.6945 83.355 283.5975 175.7535 193.6499 339.0662 987.0263 217.2603 398.8597 266.6542 104.3461 369.2221 198.242 258.267 997.3078;
	3.7571 50.766 88.2742 111.5495 15.2573 32.2477 30.7049 12.8134 25.7406 15.6199 28.8732 43.0732 64.8464 65.7717 189.5776 71.4223 88.6165 93.907 88.6196 69.241 10.235 75.2446 42.461 80.9368 98.91 53.0848 12.755 1118.9365 817.7162 817.7162 699.0606 98.6961 295.3988 178.2264 206.2033 348.8922 1067.4237 238.1449 418.0313 264.9375 112.6629 357.7341 202.8024 267.4793 1078.5427;
	3.7576 50.7735 92.2805 112.209 15.2861 33.6956 31.6606 8.8405 27.2525 19.061 35.234 52.5622 79.1322 66.5367 201.0235 75.7344 93.9668 99.5768 87.8027 72.2853 10.5535 78.623 49.1039 35.6625 44.366 55.7382 11.01 1083.8604 828.5129 828.5129 744.7347 103.3367 292.6756 186.0625 208.6016 353.4988 1096.986 252.8789 448.5663 118.8374 118.8547 373.7963 203.1018 255.1501 1108.4129;
	3.8259 51.6958 93.4548 120.1238 15.1596 33.0734 32.0629 18.7507 19.1123 21.1056 39.0134 58.2003 87.6203 66.8332 195.1356 73.5162 91.2146 96.6602 87.0978 70.4267 10.6876 77.1712 42.5458 77.6508 103.7479 70.2222 13.6557 1129.8849 806.0612 806.0612 756.9866 101.4594 290.3259 181.2784 209.5311 343.9195 1059.8633 253.4149 449.0964 277.8963 120.198 366.8937 210.3914 281.1776 1070.9036;
	3.7696 50.9355 90.8493 122.1631 14.8495 33.8505 31.8775 18.0092 10.7757 21.9931 40.6539 60.6476 91.3046 67.0019 192.9723 72.7012 90.2033 95.5886 86.182 71.493 10.6258 78.9845 48.7973 85.2701 102.442 72.8893 13.5131 1243.4891 818.7372 818.7372 732.295 102.6002 287.2735 184.0231 210.0599 349.3279 1189.3673 251.1099 467.7069 274.3983 117.9202 375.515 212.7849 253.4145 1201.7565;
	3.8208 51.6269 90.9876 118.2242 14.8646 34.1654 32.2222 17.6507 20.3729 21.1233 39.0461 58.2491 87.6937 68.6617 199.7253 75.2454 93.36 98.9337 87.0493 71.4117 10.7407 79.7192 50.9523 83.4412 88.105 73.4389 13.5853 1238.2224 823.6025 823.6025 755.5063 107.0106 290.1642 183.8138 215.2637 351.4037 1245.4044 256.9005 474.1205 235.9955 117.1219 379.0079 213.6577 257.7475 1258.3774;
	3.7669 50.8993 91.5245 118.32 14.9588 34.1075 33.3697 18.3724 11.9165 19.1143 35.3325 52.7091 79.3532 67.9538 202.0055 76.1044 94.4258 100.0632 89.4551 72.6394 11.1232 79.5842 51.6423 85.9811 103.9148 72.8687 13.7821 1197.5313 821.7734 821.7734 778.9183 112.1108 298.1837 186.974 213.0443 350.6233 1194.3078 276.0881 471.9385 278.3433 119.9279 378.366 211.1707 265.736 1206.7485;
];