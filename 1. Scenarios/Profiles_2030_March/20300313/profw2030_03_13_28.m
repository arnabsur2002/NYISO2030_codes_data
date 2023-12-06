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
	0.7983 10.7862 56.3878 65.1157 8.064 7.2316 6.2304 8.9438 16.8544 20.0814 37.1202 55.376 83.3682 3.8987 147.7001 55.6452 69.0412 73.1631 74.7578 67.3642 2.0768 16.8737 72.0259 73.6508 50.7248 48.2808 4.4382 215.4788 358.9646 358.9646 249.744 46.6442 249.1925 173.3955 12.223 153.1582 424.0103 89.132 29.4946 135.8699 64.4029 80.2223 46.7096 60.4997 428.4271;
	0.6357 8.5896 53.5395 64.5148 7.8151 3.4772 5.4078 11.7567 5.6027 12.8326 23.7208 35.3868 53.2747 2.453 128.0755 48.2517 59.8679 63.4421 69.9408 67.2727 1.8026 8.1135 39.8375 73.7186 54.5557 51.9195 6.3418 130.7934 259.9669 259.9669 169.5945 33.8538 233.136 173.1601 7.6904 110.9192 332.7747 95.0473 17.6665 146.1315 73.8873 38.5741 58.3582 72.5739 336.2411;
	0.3989 5.3898 60.8591 65.6788 7.456 19.0431 2.7924 11.5516 2.6057 10.05 18.5773 27.7137 41.7228 0.0041 76.8366 28.9478 35.9167 38.0609 56.9158 65.7408 0.9308 44.4338 30.0694 77.2319 58.4752 52.6973 6.1308 93.4023 211.9688 211.9688 112.3433 16.5162 189.7192 169.217 0.0129 90.44 204.0841 26.0933 4.0107 156.63 70.3899 211.2511 93.6614 82.9833 206.21;
	0.4834 6.5312 70.1946 76.2473 9.2367 24.6616 1.9784 14.2376 2.1972 16.2193 29.9811 44.726 67.3347 0.0 89.7564 33.8152 41.9559 44.4607 43.971 67.1206 0.6595 57.5437 53.3314 81.8715 65.8359 66.1683 8.2606 47.0136 127.9205 127.9205 79.8704 16.9239 146.5699 172.7685 0.0 54.5794 51.6148 1.2491 8.0723 176.3462 69.9905 273.579 62.1068 132.3243 52.1525;
	0.593 8.0121 81.4864 80.452 10.4579 21.0739 5.0258 14.9167 7.174 14.8594 27.4675 40.976 61.6892 0.0 110.9552 41.8017 51.8651 54.9616 54.4937 66.922 1.6753 49.1725 50.7012 83.686 84.4631 68.8633 9.3102 108.241 249.8909 249.8909 59.423 8.1675 181.6455 172.2574 0.0 106.6201 89.5029 0.1877 0.8927 226.2406 70.4074 233.7803 50.1383 138.6 90.4352;
	0.5431 7.3378 80.8636 66.0839 10.4077 5.9153 4.1686 13.6293 10.2539 8.4208 15.5657 23.221 34.9591 0.2135 143.3329 53.9998 66.9998 70.9998 79.7121 68.2506 1.3895 13.8024 37.4448 81.6206 62.8022 65.4502 8.9302 153.309 329.4082 329.4082 99.9512 10.7464 265.7069 175.6772 0.6694 140.5475 68.9258 4.5288 0.3425 168.2201 55.3725 65.6203 24.2653 131.0364 69.6438;
	0.4491 6.0685 60.1384 43.6225 9.8876 3.3877 3.9887 9.0494 4.5291 7.0149 12.9669 19.3441 29.1224 3.7853 115.0507 43.3447 53.7795 56.9902 57.1923 67.1028 1.3296 7.9047 25.0073 62.8986 42.0671 58.9695 4.5407 102.5175 138.3461 138.3461 127.4215 1.2505 190.6409 172.7227 11.8674 59.0277 23.2872 5.8724 0.4606 112.6798 28.4723 37.5811 31.0851 130.959 23.5298;
	0.5675 7.6676 41.9894 35.5597 4.8624 4.2309 4.5714 8.2016 5.7095 5.5571 10.2723 15.3242 23.0705 3.3377 63.3921 23.8826 29.6321 31.4012 19.2297 48.4513 1.5238 9.8722 17.8165 43.8919 47.3576 58.3679 4.823 45.7689 103.2153 103.2153 68.0669 2.6642 64.099 124.7137 10.464 44.0385 52.4514 4.7695 10.1944 126.8507 11.4356 46.9352 6.5922 105.3201 52.9977;
	0.5431 7.3389 29.5449 25.6756 3.6824 1.8082 1.9913 6.2068 1.2519 11.7979 21.8083 32.5337 48.9794 2.2042 14.6782 5.5299 6.8612 7.2708 10.4362 15.6316 0.6638 4.2191 8.6177 37.7436 31.3338 47.1713 4.6686 10.5782 29.029 29.029 86.7371 12.3712 34.7874 40.2358 6.9105 12.3857 16.9416 22.2451 3.03 83.9299 11.1526 20.0586 0.0 69.7361 17.1181;
	0.5066 6.8456 31.9157 29.4951 7.1661 0.3029 5.3336 4.7181 3.3337 5.5893 10.3317 15.4128 23.2039 13.0184 9.1069 3.431 4.257 4.5111 12.1555 12.7285 1.7779 0.7068 12.5804 36.9484 30.8673 40.1741 3.4367 30.3812 51.5792 51.5792 79.5915 9.3436 40.5183 32.7633 40.8144 22.0071 22.3862 38.2824 4.7667 82.6803 4.3968 3.3604 30.2746 73.8591 22.6194;
	0.688 9.2961 40.8859 7.8607 10.8287 0.6521 2.4869 3.0701 1.6863 5.4164 10.0122 14.9362 22.4864 6.9849 14.8615 5.599 6.9469 7.3616 4.2138 12.3079 0.829 1.5216 33.3191 37.6431 41.8672 34.9282 1.1108 50.2416 73.8128 73.8128 46.8502 8.772 14.046 31.6805 21.8986 31.4935 69.817 4.7719 4.2373 112.1443 2.0378 7.234 0.0 81.5833 70.5443;
	1.4834 20.0439 61.7204 2.1926 13.2473 0.0222 2.8466 0.0449 0.0 4.0039 7.4012 11.0411 16.6223 4.8499 37.3789 14.0823 17.4725 18.5156 13.9624 10.8324 0.9489 0.0519 53.9886 51.1932 4.5985 37.9636 0.1587 119.9392 100.8626 100.8626 41.556 17.4165 46.5412 27.8825 15.2051 43.0347 117.3378 7.715 16.8175 12.3175 2.1487 0.2467 0.0 107.9601 118.5601;
	1.9373 26.1773 79.5192 0.213 14.2018 0.0335 1.3664 0.0 0.0 25.4355 47.0171 70.1403 105.5958 6.0419 69.6114 26.2257 32.5393 34.4819 18.6161 11.0397 0.4555 0.0783 36.7156 60.5849 67.6242 40.2981 0.0003 163.4838 157.6977 157.6977 55.6127 11.1342 62.0537 28.4161 18.9422 67.2844 168.0119 12.0594 11.5112 181.1364 0.0 0.3722 101.764 143.5886 169.762;
	1.7277 23.3448 9.5114 8.4898 14.7724 17.3119 0.4779 0.0019 0.0 1.1794 2.1801 3.2523 4.8964 9.0508 17.3704 6.5442 8.1197 8.6044 14.6126 8.1218 0.1593 40.3945 43.5392 1.9837 5.1599 26.7466 0.2223 185.0545 205.9553 205.9553 95.9737 29.2905 48.7086 20.9056 28.3753 87.8743 195.0136 52.875 5.3568 13.8213 0.0027 192.0471 81.295 128.0705 197.045;
	2.0225 27.3282 14.2887 3.1676 9.9651 2.3457 0.0 0.0182 0.0 10.9522 20.245 30.2016 45.4683 1.6758 2.1836 0.8227 1.0207 1.0816 4.1381 0.4873 0.0 5.4732 31.8608 2.2854 7.033 0.0001 0.0545 255.2731 244.5087 244.5087 96.1827 9.7757 13.7935 1.2544 5.2537 104.3237 243.3444 30.5875 0.0 18.8383 5.0573 26.0212 81.2148 93.2742 245.8792;
	2.9432 39.7695 84.4259 0.7334 14.0818 0.5595 0.0 0.0804 0.0 8.6325 15.957 23.8047 35.8378 0.4052 0.0 0.0 0.0 0.0 20.513 0.0289 0.0 1.3055 48.8396 7.4864 0.3893 0.0 0.1137 371.9506 252.6609 252.6609 171.5137 13.2101 68.3768 0.0745 1.2704 107.802 275.2236 40.4884 0.0 1.0428 3.3829 6.2066 1.9529 166.5677 278.0905;
	3.3272 44.958 7.253 4.7941 14.2937 0.009 1.5772 0.2293 0.2429 4.2271 7.8138 11.6566 17.549 4.2672 24.6599 9.2905 11.5271 12.2153 46.8613 0.4909 0.5257 0.0211 14.4084 1.6633 0.0104 0.0 0.2729 368.9678 373.155 373.155 201.2569 26.9422 156.2042 1.2635 13.3782 159.2128 460.3214 78.191 21.7356 0.0278 8.8147 0.1002 131.8435 207.344 465.1164;
	2.7055 36.5578 4.0934 12.5363 14.1869 17.1337 1.9256 2.3216 0.0 0.6473 1.1966 1.785 2.6874 0.6663 0.0 0.0 0.0 0.0 8.1989 0.1322 0.6419 39.9786 15.4985 0.4078 0.0496 0.2927 0.3837 503.8365 473.5058 473.5058 322.1408 34.4039 27.3297 0.3402 2.0891 202.0291 535.2616 95.0122 11.2546 0.1327 2.1327 190.0699 103.3565 210.4754 540.8372;
	2.9717 40.1545 85.0052 12.5218 14.1616 23.8035 5.7056 1.8485 0.7307 8.041 14.8636 22.1736 33.3822 7.0055 4.462 1.681 2.0857 2.2103 0.4378 37.3751 1.9019 55.5415 29.6256 1.648 1.5624 59.0538 0.4044 743.4463 461.8733 461.8733 357.0802 41.0227 1.4593 96.2035 21.9632 197.0659 609.2296 73.9137 2.5176 4.1851 2.1144 264.06 104.6865 197.5692 615.5757;
	2.978 40.2387 4.7314 5.0817 14.158 0.0036 18.8023 3.0886 26.1207 19.6328 36.291 54.139 81.5059 3.8155 0.5909 0.2226 0.2762 0.2927 0.0 17.2446 6.2674 0.0083 56.487 1.2833 1.1078 49.4966 0.4553 713.1399 418.4662 418.4662 316.8732 38.0423 0.0 44.3877 11.9621 178.5456 528.8674 74.1341 0.0 2.9674 0.9665 0.0394 107.5191 181.8557 534.3765;
	3.344 45.1841 87.4669 5.5553 14.5313 1.2448 0.0 4.2432 25.7625 21.2059 39.1987 58.4768 88.0364 8.2758 22.3553 8.4222 10.4498 11.0737 0.2199 27.2501 0.0 2.9044 71.4798 82.5634 1.5533 54.3729 2.1529 602.7806 348.1681 348.1681 219.6348 46.4937 0.7329 70.1418 25.9457 148.5517 503.7337 72.341 0.0 4.1607 0.8183 13.8085 107.7652 175.9587 508.9809;
	3.6196 48.9081 93.9114 19.9842 14.6946 23.2311 11.0762 15.8776 25.121 22.5937 41.7641 62.3039 93.7981 8.3257 0.0 0.0 0.0 0.0 0.0 46.0604 3.6921 54.206 55.5158 84.75 102.4262 70.8082 6.6059 644.1904 265.3199 265.3199 192.1626 47.8204 0.0 118.5596 26.1022 113.2032 449.0883 94.6619 0.0 274.3558 8.8272 257.7106 4.0598 211.0486 453.7663;
	3.6369 49.1431 89.055 111.3675 14.2487 24.3772 13.1133 16.5261 25.9821 24.0898 44.5296 66.4294 100.0091 5.5767 42.9987 16.1995 20.0994 21.2994 0.0 58.3508 4.3711 56.8801 68.9131 83.2141 92.9926 69.9259 7.5187 754.5754 336.7398 336.7398 298.3469 38.6287 0.0 150.1951 17.4836 143.6756 450.2469 97.5792 2.502 249.0873 2.1349 270.4241 138.1743 204.3084 454.9369;
	3.4118 46.1006 87.6732 107.937 14.345 15.8634 11.1382 17.0877 26.7404 25.1472 46.4841 69.3452 104.3988 9.6798 44.9718 16.9429 21.0217 22.2767 0.558 46.9685 3.7127 37.0147 65.4401 83.7589 99.3391 70.0415 7.3871 715.7215 374.5853 374.5853 270.4119 44.0985 1.8601 120.8971 30.3474 159.8231 442.865 75.5622 299.4092 266.0868 2.2204 175.9783 133.5302 223.3942 447.4782;
];
