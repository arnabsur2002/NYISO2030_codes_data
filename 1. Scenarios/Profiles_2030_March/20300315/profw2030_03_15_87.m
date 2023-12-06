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
	3.9916 53.9356 93.0181 117.0816 14.9143 34.3324 31.2547 18.9695 10.0596 15.7395 29.0942 43.4029 65.3428 54.8099 195.6842 73.7229 91.471 96.9319 87.4793 67.6879 10.4182 80.1089 21.8237 88.7109 105.637 75.4284 13.9579 1264.4358 805.9718 805.9718 744.9741 116.2724 291.5978 174.2289 171.8365 343.8813 1098.2998 285.4689 461.1173 282.9562 123.1836 380.8607 210.9794 283.0665 1109.7405;
	3.9074 52.7969 92.3941 114.8837 14.988 34.5125 31.7455 18.292 11.2614 14.0558 25.9819 38.76 58.3529 66.1686 190.4814 71.7627 89.039 94.3547 87.1944 70.0899 10.5818 80.5291 27.4018 86.562 104.1726 74.4844 13.5538 1311.3401 830.2809 830.2809 783.582 116.0255 290.648 180.4117 207.4476 354.2532 1253.418 267.9358 468.1102 279.0336 122.8081 382.8584 213.1131 281.7947 1266.4744;
	3.8162 51.5658 88.232 112.9294 14.8378 34.329 32.5143 18.0966 20.9653 14.0161 25.9086 38.6505 58.1882 63.6168 158.9782 59.8941 74.313 78.7496 85.3676 68.6244 10.8381 80.1009 25.248 86.3143 104.8867 73.514 13.453 1260.9737 808.8278 808.8278 776.6678 118.2051 284.5585 176.6394 199.4472 345.0998 1237.1122 292.5805 466.2197 280.9465 123.3102 380.8226 210.472 273.6211 1249.9988;
	3.8674 52.2577 89.0535 114.7727 14.9047 34.2014 31.5773 17.8802 27.4861 26.2871 48.5913 72.4886 109.1312 68.0811 189.966 71.5686 88.798 94.0994 89.3171 53.8966 10.5258 79.8033 0.0 83.3342 99.7011 71.5787 13.0706 1281.9593 823.7989 823.7989 807.2831 117.7055 297.7235 138.7299 213.4435 351.4875 1236.327 317.1883 476.6231 267.0565 122.4298 379.4075 185.125 267.2995 1249.2054;
	3.309 44.7113 88.6916 113.0263 14.4073 31.4903 31.0228 18.2992 26.7751 26.0508 48.1546 71.8372 108.1504 64.2021 192.082 72.3658 89.7872 95.1476 90.6091 61.0526 10.3409 73.4773 65.7271 86.4066 101.8088 72.28 13.3547 1288.4542 811.3878 811.3878 775.2992 119.4141 302.0305 157.1497 201.2824 346.1921 1160.6537 323.4748 468.6858 272.702 123.3319 349.3323 184.9762 269.8426 1172.7438;
	3.8775 52.3936 91.7326 111.613 14.7524 34.067 19.1408 18.3866 25.8236 26.8355 49.605 74.0009 111.408 50.2053 197.6067 74.4472 92.3696 97.8842 64.309 65.5282 6.3803 79.4897 64.935 87.3098 101.0997 72.3359 13.6874 1212.8659 774.2476 774.2476 745.563 117.1816 214.3632 168.6697 157.4004 330.3456 1141.2893 307.8101 459.3407 270.8028 121.0307 377.9168 165.6012 271.5244 1153.1777;
	3.8014 51.3648 87.4941 110.689 14.5281 33.8733 13.2924 17.5348 25.5328 26.393 48.7871 72.7808 109.5711 65.087 197.7916 74.5168 92.4561 97.9758 90.1357 69.2475 4.4308 79.0378 68.8009 85.1228 98.6228 69.3291 13.3267 1261.8036 744.3313 744.3313 711.5659 117.3359 300.4522 178.2432 204.0564 317.5814 1148.0111 312.4187 432.8902 264.1681 121.3536 375.7682 182.4796 270.5185 1159.9696;
	3.8129 51.5212 90.0789 112.9946 14.5198 33.5073 2.5786 17.3261 7.8029 28.538 52.7521 78.6958 118.476 44.2875 198.9433 74.9507 92.9944 98.5463 90.5141 70.4608 0.8595 78.1836 70.936 84.3614 97.0331 70.4987 13.4064 1222.5198 684.5841 684.5841 697.378 113.1136 301.7138 181.3664 138.8474 292.0892 1156.2267 308.8278 183.1667 259.9101 122.2375 371.7073 203.6427 271.402 1168.2707;
	3.7212 50.282 92.0804 118.3206 14.2403 30.7797 1.4331 18.034 0.3495 28.8476 53.3243 79.5493 119.761 26.2069 195.4281 73.6264 91.3513 96.8051 92.6323 70.8311 0.4777 71.8193 70.3296 86.4743 100.1819 71.1776 13.8733 1132.8962 640.1787 640.1787 711.9097 114.561 308.7744 182.3195 82.1622 273.1429 1005.4211 287.3 58.3342 268.3444 122.9374 341.4494 181.2813 274.6443 1015.8942;
	3.6693 49.5799 88.6478 116.8978 14.3979 29.9659 0.5399 18.0593 0.3925 25.0665 46.3351 69.1229 104.0641 22.6672 193.2344 72.7999 90.3258 95.7184 91.785 71.1604 0.18 69.9205 48.7221 85.6649 96.677 72.3766 13.4231 987.79 595.3629 595.3629 585.8035 117.689 305.9501 183.1669 71.0648 254.0215 850.4048 269.3394 18.3072 258.9563 121.8816 332.422 164.5224 268.5717 859.2632;
	3.4784 47.0012 87.2781 110.9938 14.3813 24.4534 0.839 17.1793 0.0676 28.1543 52.0429 77.6377 116.8832 12.0213 199.2572 75.069 93.1412 98.7018 83.6423 70.6398 0.2797 57.0579 70.2667 85.5193 88.1107 69.7651 13.144 827.8847 649.7023 649.7023 534.6211 115.8212 278.8075 181.8271 37.6885 277.2063 755.2526 205.9277 54.4935 236.0108 117.7139 271.2697 140.3035 263.7382 763.1198;
	3.5138 47.4796 91.4117 114.7859 14.8818 18.4772 5.4363 17.8475 5.2856 28.1757 52.0823 77.6965 116.9717 17.2985 204.5899 77.0781 95.6339 101.3434 42.9259 71.7538 1.8121 43.1135 75.0126 86.0856 100.639 73.2775 13.5103 636.9096 694.1161 694.1161 527.1943 112.754 143.0865 184.6944 54.2332 296.1562 823.7758 214.6507 190.9058 269.5688 122.4625 204.9737 140.0986 279.3674 832.3568;
	3.7551 50.7401 91.7546 115.3666 15.2914 21.4326 8.3589 17.5857 26.2262 26.5982 49.1663 73.3465 110.4228 53.5045 202.36 76.238 94.5915 100.2388 61.5296 70.9054 2.7863 50.0095 75.3157 85.8742 101.1539 72.1928 13.7258 659.7312 711.8205 711.8205 547.6617 111.8727 205.0987 182.5106 167.7438 303.7101 631.4261 241.1726 82.4733 270.948 121.6809 237.7592 147.6575 277.138 638.0035;
	3.7347 50.4646 89.0512 115.484 15.2417 20.6365 14.4442 17.4553 20.1307 24.3842 45.0738 67.2412 101.2312 39.3467 201.993 76.0997 94.42 100.057 55.2761 70.9842 4.8147 48.1517 75.0223 85.2385 98.6646 72.0982 13.2272 562.0092 684.4251 684.4251 520.2646 102.5915 184.2536 182.7135 123.3572 292.0214 699.8657 247.2922 242.3355 264.2802 122.8616 228.9271 159.3876 273.7309 707.1559;
	3.826 51.697 91.9698 116.1597 15.1002 19.3633 7.8777 17.6643 13.219 27.0956 50.0858 74.7181 112.4877 33.0028 188.4114 70.9829 88.0714 93.3294 69.2187 69.4739 2.6259 45.181 74.47 84.8917 99.6639 73.6498 13.3242 419.5288 667.1819 667.1819 462.6811 93.4535 230.729 178.826 103.4684 284.6643 610.7708 234.523 91.1964 266.9568 121.7309 214.8032 166.3642 267.4566 617.133;
	3.5056 47.3683 91.9209 118.1803 14.9336 10.3093 4.1695 17.9369 8.1144 29.6394 54.7879 81.7328 123.0483 24.5356 191.6688 72.2101 89.594 94.9429 68.2962 71.0909 1.3898 24.0549 75.5916 86.8793 101.6432 74.0284 13.6851 473.8163 559.4166 559.4166 437.9221 92.2526 227.654 182.9881 76.9223 238.6844 504.6742 216.0938 88.7577 272.2585 123.7689 114.364 157.3511 255.474 509.9312;
	3.4223 46.2429 91.6736 114.8519 15.0067 18.8596 10.4333 18.342 19.9489 29.7458 54.9847 82.0264 123.4903 33.6255 190.7114 71.8494 89.1465 94.4686 66.6911 70.5474 3.4778 44.0057 75.6056 86.8762 103.322 73.1039 13.5012 1087.7142 500.5238 500.5238 343.3376 87.0538 222.3036 181.5892 105.4206 213.5568 876.32 233.9103 130.772 276.7552 121.8392 209.2158 137.4258 255.8081 885.4483;
	2.9995 40.5298 91.5164 112.0185 14.7957 18.6895 0.0 18.0773 0.8245 28.9961 53.5988 79.9589 120.3777 51.9284 189.0412 71.2202 88.3657 93.6413 77.9258 69.3869 0.0 43.6088 75.1437 87.851 100.8118 73.2641 13.3757 1178.9067 546.6077 546.6077 232.0864 63.1198 259.7527 178.6022 162.8025 233.2193 955.537 206.4016 115.6208 270.0317 122.3176 207.3288 161.5514 262.7517 965.4905;
	2.3797 32.1547 93.1807 109.9758 14.9732 32.2627 0.0 18.4093 0.2114 26.2472 48.5175 72.3785 108.9655 62.8012 187.6465 70.6947 87.7138 92.9505 52.7002 68.9262 0.0 75.2795 59.0799 88.3042 100.4419 73.7938 13.2618 1149.9425 652.0141 652.0141 297.5074 54.7216 175.6673 177.4162 196.8901 278.1927 1080.9007 137.935 218.6359 269.0409 120.6418 357.9004 151.5013 265.22 1092.1601;
	3.7391 50.5238 93.9272 85.3516 14.9825 33.5903 0.0 18.0371 0.1827 16.328 30.1821 45.0258 67.7861 67.3352 195.6891 73.7247 91.4733 96.9344 41.9159 70.6383 0.0 78.3773 47.5544 88.0627 102.3397 74.1457 13.2122 1244.9838 687.9123 687.9123 376.6723 50.1988 139.7197 181.8231 211.1051 293.5092 1137.6483 107.3863 0.0 274.1241 119.0353 372.6283 182.481 263.2238 1149.4988;
	3.6853 49.796 92.2313 118.9523 14.4233 32.4508 0.0 18.262 0.4687 17.6357 32.5993 48.6317 73.2148 67.7968 197.3876 74.3646 92.2672 97.7757 63.399 69.0812 0.0 75.7185 70.9403 86.05 102.6973 73.1422 13.2581 1192.3538 675.2695 675.2695 607.8002 46.4237 211.33 177.8151 212.5522 288.115 1186.2647 147.7884 30.6735 275.0821 121.2563 359.9873 187.9403 263.1347 1198.6216;
	3.7979 51.3185 92.2016 119.3251 14.3728 33.5663 0.1993 17.9465 27.0034 30.8111 56.9539 84.964 127.9128 69.5418 200.3491 75.4804 93.6516 99.2427 65.2285 69.2996 0.0664 78.3214 75.0492 88.6526 102.9727 72.5606 13.2986 1228.4553 682.4774 682.4774 542.0929 73.3995 217.4284 178.3774 218.0229 291.1904 1187.5587 200.9712 433.7355 275.8197 121.212 372.3624 199.7705 260.8692 1199.9291;
	3.7343 50.4593 91.6404 119.8673 14.3924 33.7568 0.0 18.4732 27.2184 30.8803 57.0817 85.1547 128.2 69.8761 189.2729 71.3075 88.4741 93.7561 62.7067 69.2533 0.0 78.7659 74.5045 88.8792 103.4552 72.2136 13.3156 1265.4546 758.8962 758.8962 636.4832 112.3413 209.0223 178.2581 219.071 323.7957 1216.0994 240.8665 455.0571 277.1122 115.2707 374.4756 201.804 262.7912 1228.7671;
	3.7945 51.2717 90.0666 118.4846 14.5169 34.0816 26.4273 17.8326 26.7738 29.5155 54.559 81.3912 122.5341 69.1695 194.0107 73.0924 90.6887 96.103 75.9489 69.8304 8.8091 79.5237 75.2704 85.2053 104.3728 71.7522 12.9423 1244.6886 741.528 741.528 610.1416 112.3603 253.163 179.7435 216.8556 316.3853 1183.9076 228.0664 452.225 279.5701 113.6151 378.0782 202.298 263.731 1196.24;
];
