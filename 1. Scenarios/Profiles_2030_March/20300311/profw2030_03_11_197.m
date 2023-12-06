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
	3.7873 51.1746 94.0039 112.1448 14.2597 33.9883 25.6958 18.9371 27.4683 30.7684 56.8749 84.8462 127.7355 67.0588 202.0801 76.1325 94.4607 100.1001 37.5342 71.927 8.5653 79.306 75.1428 89.7745 106.4452 76.2406 13.798 1122.4753 672.9767 672.9767 569.591 102.2404 125.114 185.1403 210.2385 287.1367 1050.6028 199.0154 448.5885 285.1211 121.23 377.0434 144.7219 277.4772 1061.5466;
	3.6817 49.7483 93.6163 116.6098 14.5862 32.6222 25.6361 18.6352 27.532 29.5626 54.646 81.521 122.7295 65.8855 197.5519 74.4265 92.344 97.8571 31.58 71.9676 8.5454 76.1185 72.5208 89.0184 104.4519 74.6539 13.3803 1101.1418 674.7897 674.7897 543.2336 99.9543 105.2667 185.2448 206.5599 287.9103 1061.2576 206.3491 442.2596 279.7818 121.5032 361.8891 130.3062 277.9071 1072.3124;
	3.7395 50.5288 93.9679 66.126 14.3798 33.3732 25.9843 18.6746 27.5435 29.8542 55.185 82.3252 123.9402 64.7541 203.2863 76.5869 95.0245 100.6976 30.4617 70.7883 8.6614 77.8708 71.8455 87.9909 105.2034 75.2543 13.6314 1134.0963 690.6972 690.6972 536.2436 104.9203 101.5391 182.2093 203.0128 294.6975 1091.2511 204.8069 435.4044 281.7949 121.5986 370.2203 133.3854 279.8435 1102.6183;
	3.5726 48.2739 93.4604 83.5029 14.2116 32.8747 25.3257 18.3134 28.1539 29.7222 54.9411 81.9613 123.3922 65.9328 203.2612 76.5775 95.0128 100.6852 43.391 71.725 8.4419 76.7077 68.9925 88.464 104.2106 74.4521 13.526 1210.3414 721.251 721.251 510.5068 93.5969 144.6366 184.6203 206.7081 307.7338 1066.4672 216.4252 437.5134 279.1355 119.4099 364.6903 157.9707 272.9326 1077.5762;
	3.4265 46.2997 93.6254 118.935 14.6488 33.3054 20.8754 18.7193 27.2158 30.6999 56.7483 84.6573 127.4512 65.5282 201.1712 75.7901 94.0358 99.6499 80.9583 71.5536 6.9585 77.7125 61.7941 88.9511 105.3047 75.4551 13.4543 1204.8159 656.1357 656.1357 506.6747 94.3017 269.8611 184.1793 205.4397 279.9512 1153.4258 223.2067 428.9941 282.0661 118.8992 369.4676 177.4132 273.3142 1165.4407;
	3.7831 51.1181 92.0275 118.0802 14.9095 34.0979 24.8624 18.7291 26.8778 30.8729 57.0682 85.1345 128.1695 66.1803 201.6259 75.9614 94.2484 99.8752 90.4425 73.0453 8.2875 79.5617 71.8974 88.4843 105.426 74.7312 13.63 1250.5337 666.7547 666.7547 458.3736 88.4836 301.4749 188.0187 207.4842 284.482 1033.8699 202.9971 428.0552 282.391 113.9086 378.259 195.3036 266.2352 1044.6394;
	3.7224 50.2972 93.8594 119.7003 14.8148 34.3652 26.7658 18.6417 26.1215 30.5912 56.5473 84.3575 126.9997 64.6628 202.1798 76.1701 94.5073 100.1495 92.4556 71.7671 8.9219 80.1855 74.1236 88.2196 102.2329 76.3261 13.3739 1205.9552 652.953 652.953 475.7505 85.0278 308.1854 184.7287 202.7268 278.5933 960.884 222.854 434.319 273.8381 114.7453 381.2246 198.1499 266.4122 970.8932;
	3.6988 49.9792 92.757 118.3537 14.9158 33.8747 25.7694 18.4706 26.4222 31.2385 57.7439 86.1426 129.6871 64.6846 204.5454 77.0613 95.6131 101.3213 92.6797 71.788 8.5898 79.0409 75.6971 88.1675 105.3421 75.6093 13.5171 1112.2175 645.7242 645.7242 454.414 71.6247 308.9323 184.7824 202.7951 275.509 932.408 217.6947 434.2112 282.1663 112.5612 375.7831 192.0618 261.3894 942.1206;
	3.9074 52.7972 92.6045 120.1862 15.1322 34.968 28.3096 17.9858 27.6611 31.2774 57.8158 86.2498 129.8485 68.0669 203.4906 76.6639 95.12 100.7988 92.718 71.0267 9.4365 81.592 75.2814 86.4585 103.418 73.4412 13.6371 1219.5795 753.0515 753.0515 541.8944 68.2174 309.0601 182.823 213.3989 321.302 1134.7622 257.2892 448.0895 277.0125 118.3076 387.9115 185.6721 271.0979 1146.5827;
	3.9112 52.8491 91.5996 119.9882 15.2575 35.1213 29.8429 18.5103 28.3704 31.2855 57.8307 86.2721 129.8821 69.1152 205.7128 77.5011 96.1588 101.8996 93.0657 72.8883 9.9476 81.9498 75.0955 86.6725 103.33 73.5257 13.8774 1193.3933 765.5183 765.5183 644.1752 83.1433 310.2189 187.6148 216.6855 326.6211 1109.6031 286.3313 474.1718 276.7768 118.5426 389.6125 176.7545 269.2875 1121.1615;
	3.9159 52.9121 92.0867 119.5864 15.1582 35.179 27.2582 17.9418 28.4594 31.5604 58.3389 87.0301 131.0233 69.3705 202.9487 76.4598 94.8667 100.5304 93.0151 71.6165 9.0861 82.0842 75.4794 86.0263 100.2054 72.3575 13.5509 1190.6392 788.5054 788.5054 657.7735 84.6435 310.0502 184.3411 217.4857 336.429 1104.6196 304.2342 475.8893 268.4075 121.3607 390.252 189.8729 262.1317 1116.126;
	3.9319 53.1286 92.5546 120.1288 15.3182 35.1866 27.7182 18.4663 28.4766 31.3453 57.9414 86.4371 130.1306 68.9248 198.9963 74.9707 93.0192 98.5726 92.9423 70.548 9.2394 82.1021 75.6688 86.7445 103.1107 73.9833 13.6277 1135.8331 775.6359 775.6359 641.7318 85.9278 309.8076 181.5906 216.0885 330.938 1107.2392 292.0287 479.3863 276.1893 123.5043 390.337 205.7839 264.0713 1118.7729;
	3.8596 52.1516 90.504 118.4511 14.5725 34.6391 28.1759 18.0694 27.9527 30.8545 57.034 85.0835 128.0928 68.3488 197.0468 74.2362 92.1079 97.6069 92.6394 70.6483 9.392 80.8245 74.5394 88.0481 102.2905 72.4164 13.3391 1074.218 748.3932 748.3932 669.2256 88.8837 308.798 181.8489 214.2827 319.3144 968.0717 303.3234 456.0004 273.9924 123.0818 384.2628 165.5148 257.7931 978.1557;
	3.8605 52.1634 90.3962 118.3832 14.4989 33.9329 27.584 17.9943 27.5795 30.8372 57.002 85.0358 128.021 65.8345 197.9805 74.588 92.5444 98.0694 92.82 70.6066 9.1947 79.1767 74.4445 87.5215 99.2266 71.3729 13.1882 987.324 698.3492 698.3492 651.3707 89.4277 309.3999 181.7417 206.4 297.9623 920.9178 304.5514 461.0672 265.7855 117.5192 376.4287 157.1188 262.6776 930.5107;
	3.6855 49.7989 90.8234 116.4166 14.1002 33.5808 27.0961 17.8114 27.6979 30.5793 56.5254 84.3248 126.9505 66.922 191.7476 72.2398 89.6309 94.982 91.5482 70.0307 9.032 78.3553 72.6312 88.2595 99.2981 72.1942 13.0111 978.5527 677.1034 677.1034 630.1667 88.6794 305.1605 180.2591 209.8096 288.8975 865.3282 301.4963 462.9645 265.9769 113.0211 372.5235 166.1794 252.3793 874.342;
	3.5863 48.4587 90.9008 117.4649 14.0577 32.3139 26.2817 17.7481 26.8976 29.3872 54.3219 81.0376 122.0016 66.4909 197.181 74.2868 92.1707 97.6734 90.2024 69.6377 8.7606 75.3992 71.7385 85.5861 99.6111 73.2882 13.1133 1071.631 691.5768 691.5768 613.6113 103.3066 300.6745 179.2477 208.4581 295.0728 942.0407 303.7379 454.9818 266.8154 117.2927 358.4693 160.0546 250.2689 951.8536;
	3.4587 46.7344 88.1712 115.2869 13.9932 32.36 24.5967 17.2811 26.2497 30.1199 55.6762 83.058 125.0434 63.4368 194.2579 73.1855 90.8043 96.2254 91.271 70.9226 8.1989 75.5066 72.3187 86.0604 97.7637 72.3221 11.7918 1128.6385 710.799 710.799 640.3039 95.6784 304.2365 182.555 198.8829 303.2742 1039.8472 286.8644 439.8373 261.8671 115.4916 358.9801 165.863 221.5107 1050.6789;
	3.6891 49.8474 91.4788 113.5823 13.9648 31.8649 24.9215 14.9256 25.7762 29.8647 55.2045 82.3542 123.9839 64.553 193.7649 72.9998 90.5738 95.9812 89.2604 70.2989 8.3072 74.3515 70.3336 83.7768 98.248 68.3738 10.9333 1231.4659 685.1404 685.1404 616.2902 94.9452 297.5346 180.9496 202.3823 292.3266 1108.9907 292.2696 451.7145 263.1643 117.7043 353.4884 160.6706 250.5717 1120.5427;
	3.677 49.6837 89.1223 109.4643 14.0013 31.5682 25.9067 14.754 26.235 29.3964 54.3388 81.0628 122.0396 67.8437 199.1634 75.0337 93.0973 98.6554 87.259 72.3692 8.6356 73.6591 70.059 83.9804 99.9277 43.5181 11.0898 1237.4632 744.6067 744.6067 581.7622 99.7415 290.8633 186.2785 212.6991 317.6989 1227.0127 278.4155 456.0256 267.6634 114.7795 350.1966 130.882 225.9958 1239.7941;
	3.6007 48.6535 86.5887 99.5406 13.9704 25.5381 26.478 13.3935 25.9561 29.4045 54.3538 81.0852 122.0734 67.3069 198.0749 74.6236 92.5885 98.1162 91.6307 72.56 8.826 59.589 69.8343 81.7126 94.6864 44.845 9.1561 1229.8016 746.6392 746.6392 606.413 109.6364 305.4356 186.7696 211.0161 318.5661 1241.3145 286.1617 446.1507 253.6242 111.7711 283.3032 153.905 234.4263 1254.2448;
	3.4709 46.8998 83.4882 97.8797 13.6368 25.081 29.7722 12.2244 26.0434 28.8626 53.352 79.5907 119.8233 67.775 203.1558 76.5378 94.9635 100.633 92.3998 73.514 9.9241 58.5222 70.754 75.2062 85.128 50.8804 8.8537 1224.7251 761.9207 761.9207 626.7856 110.8713 307.9994 189.2253 212.4837 325.0862 1234.3876 304.4542 448.7208 228.0214 105.9225 278.2314 130.8876 221.2756 1247.2458;
	3.5556 48.0436 79.7509 95.9024 14.0107 26.7331 27.4258 10.0941 25.7865 29.8227 55.1267 82.2382 123.8092 65.5733 195.028 73.4757 91.1642 96.6069 89.0075 72.8048 9.1419 62.3773 70.5242 78.6144 88.9633 53.1018 8.1363 1161.4119 767.3788 767.3788 697.0082 111.7728 296.6918 187.3997 205.581 327.415 1133.31 311.8858 451.0182 238.2947 101.8128 296.5597 143.9967 228.651 1145.1153;
	3.4896 47.1527 77.0059 85.9896 14.2461 25.5823 29.0245 8.8447 26.7246 29.4717 54.4779 81.2703 122.352 66.3369 198.5763 74.8125 92.8229 98.3645 88.6594 71.9145 9.6748 59.6921 70.8488 77.7895 88.8312 47.8019 7.3828 1090.4318 751.3732 751.3732 701.7727 107.7575 295.5315 185.1082 207.9751 320.5859 1110.0838 287.0063 461.622 237.9407 111.4915 283.7932 158.3185 207.637 1121.6472;
	3.7248 50.3305 81.9255 100.4819 14.3877 31.3696 27.7923 9.3524 26.9856 29.6897 54.881 81.8717 123.2574 65.3523 200.461 75.5225 93.7039 99.2981 90.6634 72.2152 9.2641 73.1956 70.8601 82.6378 94.2792 49.0667 8.5108 1182.8165 755.6915 755.6915 719.594 104.9954 302.2113 185.8821 204.8881 322.4284 1118.8543 285.6723 462.09 252.5335 113.2946 347.9929 178.9721 219.4676 1130.5091;
];