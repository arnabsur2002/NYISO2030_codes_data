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
	3.6067 48.7348 91.1729 117.7244 14.847 32.4209 28.6413 18.787 26.8197 29.5384 54.6013 81.4545 122.6293 65.1236 195.9398 73.8192 91.5905 97.0585 83.8365 68.4727 9.5471 75.6487 75.1365 84.3379 102.0329 74.7542 13.3263 1298.568 764.6519 764.6519 573.935 112.722 279.4552 176.249 204.1712 326.2515 1278.8201 233.0204 443.3574 273.3024 117.561 359.6558 192.1952 275.8021 1292.1412;
	3.581 48.3873 88.0139 113.1912 14.6694 31.2841 25.4825 18.8397 26.6878 29.5779 54.6743 81.5634 122.7932 63.7235 185.1258 69.7451 86.5355 91.7018 82.7622 68.7163 8.4942 72.9963 74.1659 85.2119 99.6702 74.3276 13.2998 1312.1648 777.5323 777.5323 618.1983 103.0556 275.874 176.876 199.7817 331.7471 1294.0019 235.4584 444.4002 266.9738 115.3665 347.0453 173.6017 274.4966 1307.4811;
	3.5429 47.8723 86.8918 113.711 14.198 31.8136 21.4241 18.961 25.886 30.1857 55.7978 83.2394 125.3164 63.2939 190.1022 71.6199 88.8617 94.1669 85.4008 68.5883 7.1414 74.2318 73.7686 86.4575 100.0188 76.1657 13.9151 1329.9181 771.1961 771.1961 649.1651 98.5689 284.6694 176.5464 198.435 329.0437 1351.2438 247.455 402.643 267.9076 118.4165 352.9193 170.8495 267.3413 1365.3192;
	3.6254 48.9875 87.5731 115.8248 14.8456 31.8456 25.2306 18.7744 27.256 30.6944 56.7381 84.642 127.4281 64.5652 199.4825 75.1539 93.2465 98.8134 89.2159 69.6403 8.4102 74.3065 74.7359 87.2422 99.9711 76.1679 13.6523 1338.701 783.4107 783.4107 670.4832 102.8749 297.3864 179.2544 202.4206 334.2552 1338.6658 272.2086 443.5515 267.7797 119.523 353.2742 152.8048 271.7779 1352.6102;
	3.7568 50.7625 90.7272 116.2375 15.2633 33.0582 31.6343 18.8106 27.8439 31.053 57.401 85.631 128.9169 65.5948 201.4928 75.9112 94.1861 99.8092 87.0612 71.9921 10.5448 77.1357 75.3427 88.1412 102.8196 76.2929 13.7863 1311.2904 789.4262 789.4262 709.1428 109.7601 290.204 185.3079 205.6487 336.8218 1312.8643 266.394 474.5218 275.4097 117.6396 366.7253 192.2423 267.2704 1326.54;
	3.6156 48.8543 91.2419 117.0942 14.7599 32.1886 29.3618 18.9223 26.7305 30.9624 57.2335 85.3811 128.5408 65.0571 203.4434 76.6461 95.098 100.7755 87.5995 70.4832 9.7873 75.1067 75.3886 87.8534 102.054 75.3718 13.8281 1261.7214 753.158 753.158 720.2955 107.1441 291.9984 181.424 203.9629 321.3474 1242.6532 261.2543 440.2772 273.359 118.6407 357.0786 174.4071 263.2685 1255.5975;
	3.5466 47.9217 86.9292 115.2028 14.4008 31.8838 30.606 18.5172 26.2708 30.4112 56.2146 83.8611 126.2525 65.8905 199.3305 75.0966 93.1754 98.7381 87.883 69.7865 10.202 74.3955 74.9187 85.4953 100.5611 72.9038 13.5932 1251.7657 735.288 735.288 737.6856 104.7991 292.9434 179.6305 206.5757 313.7229 1241.1348 302.9902 442.397 269.3601 116.4289 353.6977 155.5835 247.9619 1254.0633;
	3.6916 49.881 90.5974 116.7243 14.4289 32.9478 31.6335 18.6013 27.659 30.3937 56.1823 83.813 126.18 67.728 197.1693 74.2824 92.1652 97.6676 87.477 64.1946 10.5445 76.8783 75.3727 87.4036 100.1138 71.9702 13.6658 1312.2697 794.7353 794.7353 767.2262 107.7575 291.5898 165.237 212.3363 339.0871 1316.1257 318.6327 473.5791 268.1619 115.5472 365.5014 168.9138 261.5695 1329.8353;
	3.8473 51.9853 91.4614 118.5294 14.9112 34.6604 32.1753 18.774 27.7729 30.8889 57.0977 85.1786 128.2359 67.0007 194.495 73.2749 90.9151 96.3429 89.1863 67.4967 10.7251 80.8742 75.0798 88.6777 102.6642 72.4541 13.4993 1295.3544 787.7254 787.7254 759.9542 114.192 297.2878 173.7367 210.0563 336.0962 1305.5894 328.5515 461.3351 274.9935 121.0037 384.4991 206.1324 268.564 1319.1893;
	3.7863 51.1612 90.9285 118.9918 14.8285 34.1293 26.5372 18.8562 27.4712 29.8912 55.2534 82.4272 124.0936 67.5559 192.8031 72.6374 90.1242 95.5048 87.6139 68.2194 8.8457 79.6349 73.7816 89.0784 103.469 72.7207 13.5926 1266.6929 779.3171 779.3171 704.8838 117.526 292.0464 175.597 211.7967 332.5086 1249.4978 347.1478 439.6126 277.1492 119.879 378.6072 204.1929 264.3617 1262.5134;
	3.7556 50.7464 89.9441 119.885 14.5851 33.742 27.4603 18.9383 26.7585 29.8881 55.2477 82.4187 124.0809 65.974 189.2462 71.2974 88.4616 93.7429 83.4254 70.0667 9.1534 78.7314 71.6128 88.7196 102.5041 73.7095 13.7256 1283.8027 770.3094 770.3094 739.5027 116.4323 278.0846 180.3519 206.8373 328.6653 1284.7602 336.3513 433.5095 274.5645 119.0711 374.3116 204.7942 260.4606 1298.1431;
	3.6964 49.9465 87.1019 119.0604 14.4392 33.2546 26.3041 18.6601 26.2178 28.803 53.2419 79.4264 119.576 66.4129 189.2331 71.2925 88.4555 93.7364 84.9469 68.9362 8.768 77.594 71.9713 87.1674 100.1204 69.6627 13.6776 1282.2368 763.0007 763.0007 728.5164 119.6608 283.1562 177.4421 208.2135 325.5469 1286.5548 334.6285 433.6726 268.1796 121.6909 368.9042 204.4323 252.1948 1299.9564;
	3.8194 51.6091 87.7029 115.3772 14.7791 33.2828 27.3578 18.4124 25.8458 28.5804 52.8304 78.8126 118.6519 64.6776 187.5683 70.6653 87.6773 92.9117 85.2357 69.5333 9.1193 77.6599 69.4177 82.7236 99.0091 71.5967 13.5585 1313.5903 791.7012 791.7012 734.5178 119.3148 284.1191 178.979 202.7729 337.7925 1292.8699 343.0563 439.2894 265.203 119.8483 369.2176 212.6369 255.715 1306.3373;
	3.7554 50.7434 87.0034 115.8615 14.5653 33.3839 27.0576 18.4432 26.7136 29.0105 53.6254 79.9986 120.4374 63.7417 183.8792 69.2754 85.9529 91.0844 83.9934 71.0933 9.0192 77.8957 71.9296 86.2952 101.1488 72.1407 13.5999 1300.5413 780.8475 780.8475 722.159 118.8423 279.978 182.9943 199.8388 333.1616 1284.4378 329.5288 438.4931 270.9343 117.0758 370.3386 200.7843 250.2715 1297.8173;
	3.7643 50.8637 90.0139 117.2058 14.3612 33.2514 23.2335 18.7737 26.3024 29.1463 53.8766 80.3732 121.0015 64.8982 187.9836 70.8217 87.8714 93.1174 64.1535 70.0964 7.7445 77.5866 73.1481 87.9243 103.2426 72.6521 14.0367 1337.933 793.7201 793.7201 740.2766 120.5021 213.8449 180.4283 203.4645 338.6539 1298.8682 336.053 446.5606 276.5427 118.8076 368.8686 204.241 262.8101 1312.3981;
	3.8608 52.1679 91.1728 114.4315 15.1694 32.8264 25.1526 18.9837 27.3303 30.2088 55.8405 83.303 125.4123 65.2539 188.039 70.8426 87.8973 93.1449 86.1221 69.8305 8.3842 76.5949 70.7309 89.626 103.8799 74.0427 13.9328 1304.8556 809.3945 809.3945 729.516 118.0752 287.0737 179.744 204.5798 345.3416 1287.2132 325.507 472.6188 278.2496 122.9933 364.1542 204.0982 271.966 1300.6217;
	3.7448 50.601 90.3335 110.9104 14.7882 29.553 20.8047 18.4597 26.3067 29.5467 54.6166 81.4772 122.6635 62.1369 186.9969 70.45 87.4102 92.6287 86.0847 68.0984 6.9349 68.9569 68.624 88.4955 102.2685 63.6481 13.1858 1239.2689 702.761 702.761 630.7256 112.2914 286.9491 175.2855 194.8077 299.8447 1137.8675 313.4193 444.4956 273.9334 118.853 327.8409 182.2309 247.1894 1149.7203;
	3.7704 50.9457 92.4809 112.7063 15.1737 30.4667 18.1011 14.5531 26.9431 30.6548 56.6649 84.5329 127.2638 63.9173 189.7776 71.4976 88.71 94.0061 87.6238 69.3353 6.0337 71.089 72.4255 88.0761 101.8837 71.2264 10.7116 1212.2156 681.5554 681.5554 613.5418 109.7045 292.0795 178.4691 200.3892 290.797 1224.1739 290.386 451.5956 272.9029 118.7702 337.9774 189.1269 245.1804 1236.9257;
	3.8156 51.5574 86.408 105.3619 15.2843 28.6036 15.9486 9.1555 26.1037 30.2563 55.9284 83.4341 125.6096 65.5179 188.1556 70.8865 87.9518 93.2026 89.8047 67.3301 5.3162 66.7418 70.0332 86.9993 100.0046 65.05 9.6398 1303.6271 700.7807 700.7807 638.683 115.6113 299.349 173.3079 205.4074 298.9997 1232.0959 314.3809 448.9669 267.8693 119.1736 317.3097 144.418 238.2899 1244.9302;
	3.1717 42.8561 82.4866 67.9023 15.3377 26.3104 25.964 9.7435 26.1971 29.3278 54.2119 80.8735 121.7546 67.1957 183.0331 68.9567 85.5573 90.6652 88.2685 66.3398 8.6547 61.391 69.0971 87.2521 92.3253 46.6321 8.4644 1290.9332 730.9914 730.9914 698.3764 114.3972 294.2282 170.7587 210.6675 311.8897 1217.5122 321.7007 441.984 247.2998 115.3665 291.8703 123.8529 213.1534 1230.1946;
	2.7028 36.5207 78.1096 71.5055 14.9854 14.4184 25.5808 9.7531 27.6097 29.9164 55.3001 82.4968 124.1985 64.8178 182.0366 68.5812 85.0915 90.1716 87.8427 59.9611 8.5269 33.643 71.7952 85.9167 84.1821 54.8201 9.2545 1251.1384 725.7989 725.7989 674.5438 116.4404 292.8089 154.3401 203.2125 309.6742 1190.7396 305.9015 443.2819 225.4878 110.6752 159.9483 87.5477 201.3286 1203.1432;
	2.3133 31.2572 78.1573 82.5389 15.1347 17.7401 26.5355 12.4327 28.0608 29.8332 55.1462 82.2673 123.853 65.0123 185.6174 69.9303 86.7653 91.9454 88.5081 60.2688 8.8452 41.3935 73.5542 87.7625 97.7107 69.9399 10.4081 1169.6027 700.8343 700.8343 690.9504 109.2479 295.0271 155.132 203.8223 299.0226 1068.4115 276.7397 472.5036 261.7251 116.4442 196.7966 75.3764 195.6693 1079.5407;
	2.8178 38.0744 75.957 82.6465 14.49 20.203 24.7685 13.9968 27.9442 29.7246 54.9455 81.9679 123.4022 63.8184 183.9438 69.2998 85.983 91.1164 84.3052 63.7204 8.2562 47.1403 69.9428 85.2515 91.8419 61.947 9.9294 988.9361 697.4323 697.4323 721.0973 104.0298 281.0175 164.0165 200.0792 297.5711 1006.6303 275.7581 467.524 246.005 117.8413 224.1183 82.777 205.5035 1017.116;
	3.1441 42.4842 82.3077 73.7162 14.416 24.1435 21.7595 10.2431 28.1167 28.7678 53.1768 79.3293 119.4298 64.5814 165.1655 62.2251 77.2053 81.8145 84.1623 65.2934 7.2532 56.3349 67.0752 85.9605 84.8858 64.2937 7.1358 852.5692 654.0483 654.0483 627.2431 98.7569 280.541 168.0653 202.4713 279.0606 881.0055 247.6369 453.8003 227.3727 114.5109 267.8321 97.9816 225.886 890.1826;
];