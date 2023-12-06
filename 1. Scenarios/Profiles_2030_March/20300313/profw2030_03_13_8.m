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
	0.737 9.9588 57.3904 69.4823 8.3099 16.6069 0.0286 8.217 13.8004 19.2381 35.5614 53.0506 79.8673 22.4923 143.1903 53.9461 66.9331 70.9291 80.6254 65.8791 0.0095 38.7494 65.2404 73.679 47.9942 43.3946 4.2274 191.52 325.5108 325.5108 216.8807 40.1162 268.7513 169.5731 70.5162 138.8846 395.9903 77.3803 304.8962 128.556 61.2154 184.2256 28.8065 65.9892 400.1152;
	0.4505 6.0871 53.8488 64.3191 6.9913 2.4506 0.0 10.9676 4.3024 11.0309 20.3905 30.4186 45.795 33.5149 121.8979 45.9243 56.9802 60.382 76.5264 67.4032 0.0 5.7182 28.5908 71.2741 51.4984 51.6505 6.3273 90.5791 215.8658 215.8658 147.1113 26.3623 255.088 173.4961 105.0736 92.1027 299.7432 80.7751 146.6804 137.9422 75.1505 27.1858 21.9583 89.8166 302.8655;
	0.1945 2.6286 57.8721 65.5349 5.5297 1.0782 0.0 10.1073 0.0978 8.7148 16.1091 24.0317 36.1795 10.2219 76.9651 28.9962 35.9767 38.1246 61.9536 64.0371 0.0 2.5159 4.6324 71.807 52.0307 47.738 5.9012 0.0 0.2629 0.2629 9.0445 13.3257 206.512 164.8317 32.0471 0.1122 130.668 0.0376 0.0 139.3679 61.7497 11.9611 4.594 94.5801 132.0291;
	0.312 4.2162 64.7085 74.5129 8.0522 1.4285 0.0 10.3943 0.0 15.1757 28.0521 41.8482 63.0022 8.2876 87.7737 33.0682 41.0291 43.4786 46.2586 57.1128 0.0 3.3331 48.5708 75.6717 52.7321 56.7675 6.8921 0.0 3.8275 3.8275 13.8443 17.0441 154.1952 147.0086 25.9826 1.6331 0.0 1.1054 0.7321 141.2467 60.1558 15.8466 17.01 130.4378 0.0;
	0.3422 4.6241 70.7052 69.0559 9.7898 0.3133 0.0 11.1395 0.4477 14.5622 26.9179 40.1563 60.455 1.6269 112.911 42.5386 52.7793 55.9304 56.9343 51.9921 0.0 0.7311 45.5994 76.305 66.1837 62.1222 6.9612 0.0 6.0372 6.0372 34.9272 10.0636 189.7811 133.8278 5.1005 2.5759 0.0146 0.9159 24.3485 177.2777 54.3831 3.4757 4.9152 138.4745 0.0148;
	0.4171 5.6354 69.6093 55.0768 10.0587 4.3839 0.0 8.622 0.1663 8.8014 16.2693 24.2706 36.5393 4.1248 138.0444 52.0074 64.5277 68.3802 81.3467 66.0767 0.0 10.2292 32.4402 70.0673 41.6984 59.4074 6.3051 4.7308 16.1808 16.1808 60.8005 11.4472 271.1556 170.0817 12.9317 6.9038 9.2372 0.5126 7.7973 111.6922 33.1658 48.6324 23.7741 135.8877 9.3334;
	0.4886 6.6018 55.9356 40.0046 9.7463 3.7738 3.7688 7.2876 2.3369 7.1233 13.1674 19.6431 29.5726 23.5218 117.0352 44.0923 54.7072 57.9733 65.0294 59.6126 1.2563 8.8056 22.5816 49.6551 28.8486 57.652 3.7732 22.7378 51.8083 51.8083 198.8805 3.2314 216.7647 153.4429 73.7439 22.1049 35.2586 5.7589 21.321 77.2729 19.762 41.8646 35.07 132.4561 35.6259;
	0.5062 6.8401 33.7409 28.1808 3.7457 3.3744 4.093 4.9638 2.6977 4.3895 8.114 12.1044 18.2231 24.8579 54.8203 20.6532 25.6253 27.1552 17.5921 41.2056 1.3643 7.8735 9.3506 29.5483 25.3599 56.9364 3.3237 7.4467 30.0401 30.0401 62.9283 0.8068 58.6405 106.0632 77.9329 12.8171 24.7328 2.4349 18.3689 67.9284 6.759 37.4329 28.0928 108.0398 24.9905;
	0.6986 9.4399 28.5101 27.7579 3.6055 4.9882 0.8298 4.5374 19.5905 0.3462 0.6399 0.9545 1.4371 31.776 8.3237 3.1359 3.8909 4.1231 2.0793 12.5025 0.2766 11.6391 1.6319 36.2445 27.1561 52.5956 3.7556 20.3834 18.4789 18.4789 28.0629 0.2141 6.931 32.1814 99.622 7.8843 61.5151 1.0958 65.2358 72.7394 0.3207 55.3358 26.8159 90.0246 62.1559;
	0.7075 9.5593 33.291 28.2561 7.7822 3.44 0.1724 3.9074 2.681 0.002 0.0037 0.0056 0.0084 2.8552 10.6915 4.028 4.9977 5.296 41.7622 11.3587 0.0575 8.0268 1.1689 37.7238 29.3798 45.263 2.9069 31.976 33.8084 33.8084 17.9012 11.1885 139.2075 29.2373 8.9515 14.4249 16.3199 4.1864 31.2719 78.6959 0.9433 38.1615 49.9481 103.1416 16.4899;
	0.9055 12.2348 46.8192 55.5387 11.1327 0.0012 0.0 3.6483 2.4782 0.0308 0.0569 0.0849 0.1278 0.2371 0.1889 0.0712 0.0883 0.0936 4.2449 8.4643 0.0 0.0029 2.2533 43.8893 45.9064 54.1151 1.2286 53.6081 69.5436 69.5436 37.7987 10.6425 14.1497 21.7871 0.7433 29.6719 70.6379 2.8746 0.0 122.9637 0.0 0.0137 4.4093 110.2273 71.3737;
	1.6325 22.0582 66.3075 24.5121 12.6094 0.0001 0.0 0.9403 0.8157 0.0 0.0 0.0 0.0 1.8084 0.0 0.0 0.0 0.0 0.5611 1.1355 0.0 0.0003 24.6641 54.5566 0.3538 50.7939 0.366 138.5853 118.3324 118.3324 100.8167 11.9659 1.8703 2.9229 5.6696 50.4885 152.9622 8.8634 3.5278 0.9477 0.545 0.0015 3.713 144.3846 154.5556;
	2.2226 30.0316 81.611 24.5574 10.5021 0.0 0.0 0.2331 0.0 22.4077 41.4202 61.7908 93.0258 7.749 0.0109 0.0041 0.0051 0.0054 5.6234 0.72 0.0 0.0 15.1164 63.0184 60.9201 50.5688 0.7067 203.3029 186.1997 186.1997 141.2321 19.306 18.7448 1.8533 24.2941 79.4452 207.084 16.4723 1.0165 163.1787 4.4527 0.0 110.6806 185.0289 209.2412;
	1.9229 25.9826 33.7811 42.422 13.7696 20.0317 1.7528 1.4692 0.9669 1.1601 2.1444 3.199 4.8161 35.1251 5.0674 1.9091 2.3687 2.5101 37.8426 7.3951 0.5843 46.7407 43.0876 16.7898 5.0872 37.4151 0.841 192.2778 235.8063 235.8063 161.4675 16.8332 126.1419 19.0349 110.1219 100.6107 244.5672 18.0896 59.6504 13.6265 8.8101 222.2188 88.2949 163.1471 247.1148;
	2.2327 30.1685 17.6774 9.8135 8.2878 0.6064 1.0217 0.6095 0.1185 0.0 0.0 0.0 0.0 9.9488 0.3699 0.1393 0.1729 0.1832 2.1626 0.3054 0.3406 1.4149 21.3427 0.0697 0.0704 9.8144 0.3734 277.7504 268.0599 268.0599 105.6731 10.5071 7.2087 0.7861 31.1909 114.3722 290.5987 15.9745 44.0829 0.1887 0.665 6.7268 87.3925 118.3459 293.6258;
	3.2018 43.2628 84.8324 15.8424 12.5708 0.123 7.2845 0.8679 3.5846 0.0 0.0 0.0 0.0 4.2917 38.0869 14.349 17.8034 18.8663 3.4212 1.4765 2.4282 0.287 23.1536 0.0 0.0 10.5488 0.4681 388.2023 289.8283 289.8283 181.8176 14.0014 11.4041 3.8004 13.455 123.6601 343.3878 43.1184 129.5098 0.0 10.149 1.3646 14.1096 185.0894 346.9647;
	3.4654 46.8245 1.5187 2.6414 13.9431 0.0 2.7505 0.0 1.3758 0.4988 0.9221 1.3755 2.0709 0.1775 17.3321 6.5298 8.1017 8.5854 22.5095 0.0964 0.9168 0.0 0.1029 0.0 0.0 0.2806 0.0 345.37 356.1752 356.1752 184.4319 23.9329 75.0315 0.2482 0.5564 151.9681 447.9188 67.1374 32.7713 0.0 1.5039 0.0 140.4359 219.367 452.5846;
	2.7467 37.1138 6.8711 1.077 13.6171 17.5316 1.4854 0.0 2.913 0.6674 1.2337 1.8405 2.7709 3.7478 127.7402 48.1254 59.7111 63.2759 69.2042 1.1052 0.4951 40.9071 14.7165 0.0 2.0547 1.4083 0.0 517.4073 465.3298 465.3298 306.2594 32.669 230.6805 2.8447 11.7499 198.5407 546.354 87.1441 0.7474 5.5036 0.5883 194.4842 115.8244 225.6207 552.0452;
	2.8575 38.6114 81.7096 0.0 14.0621 21.8742 0.0244 0.0 3.5043 7.5293 13.9178 20.7626 31.2579 6.0574 9.0312 3.4025 4.2216 4.4736 4.1758 33.9114 0.0081 51.0398 27.2845 0.0087 5.4871 62.0018 0.0 763.5076 415.8627 415.8627 331.7882 42.9913 13.9195 87.288 18.9909 177.4347 593.5379 70.5203 0.0 14.6976 5.4486 242.6577 102.556 206.314 599.7205;
	3.1454 42.5013 16.3268 1.2441 14.3382 0.0127 18.1574 0.0062 27.1252 20.687 38.2396 57.0459 85.8823 3.4207 17.6136 6.6358 8.2334 8.7249 1.8391 12.2825 6.0525 0.0296 55.4373 8.0019 22.0332 57.4624 0.0225 731.2618 433.1861 433.1861 320.801 43.3736 6.1304 31.6152 10.7242 184.8261 552.4305 73.0205 46.7501 59.0175 33.4862 0.1409 104.2994 194.0837 558.1849;
	3.3238 44.9114 91.1108 8.8447 14.4455 0.0338 1.3397 1.0515 27.7183 23.6717 43.7567 65.2765 98.2734 7.2465 24.3801 9.1851 11.3963 12.0767 0.0349 18.8552 0.4466 0.0788 71.9963 85.8488 86.2963 65.0749 0.0286 657.9799 383.8562 383.8562 229.0908 54.8061 0.1162 48.5333 22.7186 163.7786 537.1817 72.3329 166.3506 231.1509 37.7987 0.3745 100.0989 197.7484 542.7774;
	3.4342 46.4042 90.2009 0.4602 14.0415 16.4446 11.7327 14.2542 26.6933 26.3586 48.7236 72.686 109.4283 11.1808 23.5091 8.8569 10.9891 11.6452 4.902 50.2741 3.9109 38.3708 61.5226 85.4178 102.2332 73.9258 5.555 692.3205 305.8072 305.8072 196.1439 61.7773 16.3399 129.4057 35.0533 130.4777 455.326 94.5593 26.6924 273.8389 16.076 182.4257 0.0 222.1129 460.0689;
	3.7124 50.1621 91.0421 112.6258 13.9439 23.5056 13.4335 16.6913 27.0787 26.9756 49.8639 74.3871 111.9894 7.7248 53.2153 20.0486 24.8751 26.3602 3.5441 59.8425 4.4778 54.8465 66.1146 86.3866 100.5439 73.0928 7.3429 686.7196 319.0101 319.0101 271.7149 46.3304 11.8137 154.0348 24.2183 136.111 399.9007 92.1023 221.5948 269.3139 12.5904 260.7558 136.2885 223.0706 404.0663;
	3.6175 48.8809 89.1091 108.0997 14.6821 15.9874 11.5024 17.7709 27.741 27.9514 51.6678 77.0782 116.0408 11.7238 43.8247 16.5107 20.4855 21.7085 0.5895 47.7079 3.8341 37.304 65.3621 86.5393 101.8775 74.7824 7.2099 678.6718 356.8446 356.8446 246.0315 46.8308 1.9651 122.8003 36.7557 152.2537 400.1056 75.3535 345.664 272.8861 12.4767 177.3541 143.4469 239.4302 404.2733;
];