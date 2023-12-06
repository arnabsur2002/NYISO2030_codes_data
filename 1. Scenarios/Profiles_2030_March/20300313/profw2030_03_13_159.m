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
	0.7984 10.7883 57.4395 62.6393 7.8149 0.8487 0.6175 9.075 4.234 19.6304 36.2865 54.1323 81.4959 3.3726 154.5205 58.2147 72.2294 76.5416 85.0083 70.0832 0.2058 1.9803 66.9501 78.1621 54.4686 53.6089 4.734 168.8192 290.8927 290.8927 205.3739 45.0357 283.361 180.3943 10.5734 124.1142 349.3014 85.3218 8.281 145.8981 66.5428 9.4149 3.7177 72.6167 352.94;
	0.5196 7.0207 52.4344 58.9084 6.4038 0.1696 1.3146 11.2688 0.0968 11.8733 21.9476 32.7415 49.2921 5.1817 121.2133 45.6664 56.6602 60.0429 75.4556 69.0607 0.4382 0.3958 24.0976 75.25 56.3859 54.5858 6.0337 79.4378 208.0695 208.0695 144.9717 31.0563 251.5188 177.7623 16.2453 88.7763 274.2795 93.1858 29.5245 151.0338 77.9721 1.8815 3.9606 93.0884 277.1365;
	0.3403 4.5982 56.2992 59.0096 5.7477 0.3864 8.4798 10.4597 3.8785 9.6825 17.8979 26.7002 40.197 6.0702 86.262 32.4987 40.3225 42.7298 66.8396 66.8695 2.8266 0.9015 3.0892 76.7045 56.047 50.6357 5.7887 433.675 11.9344 11.9344 46.801 19.2928 222.7987 172.1224 19.031 5.092 181.1048 51.8357 56.8849 150.1259 70.8451 4.2861 5.8935 91.0546 182.9913;
	0.3748 5.0644 59.8677 67.08 7.2841 0.0489 6.7632 12.7943 0.4586 15.8256 29.2533 43.6402 65.7001 4.438 94.0682 35.4397 43.9714 46.5966 45.6131 67.665 2.2544 0.1141 45.6159 80.9667 62.1314 63.7523 7.4157 430.2375 0.779 0.779 6.4754 22.4378 152.0436 174.1698 13.9138 0.3324 14.4084 16.5656 37.1425 166.4235 73.5945 0.5423 3.4518 134.2478 14.5585;
	0.4505 6.0876 77.086 73.4691 9.0302 0.5057 3.5011 13.6185 6.3773 16.2691 30.0732 44.8633 67.5414 1.152 126.1579 47.5292 58.9715 62.4922 48.4276 67.1547 1.167 1.1799 46.7173 81.3358 80.1345 67.3694 8.4761 36.8448 6.7264 6.7264 28.1827 12.1407 161.4253 172.8563 3.6116 2.8699 11.5095 18.0462 16.6736 214.6459 73.5211 5.6096 2.7846 146.7574 11.6294;
	0.5665 7.655 77.5562 61.1689 9.8585 4.548 10.358 12.2392 13.3676 8.6457 15.9815 23.8413 35.893 0.1991 161.2834 60.7626 75.3906 79.8916 83.3346 68.0632 3.4527 10.612 32.8563 75.0676 56.9986 65.9219 7.8623 129.0537 43.4019 43.4019 45.0062 13.2896 277.7819 175.1949 0.6244 18.5181 64.0436 16.5752 120.826 152.6748 59.9511 50.4523 26.5033 143.8674 64.7108;
	0.833 11.2556 59.7541 45.9155 10.5589 6.0748 6.8874 8.2297 15.8416 7.2164 13.3393 19.8997 29.9588 9.625 138.2773 52.0952 64.6366 68.4955 70.0384 70.5822 2.2958 14.1746 22.9532 59.3003 36.2831 60.5462 4.3091 180.6944 78.9265 78.9265 88.2408 10.5977 233.4613 181.6789 30.1757 33.6753 95.8439 29.2797 321.1931 97.1868 37.5978 67.3903 37.797 144.1007 96.8423;
	0.7464 10.0855 34.8546 32.1869 4.8056 5.8066 8.1045 6.794 15.7018 5.0907 9.41 14.0379 21.134 2.008 72.9955 27.5006 34.1211 36.1582 22.1655 49.9896 2.7015 13.5488 13.0169 36.3184 33.354 59.9014 4.3337 22.2785 16.0207 16.0207 28.3653 5.3939 73.885 128.6734 6.2953 6.8355 20.6494 3.1262 263.9656 89.3411 13.9448 64.4149 105.9526 110.0545 20.8644;
	0.7854 10.6123 29.3373 29.2993 4.2026 9.9384 13.1154 5.5555 25.2916 2.6614 4.9196 7.3391 11.049 9.1099 22.3441 8.418 10.4446 11.0681 31.0431 20.4096 4.3718 23.1896 6.7849 37.9118 29.2225 55.4212 4.0708 43.0779 3.0564 3.0564 4.2254 4.765 103.477 52.5344 28.5608 1.3041 2.2252 1.0476 276.4009 78.2745 6.3211 110.25 15.0165 80.4202 2.2484;
	0.6919 9.3495 30.652 27.6241 7.9413 9.2968 22.4227 4.3408 27.1037 3.2017 5.9183 8.8289 13.2919 10.346 13.5625 5.1096 6.3397 6.7182 52.5636 14.5076 7.4742 21.6926 12.8444 37.5679 30.1747 47.3943 3.179 44.4928 39.798 39.798 11.1219 4.2287 175.2121 37.3426 32.4362 16.9805 0.5178 0.0542 158.0424 80.8252 1.3237 103.1329 49.3738 95.5128 0.5232;
	0.9866 13.3312 42.3178 23.3624 12.1812 13.7459 23.6392 3.6711 26.9648 3.5554 6.5721 9.8042 14.7602 9.0964 11.3551 4.278 5.3078 5.6247 48.1332 8.5845 7.8797 32.0737 33.8843 43.1071 47.2191 55.1708 1.409 62.9336 72.3014 72.3014 54.9511 1.0392 160.4441 22.0965 28.5183 30.8486 50.7391 0.7143 62.7738 126.4796 7.2422 152.4875 14.3828 102.1038 51.2676;
	1.7337 23.4256 60.4438 2.2073 14.0297 3.898 8.3072 0.263 17.7915 2.3496 4.3431 6.4791 9.7542 2.6396 51.9571 19.5745 24.2869 25.7369 50.9539 11.4084 2.7691 9.0954 53.6568 55.1634 6.3246 50.1559 0.5724 173.4045 117.1527 117.1527 182.1561 5.9425 169.8464 29.3653 8.2754 49.9851 125.1058 6.7043 14.6914 16.9408 9.9526 43.2423 28.5138 134.1497 126.409;
	2.3478 31.7233 82.0159 28.0971 14.6808 6.393 6.2682 0.9183 3.0308 22.9821 42.4821 63.3749 95.4106 0.0748 32.6799 12.3119 15.2759 16.1879 11.7781 10.4909 2.0894 14.917 33.5701 66.6871 70.9625 57.6746 0.1632 215.2188 156.4633 156.4633 36.4787 3.1849 39.2604 27.0035 0.2344 66.7577 152.2079 0.0993 0.1981 190.078 42.1544 70.9199 109.8127 169.1743 153.7934;
	1.7401 23.5126 3.9192 0.069 14.3867 19.9574 0.1795 0.0969 1.7198 0.0884 0.1635 0.2439 0.3672 0.0664 13.4255 5.058 6.2757 6.6503 40.9435 7.6849 0.0598 46.5672 39.8523 0.7532 3.7562 33.5584 0.0013 195.5632 197.7436 197.7436 13.8388 5.0901 136.4784 19.781 0.208 84.3706 176.1307 8.16 0.0 10.0612 8.3272 221.3939 76.2992 133.2931 177.9654;
	1.9938 26.9409 1.772 1.2388 9.5136 0.393 0.7952 0.0357 6.8642 0.0686 0.1269 0.1893 0.2849 0.0 7.2338 2.7253 3.3814 3.5832 58.3073 0.9558 0.2651 0.9171 3.2782 0.4025 0.4505 2.1339 0.0 261.0875 251.0573 251.0573 80.2654 7.3554 194.3577 2.4603 0.0 107.1178 218.9766 12.9143 5.3519 1.2067 0.0793 4.3601 62.4009 100.0125 221.2576;
	3.0421 41.1051 83.027 4.1101 14.3527 5.2474 4.8946 0.2874 8.9871 0.2397 0.4431 0.6611 0.9952 0.5133 22.1898 8.3599 10.3725 10.9917 53.21 3.7646 1.6315 12.244 42.65 2.92 5.9384 4.6799 0.0484 402.9695 284.6364 284.6364 162.2675 10.5281 177.3668 9.69 1.6093 121.4449 294.6518 37.5104 86.5921 15.9065 2.1529 58.2115 0.0084 173.6726 297.7211;
	3.2907 44.4645 0.0 0.0 14.0675 3.2562 1.3574 0.0165 0.7437 0.0059 0.011 0.0164 0.0246 1.7317 32.1953 12.1294 15.0494 15.9479 17.8822 1.7249 0.4525 7.5977 0.0509 0.0206 0.0 1.4302 0.2464 380.4155 381.2519 381.2519 172.5463 22.6122 59.6072 4.44 5.4293 162.6675 438.3686 69.6548 18.4583 0.0 0.0698 36.1216 117.3429 213.4064 442.935;
	2.6097 35.2633 0.0 0.0 14.1646 19.8367 4.0984 0.0008 0.1369 0.5707 1.0549 1.5736 2.3691 5.0308 3.2412 1.2211 1.5151 1.6055 7.2311 0.109 1.3661 46.2856 14.3738 0.0084 0.0 0.0312 0.1864 553.9918 502.7433 502.7433 323.3016 33.6179 24.1037 0.2806 15.7722 214.5038 543.8512 94.621 19.5764 0.0 4.3413 220.055 103.7 208.8888 549.5163;
	2.87 38.7803 79.2049 0.0 14.1391 25.8645 0.0 0.0001 0.0 7.8108 14.4381 21.5388 32.4265 8.1786 2.7171 1.0236 1.2701 1.3459 13.6973 37.9542 0.0 60.3505 26.7929 0.0 0.0 57.3707 0.0709 742.319 442.4105 442.4105 355.9083 44.8115 45.6577 97.6942 25.6411 188.7618 608.4052 76.4364 0.0 0.0 1.6353 286.9234 102.1048 187.1127 614.7427;
	2.9584 39.9748 0.0029 0.0084 14.4108 4.2076 18.4892 0.016 25.9126 18.1904 33.6246 50.1613 75.5176 20.0859 3.432 1.293 1.6043 1.7 1.1762 16.2725 6.1631 9.8177 43.6715 0.1555 0.0022 52.0977 0.2377 723.8106 441.2861 441.2861 335.6415 48.039 3.9208 41.8854 62.972 188.2821 558.9215 80.4789 22.5571 0.0059 2.8333 46.6763 104.5822 171.3932 564.7436;
	3.1859 43.0483 87.8718 28.271 14.6245 8.9083 3.035 1.5698 26.1978 21.3354 39.4382 58.8341 88.5744 10.1037 19.5122 7.3511 9.1208 9.6653 0.7113 27.6166 1.0117 20.786 68.6216 84.385 19.082 57.9805 1.6313 621.1128 390.7696 390.7696 260.0447 55.9023 2.3709 71.0852 31.6765 166.7284 528.9179 78.4973 27.3539 51.1125 4.9059 98.8226 105.6171 183.2534 534.4275;
	3.6062 48.7279 92.9104 60.4946 15.0379 25.1891 12.69 16.3774 26.2488 23.8051 44.0034 65.6445 98.8274 11.3894 0.2224 0.0838 0.104 0.1102 0.0 49.446 4.23 58.7745 54.8371 86.3904 103.1085 73.3365 7.8389 664.8129 326.7529 326.7529 213.0311 61.7974 0.0 127.2742 35.7073 139.4146 479.7913 106.4937 10.603 276.1834 13.6803 279.4309 10.3123 209.1443 484.7891;
	3.6735 49.6376 91.333 114.3653 14.6079 27.242 14.0189 16.5718 27.2741 26.3936 48.7882 72.7823 109.5734 8.7033 41.1948 15.5199 19.2562 20.4058 0.0 55.9775 4.673 63.5646 66.8875 88.0974 99.8918 73.1605 7.9155 765.6195 349.4948 349.4948 294.7769 46.8411 0.0 144.0863 27.2861 149.1178 435.0142 107.6338 35.6721 267.5674 12.7189 302.2042 143.075 201.9826 439.5456;
	3.5036 47.3417 88.7666 108.6595 14.8443 16.8046 11.3164 17.5977 26.8652 26.1562 48.3494 72.1277 108.5879 11.3341 26.6212 10.0294 12.4439 13.1868 0.0 37.8791 3.7721 39.2107 64.1043 88.8422 100.917 74.1306 7.85 721.8878 387.6427 387.6427 281.3361 52.7331 0.0 97.5008 35.5341 165.3942 430.494 91.4829 303.8296 270.3134 9.905 186.419 135.6531 220.4694 434.9783;
];