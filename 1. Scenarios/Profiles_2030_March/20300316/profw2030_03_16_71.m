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
	3.8015 51.3665 90.98 116.5022 14.5571 32.7097 28.6229 17.8556 26.8012 29.3761 54.3012 81.0067 121.9551 67.86 194.1863 73.1586 90.7708 96.19 84.1473 69.0339 9.541 76.3225 73.5079 83.8203 103.5674 74.1779 13.1515 1337.1479 816.3906 816.3906 568.5868 105.6075 280.4911 177.6933 212.7502 348.3267 1300.869 203.3312 454.9883 277.4126 118.7327 362.8591 202.7707 283.0792 1314.4197;
	3.8848 52.4928 90.8503 114.6268 14.3689 32.9076 27.1106 18.0646 27.5843 29.7322 54.9595 81.9888 123.4337 68.8178 192.3083 72.451 89.8929 95.2597 87.5202 69.8543 9.0369 76.7845 73.8767 85.2404 101.2612 73.7728 13.3098 1340.6359 809.5964 809.5964 632.8339 102.8394 291.7339 179.8051 215.7533 345.4278 1281.0678 211.4322 461.8633 271.2353 120.7729 365.0553 197.7792 276.6134 1294.4122;
	3.8676 52.2598 91.1592 116.4825 14.2258 34.2553 24.7173 17.9174 28.3009 29.8684 55.2113 82.3645 123.9992 69.1954 200.8127 75.655 93.8683 99.4723 88.736 70.7073 8.2391 79.9291 73.9489 85.8634 99.4239 75.5004 13.5884 1358.9198 820.1337 820.1337 683.9108 98.8897 295.7868 182.0007 216.937 349.9237 1351.0597 220.0106 458.1753 266.3139 123.767 380.0058 198.6717 276.1467 1365.1332;
	3.8495 52.0146 93.9055 119.3135 14.7639 34.4273 24.8506 18.4099 28.4209 30.6458 56.6483 84.5081 127.2264 69.4846 205.6291 77.4696 96.1196 101.8581 90.1374 71.5581 8.2835 80.3303 73.7718 87.9779 102.13 75.9218 13.739 1358.602 835.9458 835.9458 693.1606 100.4076 300.4578 184.1907 217.8437 356.6702 1356.317 240.4744 463.3104 273.5624 123.8335 381.9133 175.0224 281.2206 1370.4453;
	3.8749 52.3583 93.9928 118.4761 14.4098 34.5115 30.5706 18.3659 28.4588 31.2067 57.6851 86.0548 129.5551 68.9448 206.0342 77.6222 96.309 102.0588 88.7618 73.6273 10.1902 80.5269 75.3773 88.0862 104.5532 76.546 13.824 1307.2291 815.4155 815.4155 673.1258 105.121 295.8725 189.5168 216.1511 347.9106 1268.3431 231.6469 478.4271 280.0532 123.9358 382.848 201.3711 272.7882 1281.555;
	3.7651 50.8746 89.6865 116.8818 14.08 33.7936 29.2219 17.9355 28.1663 31.2294 57.7272 86.1176 129.6495 68.8926 206.0154 77.6151 96.3002 102.0495 90.1493 73.3674 9.7406 78.8517 75.4345 87.9686 101.5853 75.7689 13.3956 1326.8273 800.7826 800.7826 710.4575 108.1742 300.4977 188.8479 215.9875 341.6672 1266.8625 233.3113 469.0241 272.1036 123.914 374.8835 181.5969 273.224 1280.059;
	3.6854 49.7981 88.8835 115.3741 14.4539 33.6868 29.7015 17.9766 28.2916 31.1049 57.4969 85.7741 129.1325 67.1576 205.3859 77.3779 96.006 101.7377 88.7689 73.5862 9.9005 78.6026 75.277 87.7516 100.448 76.0349 13.6145 1346.3286 770.7396 770.7396 686.0302 105.2066 295.8963 189.411 210.5482 328.8489 1271.9137 266.8754 460.9177 269.0572 123.4851 373.6993 163.8908 269.3756 1285.1628;
	3.7663 50.8916 90.2701 116.9557 14.5263 33.9661 28.6553 17.4579 28.0325 30.9753 57.2574 85.4168 128.5945 68.984 204.6008 77.0822 95.639 101.3488 88.5281 71.3564 9.5518 79.2543 74.6043 88.1656 100.1171 74.8369 13.0563 1350.6425 790.2355 790.2355 689.1388 107.4405 295.0936 183.6717 216.2742 337.1671 1303.871 284.6679 460.5283 268.1708 122.7889 376.7974 181.7807 272.8091 1317.453;
	3.8855 52.5012 89.97 115.7032 15.1505 34.9804 31.222 16.4087 28.3338 31.2195 57.7087 86.0901 129.6082 69.5953 203.7834 76.7742 95.2569 100.9439 90.7899 70.0496 10.4073 81.6209 74.1655 88.1089 98.6385 71.7007 12.7745 1354.4126 828.9295 828.9295 783.0131 115.9683 302.633 180.3079 218.1907 353.6766 1356.0039 317.322 475.9956 264.2102 123.3759 388.0492 212.7739 270.9237 1370.129;
	3.8761 52.3752 92.0394 117.632 14.9705 34.7843 24.628 17.3638 27.7479 29.9995 55.4537 82.726 124.5435 68.4852 196.4388 74.0072 91.8237 97.3057 85.451 68.98 8.2093 81.1633 73.2937 88.388 99.6826 71.495 13.1187 1354.894 832.3449 832.3449 749.0303 115.6995 284.8368 177.5547 214.7105 355.1338 1311.4277 317.2214 464.7757 267.0069 122.0602 385.8736 217.6401 277.0047 1325.0884;
	3.9071 52.7935 94.1452 119.423 14.9798 34.6137 28.2764 18.2805 27.9675 31.0663 57.4257 85.6678 128.9724 68.5269 195.0588 73.4873 91.1787 96.6222 86.2146 70.9823 9.4255 80.7653 73.5894 89.9621 102.5458 74.2096 14.0003 1330.2292 829.9515 829.9515 771.7954 113.316 287.3819 182.7087 214.8411 354.1126 1343.9393 309.6411 476.8715 274.6763 122.3664 383.9815 214.2272 279.2452 1357.9387;
	3.8728 52.3304 94.113 119.4293 14.9976 34.5091 26.6869 18.681 28.132 29.3658 54.2823 80.9785 121.9127 68.334 196.8245 74.1525 92.004 97.4968 86.69 68.7641 8.8956 80.5212 73.7414 89.7117 103.8992 72.3489 14.0104 1333.347 827.7132 827.7132 736.9488 118.0664 288.9665 176.9991 214.2363 353.1576 1327.7546 314.5035 469.3291 278.3013 122.9954 382.8208 205.9029 273.372 1341.5854;
	3.8503 52.0264 92.6935 118.8908 15.0558 34.6634 27.264 18.7114 28.4013 30.7064 56.7604 84.6753 127.4782 66.5869 198.4435 74.7624 92.7608 98.2988 89.7497 71.8584 9.088 80.8812 75.3329 89.6735 105.3145 73.1477 14.0834 1295.0198 833.3056 833.3056 719.8124 116.6768 299.1657 184.9637 208.7588 355.5437 1298.65 324.9872 459.223 282.0923 123.4015 384.5321 213.8764 272.4671 1312.1776;
	3.7427 50.572 91.0687 119.7594 14.604 33.3725 26.9902 18.6607 27.9591 30.6282 56.6158 84.4597 127.1536 67.5097 193.5784 72.9296 90.4867 95.8889 91.9205 73.0235 8.9967 77.8693 74.7157 89.2768 103.7396 71.7206 14.0781 1314.594 836.4034 836.4034 714.6057 117.7073 306.4018 187.9628 211.6519 356.8654 1309.1894 318.179 468.8965 277.8739 123.2399 370.2128 201.7388 271.7469 1322.8268;
	3.6982 49.9713 90.4236 118.4502 14.4512 32.7187 23.6128 18.4866 27.5493 29.5265 54.5793 81.4216 122.5797 64.6904 193.5074 72.9028 90.4535 95.8537 92.4372 73.5944 7.8709 76.3437 73.9841 88.6086 99.8817 70.2527 14.0254 1305.1272 815.3503 815.3503 701.8461 115.7112 308.1239 189.4321 202.813 347.8828 1273.4647 319.3062 467.294 267.5404 123.5722 362.9597 203.5887 269.8191 1286.7299;
	3.8144 51.5412 91.7523 117.9012 14.6509 32.9288 24.918 19.1538 27.2089 29.7379 54.9701 82.0046 123.4575 65.5308 190.3696 71.7207 88.9867 94.2994 92.1366 72.4735 8.306 76.834 70.3336 88.8609 103.3781 70.6026 14.1631 1295.9217 795.5505 795.5505 669.3083 117.5312 307.1221 186.5469 205.4481 339.4349 1224.8875 299.0629 469.6735 276.9057 123.6545 365.2906 198.8877 273.7902 1237.6468;
	3.8149 51.5478 90.8566 112.6131 14.4078 30.1799 23.4579 18.4774 27.8763 29.8957 55.2617 82.4396 124.1124 66.9717 190.2972 71.6934 88.9529 94.2635 92.7479 70.3615 7.8193 70.4197 69.6476 85.8263 102.447 55.3936 13.7933 1264.5946 735.0232 735.0232 604.9562 110.8976 309.1595 181.1107 209.9653 313.6099 1182.445 294.0367 473.6737 274.4115 120.7039 334.7955 195.7218 247.7757 1194.7622;
	3.8744 52.3511 89.7425 110.7507 14.351 29.0198 20.2306 12.8436 27.9863 29.9055 55.2798 82.4666 124.153 67.6781 185.6246 69.933 86.7687 91.9489 88.9008 68.9233 6.7435 67.7129 73.0975 84.2336 98.8323 64.6582 10.2853 1267.9674 700.6179 700.6179 590.4817 108.7225 296.336 177.4088 212.1801 298.9303 1203.5554 277.152 473.9823 264.7295 120.8479 321.9266 191.6741 227.6791 1216.0925;
	3.7307 50.4098 83.6398 102.9758 14.0061 24.6788 15.7762 8.3073 26.6941 29.3493 54.2518 80.933 121.8441 67.8981 187.3283 70.5749 87.5651 92.7929 88.3552 71.4555 5.2587 57.5839 72.488 83.8413 96.8868 63.2034 9.6499 1259.459 684.2831 684.2831 591.2975 116.0272 294.5173 183.9267 212.8699 291.9608 1147.3739 293.0953 466.9314 259.5182 114.8882 273.7701 133.4237 208.0372 1159.3257;
	2.8272 38.2014 77.0932 61.4376 13.9442 22.153 25.2671 9.0201 26.6138 29.425 54.3917 81.1418 122.1585 68.0978 192.4646 72.5099 89.966 95.3371 85.0996 72.252 8.4224 51.6904 71.2346 81.291 84.4909 45.2149 8.5401 1246.7315 738.1872 738.1872 659.999 116.7395 283.6655 185.977 213.4957 314.9599 1141.2338 295.4876 457.2921 226.3149 105.7606 245.7511 110.5982 183.9569 1153.1216;
	2.4832 33.553 75.8586 66.5242 14.2977 12.6295 25.1955 8.4979 26.8881 29.4937 54.5187 81.3311 122.4436 68.2451 190.1678 71.6446 88.8924 94.1994 87.0713 71.7902 8.3985 29.4689 73.0739 78.2088 66.7862 47.4329 9.4936 1246.0004 753.5202 753.5202 662.6799 120.129 290.2376 184.7882 213.9575 321.502 1167.7963 281.9604 464.9024 178.8915 97.9048 140.1037 81.281 166.1527 1179.9609;
	2.288 30.9166 77.7855 79.4199 15.0288 16.2909 26.0411 11.0785 28.0577 29.3704 54.2907 80.9911 121.9316 68.9922 185.2106 69.777 86.5752 91.7439 86.1867 70.8121 8.6804 38.0122 72.7644 82.6674 89.5171 60.9709 10.9763 1218.8771 729.9805 729.9805 643.8404 112.7771 287.2888 182.2706 216.2997 311.4583 1166.1003 255.1875 476.4531 239.778 107.4117 180.7206 74.3348 165.4615 1178.2471;
	3.0251 40.8753 82.333 91.2799 14.6836 20.169 24.5195 15.4611 27.7838 30.5695 56.5073 84.2977 126.9098 69.7758 188.9337 71.1797 88.3155 93.5881 83.2059 72.4014 8.1732 47.0609 75.0057 86.6279 94.7523 65.879 11.2186 1048.717 759.3108 759.3108 678.9697 114.3406 277.3531 186.3613 218.7564 323.9726 1106.7024 267.9153 476.805 253.8008 112.1028 223.7411 85.6849 202.5069 1118.2306;
	3.0085 40.6511 84.6348 78.5458 14.0775 22.2053 19.8528 11.7788 27.3522 28.8519 53.3323 79.5613 119.7791 69.0912 182.2386 68.6573 85.1859 90.2717 78.8413 69.7309 6.6176 51.8124 74.743 84.2017 85.5655 66.7445 8.7099 967.1219 694.756 694.756 631.995 113.3742 262.8044 179.4876 216.6103 296.4292 944.813 260.0801 469.6627 229.1933 111.1058 246.3311 94.8002 210.685 954.6548;
];
