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
	0.6905 9.3302 55.8445 61.1803 7.2015 2.5114 1.8999 1.415 19.7196 18.8219 34.792 51.9028 78.1393 7.8132 153.354 57.7752 71.6841 75.9637 79.5019 70.5133 0.6333 5.86 63.0294 72.8632 47.7428 41.8282 3.2798 223.5163 353.4813 353.4813 249.7129 46.991 265.0063 181.5014 24.4955 150.8187 404.8655 94.32 270.6186 127.8825 63.6242 27.8601 26.4335 63.8911 409.0829;
	0.481 6.4988 50.6759 58.3434 6.7667 6.4275 7.6093 4.4267 20.8303 11.282 20.8547 31.111 46.8375 34.7305 128.4422 48.3899 60.0393 63.6237 71.8619 71.3619 2.5364 14.9976 29.9602 67.49 49.0432 41.8686 3.5994 110.1413 238.5903 238.5903 173.6791 31.7266 239.5396 183.6856 108.8847 101.7985 307.6252 99.4254 318.8012 131.3658 79.962 71.3027 45.9768 80.5529 310.8297;
	0.3665 4.9519 61.5831 64.4885 5.884 3.958 2.9395 7.6371 8.4034 9.9681 18.4259 27.4879 41.3828 39.8004 87.9009 33.1162 41.0886 43.5416 64.2512 68.458 0.9798 9.2354 23.0555 72.9929 51.9941 41.354 5.0748 51.4412 95.943 95.943 192.9031 18.2625 214.1707 176.2112 124.7795 40.9357 182.5603 50.9002 207.638 139.2699 76.3275 43.9077 89.1901 97.2006 184.462;
	0.4094 5.5325 65.5627 68.0172 7.2876 0.0008 1.1364 11.51 0.0 14.4682 26.7443 39.8973 60.0651 16.355 91.2269 34.3692 42.6433 45.1892 44.1913 62.2827 0.3788 0.0018 44.5735 77.9491 60.0483 60.367 6.4424 9.4034 92.1269 92.1269 63.4385 18.3518 147.3043 160.3159 51.275 39.3075 20.5891 29.2835 10.6993 160.8437 71.0472 0.0085 29.699 140.5806 20.8036;
	0.4319 5.836 78.0213 67.9689 8.4937 1.0973 0.8394 12.6095 0.0076 15.0737 27.8635 41.5669 62.5788 11.1103 120.9518 45.5679 56.5379 59.9133 50.1366 60.5153 0.2798 2.5604 42.6764 81.8427 74.9538 66.8508 7.9994 15.253 10.2079 10.2079 13.6724 8.5083 167.122 155.7664 34.8322 4.3554 7.5505 9.8668 35.3508 200.7691 73.0469 12.1729 17.5687 150.0864 7.6292;
	0.4591 6.203 78.6444 55.1018 9.4266 4.1859 3.2642 11.877 0.4836 8.9827 16.6043 24.7704 37.2917 0.529 137.0995 51.6515 64.0861 67.9121 66.8421 63.3449 1.0881 9.7672 34.7499 81.5115 56.5545 66.6092 7.7346 15.1091 7.3197 7.3197 15.8955 9.4529 222.8068 163.0499 1.6584 3.1231 3.2093 23.3949 6.8775 151.4854 58.9524 46.4361 27.1136 148.6518 3.2427;
	0.4871 6.5817 55.8104 34.7815 8.9254 2.8153 4.5156 7.5461 2.3812 7.5562 13.9675 20.8368 31.3696 5.085 118.9691 44.8209 55.6111 58.9312 52.2472 67.0291 1.5052 6.5691 23.1732 56.5672 35.7005 60.7431 3.8384 20.9739 19.1944 19.1944 23.829 0.6308 174.1572 172.5332 15.9422 8.1896 3.5693 26.8662 18.4822 95.6264 30.1446 31.2313 33.7609 144.7762 3.6065;
	0.5709 7.7142 35.5002 27.1229 3.7576 3.1974 4.5699 7.4815 2.3468 4.8525 8.9697 13.381 20.1451 2.6563 56.5087 21.2893 26.4145 27.9915 12.2332 44.1705 1.5233 7.4607 11.1319 39.1991 34.0346 62.2442 4.7142 6.7767 16.4997 16.4997 41.9347 0.1522 40.7773 113.6949 8.3278 7.0399 10.0822 40.6746 73.8328 91.164 13.0281 35.4702 39.5897 114.5114 10.1872;
	0.6229 8.4171 30.8601 26.2646 4.1087 8.5272 23.7598 6.5959 25.1068 9.3586 17.2993 25.8071 38.8525 6.8466 14.1074 5.3149 6.5944 6.9881 1.7769 15.7241 7.9199 19.8969 5.9494 38.3074 30.0212 57.4626 4.4366 15.813 21.7968 21.7968 40.3643 0.0051 5.923 40.4739 21.4649 9.3 39.4931 35.6402 435.1234 80.4138 66.5925 94.5955 45.7572 80.7179 39.9045;
	0.5719 7.7273 32.9458 26.7985 8.1104 1.8076 15.8965 5.316 17.577 25.523 47.1789 70.3817 105.9593 10.7592 5.5785 2.1017 2.6076 2.7633 15.9561 13.0636 5.2988 4.2177 11.7239 34.6848 31.2211 51.8858 3.2102 36.9944 43.6715 43.6715 70.5994 0.0243 53.1869 33.6257 33.7314 18.6332 17.9044 57.4374 432.6713 83.628 28.7047 20.0519 52.0254 94.229 18.0909;
	0.8129 10.9838 44.9405 7.6827 12.0198 3.2508 6.2066 4.1432 6.2635 17.0295 31.4787 46.96 70.6981 4.651 0.0 0.0 0.0 0.0 0.018 10.6255 2.0689 7.5853 32.1617 38.5967 45.6105 54.6135 1.2785 58.6164 77.3846 77.3846 110.8418 0.1356 0.0599 27.3501 14.5814 33.0174 74.2999 64.0094 90.899 122.1709 7.1935 36.0627 49.0217 107.6781 75.0738;
	1.369 18.4981 64.322 1.8283 13.4912 0.0334 0.976 2.3462 0.4092 4.7328 8.7485 13.051 19.6482 1.8136 1.2576 0.4738 0.5878 0.6229 0.0029 9.2423 0.3253 0.0779 51.8566 51.3399 4.4522 52.1124 0.0028 109.3897 110.526 110.526 61.9632 1.608 0.0098 23.7896 5.6859 47.1578 106.1691 21.0455 45.2551 11.9257 3.3351 0.3705 10.3892 127.6183 107.275;
	2.1708 29.3318 80.4147 1.7325 13.8774 0.0263 2.3819 2.8635 0.5722 24.7057 45.6682 68.1279 102.5662 0.7566 2.0818 0.7843 0.9731 1.0312 0.0 7.9525 0.794 0.0613 33.258 57.6273 61.3967 57.6728 0.0 191.9121 175.9718 175.9718 31.6062 1.483 0.0 20.4698 2.3721 75.0813 182.4472 3.9293 60.4269 164.4555 2.902 0.2916 111.3268 166.7824 184.3477;
	1.7062 23.0539 10.6229 14.5309 13.9816 18.3384 1.1655 5.4906 0.5603 13.0364 24.0977 35.949 54.121 0.0029 8.6308 3.2516 4.0344 4.2752 0.7965 7.8808 0.3885 42.7895 45.358 16.831 6.3045 37.7842 0.3983 153.1056 204.32 204.32 37.768 4.2842 2.655 20.2851 0.0091 87.1765 177.6094 9.6262 10.7217 16.8872 4.2723 203.4337 80.6998 135.788 179.4595;
	2.1099 28.5093 11.8581 5.7957 9.2915 0.0 2.2744 3.1183 3.547 6.4802 11.9786 17.8697 26.9027 0.0063 10.8402 4.084 5.0672 5.3697 0.4557 3.4832 0.7581 0.0 30.3481 51.8538 9.527 42.7736 0.0245 162.8203 244.8768 244.8768 87.3337 6.0355 1.5189 8.9658 0.0198 104.4808 230.2976 11.7912 1.6981 25.5187 8.2818 0.0 73.9898 111.284 232.6966;
	3.1323 42.324 86.2269 4.6421 13.9779 0.0885 2.1534 1.4521 1.749 5.6025 10.3562 15.4494 23.259 0.0019 0.1985 0.0748 0.0928 0.0984 0.3508 0.8872 0.7178 0.2065 47.9225 59.4449 6.0694 13.4579 0.1573 317.9318 270.0245 270.0245 179.6061 11.4843 1.1692 2.2838 0.006 115.2105 308.3996 40.6892 9.3588 16.2574 13.1169 0.9819 0.5851 182.567 311.6121;
	3.4512 46.6327 3.7903 0.0 14.333 0.172 5.0366 0.0003 12.6068 15.8806 29.355 43.7919 65.9285 1.2335 34.6293 13.0464 16.1872 17.1536 0.0022 9.134 1.6789 0.4013 14.9732 2.5282 0.0 5.4113 0.0 300.5274 327.5932 327.5932 177.8392 20.5017 0.0073 23.511 3.8673 139.7731 422.571 67.9309 20.8724 0.0 0.0801 1.9081 129.5317 213.3233 426.9728;
	2.6363 35.622 1.2228 0.0 14.4013 17.9728 2.3899 0.0007 18.302 10.6331 19.6552 29.3216 44.1436 0.4885 4.6843 1.7648 2.1896 2.3204 2.9304 1.6724 0.7966 41.9366 16.7775 0.1149 0.0 3.6451 0.0 465.9862 451.8592 451.8592 302.2481 30.9963 9.7679 4.3048 1.5314 192.7933 504.2565 84.3072 2.4989 0.0 0.329 199.3787 109.9051 203.1845 509.5092;
	2.9929 40.4408 85.9887 0.0 15.1981 24.653 6.3268 0.0 21.193 7.6904 14.2156 21.2068 31.9268 7.8748 8.6384 3.2545 4.0379 4.279 7.7941 44.0843 2.1089 57.5237 27.5313 1.7373 0.0043 61.2459 0.0 743.9038 450.4166 450.4166 371.1 44.3809 25.9802 113.473 24.6886 192.1778 623.8152 73.6458 108.2138 0.0116 3.1729 273.4839 110.2685 189.3131 630.3133;
	3.0883 41.7299 5.3097 0.0 14.6755 0.7664 19.0869 0.0 27.4273 21.6648 40.0471 59.7424 89.9418 3.9884 15.9374 6.0043 7.4498 7.8946 27.2615 23.0642 6.3623 1.7882 56.1792 0.1629 0.0 45.4578 0.0 754.4484 444.9702 444.9702 333.0991 44.7787 90.8717 59.3672 12.5042 189.8539 588.0603 74.5146 80.7421 0.0 0.1224 8.5017 105.4065 172.9185 594.1859;
	3.2132 43.4177 83.3774 0.0 14.252 2.6256 14.4851 0.0167 27.7397 23.0431 42.5949 63.5432 95.664 8.0975 20.6036 7.7623 9.631 10.206 1.2984 32.5667 4.8284 6.1265 68.4421 77.5887 0.0276 56.8924 0.0 679.9789 396.0292 396.0292 251.9566 56.6746 4.3279 83.8268 25.3869 168.9725 591.6328 75.1092 95.759 0.0738 0.0 29.1272 109.6039 172.5125 597.7957;
	3.6109 48.7912 88.3348 0.6769 14.2231 23.8943 13.9631 13.8463 27.7863 23.2152 42.913 64.0178 96.3784 11.6686 17.4822 6.5863 8.1719 8.6598 0.2591 57.433 4.6544 55.7534 53.6083 79.3998 96.0002 70.0914 5.4913 743.3369 315.8533 315.8533 215.2727 57.2542 0.8636 147.8326 36.5827 134.7641 514.0203 94.9591 77.4943 257.1433 7.3411 265.0674 9.8322 191.0698 519.3747;
	3.8246 51.6782 92.5905 113.9721 14.3879 27.1935 15.7895 16.7567 27.9853 25.1592 46.5064 69.3784 104.4488 9.4928 62.6572 23.6057 29.2886 31.0372 42.6383 69.5387 5.2632 63.4515 66.8277 84.6168 98.1097 72.6231 7.3685 768.0272 352.8539 352.8539 301.426 45.6123 142.1276 178.9927 29.7613 150.551 469.8575 100.3009 188.8908 262.7938 10.3736 301.6667 141.46 214.252 474.7518;
	3.6674 49.5547 90.0358 108.8616 14.8069 17.835 14.1149 17.2021 27.9359 24.6108 45.4927 67.8661 102.1721 11.8788 47.7002 17.9708 22.2971 23.6283 9.1274 54.7207 4.705 41.615 63.042 83.4477 99.0145 71.5068 6.8849 740.9773 403.3919 403.3919 280.5185 47.1883 30.4248 140.8511 37.2415 172.1139 481.1903 79.2011 335.7191 265.2175 11.9805 197.8495 141.919 223.5529 486.2027;
];
