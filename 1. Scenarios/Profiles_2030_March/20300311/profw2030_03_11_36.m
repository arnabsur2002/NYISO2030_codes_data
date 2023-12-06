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
	3.8541 52.077 95.3833 118.6355 15.3797 33.8136 29.6211 19.1243 28.4621 31.2909 57.8407 86.287 129.9046 68.9646 205.9988 77.6088 96.2924 102.0413 47.3152 73.5864 9.8737 78.8984 75.8118 90.1245 106.4264 76.4997 14.1068 1170.7332 700.5852 700.5852 591.1821 110.9858 157.7175 189.4117 216.2133 298.9163 1142.2942 229.2895 462.794 285.0706 123.8495 375.1054 150.1836 283.7907 1154.1931;
	3.7479 50.6421 95.1625 120.9222 15.1974 33.1885 30.1573 19.0842 28.4956 31.0937 57.4763 85.7434 129.0862 69.3006 204.2755 76.9596 95.4869 101.1876 40.3653 73.2465 10.0524 77.4399 75.4911 89.8939 106.1818 74.7709 13.972 1210.4419 729.8076 729.8076 600.1459 109.4222 134.5509 188.5366 217.2669 311.3846 1168.62 234.8065 464.6906 284.4154 123.7308 368.1715 144.0359 275.7346 1180.7932;
	3.7612 50.8224 95.1524 70.8604 15.309 34.5467 29.7697 18.971 28.3938 30.8841 57.0887 85.1652 128.2157 69.3032 201.5749 75.9422 94.2245 99.8499 39.3455 71.1038 9.9232 80.609 74.6412 89.0491 105.8622 73.7326 14.1141 1188.5887 689.9848 689.9848 565.3086 109.3961 131.1515 183.0213 217.2749 294.3935 1153.4828 224.8515 467.1142 283.5595 123.5992 383.2382 145.5312 273.6425 1165.4982;
	3.742 50.5631 94.5213 89.1678 15.2737 34.3349 29.8383 18.7571 28.3706 30.3723 56.1426 83.7538 126.0909 69.7235 201.5511 75.9332 94.2134 99.8381 44.9625 71.4586 9.9461 80.1148 68.4181 87.5247 104.0368 73.2561 14.0841 1193.8613 713.3554 713.3554 515.1831 99.3831 149.875 183.9345 218.5927 304.365 1106.2828 232.6853 468.7894 278.6699 122.9868 380.8885 176.7711 270.0045 1117.8066;
	3.5897 48.5053 95.1563 119.5981 15.3056 34.1962 24.177 18.4172 27.7314 30.9108 57.1382 85.2389 128.3267 69.4796 197.0843 74.2504 92.1255 97.6255 79.5927 71.8052 8.059 79.7912 60.8749 86.6285 104.9699 73.6219 13.7184 1156.8468 652.4829 652.4829 496.7684 95.382 265.3089 184.8268 217.8279 278.3927 1138.3298 236.1935 454.446 281.1695 122.016 379.3501 192.8054 272.4676 1150.1874;
	3.8419 51.9118 95.0583 120.3233 15.3991 34.7399 28.9631 18.5144 27.9697 30.5132 56.4032 84.1424 126.676 69.2589 201.3655 75.8633 94.1267 99.7462 86.8267 73.3589 9.6544 81.0597 71.411 87.7605 105.7456 73.5472 14.0162 1194.3317 695.9372 695.9372 491.4329 96.6953 289.4222 188.8261 217.1361 296.9332 1055.4234 218.6683 462.209 283.2472 117.7159 385.3808 202.1648 273.0456 1066.4174;
	3.7607 50.8148 94.9389 119.3997 15.153 33.8667 29.5989 18.4235 28.1785 31.1172 57.5197 85.8081 129.1836 66.8665 199.6857 75.2304 93.3414 98.9141 85.5997 72.8417 9.8663 79.0224 74.7698 86.4593 103.6607 75.6177 13.8407 1194.3226 682.761 682.761 536.8599 97.8275 285.3322 187.4947 209.6355 291.3114 1045.9886 235.959 459.9104 277.6625 120.473 375.695 195.7386 266.9024 1056.8843;
	3.8267 51.7068 95.0627 119.2658 15.3314 34.318 29.5999 18.3306 27.9768 30.6645 56.6828 84.5596 127.304 68.7472 200.298 75.4611 93.6277 99.2174 83.8074 72.6022 9.8666 80.0753 74.5534 87.8952 105.0569 75.6016 13.615 1107.4732 682.9073 682.9073 532.1312 84.0682 279.3581 186.8782 215.5316 291.3738 1030.5211 238.3123 472.6721 281.4023 118.2063 380.7006 193.2829 264.6742 1041.2557;
	3.8907 52.5724 95.3487 121.226 15.4114 35.0131 30.0276 18.6757 27.3442 31.0349 57.3675 85.581 128.8417 69.483 200.6172 75.5814 93.7769 99.3755 87.4604 72.9386 10.0092 81.6973 75.5216 88.7997 105.036 74.7878 13.6983 1225.4237 792.9529 792.9529 607.8743 79.6937 291.5345 187.7441 217.8385 338.3266 1191.3768 275.4128 469.6234 281.3465 120.0429 388.4125 185.0096 279.8146 1203.7869;
	3.845 51.9545 91.1841 118.511 15.1687 33.5849 27.861 18.047 25.9085 30.848 57.0221 85.0657 128.066 69.8943 195.8379 73.7808 91.5428 97.0081 88.1011 70.0954 9.287 78.3648 73.5312 88.0455 101.6384 73.4558 13.1239 1178.7548 787.9401 787.9401 674.6085 92.5966 293.6703 180.4259 219.1282 336.1878 1197.9911 297.8204 446.5241 272.2458 116.3456 372.5686 167.0898 271.9671 1210.4701;
	3.7952 51.2813 92.8348 118.7759 15.2309 33.0768 24.7887 18.0366 26.5692 31.3829 58.0109 86.5408 130.2868 69.6849 198.1477 74.651 92.6225 98.1522 87.0053 71.3703 8.2629 77.1791 74.5329 88.4146 102.0697 73.6409 13.3743 1193.2196 764.0472 764.0472 664.0411 90.2178 290.0176 183.7074 218.4715 325.9935 1155.4644 287.9909 445.5668 273.401 116.152 366.9317 169.9083 267.4513 1167.5005;
	3.85 52.0213 93.9322 119.3 15.322 34.2535 22.0103 17.8917 26.8366 31.0806 57.4521 85.7072 129.0317 69.783 199.6076 75.201 93.3049 98.8754 90.4331 70.8182 7.3368 79.9248 74.7505 89.5133 105.2665 73.3121 13.5024 1163.8896 775.0364 775.0364 671.4484 98.5401 301.4437 182.2862 218.7791 330.6822 1175.1819 292.8417 444.3351 281.9637 114.6557 379.9852 188.2939 276.2594 1187.4234;
	3.8413 51.9039 94.3006 120.4519 15.2065 34.8353 26.2635 18.4532 26.5501 30.8851 57.0906 85.168 128.22 69.9092 201.6012 75.9521 94.2369 99.8629 85.0293 71.3116 8.7545 81.2823 73.6918 90.1579 105.9857 76.0856 13.8899 1135.215 772.4658 772.4658 646.8365 102.0283 283.4311 183.5562 219.1748 329.5854 1062.6375 282.9311 462.3133 283.8903 119.6639 386.4392 162.412 267.9367 1073.7066;
	3.7225 50.2998 95.0246 119.2926 15.3358 34.245 26.9971 19.0476 26.7041 30.5601 56.4899 84.2718 126.8707 69.9167 202.4022 76.2539 94.6113 100.2597 89.782 72.6663 8.999 79.905 73.6011 90.1568 106.1445 76.5178 14.0966 1056.3394 720.7999 720.7999 678.8468 104.9377 299.2734 187.0433 219.1984 307.5413 994.3216 294.2884 460.5027 284.3157 116.0676 379.8912 151.8933 279.589 1004.6791;
	3.5548 48.0329 92.8691 115.8585 14.5559 32.6714 25.3898 18.7014 27.8435 30.9578 57.2249 85.3684 128.5216 69.7913 201.2932 75.836 94.0928 99.7103 88.2283 72.5864 8.4633 76.2332 72.7749 90.1188 105.5128 75.9113 13.7121 1015.4264 732.5796 732.5796 686.8814 106.8369 294.0943 186.8377 218.805 312.5673 925.5032 312.9962 468.1261 282.6237 115.6197 362.4342 160.6503 256.0797 935.1439;
	3.5891 48.4962 94.1665 119.8147 14.7975 33.1002 25.1982 19.0479 27.8954 30.4097 56.2119 83.8571 126.2465 69.6689 197.2018 74.2946 92.1804 97.6837 86.0082 71.1706 8.3994 77.2338 72.4528 89.8848 105.4733 76.4948 13.8232 1111.1634 770.1265 770.1265 667.0579 105.7986 286.6939 183.1934 218.4213 328.5873 1022.5287 295.3108 470.2697 282.5178 117.4613 367.1913 172.9005 257.0469 1033.18;
	3.5512 47.9844 94.2218 120.0347 14.5918 34.4923 23.5127 18.3385 26.2891 30.242 55.9019 83.3947 125.5503 69.0143 191.6602 72.2069 89.59 94.9387 87.1316 70.9601 7.8376 80.4821 72.4655 89.9612 105.8138 75.7541 12.4291 1091.5701 764.0666 764.0666 648.4389 100.9767 290.4386 182.6514 216.3692 326.0017 1073.3085 269.3335 452.1054 283.4299 117.994 382.6347 187.5591 245.0263 1084.4888;
	3.5739 48.2913 93.0856 117.8984 14.5093 32.9746 23.6696 15.1267 26.9159 29.4593 54.4551 81.2363 122.3008 69.5522 173.0404 65.192 80.8863 85.7154 85.676 67.7366 7.8899 76.9408 69.693 87.0398 103.8019 70.7723 11.0054 1185.3192 746.3707 746.3707 648.491 93.4582 285.5866 174.3541 218.0555 318.4515 1123.7563 265.636 467.4829 278.0407 116.8443 365.7987 184.6627 250.9858 1135.4621;
	3.5985 48.6234 92.4676 112.7789 14.338 33.1321 25.8358 16.7793 27.3224 28.9097 53.4391 79.7206 120.0189 69.5534 184.1333 69.3711 86.0716 91.2102 84.9188 68.3185 8.6119 77.3081 72.1862 87.3611 103.0513 50.1662 11.8007 1250.0796 780.7229 780.7229 612.2535 98.8738 283.0628 175.852 218.0594 333.1084 1244.0162 285.6662 472.0702 276.0303 117.4073 367.5449 157.8481 228.6048 1256.9747;
	3.6356 49.1249 88.9175 108.3186 14.3724 29.3601 25.3377 15.8126 26.4239 28.5926 52.8529 78.8462 118.7025 68.7462 187.6823 70.7082 87.7306 92.9682 85.6614 67.3175 8.4459 68.5068 71.4581 85.1306 99.0226 50.157 11.1741 1290.1576 782.8111 782.8111 653.5781 103.4953 285.538 173.2754 215.5286 333.9994 1270.3477 280.2434 458.9064 265.2391 114.8482 325.7009 180.5804 240.3257 1283.5805;
	3.5641 48.1583 86.9621 106.333 14.0674 29.9461 29.5763 15.0829 27.0148 29.3322 54.2201 80.8857 121.7729 69.2686 190.2998 71.6944 88.9541 94.2648 86.2051 65.4165 9.8588 69.8741 70.535 83.5093 94.7264 56.1691 10.2749 1283.4878 782.7417 782.7417 670.8947 105.0145 287.3503 168.3824 217.1663 333.9698 1250.5394 299.3583 467.0733 253.7314 111.6551 332.2015 154.6987 226.1142 1263.5658;
	3.5177 47.5314 85.1483 94.0903 14.2576 29.9637 27.1323 13.3268 26.8593 29.6686 54.8419 81.8134 123.1696 69.487 197.0737 74.2464 92.1205 97.6202 89.2852 68.1628 9.0441 69.9152 68.1802 81.5631 90.7115 61.7013 10.0468 1253.7597 778.4766 778.4766 733.9997 103.4359 297.6174 175.4511 217.8511 332.15 1175.6657 312.8617 472.3871 242.9773 108.9782 332.397 154.2509 240.6326 1187.9122;
	3.5095 47.4208 84.7403 88.2522 14.5289 30.6094 30.7014 11.7777 28.1683 30.3744 56.1466 83.7596 126.0997 69.7245 196.8102 74.1471 91.9973 97.4897 86.2904 68.321 10.2338 71.422 70.5684 81.4698 86.8663 58.0338 8.728 1204.8061 766.918 766.918 773.5521 106.7502 287.6347 175.8584 218.5956 327.2184 1197.9189 321.946 479.0032 232.6776 111.7959 339.5607 178.1594 222.4932 1210.3972;
	3.7551 50.739 87.7485 102.9207 14.4865 32.9239 28.066 12.3851 27.548 29.8955 55.2614 82.4391 124.1116 67.9411 201.7707 76.0159 94.3161 99.9469 88.91 72.0576 9.3553 76.8223 71.3415 84.638 95.9077 61.681 9.6928 1147.5725 725.5885 725.5885 771.6068 105.8207 296.3666 185.4764 213.0046 309.5844 1098.7223 315.7674 463.5443 256.8957 116.4584 365.2353 184.1371 225.6196 1110.1673;
];
