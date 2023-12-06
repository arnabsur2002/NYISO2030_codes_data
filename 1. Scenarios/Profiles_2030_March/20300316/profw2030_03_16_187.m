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
	3.7196 50.2597 94.9223 117.34 14.7859 32.1849 28.2493 18.3599 26.9261 27.9629 51.6891 77.1099 116.0886 67.8781 188.1185 70.8726 87.9345 93.1843 62.9357 69.3679 9.4164 75.0981 72.8308 89.7136 106.0029 73.4223 13.8108 1295.806 804.9089 804.9089 594.2231 112.1292 209.7855 178.5532 212.807 343.4278 1267.0805 232.7726 448.2812 283.9365 118.4006 357.0377 200.8625 286.4146 1280.2792;
	3.8541 52.0773 94.9126 119.2076 15.1583 32.5954 25.5512 18.2769 26.4865 29.9598 55.3802 82.6163 124.3785 66.1352 186.3998 70.225 87.131 92.3329 77.3974 71.5184 8.5171 76.0559 74.0418 89.4443 106.1029 74.6306 13.5002 1314.5472 808.9775 808.9775 642.3959 109.8114 257.9912 184.0885 207.3428 345.1637 1269.9365 235.8135 448.2168 284.2043 120.8191 361.5915 195.1017 286.1125 1283.165;
	3.9032 52.7412 94.64 117.527 15.2915 33.6372 22.0762 18.141 27.0436 30.4579 56.301 83.9901 126.4466 64.6815 189.1054 71.2444 88.3958 93.6731 84.4474 71.6078 7.3587 78.4869 73.3361 88.7311 104.3344 75.8107 13.6192 1315.8259 818.1939 818.1939 687.148 103.9095 281.4912 184.3186 202.7851 349.096 1300.0236 237.9503 432.7862 279.4671 119.1684 373.149 198.4831 279.7865 1313.5656;
	3.7538 50.7214 94.5349 118.0473 14.8477 32.9619 24.905 17.8089 27.5134 29.759 55.0091 82.0627 123.545 66.5598 190.3902 71.7284 88.9963 94.3095 84.9313 70.8891 8.3017 76.9111 70.7878 89.0756 104.0647 73.6638 13.1876 1322.8501 832.0125 832.0125 698.5622 115.6078 283.1042 182.4688 208.6741 354.992 1324.6955 264.4525 447.2283 278.7448 118.4907 365.6575 158.2791 280.9986 1338.4944;
	3.8228 51.6542 94.757 117.204 14.281 32.9616 32.2826 16.7584 27.7754 30.5823 56.5309 84.3331 126.9629 67.2123 195.0301 73.4765 91.1652 96.6079 84.9404 72.5128 10.7609 76.9103 73.7329 84.5157 102.565 71.8961 12.8343 1278.1631 819.205 819.205 700.8023 116.8494 283.1348 186.6482 210.7197 349.5275 1299.5893 257.8639 473.8061 274.7278 113.5605 365.6537 197.1818 274.6436 1313.1267;
	3.8265 51.7042 92.9051 117.1955 14.0637 32.3442 29.9261 17.5259 27.1909 30.2007 55.8255 83.2806 125.3785 65.5818 195.2409 73.5559 91.2638 96.7124 85.0826 72.3038 9.9754 75.4699 72.6336 85.5739 100.7093 69.9715 13.3516 1298.8252 794.2236 794.2236 705.2424 119.4929 283.6086 186.1102 205.6077 338.8687 1242.1936 253.3063 446.147 269.7571 119.079 358.8053 178.3334 271.8381 1255.1331;
	3.7731 50.9826 92.6336 114.4654 14.1382 32.308 31.0589 17.3651 27.5931 30.8776 57.0769 85.1474 128.189 64.8677 197.6529 74.4646 92.3913 97.9072 85.3684 73.7742 10.353 75.3854 74.388 85.1617 98.6919 70.7637 13.2079 1244.8185 799.9348 799.9348 729.7086 112.2383 284.5613 189.8949 203.369 341.3055 1245.8449 290.0198 450.6407 264.3532 114.5735 358.4038 164.7721 264.2492 1258.8224;
	3.9129 52.8716 93.6496 118.4252 14.7609 34.0589 30.199 17.4904 27.2768 29.9186 55.304 82.5027 124.2074 67.8881 199.0636 74.9961 93.0507 98.6059 86.3373 73.2807 10.0663 79.4709 72.2546 88.9015 102.5331 73.0047 13.3649 1329.5193 827.885 827.885 730.1731 119.7685 287.7911 188.6246 212.8385 353.2309 1300.0478 308.3474 461.352 274.6423 117.3254 377.8272 187.8832 272.2473 1313.5899;
	3.9172 52.9296 93.8906 116.4358 15.0098 34.5422 31.6675 17.4828 27.0811 30.3725 56.1431 83.7545 126.0919 69.1303 198.9114 74.9387 92.9795 98.5305 90.3617 72.6162 10.5558 80.5985 71.3526 88.8826 104.8862 72.1167 13.4987 1344.2001 849.3449 849.3449 785.515 122.183 301.2057 186.9144 216.7328 362.3871 1327.9904 341.4457 469.2932 280.9451 122.3834 383.1883 208.8345 277.1906 1341.8236;
	3.9264 53.0544 95.0973 118.2077 15.2941 34.5678 26.7745 17.5233 27.7897 30.5124 56.4016 84.1401 126.6725 65.2155 199.1927 75.0447 93.111 98.6699 88.976 72.4839 8.9248 80.6582 72.5955 89.6715 104.8934 70.4583 13.3411 1331.82 850.9068 850.9068 797.5988 122.2373 296.5866 186.5737 204.4595 363.0536 1297.4857 346.1587 467.9668 280.9645 121.6713 383.472 213.2197 279.3875 1311.0012;
	3.9271 53.0642 92.0073 116.3886 14.7188 33.7274 27.698 17.4094 26.5164 30.697 56.7429 84.6492 127.4389 65.6909 199.3693 75.1112 93.1936 98.7574 89.9303 73.7864 9.2327 78.6973 71.0812 86.3291 99.4351 68.5248 13.0919 1356.0637 857.1319 857.1319 811.2912 122.1245 299.7677 189.9264 205.9499 365.7096 1337.2055 340.7 469.4322 266.344 117.9466 374.1495 211.3679 271.6751 1351.1348;
	3.8923 52.594 90.9659 118.8314 14.7195 33.9651 26.186 17.4105 27.0272 29.5643 54.6491 81.5257 122.7366 65.4285 203.1425 76.5328 94.9573 100.6264 89.4998 73.6252 8.7287 79.2518 70.2705 87.8357 100.6463 64.7622 13.3372 1318.4622 830.6151 830.6151 782.7468 120.6247 298.3325 189.5115 205.1273 354.3958 1301.565 328.6646 457.1728 269.5883 118.5615 376.7858 209.2734 273.5362 1315.1229;
	3.8887 52.5445 92.2992 118.2245 15.0912 33.5529 26.6958 18.0736 27.283 30.4593 56.3035 83.9938 126.4521 66.9239 202.8105 76.4077 94.8021 100.4619 92.4593 73.6541 8.8986 78.2902 72.2542 89.0491 104.1486 70.2606 13.7901 1322.0629 828.1268 828.1268 762.8751 119.3476 308.1977 189.5858 209.8153 353.3341 1281.3241 321.6133 450.7384 278.9696 120.7011 372.2139 212.8543 271.2044 1294.6712;
	3.916 52.914 94.815 120.7388 15.2812 34.5621 27.75 18.6282 28.2257 30.8826 57.086 85.1611 128.2096 66.5647 202.6664 76.3534 94.7348 100.3906 91.9726 73.9581 9.25 80.6449 74.0325 89.658 106.0619 71.6254 13.9909 1300.6332 818.4941 818.4941 763.1099 119.8785 306.5753 190.3684 208.6895 349.2241 1272.602 313.9475 454.4417 284.0945 121.8578 383.4088 208.6899 276.7645 1285.8583;
	3.8466 51.9759 94.9267 119.0472 15.2556 33.9081 22.8816 18.9174 27.8527 30.4185 56.2281 83.8812 126.2827 64.3629 203.1406 76.5321 94.9564 100.6255 92.7222 73.9581 7.6272 79.119 74.3056 89.5007 105.9705 73.2345 14.0754 1280.3124 793.7885 793.7885 744.9976 122.4044 309.0741 190.3683 201.7863 338.6831 1224.9586 299.7936 445.7988 283.8495 119.5364 376.1541 202.5628 271.1832 1237.7185;
	3.9023 52.7292 94.9002 119.0322 15.3744 34.3918 25.1372 18.3547 28.0083 30.8287 56.9865 85.0126 127.986 64.3941 190.7237 71.854 89.1522 94.4748 92.4085 73.1952 8.3791 80.2475 71.7486 89.2694 106.319 70.6076 13.4366 1234.2191 822.0478 822.0478 721.161 118.828 308.0284 188.4047 201.8841 350.7404 1164.1426 296.7496 455.4152 284.7832 118.1794 381.5197 207.8944 275.0868 1176.2691;
	3.9023 52.7289 94.0583 115.4944 15.3628 32.8323 22.438 17.1501 28.2761 30.7957 56.9255 84.9216 127.849 63.6001 194.3447 73.2182 90.8448 96.2684 90.7071 73.4475 7.4793 76.6088 72.8882 83.5456 100.1716 54.3156 11.9643 1226.0645 790.5901 790.5901 696.4976 119.5445 302.3569 189.0541 199.395 337.3185 1191.4112 317.6284 452.7005 268.3168 112.5121 364.2202 196.2265 247.0522 1203.8217;
	3.8631 52.1992 95.0115 113.928 15.1734 30.7812 17.9914 13.4062 28.0522 30.7941 56.9224 84.9171 127.8422 63.7058 190.3816 71.7252 88.9923 94.3053 91.9714 72.4067 5.9971 71.8229 75.358 85.781 99.0733 69.5192 10.0099 1218.9357 766.5612 766.5612 704.4955 116.8319 306.5713 186.3751 199.7262 327.0661 1230.4603 301.1291 444.0565 265.3748 116.9826 341.4666 174.7639 217.8298 1243.2776;
	3.8787 52.4091 89.4445 105.2197 15.161 27.3221 15.6993 7.3078 27.7918 30.3167 56.04 83.6006 125.8603 63.1251 191.7507 72.241 89.6323 94.9835 92.2417 73.0297 5.2331 63.7516 75.5683 84.4839 93.6222 59.8723 8.4519 1232.6827 750.7895 750.7895 685.7209 114.2202 307.4722 187.9786 197.9056 320.3369 1205.8164 306.0651 450.739 250.7738 111.7915 303.0932 138.073 205.1104 1218.377;
	2.8478 38.4795 80.3376 61.5927 14.4258 22.1543 23.1313 8.4101 26.6173 29.8461 55.1701 82.303 123.9067 63.2335 187.5021 70.6403 87.6463 92.879 87.1649 71.9176 7.7104 51.6933 74.2195 81.8268 82.4273 43.5956 7.9064 1224.8598 746.8809 746.8809 683.6645 105.3993 290.5495 185.1161 198.2457 318.6692 1177.671 294.1252 421.7901 220.7873 102.1648 245.7649 106.7872 167.9538 1189.9384;
	2.2708 30.6831 77.8322 65.2856 14.3471 11.7513 22.2183 8.7867 27.4417 30.4659 56.3157 84.012 126.4796 62.765 187.4862 70.6344 87.6389 92.8711 85.6795 72.0138 7.4061 27.4196 74.7062 81.4413 72.8872 53.1451 9.8634 1166.844 732.9638 732.9638 637.0386 109.2084 285.5982 185.3636 196.7768 312.7312 1158.0234 278.6222 429.8831 195.2335 106.5845 130.3607 74.5968 161.3962 1170.0861;
	1.914 25.8622 78.1 71.1749 14.6282 14.9774 22.1812 10.7239 27.1332 29.0951 53.7819 80.232 120.7888 47.8474 182.5036 68.7572 85.3098 90.403 85.1727 68.3875 7.3937 34.9472 73.3815 81.2597 85.1611 67.0039 10.8347 1104.1349 701.5039 701.5039 645.9828 103.6108 283.9088 176.0295 150.0081 299.3083 1043.4257 257.9189 396.2406 228.1101 109.1803 166.149 59.6774 162.4534 1054.2947;
	2.6815 36.233 76.6821 76.991 14.7133 16.8387 21.8569 11.8873 27.2396 29.526 54.5784 81.4202 122.5777 58.6995 175.0234 65.939 81.8133 86.6976 82.2525 68.0919 7.2856 39.2902 73.5353 78.8686 75.412 64.3116 10.0541 973.3268 734.2204 734.2204 689.1375 98.196 274.1751 175.2687 184.031 313.2674 1029.9184 269.6258 410.8989 201.9963 112.9814 186.7969 74.3053 188.9792 1040.6468;
	3.0078 40.6416 81.785 72.4566 14.8908 22.0365 19.8043 7.5665 27.6331 28.9735 53.557 79.8965 120.2838 63.3951 172.707 65.0664 80.7305 85.5502 83.1326 68.8359 6.6014 51.4185 72.0707 82.7683 67.1219 63.6384 6.9748 856.5378 684.6813 684.6813 629.3023 93.3237 277.1088 177.1838 198.7521 292.1307 893.9603 253.0486 432.5859 179.7909 112.638 244.4581 93.9495 205.8354 903.2723;
];
