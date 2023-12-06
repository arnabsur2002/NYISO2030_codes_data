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
	3.6254 48.9867 87.8625 108.08 14.1846 29.3652 24.839 12.8762 24.4992 27.4506 50.7421 75.6972 113.9617 64.4096 201.0337 75.7383 93.9715 99.5818 89.8006 72.5952 8.2797 68.5188 70.8709 85.4089 92.7978 61.6308 9.7962 1229.9092 772.6813 772.6813 738.6728 111.5049 299.3354 186.8602 201.9327 329.6773 1113.9936 297.1995 447.2148 248.5656 111.8894 325.758 180.0081 232.936 1125.5977;
	3.6515 49.3403 87.3634 106.6302 14.0175 30.2355 25.1824 11.7157 24.0185 24.856 45.946 68.5424 103.1902 64.7483 204.0748 76.884 95.3931 101.0882 89.9109 72.0602 8.3941 70.5495 71.6816 82.8185 90.5791 59.9651 8.8063 1226.0823 769.9289 769.9289 758.6225 116.4073 299.7029 185.4831 202.9947 328.503 1163.2191 283.4678 437.2354 242.6225 108.2621 335.4127 190.3786 239.2567 1175.336;
	3.6473 49.2827 89.4104 96.4112 14.804 30.0209 22.4136 10.1001 24.6474 26.172 48.3785 72.1712 108.6534 63.7613 201.3051 75.8405 94.0984 99.7163 91.217 73.373 7.4712 70.0488 68.8233 84.2385 81.4408 58.3981 8.9014 1264.9229 795.7625 795.7625 771.167 117.7799 304.0566 188.8624 199.9004 339.5253 1177.5108 276.5764 435.7067 218.1449 108.8812 333.032 172.856 242.8339 1189.7765;
	3.7562 50.7547 87.8017 100.3809 14.9617 31.9945 21.6897 10.6762 25.7179 27.2543 50.3792 75.1558 113.1467 62.4114 201.3276 75.849 94.1089 99.7274 88.3734 73.2818 7.2299 74.6539 68.4702 85.2091 80.3841 50.9521 8.3168 1213.592 800.7924 800.7924 728.5091 117.7259 294.5778 188.6277 195.6681 341.6714 1181.8386 263.402 435.0772 215.3146 107.7914 354.9258 187.093 231.766 1194.1495;
	3.6877 49.8289 85.3782 84.0879 14.5713 30.387 18.5297 8.8083 20.4803 26.2285 48.483 72.3271 108.888 59.5893 200.7645 75.6368 93.8457 99.4484 90.4229 71.8452 6.1766 70.9029 66.5589 86.303 70.0367 49.7795 7.5661 1185.1618 765.442 765.442 697.6173 111.7774 301.4098 184.9298 186.8205 326.5886 1097.2025 249.9051 393.0944 187.5982 110.0896 337.0926 188.5796 220.1906 1108.6317;
	3.7226 50.3008 83.383 78.7865 14.6698 30.0676 16.1447 6.9339 21.9706 28.4612 52.6101 78.4839 118.1571 62.133 191.9088 72.3005 89.7062 95.0618 87.6803 71.0063 5.3816 70.1577 70.8341 83.831 55.4655 35.5378 6.0486 1141.9667 703.9391 703.9391 624.1191 96.6341 292.2678 182.7705 194.7955 300.3473 1071.7569 215.3986 351.6242 148.5683 94.9531 333.5498 188.2081 185.5912 1082.921;
	3.3255 44.9352 74.6022 67.3328 14.8065 28.8524 13.7723 5.7635 15.6721 26.8681 49.6652 74.0907 111.5432 61.3297 188.7245 71.1008 88.2177 93.4844 88.0854 70.3219 4.5908 67.3224 67.459 81.3552 50.827 26.1782 5.1895 1187.1559 675.9532 675.9532 544.5679 70.2617 293.6179 181.0088 192.277 288.4067 1044.9716 201.641 283.1773 136.1438 80.9854 320.0698 159.7949 138.0115 1055.8567;
	3.4938 47.2092 69.3077 72.8698 14.6423 28.6642 15.0308 5.8279 15.2579 24.4333 45.1645 67.3765 101.435 64.4036 197.705 74.4842 92.4156 97.9329 90.9363 72.5104 5.0103 66.8831 58.4157 83.0329 61.5116 19.0647 3.9079 1182.0388 688.6128 688.6128 628.6754 69.3043 303.1209 186.6418 201.9139 293.8081 1040.3636 200.6934 256.5042 164.7633 81.0739 317.9815 147.9814 136.8916 1051.2007;
	3.084 41.6712 58.7058 66.6884 15.1965 24.3048 14.5433 3.9892 20.6781 21.9288 40.535 60.4702 91.0376 64.922 170.9032 64.3868 79.8873 84.6567 89.4849 66.3809 4.8478 56.7111 49.3958 82.8535 56.2835 14.0207 2.7425 1188.3713 754.4883 754.4883 677.9037 87.0231 298.2828 170.8646 203.5394 321.915 1037.913 215.2463 239.101 150.7594 54.7107 269.6209 145.9481 145.8221 1048.7246;
	2.6682 36.0531 51.2652 62.2118 15.1879 18.7642 19.0388 2.1287 21.1086 20.3029 37.5296 55.9868 84.2878 63.2048 166.0626 62.5631 77.6246 82.2589 87.0235 65.6209 6.3463 43.783 46.9093 69.0436 34.7986 7.0246 1.1949 1198.9876 760.9241 760.9241 681.2262 107.3931 290.0783 168.9083 198.1556 324.661 1131.6303 220.077 343.8156 93.2106 43.6583 208.157 122.8232 122.1423 1143.4181;
	2.4325 32.869 38.3148 48.4762 14.6009 14.9314 19.4476 1.0906 20.8519 17.7289 32.7716 48.8888 73.6018 64.315 146.8302 55.3174 68.6346 72.7322 85.3844 64.0661 6.4825 34.84 38.4535 54.5481 23.5422 4.0711 1.1882 1232.0462 794.1392 794.1392 729.8218 106.341 284.6147 164.9063 201.6361 338.8327 1158.7715 241.2628 408.0196 63.0595 32.9561 165.6392 95.1208 84.6781 1170.842;
	1.6391 22.1473 28.8601 28.9875 11.0529 11.8663 19.2178 1.1124 18.2257 17.7809 32.8677 49.0322 73.8177 62.5308 166.2014 62.6154 77.6895 82.3277 90.634 65.4991 6.4059 27.688 45.1661 38.4623 19.4935 6.17 0.8227 1088.4206 716.4777 716.4777 676.5959 106.9834 302.1132 168.5949 196.0425 305.6972 1029.0762 209.2974 387.4061 52.2147 21.6351 131.6366 67.8563 68.5901 1039.7957;
	1.0756 14.5336 25.4414 25.3121 9.1967 7.4639 17.2109 1.9177 14.9958 13.9475 25.7818 38.4614 57.9034 56.6832 170.9287 64.3964 79.8992 84.6693 90.2983 66.0488 5.737 17.4157 42.2792 39.3944 21.9174 7.6705 2.4769 992.8872 727.6609 727.6609 698.4132 101.0875 300.9944 170.0097 177.7096 310.4686 1004.7462 233.1662 394.7146 58.7074 23.7294 82.799 52.0592 38.7962 1015.2123;
	0.8455 11.4247 22.1984 30.7561 7.972 8.3908 13.0032 2.0713 13.7432 19.6004 36.2311 54.0497 81.3715 64.8975 180.3523 67.9467 84.3042 89.3373 88.8194 66.969 4.3344 19.5786 60.0951 37.653 23.1039 8.7285 3.5137 973.8119 687.1837 687.1837 698.6784 94.3151 296.0645 172.3783 203.4626 293.1984 848.1531 226.2579 406.5385 61.8855 27.6512 93.0823 40.0165 30.782 856.988;
	0.8822 11.9208 22.8764 15.4864 6.4006 8.6515 11.281 1.4811 14.0201 19.4558 35.9638 53.651 80.7712 63.0745 174.882 65.8858 81.7472 86.6276 80.4753 68.2707 3.7603 20.1868 62.5769 47.8825 24.4707 5.4617 3.0524 774.7058 595.9315 595.9315 575.8418 82.0382 268.251 175.7289 197.7469 254.2641 703.9543 196.1709 348.9612 65.5464 27.4796 95.9736 36.6935 1.1252 711.2871;
	1.0003 13.5158 19.2868 32.3814 7.6263 3.0304 5.4451 1.4093 9.5424 16.8856 31.2128 46.5633 70.1008 63.907 166.3923 62.6873 77.7787 82.4222 78.8383 65.652 1.815 7.071 60.6481 45.6504 23.7559 4.2861 2.2319 789.5339 519.5434 519.5434 533.2383 82.09 262.7944 168.9885 200.3571 221.6719 573.2253 188.5686 224.6878 63.6319 31.5451 33.6175 17.0886 1.1682 579.1964;
	0.6647 8.9819 84.5207 97.7903 7.2723 5.8203 4.6494 1.9325 12.5124 19.7255 36.4623 54.3945 81.8906 63.2695 178.6578 67.3083 83.5121 88.4979 81.1013 65.3648 1.5498 13.5806 60.0265 43.119 16.4308 13.9506 1.6146 760.24 499.6704 499.6704 551.9408 83.5312 270.3378 168.2491 198.3585 213.1927 682.7305 186.3858 249.6241 44.0112 35.6683 64.5662 23.6178 1.8353 689.8422;
	1.6544 22.3548 90.7668 110.9639 3.9686 32.264 9.9681 17.4179 26.1764 23.3609 43.1822 64.4194 96.983 67.85 141.9299 53.4712 66.344 70.3048 83.6688 54.3812 3.3227 75.2826 74.8086 44.8227 18.5755 5.617 2.1501 743.7404 564.3143 564.3143 627.5829 93.1242 278.896 139.9774 212.7189 240.7741 746.679 208.2604 359.0257 49.7558 83.8467 357.9149 115.1313 29.8366 754.457;
	0.5511 7.4472 29.0488 43.5189 11.425 25.4964 2.8306 2.385 15.2377 26.3748 48.7534 72.7304 109.4953 66.4301 120.315 45.328 56.2403 59.5979 22.895 59.8694 0.9435 59.4915 75.261 47.7335 22.3493 9.3331 2.3985 780.5302 510.6153 510.6153 606.4749 90.0373 76.3166 154.104 208.2675 217.8625 679.5947 187.3321 346.1893 59.8641 92.7531 282.8396 52.8274 10.4488 686.6738;
	0.396 5.3513 31.2308 56.3281 3.2315 15.6148 9.3614 3.3393 16.6884 27.6032 51.0242 76.118 114.5953 63.0431 98.1437 36.9751 45.8765 48.6154 1.3244 61.8812 3.1205 36.4345 73.8914 62.7028 33.2557 22.0425 2.9768 669.1812 369.2421 369.2421 617.2366 76.6018 4.4148 159.2824 197.6487 157.5433 581.4664 189.995 157.9292 89.0777 95.2181 173.2198 35.9722 29.9694 587.5234;
	0.7261 9.8117 47.1676 71.77 5.6146 8.0752 3.8402 4.7108 9.1103 27.9586 51.681 77.0979 116.0705 53.7206 112.7188 42.4662 52.6895 55.8351 80.6719 63.4978 1.2801 18.8421 74.1765 74.8013 37.9942 16.6075 2.3348 527.6224 353.0612 353.0612 516.7038 57.4374 268.9062 163.4435 168.4215 150.6394 607.2536 178.5812 184.6752 101.7702 88.9236 89.5806 6.7716 46.647 613.5792;
	0.5536 7.4808 48.0972 65.2328 0.8841 5.0824 3.6142 2.8109 2.3077 25.0948 46.3873 69.2008 104.1814 36.7553 129.3149 48.7186 60.4472 64.056 73.3628 60.1502 1.2047 11.8588 71.5155 64.7744 37.4864 15.2854 1.3575 419.3792 357.5315 357.5315 474.7839 55.6495 244.5428 154.8268 115.233 152.5468 675.8705 152.2031 150.4012 100.4099 71.6211 56.3803 0.368 40.5742 682.9109;
	0.6266 8.4663 42.7944 63.1532 7.3336 10.9204 4.7315 3.3044 4.9096 19.7795 36.5622 54.5436 82.1151 18.7916 145.8147 54.9349 68.1599 72.2292 83.1645 68.7297 1.5772 25.481 48.3603 64.9012 34.9321 31.319 1.6917 418.2897 426.7585 426.7585 542.0356 58.9722 277.2151 176.9105 58.9143 182.0836 555.8074 140.2508 300.9435 93.5682 59.3431 121.1439 0.3814 14.9095 561.5971;
	0.1039 1.4034 49.8131 66.0433 0.0024 4.4915 0.2081 5.8465 0.5052 22.6876 41.9376 62.5627 94.1878 6.0144 161.8708 60.9839 75.6652 80.1825 84.6668 67.799 0.0694 10.4802 69.2672 69.7314 46.0656 40.8863 3.0837 308.6679 317.4078 317.4078 401.0643 56.0976 282.2228 174.5147 18.8561 135.4273 395.0435 114.487 37.1854 123.3901 60.5253 49.8259 0.1384 57.6705 399.1585;
];
