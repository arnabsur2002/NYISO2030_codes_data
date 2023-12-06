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
	3.9975 54.0154 90.4779 112.7865 14.9924 34.532 32.0853 17.9743 11.0944 16.7007 30.871 46.0535 69.3333 52.4883 202.2025 76.1786 94.5179 100.1608 87.4753 68.9301 10.6951 80.5747 25.5927 85.1632 100.6529 74.6081 13.6855 1227.9445 796.0236 796.0236 746.7006 117.6406 291.5842 177.4262 164.558 339.6367 1149.9682 270.6661 469.618 269.6059 120.2894 383.0751 209.6468 285.8198 1161.947;
	3.9575 53.4739 90.0247 111.7187 14.8992 33.9262 31.4607 17.7511 11.8379 14.5567 26.9078 40.1411 60.4322 56.4341 194.507 73.2794 90.9207 96.3488 85.2021 70.3896 10.4869 79.1612 29.9344 84.8222 97.519 73.0479 13.0219 1239.9939 795.1923 795.1923 731.5196 115.4366 284.0069 181.1829 176.9284 339.2821 1210.4861 263.1587 455.5003 261.2116 119.1674 376.3552 210.4743 282.9818 1223.0954;
	3.8293 51.7421 88.8806 110.4851 15.0458 33.6228 30.2838 17.7967 22.2865 15.5029 28.6569 42.7505 64.3606 51.2698 177.0931 66.7188 82.7807 87.7229 86.2018 69.9564 10.0946 78.4532 30.6574 85.9154 100.7116 73.3393 13.2124 1234.3111 789.1345 789.1345 704.5236 119.1604 287.3393 180.068 160.7376 336.6974 1210.6431 282.6351 454.4528 269.7633 119.2415 372.9891 210.4305 273.179 1223.254;
	3.7057 50.0727 89.0736 112.3152 14.9884 34.1224 30.6308 17.7111 28.0308 29.0995 53.79 80.2441 120.807 64.13 197.5399 74.422 92.3384 97.8512 89.3417 69.6793 10.2103 79.6188 27.1411 86.3023 102.1887 72.4285 13.0466 1263.7561 793.3525 793.3525 753.061 120.085 297.8058 179.3547 201.0563 338.4971 1157.8176 314.0444 465.3483 273.7198 117.9571 378.5306 177.3463 268.1868 1169.8782;
	3.2055 43.3135 89.0403 111.9668 15.1982 31.6348 30.922 17.9862 27.4346 29.2203 54.0133 80.5771 121.3085 63.3321 199.9784 75.3407 93.4783 99.0591 87.498 70.9198 10.3073 73.8145 71.1714 87.4704 103.6171 72.2849 13.1336 1323.5292 805.2895 805.2895 735.2191 116.7219 291.6599 182.5477 198.5546 343.5902 1167.5462 310.0064 472.0088 277.5459 119.2402 350.9352 181.4986 273.9738 1179.7081;
	3.7714 50.9601 89.0705 111.1195 14.917 32.358 18.8701 18.3895 26.3402 28.3159 52.3416 78.0833 117.554 52.8171 196.9282 74.1916 92.0525 97.5482 58.7238 69.9931 6.29 75.5021 68.8231 85.6617 100.5729 74.0185 13.7674 1273.1727 806.2668 806.2668 771.7231 118.6648 195.746 180.1625 165.5886 344.0072 1183.78 316.7647 473.0923 269.3916 116.3042 358.9586 158.9988 276.1593 1196.1111;
	3.7857 51.1533 90.7198 115.5751 15.3183 33.1884 13.7966 18.6605 26.4227 28.5097 52.6998 78.6177 118.3585 68.475 196.7035 74.1069 91.9475 97.4369 86.1596 72.3771 4.5989 77.4397 70.0769 87.853 103.0936 74.0769 13.5128 1327.7586 807.2696 807.2696 758.76 120.1995 287.1985 186.2989 214.6785 344.435 1225.3296 326.6434 446.5567 276.1436 116.4177 368.1704 176.6359 280.017 1238.0935;
	3.7653 50.8771 91.2518 115.6774 15.3212 32.5717 2.7797 18.2447 6.2106 28.715 53.0792 79.1837 119.2107 47.1052 196.4311 74.0043 91.8201 97.3019 85.578 71.2866 0.9266 76.0006 73.4611 88.8589 103.4785 74.2165 13.4694 1276.5829 767.527 767.527 724.8961 116.9257 285.2601 183.4919 147.6811 327.4782 1203.5671 317.9128 195.488 277.1747 117.899 361.3286 201.9422 281.9558 1216.1043;
	3.7991 51.3347 92.5389 119.6816 15.3279 32.1959 6.2971 17.9889 19.2362 29.2395 54.0488 80.6301 121.3882 26.3947 202.6666 76.3535 94.7349 100.3907 88.6624 73.6867 2.099 75.1239 73.456 89.4961 105.0173 72.5657 13.2986 1168.8784 698.9814 698.9814 687.7752 116.7352 295.5413 189.6697 82.751 298.2321 1016.4967 298.6482 168.7277 281.2963 120.4152 357.1603 188.3568 281.4588 1027.0852;
	3.8919 52.5884 90.9236 118.8459 15.4048 32.3637 11.7147 18.646 24.4842 27.1057 50.1044 74.7459 112.5295 21.8204 198.144 74.6496 92.6208 98.1504 87.6661 73.3695 3.9049 75.5153 51.7602 89.6225 105.7019 74.8407 13.5024 1012.9521 624.0832 624.0832 588.291 118.0335 292.2202 188.8534 68.41 266.2755 821.544 263.6579 380.6048 283.1301 123.1445 359.0211 159.0424 280.6788 830.1018;
	3.8537 52.0714 92.0112 117.5119 15.4194 30.1145 18.9105 18.7663 27.12 30.6486 56.6535 84.5159 127.2382 6.5754 198.5853 74.8159 92.8271 98.369 81.3668 72.9616 6.3035 70.2672 75.0906 90.1042 106.2285 75.4432 13.4584 840.9243 692.1175 692.1175 519.687 116.5046 271.2228 187.8033 20.6148 295.3035 783.3224 219.4354 448.2538 284.5405 122.8693 334.0704 158.8303 283.696 791.482;
	3.654 49.374 93.0769 118.193 15.4233 25.6671 14.9591 18.8507 27.12 30.1072 55.6526 83.0228 124.9903 4.7113 198.9828 74.9656 93.0129 98.5659 36.4675 71.8493 4.9864 59.8899 75.3867 90.1691 106.1737 73.9364 13.7964 634.3979 729.1336 729.1336 528.4803 115.2339 121.5584 184.9403 14.7705 311.097 847.71 222.13 134.9707 284.3938 123.7341 284.7335 148.9841 277.4992 856.5403;
	3.8827 52.4632 92.2352 116.5265 15.4137 24.6069 17.2277 18.4426 27.4388 26.0262 48.109 71.7692 108.0481 50.518 194.1621 73.1494 90.7595 96.178 53.9797 71.3605 5.7426 57.416 72.6651 89.7581 105.7248 73.8667 13.911 654.7309 700.3789 700.3789 507.1729 112.4951 179.9322 183.682 158.3809 298.8283 634.0433 234.0455 336.2203 283.1915 123.8224 272.9722 152.143 277.5168 640.6479;
	3.816 51.5631 91.5912 114.0439 15.4059 24.4253 17.6639 18.499 19.6669 23.6176 43.6569 65.1274 98.049 35.6716 194.6265 73.3244 90.9766 96.408 54.131 71.0403 5.888 56.9924 70.9758 88.0769 101.774 73.5177 13.3786 543.3962 676.2967 676.2967 488.1815 94.7726 180.4365 182.858 111.8352 288.5533 701.0749 243.7268 80.1794 272.6089 123.7176 270.958 164.6524 272.3685 708.3778;
	3.8497 52.0174 89.5045 115.5297 15.4142 25.4741 24.0807 18.3908 19.4184 25.8126 47.7141 71.1801 107.1613 31.7482 195.0061 73.4674 91.154 96.5961 70.3587 71.6431 8.0269 59.4396 70.7016 87.8943 102.8689 73.3012 13.294 399.0765 669.226 669.226 461.0014 85.1239 234.529 184.4094 99.535 285.5364 604.5279 237.2618 169.5414 275.5416 122.2632 282.5926 178.4155 254.4454 610.8251;
	3.6495 49.3123 87.3649 116.3119 15.3365 14.7177 18.963 17.994 6.2615 27.6353 51.0833 76.2063 114.7282 24.6944 189.351 71.3369 88.5106 93.7948 59.0287 72.2487 6.321 34.3412 68.5661 86.5236 101.893 70.6927 13.3518 477.4659 575.76 575.76 440.4197 90.1271 196.7624 185.9684 77.4203 245.6576 538.1732 227.3622 233.8815 272.9277 122.8033 163.268 170.7594 247.2662 543.7792;
	3.5468 47.9245 87.4905 116.6644 15.2254 22.4493 10.5391 18.3176 2.4438 28.018 51.7908 77.2617 116.3171 34.1549 187.9006 70.7905 87.8326 93.0764 57.4069 70.2894 3.513 52.3817 70.8747 85.455 102.5799 72.0593 13.2651 1044.5441 499.1304 499.1304 331.1495 89.2625 191.3562 180.9251 107.0803 212.9623 906.8444 242.7664 118.5063 274.7675 120.9487 249.0378 137.7375 247.2495 916.2907;
	3.3505 45.2727 89.9661 119.553 15.2439 25.1429 2.3392 18.5345 1.7125 29.7176 54.9325 81.9485 123.373 56.1417 199.7188 75.2429 93.3569 98.9305 74.7071 71.7512 0.7797 58.6667 74.8638 87.2691 102.0126 73.2193 13.4637 1206.3336 583.8958 583.8958 221.6157 62.8559 249.0236 184.6879 176.0119 249.1289 1064.8467 205.4082 125.273 273.2481 120.636 278.9182 178.5282 274.7579 1075.9389;
	2.4113 32.582 87.6978 113.0128 14.806 33.6793 6.3197 18.8011 0.6838 25.7913 47.6747 71.1213 107.0728 63.2973 198.6931 74.8565 92.8775 98.4224 56.051 72.77 2.1066 78.5851 53.9826 86.3846 100.4341 73.2725 13.5233 1211.8403 726.5887 726.5887 326.8822 56.5658 186.8366 187.3103 198.4455 310.0112 1206.3596 139.3122 264.2233 269.0199 120.8751 373.6162 170.1215 268.2249 1218.9258;
	3.786 51.1578 91.3403 87.7566 15.0145 33.9365 3.5295 18.7927 3.5923 16.0137 29.6011 44.159 66.4812 64.1798 199.1008 75.0101 93.068 98.6243 41.7677 71.7092 1.1765 79.1852 46.3794 88.0162 105.1178 75.7729 13.797 1276.1342 739.1837 739.1837 394.7438 52.3557 139.2257 184.5796 201.2123 315.3851 1219.541 113.6988 53.4299 281.5654 121.3778 376.4693 185.5246 274.9892 1232.2446;
	3.8887 52.5451 91.8522 118.4958 15.276 34.3981 4.7435 18.6778 5.5914 15.2608 28.2093 42.0827 63.3552 65.0443 197.3875 74.3646 92.2672 97.7757 61.5503 70.8986 1.5812 80.2623 70.9707 88.7193 105.5167 74.3166 13.3817 1238.9552 686.7912 686.7912 639.5745 49.4736 205.1677 182.4932 203.9227 293.0309 1232.3159 157.3076 81.6179 282.6342 118.4278 381.5897 194.3913 284.0345 1245.1525;
	3.8364 51.8384 90.1082 115.318 15.2413 33.1011 1.43 18.0269 27.0434 29.2139 54.0015 80.5597 121.2821 65.9091 199.3582 75.107 93.1883 98.7518 67.5768 70.282 0.4767 77.2358 75.6954 89.215 104.3552 74.7557 13.3869 1240.5975 677.1531 677.1531 572.2471 78.5859 225.256 180.906 206.6338 288.9187 1213.1359 217.2844 427.9898 279.5228 117.5672 367.2011 196.4822 281.8107 1225.7727;
	3.7479 50.6428 91.4545 115.5743 14.8202 31.8449 1.7532 18.7712 26.8249 30.1185 55.6736 83.0541 125.0375 65.582 197.1906 74.2904 92.1751 97.6781 65.3348 70.9494 0.5844 74.3047 75.0282 88.2754 104.1867 75.7117 13.5479 1272.2629 776.5172 776.5172 674.4501 119.3419 217.7825 182.6239 205.6083 331.314 1248.2479 253.2726 457.6411 279.0716 119.0254 353.2656 192.3407 282.6718 1261.2505;
	3.7752 51.0118 91.2773 111.7605 14.933 32.2707 29.139 17.5589 26.6485 27.2105 50.2981 75.0349 112.9646 65.5811 191.6491 72.2027 89.5848 94.9332 71.1726 69.3809 9.713 75.2984 73.5639 87.2547 104.6268 72.5477 12.8695 1260.759 752.8787 752.8787 640.4057 118.4539 237.2421 178.5866 205.6056 321.2283 1225.2867 248.4313 453.3297 280.2504 117.926 357.9901 191.1996 282.4288 1238.0501;
];
