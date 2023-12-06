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
	3.4343 46.4045 87.7488 92.013 13.7847 30.1617 24.8635 11.2499 21.9865 24.9874 46.1888 68.9046 103.7355 64.1606 169.9401 64.024 79.4371 84.1797 73.729 67.641 8.2878 70.3772 66.6896 81.5272 87.0907 60.5348 8.0368 1204.5837 747.9962 747.9962 727.3966 112.6121 245.7632 174.1082 201.1522 319.1451 1128.2406 281.3236 422.1887 233.2786 88.1715 334.5935 177.8611 234.0936 1139.9931;
	3.1867 43.0587 85.7243 89.7095 12.5446 29.3017 22.18 10.6413 14.6206 18.2298 33.6974 50.2699 75.6811 63.4414 156.64 59.0132 73.2201 77.5915 66.3242 64.8469 7.3933 68.3706 68.3907 82.3452 88.8113 55.8609 7.3891 1172.3707 721.7793 721.7793 706.557 107.7007 221.0807 166.9161 198.8974 307.9592 1149.8897 260.7992 354.8216 237.8873 101.8543 325.0533 174.2401 228.2541 1161.8677;
	2.9733 40.1763 86.6068 81.9477 13.1449 29.2766 20.4847 9.5508 14.2503 20.2331 37.4006 55.7943 83.998 63.3012 170.78 64.3404 79.8297 84.5957 71.7801 68.282 6.8282 68.312 67.1757 82.9837 79.7594 48.3177 8.3877 1220.3783 745.2112 745.2112 748.686 115.5134 239.2669 175.7582 198.4578 317.9568 1129.3272 281.5571 399.6478 213.6412 100.5058 324.775 157.4427 243.6469 1141.091;
	2.9336 39.6394 78.3275 62.8965 12.0747 26.8827 18.1847 10.23 12.0731 19.7151 36.443 54.3658 81.8475 61.6876 172.5197 64.9958 80.6429 85.4574 72.2338 68.9633 6.0616 62.7263 63.9216 80.7481 67.8785 48.2556 7.8469 1206.9793 784.0772 784.0772 757.3199 112.9329 240.7793 177.5117 193.3991 334.5396 1203.0886 274.5225 342.7985 181.8174 90.2489 298.2188 131.9331 235.412 1215.6208;
	3.3152 44.7955 77.9295 64.2315 13.6572 29.9646 14.5037 8.6834 8.4116 20.8776 38.5919 57.5716 86.6737 61.1294 176.183 66.3759 82.3553 87.272 76.1865 70.9421 4.8346 69.9174 67.9986 81.8219 65.5035 36.1774 7.2151 1217.218 764.7549 764.7549 710.9864 109.861 253.9551 182.6051 191.6488 326.2954 1179.6601 258.8724 276.7621 175.4558 93.8888 332.4072 160.42 218.0435 1191.9482;
	3.5561 48.0508 75.1861 48.2806 14.2967 30.3783 15.5425 6.3581 20.5941 25.2609 46.6944 69.6588 104.8709 61.5389 174.3526 65.6863 81.4997 86.3654 83.8198 69.5156 5.1808 70.8826 68.7263 81.222 49.7167 28.1818 5.599 1220.1874 722.6837 722.6837 644.1615 92.6587 279.3995 178.9333 192.9328 308.3451 1176.464 221.6411 294.3128 133.1697 84.8757 336.9963 180.5245 181.7322 1188.7188;
	3.1323 42.3239 67.0688 38.3155 14.1829 27.4351 14.4101 5.7888 16.229 25.7267 47.5554 70.9433 106.8048 65.5939 179.2728 67.54 83.7996 88.8026 87.6422 71.1989 4.8034 64.0152 70.1098 75.5091 41.4239 22.9209 4.7271 1210.3441 700.7802 700.7802 550.8201 65.1513 292.1406 183.2662 205.6457 298.9995 1113.7191 209.3198 267.7241 110.957 72.3535 304.3465 142.021 137.8466 1125.3203;
	3.4399 46.4807 68.6813 58.8398 14.3931 27.9886 16.0336 6.235 15.2736 23.0287 42.5682 63.5033 95.6039 65.8306 180.909 68.1564 84.5644 89.613 90.6818 68.5522 5.3445 65.3068 55.0085 80.7994 54.9194 21.4935 4.1442 1202.4063 698.9226 698.9226 623.3523 64.7146 302.2726 176.4535 206.388 298.207 1115.4733 217.8273 236.2698 147.1054 81.7067 310.487 134.6801 153.9168 1127.0928;
	2.761 37.3066 54.461 44.2897 13.9877 23.1417 15.5178 3.7786 19.1702 17.7366 32.7858 48.9099 73.6336 66.3108 158.1553 59.5841 73.9284 78.3421 84.4691 66.5476 5.1726 53.9974 38.1395 74.6116 46.2782 10.7333 2.518 1195.312 755.261 755.261 723.5081 77.6878 281.5638 171.2938 207.8932 322.2447 1111.9229 236.5342 235.4541 123.9595 57.632 256.7191 134.0061 154.0706 1123.5054;
	2.2628 30.5748 43.6062 32.5669 13.6886 15.2711 19.1812 1.0509 18.6877 12.7031 23.4814 35.0297 52.7369 65.1374 154.7252 58.2918 72.325 76.643 84.5392 63.9543 6.3937 35.6325 31.8485 51.482 0.0 3.2777 0.8686 1035.858 750.8223 750.8223 672.1217 86.7663 281.7974 164.6187 204.2144 320.3508 1086.1018 212.5461 353.9907 0.0 41.999 169.4073 116.8094 115.5187 1097.4154;
	2.0868 28.1978 32.6404 35.0857 12.8299 13.1045 18.6656 0.6327 19.1346 15.1824 28.0644 41.8666 63.03 66.3241 142.977 53.8658 66.8334 70.8235 80.9274 68.1806 6.2219 30.5771 33.2861 39.7565 17.1313 2.091 0.579 997.6702 731.8706 731.8706 577.5774 91.4839 269.758 175.497 207.9351 312.2648 998.8907 216.5516 385.6539 45.8873 34.7209 145.3723 86.7755 80.9972 1009.2959;
	1.5148 20.4684 26.9442 21.8193 9.1053 9.973 19.348 1.0895 17.0261 14.2196 26.2847 39.2116 59.0328 60.9635 148.4806 55.9392 69.4061 73.5497 80.4136 64.2941 6.4493 23.2704 34.4589 30.6575 18.1064 4.2516 0.8381 854.76 706.658 706.658 598.8749 99.5752 268.0454 165.4932 191.1287 301.5074 961.2472 207.9745 395.1054 48.4993 28.1374 110.6341 65.5574 74.1927 971.2602;
	1.0786 14.5738 29.0076 25.5335 8.6235 8.6923 17.8912 2.1879 16.254 13.543 25.034 37.3457 56.2238 61.786 179.5625 67.6491 83.935 88.9461 87.0174 66.708 5.9637 20.2821 38.6111 30.4642 21.294 9.9723 2.6181 846.1189 724.3379 724.3379 661.0661 98.8559 290.0581 171.7066 193.7074 309.0509 1002.0151 219.9349 422.2525 57.0376 28.1265 96.4269 51.6635 51.6337 1012.4528;
	0.8883 12.0022 23.4405 28.934 7.2932 9.3151 13.3214 2.5029 13.1423 16.7551 30.9716 46.2035 69.5591 63.9909 177.9067 67.0253 83.1611 88.1259 85.7291 63.744 4.4405 21.7353 48.6975 31.7159 23.5331 10.921 3.3025 856.3192 686.0572 686.0572 683.2387 94.6274 285.7636 164.0771 200.6202 292.7177 855.2461 214.7419 403.8499 63.0351 31.9401 103.3359 41.2674 53.5558 864.1549;
	0.9269 12.5241 22.7131 0.215 6.0245 9.0996 10.9699 1.9973 13.5485 15.9492 29.4818 43.981 66.2132 63.7909 173.329 65.3007 81.0212 85.8583 78.604 62.6404 3.6566 21.2324 54.8024 40.8582 23.0625 6.3785 3.1959 638.2688 600.2331 600.2331 598.0351 82.0197 262.0133 161.2366 199.9931 256.0995 739.2839 198.3211 335.1135 61.7746 30.9392 100.9449 37.5916 54.2783 746.9847;
	0.8804 11.8961 15.6618 25.6383 5.7909 4.0881 5.2728 1.1652 9.3038 13.7731 25.4593 37.9803 57.1792 62.2206 169.6957 63.9319 79.3229 84.0586 79.6323 67.8213 1.7576 9.5389 49.9629 11.3866 19.4344 2.5799 2.0084 746.4474 500.8715 500.8715 540.4867 79.4166 265.441 174.5723 195.0699 213.7052 592.5193 188.667 218.5276 52.0565 30.1234 45.3507 0.0781 30.7473 598.6914;
	0.5789 7.8228 1.4954 11.3634 5.8169 11.0584 4.2467 1.2149 11.8365 18.1256 33.5049 49.9827 75.2487 62.3627 173.6601 65.4254 81.176 86.0223 81.2614 67.3052 1.4156 25.803 53.1639 17.7139 12.9629 3.5775 1.5713 747.5371 541.3814 541.3814 574.8205 81.2016 270.8713 173.2439 195.5156 230.9894 724.6642 184.0434 249.0001 34.722 37.6308 122.6748 10.8298 94.2696 732.2128;
	1.0735 14.505 3.9204 6.4536 1.4033 3.8249 1.5785 2.2854 0.7218 18.4794 34.1588 50.9582 76.7174 58.3496 125.5133 47.2864 58.6702 62.1729 68.6788 54.4549 0.5262 8.9247 59.0332 16.5206 13.4067 4.1007 1.7426 689.4288 554.949 554.949 621.251 86.9093 228.9293 140.1671 182.9339 236.7782 707.3344 192.8563 327.3944 35.9108 78.6181 42.4306 1.8764 65.5147 714.7025;
	0.5602 7.5689 26.3155 41.5042 1.0291 14.4213 0.6469 2.3069 2.9183 21.8095 40.3145 60.1414 90.5425 59.0142 121.1866 45.6564 56.6477 60.0297 0.0 62.3219 0.2156 33.6496 62.558 45.1099 21.3354 9.1379 2.5043 775.1959 545.4312 545.4312 638.7414 81.4173 0.0 160.4168 185.0174 232.7173 638.9313 190.0615 355.0195 57.1483 89.1051 159.9798 10.3318 79.6683 645.5868;
	0.3243 4.3814 30.0516 57.379 2.2099 12.8443 0.0 3.2189 0.5913 24.6597 45.5831 68.0011 102.3753 49.4948 102.6982 38.6909 48.0054 50.8714 0.0 66.3826 0.0 29.9701 66.524 59.7673 33.4034 18.0889 3.2103 616.2179 385.8058 385.8058 590.3555 68.3692 0.0 170.8689 155.1729 164.6105 537.0408 181.0278 9.1668 89.4733 91.9602 142.4864 5.4901 53.1495 542.635;
	0.6748 9.1183 43.7952 81.6015 5.6317 2.9112 1.064 4.427 3.4123 25.3294 46.821 69.8477 105.1553 51.3471 111.8644 42.1442 52.2901 55.4119 79.826 67.568 0.3547 6.7928 64.901 73.4988 36.2355 10.401 2.4233 540.226 372.8119 372.8119 483.5969 52.0666 266.0868 173.9203 160.9802 159.0664 575.9373 168.4836 155.7442 97.0593 100.72 32.2948 2.3791 41.8065 581.9366;
	0.5817 7.8604 43.9708 77.1898 1.5304 7.4057 1.8511 2.7643 2.5954 21.7518 40.2079 59.9824 90.3031 36.7448 144.9948 54.6259 67.7766 71.823 79.3739 71.5198 0.617 17.28 58.7409 65.4733 36.0379 9.3868 1.3866 427.2439 363.8801 363.8801 466.6388 49.5834 264.5798 184.0922 115.2 155.2555 664.7111 152.8636 140.9336 96.53 81.4714 82.1542 25.8379 33.5453 671.6352;
	0.72 9.7291 42.5268 72.7142 7.4429 2.9884 1.0918 3.4626 2.8397 17.3959 32.156 47.9704 72.2192 6.6175 126.0479 47.4878 58.9201 62.4377 71.7588 70.6403 0.3639 6.973 32.5342 64.6417 34.7534 28.5027 1.7977 377.1818 376.7353 376.7353 484.7588 45.9397 239.1959 181.8282 20.7469 160.7404 506.3253 135.4023 17.1891 93.0895 63.2909 33.1518 15.3586 46.4892 511.5995;
	1.249 16.8767 53.9151 77.6111 7.6882 14.3522 9.7728 5.8568 20.3352 22.4913 41.5748 62.0214 93.3729 6.8822 162.8484 61.3522 76.1221 80.6667 82.6324 73.1489 3.2576 33.4885 67.7215 73.4711 48.1081 35.3624 3.2241 297.3177 308.4912 308.4912 395.1092 52.5897 275.4414 188.2855 21.5767 131.6229 393.9921 118.8134 61.4148 128.8609 62.803 159.2137 74.1319 70.1703 398.0962;
];
