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
	3.9089 52.8176 94.302 120.8238 15.0902 34.5464 28.2534 19.1558 27.9441 28.4853 52.6546 78.5504 118.2571 68.7216 197.9877 74.5907 92.5478 98.073 85.9807 73.7855 9.4178 80.6083 74.9516 89.8632 105.7229 76.2163 14.111 1267.0634 763.2773 763.2773 551.4555 105.8128 286.6022 189.9242 215.4515 325.665 1247.2732 219.3226 458.3208 283.1864 118.6163 383.235 207.5155 283.7625 1260.2657;
	3.9249 53.0334 92.8348 120.0809 14.8777 33.1903 23.7658 19.1651 26.5719 28.847 53.3232 79.5478 119.7587 65.0298 193.4024 72.8632 90.4044 95.8017 83.9805 73.816 7.9219 77.4441 73.3969 89.5535 103.7485 75.7906 14.0292 1280.6869 770.7974 770.7974 589.015 106.0952 279.9349 190.0027 203.8772 328.8736 1236.615 218.4474 444.4306 277.8977 117.3792 368.1916 196.964 282.6917 1249.4964;
	3.9022 52.7276 92.0585 117.7866 14.7464 33.7388 19.9169 19.0559 26.4385 29.5429 54.6096 81.4668 122.6478 63.6008 193.9358 73.0642 90.6537 96.0659 84.9007 73.6834 6.639 78.7239 72.803 86.8756 102.7095 76.4744 13.7249 1268.8637 758.3606 758.3606 609.3081 100.6923 283.0024 189.6613 199.3972 323.5672 1230.303 222.0226 416.3563 275.1148 118.4128 374.2758 199.3504 274.8837 1243.1187;
	3.8791 52.4152 93.6966 120.6196 14.9909 33.7952 21.3593 18.9476 27.0691 29.6938 54.8886 81.883 123.2744 63.9931 200.4439 75.5161 93.6959 99.2897 91.0436 73.7725 7.1198 78.8554 73.2502 88.8935 104.4989 76.5721 13.5346 1284.6847 762.0508 762.0508 617.081 100.699 303.4787 189.8907 200.627 325.1417 1247.7895 241.3518 431.6005 279.9078 117.2086 374.9013 166.3931 281.9317 1260.7873;
	3.8459 51.9665 93.9921 119.7393 15.2602 33.948 28.9272 18.9462 26.3962 29.6626 54.8308 81.7968 123.1446 63.6738 199.8953 75.3094 93.4394 99.0179 90.116 73.8625 9.6424 79.212 72.6804 88.716 104.6205 76.5417 13.6261 1256.1951 774.5631 774.5631 662.3783 104.583 300.3866 190.1222 199.6261 330.4803 1249.6052 242.1615 451.2078 280.2333 116.8124 376.5966 197.59 277.1253 1262.6219;
	3.8144 51.5407 93.9033 118.5786 15.2883 34.2533 25.8073 18.4846 26.8563 29.743 54.9796 82.0187 123.4787 66.1373 201.4282 75.8869 94.156 99.7772 91.0297 73.4772 8.6024 79.9244 73.6146 85.6166 102.1664 75.9072 13.3293 1285.5426 768.8621 768.8621 676.5227 106.5265 303.4324 189.1304 207.3494 328.0478 1211.584 244.4376 442.273 273.66 114.0385 379.9832 188.1942 280.7465 1224.2047;
	3.7209 50.2776 94.2128 120.2908 15.279 34.4785 29.1803 18.3516 26.9996 30.3867 56.1693 83.7935 126.1506 65.3268 198.3543 74.7288 92.7191 98.2546 88.9291 72.9316 9.7268 80.4498 73.8541 87.3735 103.7516 74.712 13.3063 1231.8658 755.8388 755.8388 674.2568 106.3728 296.4302 187.7261 204.8084 322.4912 1189.8224 283.5463 447.6145 277.9061 114.646 382.4813 172.1763 265.942 1202.2164;
	3.905 52.7649 94.1137 120.5936 15.2297 34.7196 28.805 17.8421 27.8788 30.7465 56.8344 84.7857 127.6445 66.2313 197.8069 74.5226 92.4632 97.9834 88.5817 70.8707 9.6017 81.0124 74.8663 88.603 103.924 73.0141 13.092 1302.1192 771.2584 771.2584 692.5712 108.1239 295.2724 182.4215 207.6442 329.0702 1230.5852 286.7078 455.9866 278.368 113.3127 385.1559 182.9275 271.9109 1243.4038;
	3.9087 52.8155 94.5972 120.5535 15.3807 34.6395 30.3165 18.4867 27.9487 31.1202 57.5252 85.8163 129.1959 61.3602 197.4151 74.375 92.2801 97.7893 91.8176 70.212 10.1055 80.8255 73.9397 90.0509 106.1654 75.3438 13.2495 1292.3523 770.0952 770.0952 746.9682 114.8401 306.0588 180.726 192.3725 328.5739 1233.0619 316.7396 452.5136 284.3715 117.6482 384.2673 204.8457 278.6582 1245.9063;
	3.8811 52.4415 94.3017 120.1865 15.3382 34.1673 23.7473 18.6376 27.4407 31.1243 57.5328 85.8277 129.2131 65.3942 190.8406 71.8981 89.2069 94.5327 88.5123 69.2986 7.9158 79.7238 75.3278 90.0687 106.2869 75.7493 13.3931 1244.9611 766.4437 766.4437 728.4166 113.8241 295.041 178.3747 205.0197 327.016 1189.0049 312.5205 450.1457 284.6971 119.5578 379.0296 206.0331 281.3207 1201.3904;
	3.9151 52.9021 94.9324 120.4138 14.9892 34.39 26.3547 18.692 26.6734 30.646 56.6487 84.5088 127.2275 64.4166 189.1202 71.2499 88.4027 93.6805 88.4629 71.4091 8.7849 80.2433 73.3001 89.7151 105.5375 75.254 13.8045 1272.243 785.1169 785.1169 738.7757 112.8212 294.8762 183.8072 201.9548 334.9832 1255.7896 308.3369 440.7389 282.6897 121.6946 381.4995 212.0234 276.6249 1268.8707;
	3.9237 53.0174 94.7518 120.6734 15.3037 34.2764 25.8839 18.7773 26.9994 30.1444 55.7215 83.1254 125.1449 66.728 193.7337 72.988 90.5592 95.9657 89.5778 70.2116 8.628 79.9783 73.7628 89.4169 105.6396 74.7737 13.8111 1259.3915 777.7802 777.7802 728.5207 116.2129 298.5928 180.7248 209.2013 331.8529 1271.6207 310.4664 452.9878 282.9633 122.9424 380.2396 212.5619 279.6096 1284.8667;
	3.9033 52.7419 94.8515 120.572 15.2206 34.5245 26.9571 19.0001 27.9267 30.4839 56.349 84.0616 126.5543 65.79 189.3465 71.3352 88.5085 93.7926 90.0042 68.3906 8.9857 80.5572 73.9951 89.2326 105.6124 75.0945 14.0115 1279.9591 773.1973 773.1973 689.2218 114.3374 300.0139 176.0376 206.2605 329.8975 1256.8358 288.3714 452.6502 282.8903 123.4023 382.9919 215.9785 282.4301 1269.9278;
	3.8515 52.042 95.1 120.1958 15.1871 34.5164 27.7485 18.7612 27.9717 29.7843 55.0559 82.1325 123.6501 65.168 189.0062 71.207 88.3494 93.624 86.632 71.2403 9.2495 80.5384 73.1966 89.4926 104.7092 72.3182 13.9251 1274.5209 797.2181 797.2181 721.2078 115.4255 288.7733 183.3728 204.3104 340.1464 1294.2457 293.8728 462.5978 280.471 120.7854 382.9024 213.7723 278.8975 1307.7274;
	3.9096 52.8271 94.9434 120.3402 14.9973 34.4131 22.6603 18.643 27.84 29.133 53.852 80.3365 120.9462 67.1417 188.2147 70.9088 87.9794 93.2319 87.7596 71.0037 7.5534 80.2972 74.1367 89.3261 105.5939 73.4751 13.5891 1282.6923 773.1513 773.1513 706.2737 114.1972 292.5321 182.7637 210.4982 329.8779 1258.7727 300.7726 464.0823 282.8407 119.5044 381.756 215.0963 285.1378 1271.8849;
	3.8828 52.4655 94.2909 118.7315 14.7885 33.6146 22.9424 18.9184 27.2398 29.5822 54.6822 81.575 122.8108 69.2603 185.7252 69.9709 86.8157 91.9987 84.8431 72.0996 7.6475 78.4341 74.1241 88.8402 105.7491 72.5663 13.7068 1234.9014 743.6162 743.6162 657.2574 109.8071 282.8102 185.5846 217.1406 317.2762 1160.7183 281.1438 444.1351 283.2566 119.6801 372.8983 204.1439 283.8642 1172.8092;
	3.9143 52.8906 94.4956 117.5345 15.2999 33.3705 21.3853 18.5104 27.8086 29.0864 53.7657 80.2078 120.7525 68.4034 189.7833 71.4997 88.7126 94.0089 84.9078 71.5608 7.1284 77.8645 72.812 89.4007 106.1893 61.5257 12.8693 1216.2566 730.0399 730.0399 628.6963 101.3486 283.0259 184.1976 214.454 311.4837 1164.0213 288.8396 443.0819 284.4356 118.201 370.19 196.7852 275.1808 1176.1466;
	3.8496 52.0166 94.3953 114.2537 15.1117 30.5084 18.8526 14.639 28.0715 28.5713 52.8136 78.7875 118.6141 68.3373 187.1097 70.4925 87.4629 92.6846 85.1306 70.8131 6.2842 71.1862 70.0898 89.5302 104.9019 73.3619 10.8521 1211.4063 689.0668 689.0668 619.6849 108.3493 283.7686 182.273 214.2465 294.0018 1144.3774 262.0531 445.9777 280.9873 119.7134 338.4396 181.7153 255.1044 1156.298;
	3.8337 51.8011 86.4364 101.9042 14.7993 26.1907 15.5741 8.1421 27.5108 28.9121 53.4436 79.7274 120.0291 65.5632 187.0256 70.4608 87.4236 92.6429 86.957 71.8659 5.1914 61.1117 69.3468 88.2347 96.9993 65.8586 8.5471 1259.523 675.0245 675.0245 596.2706 106.5942 289.8565 184.983 205.5494 288.0105 1194.9086 256.8844 437.6831 259.8196 121.2856 290.5424 132.8457 231.4511 1207.3556;
	2.7678 37.399 81.9295 64.0212 14.1942 21.9859 25.3609 9.6717 26.2682 29.098 53.7872 80.24 120.8009 64.3488 180.4941 68.0001 84.3705 89.4076 84.3107 69.8608 8.4536 51.3004 69.5174 87.1595 92.2876 50.5959 8.0711 1166.0373 691.0553 691.0553 625.7212 101.2476 281.0357 179.8219 201.7421 294.8503 1087.1848 253.4236 386.4117 247.199 117.824 243.8967 111.047 206.5914 1098.5097;
	2.4453 33.0412 85.5232 75.3446 14.7393 14.5249 25.2497 10.7237 27.3859 28.857 53.3418 79.5755 119.8004 66.0571 177.4251 66.8439 82.9359 87.8873 85.0804 69.1895 8.4166 33.8915 70.1021 88.9159 88.0359 58.8906 9.8142 1182.5423 727.6117 727.6117 602.8992 105.7257 283.6012 178.094 207.098 310.4477 1139.1885 257.1147 435.7449 235.8106 116.4563 161.1301 87.8421 205.8606 1151.055;
	2.1903 29.5964 85.5399 84.6338 14.9315 17.2612 23.2728 12.5967 26.6766 29.8055 55.0949 82.1908 123.7378 65.5054 190.1624 71.6426 88.8899 94.1967 87.8236 72.8867 7.7576 40.2762 73.8436 88.4443 98.3784 70.7722 10.8035 1136.9493 651.161 651.161 631.6441 101.9591 292.7454 187.6104 205.3682 277.8287 1035.8619 236.6839 416.8328 263.5135 117.481 191.4846 72.4017 197.8622 1046.6521;
	2.7749 37.4947 81.7719 86.8471 14.4552 19.0528 24.2671 14.2217 27.2856 30.1233 55.6825 83.0673 125.0574 63.218 175.321 66.0512 81.9524 86.8451 87.6272 70.1227 8.089 44.4564 74.0774 87.484 94.3048 69.3062 10.2394 982.2511 681.7319 681.7319 621.4689 98.3113 292.0907 180.4959 198.1968 290.8723 1020.4947 246.947 433.7316 252.6021 115.8633 211.3586 82.3075 215.223 1031.1249;
	3.1801 42.9703 87.9055 79.2879 14.8039 25.2658 20.975 10.1704 27.5516 28.9931 53.5933 79.9507 120.3654 61.3788 171.2902 64.5326 80.0682 84.8484 84.6851 69.4654 6.9917 58.9535 72.3781 86.8952 84.7576 62.2446 6.6374 892.6946 631.1192 631.1192 577.1882 98.2894 282.2838 178.8042 192.431 269.2775 893.9424 227.5367 432.0279 227.0292 116.912 280.2818 104.4397 226.3029 903.2543;
];