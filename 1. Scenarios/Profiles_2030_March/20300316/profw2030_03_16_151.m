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
	3.8363 51.837 90.8547 118.6207 14.9896 34.5586 29.5956 18.9948 27.5645 29.3727 54.295 80.9975 121.9413 67.5456 198.9184 74.9413 92.9828 98.534 90.8712 70.561 9.8652 80.6367 75.7051 88.2838 105.653 73.4273 13.6851 1295.7299 804.2437 804.2437 583.71 107.7491 302.9039 181.6241 211.7645 343.144 1276.2904 220.4601 459.6566 282.9992 119.3254 383.3697 207.2669 283.3792 1289.5851;
	3.6753 49.6615 88.9105 116.9458 14.4026 33.0142 25.6134 18.452 26.8161 28.7989 53.2343 79.4152 119.5591 65.8058 186.8379 70.3901 87.3358 92.5499 89.6803 69.5863 8.5378 77.0331 73.7391 86.7222 104.3228 69.9299 13.1747 1320.45 778.7256 778.7256 599.3591 103.1066 298.9342 179.1152 206.31 332.2563 1248.967 215.7595 443.869 279.436 113.9264 366.2375 186.6017 265.75 1261.9771;
	3.6096 48.7734 87.7495 115.8633 14.6062 33.2266 21.804 18.0757 27.9566 29.739 54.972 82.0075 123.4618 66.4751 190.3627 71.718 88.9835 94.2959 90.3356 70.2766 7.268 77.5288 74.336 87.1307 102.8079 73.0127 13.0564 1328.1858 775.6378 775.6378 608.7545 97.3455 301.1185 180.8921 208.4084 330.9388 1290.3546 221.7478 424.7113 275.3783 115.5622 368.594 194.7938 258.6888 1303.7958;
	3.6633 49.4992 89.531 114.1933 14.299 32.8783 23.8204 17.977 28.0715 29.8942 55.2589 82.4354 124.106 67.6909 195.9642 73.8284 91.6019 97.0706 91.649 71.1791 7.9401 76.7161 74.3392 87.8207 101.9663 70.7525 12.9176 1331.0656 801.932 801.932 651.4925 102.648 305.4968 183.2153 212.2202 342.1577 1323.0198 257.2098 438.2429 273.1241 116.0263 364.7304 158.1885 266.8764 1336.8013;
	3.8557 52.0993 90.7687 114.4741 14.761 34.6671 31.5333 18.2132 28.3248 30.8175 56.9658 84.9817 127.9395 68.8105 200.7422 75.6285 93.8353 99.4374 92.1361 72.198 10.5111 80.89 75.2699 84.4128 101.4174 71.737 12.8569 1320.7666 797.5516 797.5516 686.5599 109.6037 307.1203 185.8379 215.7303 340.2887 1318.9351 251.5271 471.9621 271.6537 115.4313 384.5742 201.6398 266.8456 1332.6741;
	3.8402 51.8901 89.1273 111.6813 14.5154 34.1017 30.032 17.9178 28.1464 29.3858 54.3192 81.0336 121.9957 69.6607 200.2665 75.4493 93.613 99.2018 90.2041 71.7012 10.0107 79.5705 74.4171 84.9292 98.992 70.9112 12.8663 1346.8587 801.305 801.305 712.7925 110.4515 300.6804 184.5591 218.3959 341.8902 1288.5955 254.4221 466.5786 265.157 115.2708 378.301 186.355 274.8181 1302.0184;
	3.8295 51.7444 90.1748 112.8672 15.2237 34.4749 31.1108 18.8757 28.377 29.6422 54.7931 81.7405 123.0599 69.5505 200.1478 75.4045 93.5575 99.143 90.8206 72.5604 10.3703 80.4414 74.5999 84.5147 98.625 71.9564 13.1245 1337.7491 807.1282 807.1282 748.4372 107.0032 302.7354 186.7706 218.0501 344.3747 1328.1353 287.9814 469.3569 264.1741 115.691 382.4414 173.5947 272.7499 1341.9701;
	3.9154 52.9063 92.7298 118.1221 15.3116 35.0204 30.8336 18.4576 28.3394 29.4313 54.4033 81.159 122.1845 69.8423 201.8244 76.0362 94.3412 99.9735 91.7396 70.0114 10.2779 81.7142 75.0145 86.3988 100.3983 72.6777 13.3401 1361.0526 851.114 851.114 790.1724 116.3466 305.7987 180.2096 218.965 363.142 1363.7404 313.5007 477.981 268.9241 119.014 388.4927 192.7729 280.3722 1377.946;
	3.911 52.8456 91.8067 112.5704 15.3912 34.8767 30.7757 17.6341 27.3218 30.3805 56.1579 83.7766 126.1252 68.3803 196.4922 74.0273 91.8487 97.3322 91.526 69.357 10.2586 81.379 73.9184 85.2363 97.4837 71.0291 13.0682 1338.8446 827.0948 827.0948 778.1679 116.2493 305.0865 178.5251 214.3816 352.8938 1335.5482 302.38 468.4656 261.1171 119.4375 386.8992 207.8162 282.2027 1349.4602;
	3.867 52.2512 93.2722 117.4683 15.3346 34.9014 26.6277 17.9476 28.3979 29.847 55.1717 82.3053 123.9102 68.8199 195.9554 73.8251 91.5978 97.0663 88.8515 69.0351 8.8759 81.4366 73.0649 87.8927 100.3936 73.4387 13.0411 1269.1121 826.7023 826.7023 780.4839 117.4853 296.1718 177.6965 215.7596 352.7263 1276.2356 322.23 472.326 268.9115 120.99 387.1729 216.616 281.8395 1289.5297;
	3.7205 50.2726 92.3813 118.4793 15.2146 34.4359 28.5608 18.4677 28.0264 30.337 56.0775 83.6565 125.9444 67.6395 199.7014 75.2363 93.3488 98.9219 90.9651 72.1041 9.5203 80.3504 72.7018 88.1346 104.2023 74.2115 13.6197 1268.8858 815.3919 815.3919 796.3967 117.7323 303.2169 185.596 212.0589 347.9006 1297.2917 340.6885 470.1741 279.1133 120.4561 382.009 211.3678 285.7215 1310.8052;
	3.7733 50.9856 93.3479 119.2255 15.3168 34.6535 26.9085 18.402 28.1399 29.3748 54.2988 81.0032 121.9498 67.7768 199.69 75.232 93.3435 98.9162 90.6145 70.7558 8.9695 80.8581 73.0686 89.1624 105.2619 72.0674 13.2827 1259.2914 792.6189 792.6189 777.1545 118.0274 302.0482 182.1256 212.4894 338.1841 1278.9098 329.1168 471.1667 281.9516 122.6792 384.4224 211.3098 285.976 1292.2318;
	3.7833 51.121 94.3739 116.5231 15.3702 34.2549 26.5763 18.7988 28.0145 30.3052 56.0186 83.5688 125.8123 67.603 200.8745 75.6783 93.8971 99.5029 91.3643 69.9283 8.8588 79.928 72.285 89.8271 106.122 76.1458 13.8613 1253.7856 814.1345 814.1345 776.2299 116.5014 304.5476 179.9956 211.9446 347.364 1279.7288 337.7955 466.9806 284.2555 121.7305 380.0007 207.5448 286.3291 1293.0593;
	3.8514 52.0413 95.3164 118.9053 15.4214 34.9376 26.9358 18.4915 28.2368 30.7187 56.7831 84.7093 127.5293 68.7785 198.6136 74.8265 92.8403 98.383 90.7794 73.2896 8.9786 81.5211 72.7006 89.9861 106.27 75.6467 13.2679 1276.9023 807.1037 807.1037 797.0594 117.6657 302.5981 188.6476 215.6298 344.3643 1304.1324 325.3005 475.4471 284.6518 121.667 387.5747 210.7546 286.3029 1317.7172;
	3.8736 52.341 94.0036 112.6038 15.4089 34.7287 25.3869 18.0034 28.4558 30.7171 56.78 84.7046 127.5224 69.5704 199.8623 75.2969 93.424 99.0015 90.0158 72.872 8.4623 81.0336 73.6825 88.6589 103.4019 71.7237 12.9688 1256.8205 787.7709 787.7709 780.6188 121.553 300.0525 187.5727 218.1127 336.1156 1280.242 331.6507 479.8478 276.9693 119.1138 385.257 205.903 284.1754 1293.5778;
	3.7268 50.3568 92.4175 110.33 15.3868 33.3739 24.9493 17.4501 27.8148 28.8079 53.251 79.4401 119.5966 67.4996 189.1234 71.2511 88.4042 93.682 87.0822 70.5207 8.3164 77.8724 64.9608 86.7877 100.4032 68.1457 11.5182 1260.0955 784.1784 784.1784 740.1115 123.0487 290.274 181.5205 211.6204 334.5828 1246.812 323.2184 473.1382 268.9371 114.6019 370.2274 203.1368 280.279 1259.7996;
	3.7665 50.8933 91.6282 108.0964 15.3915 32.1619 21.8907 16.997 26.9043 29.2915 54.1449 80.7735 121.6041 66.2574 195.86 73.7891 91.5532 97.019 89.9178 70.1594 7.2969 75.0443 68.0337 83.1348 99.0292 56.9752 10.5346 1220.3222 761.9653 761.9653 684.5023 120.7772 299.7261 180.5905 207.7259 325.1052 1204.8771 340.9193 467.7734 265.2569 111.9761 356.7822 200.7528 262.8239 1217.4279;
	3.7248 50.3296 91.1702 104.564 15.1896 29.9953 18.4447 12.2937 27.0892 28.9761 53.5619 79.9039 120.2948 67.4636 190.9619 71.9438 89.2636 94.5928 88.7801 69.5163 6.1482 69.9891 69.6295 82.6686 98.8287 69.0614 7.2764 1220.1225 707.0451 707.0451 654.9879 114.196 295.9338 178.9351 211.5074 301.6726 1212.1408 290.9282 460.3997 264.7198 112.5487 332.7484 180.6953 237.376 1224.7673;
	3.6859 49.8044 86.7646 101.0734 15.2834 26.5969 16.4071 7.1594 26.6017 28.4553 52.5993 78.4678 118.1328 65.8153 186.5969 70.2993 87.2232 92.4305 86.2442 67.5541 5.469 62.0593 67.0611 82.8288 96.8244 60.9364 4.36 1257.1143 719.7588 719.7588 642.6375 108.8276 287.4806 173.8845 206.3399 307.0971 1206.0913 296.6767 458.0015 259.3511 107.5688 295.0477 137.5903 222.8811 1218.6548;
	2.6814 36.2317 77.5763 58.4678 15.0509 23.0449 26.5395 6.8995 26.0208 28.3368 52.3801 78.1408 117.6405 63.4226 185.2836 69.8045 86.6093 91.78 82.9286 69.0429 8.8465 53.7715 66.1348 81.591 82.2927 37.1818 2.6645 1238.7245 702.1649 702.1649 655.0214 110.981 276.4286 177.7165 198.8386 299.5904 1124.3314 285.7047 435.9015 220.4268 100.1795 255.645 112.0552 189.5431 1136.0432;
	2.5475 34.4219 82.4271 70.6355 15.1622 13.9159 27.0027 9.5485 26.1142 28.3901 52.4787 78.2879 117.8621 64.4703 188.765 71.1161 88.2367 93.5045 84.5549 69.329 9.0009 32.4704 68.5901 85.652 83.3079 56.1906 7.5531 1236.4006 740.489 740.489 674.491 113.4105 281.8496 178.453 202.123 315.942 1175.8447 272.6649 446.6062 223.1461 110.1104 154.3733 89.4767 200.7397 1188.0931;
	2.1704 29.3269 80.6783 82.373 15.2035 17.1606 24.9581 11.7663 24.7178 27.7087 51.219 76.4087 115.0329 65.5106 184.8006 69.6225 86.3835 91.5407 87.0334 67.278 8.3194 40.0414 66.5464 87.3402 98.4533 68.411 9.7186 1218.5941 683.3771 683.3771 646.2604 111.5997 290.1114 173.1737 205.3846 291.5742 1107.697 249.9536 439.979 263.7142 109.6638 190.3684 71.5119 197.0018 1119.2355;
	2.8966 39.1399 80.7344 84.1071 14.6085 19.7031 24.1739 13.9846 23.6847 28.3803 52.4606 78.261 117.8214 64.4726 169.4665 63.8455 79.2157 83.945 84.1402 66.482 8.058 45.974 68.6727 86.6977 94.4316 64.6058 9.4778 1043.1661 734.6035 734.6035 706.6425 112.8261 280.4674 171.1249 202.1304 313.4308 1083.0842 263.9094 429.7488 252.9419 112.3844 218.5734 86.0732 216.9578 1094.3663;
	3.212 43.4014 83.5515 73.5415 14.364 24.0039 20.5234 9.803 25.9057 28.2664 52.2501 77.9469 117.3486 60.5849 163.5896 61.6314 76.4686 81.0339 83.4779 63.5981 6.8411 56.0092 69.5927 86.2743 85.3619 63.4737 5.9991 873.6047 646.501 646.501 620.117 109.771 278.2597 163.7016 189.9418 275.8404 854.5178 247.9871 434.0351 228.6478 111.5953 266.2838 98.359 225.0542 863.4191;
];
