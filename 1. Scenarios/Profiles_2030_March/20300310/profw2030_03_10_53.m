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
	3.8638 52.2087 83.7676 116.092 14.9268 34.1926 31.0361 6.9273 26.9177 12.2437 22.6322 33.7628 50.8297 38.9015 169.5539 63.8785 79.2566 83.9883 79.2109 68.1575 10.3454 79.7827 29.2405 34.0807 44.7207 26.0111 3.9044 1254.3554 813.4353 813.4353 638.9648 76.1274 264.0363 175.4376 121.9616 347.0657 1239.1869 206.5523 456.5403 119.7876 116.5236 379.3096 201.3758 111.1888 1252.0951;
	3.3866 45.7603 77.5048 48.6178 15.2322 28.8984 31.4173 7.7779 10.0962 13.1908 24.383 36.3746 54.7617 34.5299 155.4273 58.5563 72.6532 76.9907 72.5705 68.6349 10.4724 67.4296 24.4619 31.6866 43.1311 30.7123 5.32 1303.6368 824.228 824.228 677.0204 72.4612 241.9017 176.6664 108.256 351.6706 1305.9742 199.0371 467.3155 115.5296 122.1365 320.5798 215.698 101.1513 1319.5781;
	3.1758 42.9122 88.2291 51.5078 15.048 24.402 32.1562 6.7999 9.6836 13.7832 25.4781 38.0083 57.2213 34.9988 178.4472 67.2289 83.4137 88.3936 79.0871 57.8683 10.7187 56.9379 26.0707 39.3015 41.0014 29.5946 5.8569 1269.5048 830.0486 830.0486 692.3328 87.9483 263.6238 148.9531 109.726 354.1541 1302.9459 199.7256 467.5868 109.8253 40.3332 270.6991 214.1424 130.8938 1316.5183;
	3.4247 46.2749 82.5183 48.1082 14.813 14.4039 32.4092 4.3682 10.6964 12.9655 23.9665 35.7533 53.8265 22.9277 186.6592 70.3228 87.2523 92.4614 81.8808 62.9437 10.8031 33.6092 27.1684 7.3246 30.9081 23.7138 4.2352 1255.7925 819.081 819.081 733.1417 91.2338 272.9358 162.0172 71.8813 349.4746 1271.0122 224.6544 469.4781 82.7895 39.5248 159.7875 214.89 104.0943 1284.2519;
	3.5805 48.3801 78.6778 37.8707 14.5391 22.2399 32.3114 0.4312 11.815 11.1402 20.5924 30.7198 46.2485 25.5559 163.4294 61.5711 76.3938 80.9546 84.9405 57.7195 10.7705 51.8932 0.1313 0.0 0.0 57.3758 0.7895 1214.643 812.9067 812.9067 714.4736 96.7556 283.1349 148.5702 80.1213 346.8402 1239.7731 230.0102 474.5284 0.0 35.2434 246.7151 209.5232 179.3322 1252.6874;
	3.5219 47.588 93.1628 110.5662 14.6525 32.5651 32.1019 6.7781 10.6434 10.4723 19.3579 28.8781 43.4759 23.2701 183.6349 69.1834 85.8386 90.9633 88.9069 66.1747 10.7006 75.9853 0.1672 1.2109 47.9433 68.0269 5.2871 1160.1866 793.0085 793.0085 736.7385 103.38 296.3564 170.3339 72.9548 338.3503 1187.7055 241.0614 471.608 128.4195 66.7674 361.2556 207.7137 243.6062 1200.0774;
	3.7259 50.3452 91.0838 113.6341 14.6454 34.7003 31.7417 10.3021 10.1483 8.4692 15.6552 23.3544 35.16 34.9957 190.9452 71.9375 89.2558 94.5845 77.7119 68.9653 10.5806 80.9673 21.9727 33.3773 96.6086 74.8192 10.6552 1062.8315 750.1717 750.1717 702.3387 106.5022 259.0396 177.5169 109.7161 320.0733 1182.8978 279.1148 453.2713 258.7731 104.6505 384.9416 213.2962 272.2712 1195.2196;
	3.4817 47.0459 93.6052 116.6996 14.3912 33.6661 30.8564 18.3569 4.4094 8.9529 16.5493 24.6883 37.168 58.1638 187.7846 70.7468 87.7784 93.0189 83.7885 55.2117 10.2855 78.5543 9.1604 47.862 101.9215 75.2309 13.505 961.4391 764.0468 764.0468 726.1119 113.4675 279.295 142.115 182.3515 325.9933 1151.3322 298.3683 450.9514 273.0039 115.2893 373.4696 207.0369 278.8731 1163.3253;
	3.7274 50.3652 92.1153 112.9953 14.5016 34.5521 30.8942 18.0519 8.6155 10.7714 19.9108 29.703 44.7177 62.9519 190.7824 71.8762 89.1797 94.5039 48.8241 55.4582 10.2981 80.6216 0.7841 84.4156 100.6043 73.1563 13.7205 801.0927 803.3845 803.3845 767.8006 116.5888 162.747 142.7494 197.3626 342.7774 1185.4231 305.6279 456.8034 269.4759 115.7192 383.2981 213.7436 270.7423 1197.7713;
	3.6801 49.7268 89.8565 113.6932 14.6539 33.5064 31.2519 17.4921 18.2999 10.1382 18.7403 27.9569 42.0889 61.1704 180.2603 67.912 84.2612 89.2917 52.1266 50.6929 10.4173 78.1815 0.0 85.5109 97.9247 69.2327 12.8133 609.1525 811.1546 811.1546 753.3392 111.195 173.7555 130.4837 191.7774 346.0926 1080.8315 264.7701 448.1266 262.2982 110.1073 371.6974 207.286 267.5827 1092.0901;
	3.8664 52.2438 91.6558 112.8261 14.7562 34.8186 31.58 17.8196 27.3812 8.6083 15.9124 23.7381 35.7376 67.7342 192.2967 72.4467 89.8875 95.254 37.67 55.614 10.5267 81.2434 1.662 81.4697 97.0167 72.0409 12.9728 454.2818 815.711 815.711 772.9616 101.289 125.5667 143.1506 212.356 348.0367 966.4415 273.1848 449.9709 259.8661 113.8499 386.2542 212.5242 267.0751 976.5086;
	3.3867 45.7612 92.1863 116.9063 15.0252 33.358 29.8423 17.8128 27.5074 19.7502 36.5079 54.4626 81.9931 65.6731 190.3457 71.7116 88.9755 94.2875 54.8137 57.4725 9.9474 77.8352 31.3435 81.4859 97.46 74.0709 12.4589 306.7377 810.1961 810.1961 746.6182 104.8576 182.7123 147.9342 205.894 345.6837 772.1462 252.1218 441.1723 261.0535 112.283 370.051 202.6524 267.9504 780.1894;
	2.1554 29.124 88.9669 111.7958 14.5674 22.3129 25.0618 18.0905 26.0079 25.5761 47.2771 70.5281 106.1797 65.4287 187.3452 70.5812 87.573 92.8012 90.7816 53.5556 8.3539 52.0634 50.4959 81.5074 97.1674 72.0595 13.2955 302.4562 724.467 724.467 651.953 99.3166 302.6052 137.8522 205.1277 309.1059 683.8308 230.9777 410.4338 260.2698 116.2444 247.5244 181.2193 270.2071 690.954;
	2.2099 29.8606 91.9001 114.1656 14.5015 12.5095 25.5036 18.0192 26.973 29.9133 55.2943 82.4882 124.1855 66.0088 187.6948 70.7129 87.7364 92.9744 90.8384 63.9726 8.5012 29.1888 70.6983 82.186 99.5062 72.8037 13.5107 264.9603 614.277 614.277 600.0167 95.0142 302.7948 164.6658 206.9464 262.0915 467.9054 200.6119 447.7696 266.5345 118.5091 138.7718 139.0622 262.7862 472.7794;
	1.9754 26.6913 88.0029 109.926 11.6513 0.0779 20.8287 18.156 26.3762 28.0983 51.9392 77.4831 116.6504 66.3331 196.0145 73.8473 91.6254 97.0955 90.1647 69.8598 6.9429 0.1819 66.9162 81.5327 96.7486 72.4089 13.5921 426.6483 459.8387 459.8387 409.6675 84.4001 300.5489 179.8192 207.9633 196.1978 422.091 187.6377 435.2116 259.1481 114.7072 0.8647 111.2383 244.0682 426.4877;
	3.2791 44.308 90.0041 80.5533 14.0202 24.7058 15.4178 18.7781 21.319 27.0168 49.9401 74.5007 112.1605 61.3881 195.4081 73.6189 91.3419 96.7952 92.0414 70.6856 5.1393 57.6469 69.074 84.0964 97.1841 74.0196 13.7296 489.8595 504.3937 504.3937 412.2278 44.2754 306.8047 181.945 192.46 215.208 497.9911 169.2132 432.4486 260.3145 116.2782 274.0698 80.8041 261.3246 503.1785;
	3.2114 43.3937 92.9914 62.3432 14.6391 32.0583 14.9307 18.769 26.3448 26.3564 48.7194 72.6797 109.4189 64.633 189.8973 71.5427 88.7659 94.0654 89.0905 70.2179 4.9769 74.8028 69.3629 84.6903 103.3447 75.5932 13.9026 558.8383 561.4643 561.4643 431.9264 28.77 296.9683 180.741 202.6333 239.5581 593.8736 128.4481 163.5317 276.8162 120.9324 355.6338 114.3933 257.1029 600.0598;
	3.5603 48.1074 92.0229 56.1421 14.3867 30.0276 29.1144 18.9136 26.7461 13.3572 24.6905 36.8334 55.4525 67.3717 178.1841 67.1298 83.2907 88.2633 73.1966 70.2977 9.7048 70.0643 49.6042 85.5398 103.855 75.1417 14.0291 678.0097 601.2864 601.2864 399.3829 29.6954 243.9888 180.9465 211.2194 256.5489 782.491 88.7999 362.9146 278.183 122.0012 333.1058 111.9498 256.4716 790.6419;
	3.5658 48.182 90.3957 50.3176 14.4707 31.321 28.4668 18.7538 25.8511 21.932 40.541 60.4792 91.0511 66.6203 160.3879 60.4252 74.972 79.448 49.2815 68.5406 9.4889 73.0824 51.2893 82.5391 104.6491 75.7492 14.0698 967.3828 661.985 661.985 457.3273 31.4923 164.2718 176.4237 208.8636 282.4469 995.5363 94.0513 406.3293 280.31 120.2098 347.4546 129.3212 234.5216 1005.9065;
	3.622 48.9416 67.2743 39.0704 14.5733 30.8943 5.0231 18.5348 25.2693 28.5934 52.8545 78.8485 118.7061 66.9228 180.3834 67.9584 84.3188 89.3527 43.6356 68.6589 1.6744 72.0868 69.6317 78.0772 105.1085 73.5087 13.7802 1145.9175 591.9326 591.9326 529.3303 57.8085 145.4519 176.7283 209.8122 252.5579 1092.5548 139.9459 425.8426 281.5405 121.0937 342.7213 150.7929 232.1326 1103.9356;
	3.8632 52.2002 67.8796 64.3275 15.2566 32.1456 30.0753 18.8244 2.0101 29.3072 54.1738 80.8167 121.6691 67.4997 191.0036 71.9595 89.2831 94.6134 62.6545 70.8504 10.0251 75.0065 74.7723 87.2638 105.7822 76.4787 14.1432 1274.0443 717.6612 717.6612 432.1818 70.8125 208.8483 182.3691 211.6207 306.2021 1121.1411 202.813 430.4792 283.3453 120.0651 356.6021 148.0792 275.0085 1132.8196;
	3.8916 52.5841 51.3494 87.2986 15.2482 32.9652 9.2147 18.6199 28.0734 31.0903 57.4699 85.7338 129.0718 67.8339 189.3015 71.3182 88.4874 93.7703 54.3271 69.5725 3.0716 76.9187 75.0384 87.3531 106.2988 76.3126 14.0078 1296.8263 749.4922 749.4922 554.0683 87.9099 181.0904 179.0797 212.6685 319.7833 1230.7225 235.1126 464.864 284.7289 119.2204 365.6935 156.9986 266.0911 1243.5426;
	3.8233 51.6606 62.5284 97.5634 15.2617 33.0414 30.23 18.2649 27.7896 30.7096 56.7662 84.684 127.4913 68.0992 184.9214 69.6681 86.44 91.6006 49.4754 70.2631 10.0767 77.0965 72.7017 89.0639 105.5728 76.1124 13.8629 1253.0107 733.1046 733.1046 594.9437 103.2784 164.9179 180.8573 213.5003 312.7913 1182.2866 253.8123 470.4504 282.7842 119.2934 366.5389 155.1196 268.935 1194.6021;
	3.9087 52.8147 87.642 104.9386 15.3617 34.0969 31.102 18.5123 28.2287 30.6535 56.6626 84.5294 127.2586 68.8231 185.83 70.0104 86.8647 92.0507 39.2329 71.9288 10.3673 79.5594 72.1647 87.8347 103.7915 75.2529 13.718 1224.9894 735.4524 735.4524 661.4082 110.2542 130.7762 185.1449 215.7699 313.793 1237.4711 246.6794 479.3495 278.013 116.187 378.2483 179.7634 280.5262 1250.3614;
];