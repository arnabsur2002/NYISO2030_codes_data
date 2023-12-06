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
	3.9864 53.8654 94.1623 118.5725 15.1368 34.7382 31.7663 18.9197 10.9603 18.0709 33.4038 49.8319 75.0216 53.1697 194.2622 73.1872 90.8063 96.2276 86.7495 66.8441 10.5888 81.0558 26.8624 86.2419 104.9621 75.8239 13.9979 1233.0682 795.8827 795.8827 696.7182 109.9028 289.165 172.0569 166.6941 339.5766 1132.5507 248.3237 458.5443 281.1484 119.6434 385.3625 211.983 281.8196 1144.3481;
	3.9405 53.2452 93.57 118.8838 14.9166 34.577 32.4905 18.9395 12.7968 14.3114 26.4544 39.4647 59.4139 62.1233 186.3819 70.2183 87.1227 92.3241 85.5467 69.2405 10.8302 80.6796 28.9121 85.0764 105.1554 74.8355 13.9546 1237.7678 830.1427 830.1427 753.6839 114.891 285.1558 178.2252 194.7649 354.1942 1228.0613 260.8089 469.9543 281.6663 120.0038 383.5739 207.8006 276.922 1240.8536;
	3.8816 52.4494 90.93 118.5427 14.5695 34.6782 33.2291 19.0135 24.4375 16.5638 30.618 45.676 68.765 62.4553 153.135 57.6927 71.5817 75.8553 84.4099 69.1498 11.0764 80.9158 29.8444 85.2031 106.1399 73.5135 13.8734 1166.2326 800.9513 800.9513 731.7093 112.6628 281.3664 177.9917 195.8059 341.7392 1219.0668 282.8935 471.286 284.3033 119.1508 384.6966 208.5217 261.1624 1231.7654;
	3.6714 49.6081 90.9435 117.9981 14.2055 32.6922 32.268 18.1361 28.1305 28.9885 53.5848 79.938 120.3463 66.214 192.2548 72.4309 89.8679 95.2332 85.6915 66.7771 10.756 76.2818 23.1317 82.7195 102.1989 71.4219 13.3658 1183.977 814.948 814.948 740.1945 114.8242 285.6382 171.8845 207.5898 347.7111 1163.4254 295.3706 475.2594 273.7472 117.2437 362.6655 169.3791 258.0291 1175.5444;
	3.1953 43.1761 94.5654 120.4908 14.4196 30.6179 32.2352 19.0066 28.2591 29.0673 53.7304 80.1552 120.6733 65.0069 191.309 72.0745 89.4258 94.7647 83.3704 67.8784 10.7451 71.4417 69.5879 89.1184 104.8224 74.7452 13.9303 1181.2651 813.7956 813.7956 735.1707 111.6237 277.9015 174.7193 203.8053 347.2194 1087.7439 295.1822 474.0953 280.7743 120.7505 339.6542 173.8195 270.3554 1099.0745;
	3.7763 51.0266 94.9366 119.7972 14.6358 33.2561 20.2458 19.0828 27.6574 28.7303 53.1075 79.2259 119.2742 53.2761 193.7405 72.9906 90.5624 95.9691 55.2801 69.3982 6.7486 77.5977 69.1238 89.7837 105.2072 75.4821 14.0849 1127.7468 807.9953 807.9953 725.2405 116.9194 184.267 178.6311 167.0278 344.7447 1120.0206 296.2956 458.8264 281.8049 122.5291 368.9214 153.387 275.3813 1131.6875;
	3.8366 51.8415 91.0501 117.7543 15.2479 33.9915 16.5036 18.2722 27.6607 29.633 54.7761 81.7152 123.0218 66.8389 193.6456 72.9548 90.518 95.9221 85.841 71.8727 5.5012 79.3134 69.0049 89.1184 103.2047 71.5488 13.8676 1202.0867 810.0688 810.0688 714.3277 114.5575 286.1368 185.0004 209.5489 345.6294 1158.857 306.6253 443.6875 276.4413 122.666 377.0785 176.8206 274.1888 1170.9284;
	3.8198 51.6143 93.7319 119.7172 15.3054 34.0088 23.0521 17.8862 18.2201 28.6994 53.0503 79.1406 119.1458 44.628 197.7508 74.5015 92.437 97.9556 83.1932 72.009 7.684 79.3538 67.5203 87.8784 102.2657 72.5436 13.9127 1195.8195 785.9199 785.9199 688.5397 112.4963 277.3106 185.3514 139.9148 335.3258 1172.8368 316.1327 179.7814 273.926 119.8539 377.2708 200.3616 273.3624 1185.0538;
	3.7835 51.1234 93.7797 120.5264 15.2455 31.9735 19.8992 17.6782 4.7178 29.4953 54.5216 81.3356 122.4503 27.4393 196.4133 73.9976 91.8118 97.2931 82.1029 72.288 6.6331 74.6047 71.3327 87.7499 104.4351 71.9818 13.6903 1063.319 685.9252 685.9252 675.7456 112.3552 273.6765 186.0696 86.0258 292.6614 981.5877 283.9544 49.2456 279.7368 119.1903 354.6921 185.5047 279.106 991.8126;
	3.8833 52.4714 94.5341 120.7054 15.41 32.4874 16.8423 18.4723 18.6498 26.1053 48.2553 71.9874 108.3766 21.6422 187.6906 70.7114 87.7345 92.9723 84.7233 71.2628 5.6141 75.8038 48.2576 89.4245 106.445 75.0684 13.7462 892.8111 604.1117 604.1117 540.4278 107.7122 282.4111 183.4306 67.8514 257.7543 776.5546 247.0804 150.4585 285.1204 121.0724 360.3931 165.8169 283.1183 784.6437;
	3.7506 50.6782 94.6765 119.6452 15.4071 27.0063 7.8852 18.5774 13.476 27.6828 51.1713 76.3375 114.9256 7.3439 197.8281 74.5306 92.4731 97.9939 78.9591 71.1445 2.6284 63.0148 68.6443 88.2045 105.0265 73.4517 13.7616 734.6411 679.4799 679.4799 528.1235 109.81 263.1969 183.1261 23.0242 289.9114 721.9306 202.0925 172.1076 281.321 114.936 299.5904 150.7998 274.0623 729.4507;
	3.6881 49.8337 95.3834 120.9971 15.4205 21.5655 17.3128 19.0654 26.8179 26.8607 49.6517 74.0705 111.5128 24.0395 203.2586 76.5765 95.0116 100.6839 35.624 72.4805 5.7709 50.3195 70.0777 89.1591 106.5409 76.3763 13.9275 540.0231 771.3108 771.3108 526.3169 108.431 118.7467 186.5649 75.3669 329.0926 814.9729 204.5458 446.6831 285.3773 120.7623 239.2334 149.3257 282.3964 823.4622;
	3.8986 52.6789 94.8025 119.6608 15.1383 22.424 18.5704 18.365 26.8571 24.0136 44.3887 66.2193 99.6927 55.4161 197.8332 74.5325 92.4755 97.9964 51.444 72.0176 6.1901 52.3227 69.5957 85.5291 104.8315 74.5381 13.716 604.7021 749.1018 749.1018 538.3366 109.7099 171.4799 185.3735 173.737 319.6168 622.9747 233.4003 350.5993 280.7986 120.1702 248.7571 157.8781 278.4278 629.464;
	3.7127 50.1671 90.4209 115.8445 14.8135 20.5899 6.9073 18.9297 19.2395 21.6679 40.0528 59.7509 89.9547 44.4626 197.9849 74.5897 92.5464 98.0716 47.5179 72.3384 2.3024 48.0432 60.5986 86.5974 103.3423 74.7265 13.7915 495.4851 706.8983 706.8983 496.3255 94.2817 158.393 186.1991 139.3961 301.6099 678.7306 235.1689 211.1403 276.8096 120.8135 228.4112 162.5216 276.8322 685.8007;
	3.5885 48.488 86.7094 112.9062 14.5409 17.9267 6.0109 18.3921 4.2279 23.9886 44.3425 66.1503 99.589 38.7124 186.047 70.0921 86.9662 92.1582 50.8828 69.9425 2.0036 41.8289 65.4637 84.754 99.7637 73.1337 13.3977 402.9971 672.0254 672.0254 445.423 88.7374 169.6094 180.0321 121.3688 286.7308 601.9175 230.2529 256.2685 267.2243 118.1958 198.8667 162.3087 246.4538 608.1875;
	3.3822 45.7014 86.9773 117.0617 14.6304 9.8842 8.6245 18.74 20.5734 27.8166 51.4186 76.7064 115.4811 28.7826 163.7095 61.6766 76.5247 81.0933 43.5675 69.0785 2.8748 23.063 66.9296 86.359 101.8178 73.3387 13.7027 373.418 565.8453 565.8453 427.8466 88.059 145.2251 177.8083 90.2374 241.4273 475.9596 211.3444 190.4215 272.7263 121.7635 109.6482 153.8623 241.8901 480.9175;
	3.5573 48.0667 89.2308 119.3107 14.3534 18.7039 16.9776 18.8821 25.1564 29.322 54.2013 80.8577 121.7308 40.543 171.5878 64.6447 80.2073 84.9958 55.0906 69.2368 5.6592 43.6423 71.0183 86.1923 105.1372 74.4223 13.8681 944.9945 494.3794 494.3794 329.7667 89.8623 183.6354 178.2157 127.1078 210.9352 847.0315 234.3945 149.5795 281.6175 118.475 207.4881 137.9115 248.1179 855.8547;
	3.4435 46.5298 93.0946 120.0891 14.5547 23.1054 13.2502 19.0667 19.9605 29.8322 55.1444 82.2646 123.8489 59.7839 183.839 69.2603 85.934 91.0644 71.3541 69.9246 4.4167 53.9125 72.8062 86.3864 104.2285 74.3421 13.952 1122.9125 600.4469 600.4469 228.4901 59.0879 237.8469 179.9861 187.4307 256.1907 1008.944 191.7498 155.4059 279.1835 117.0352 256.3156 171.5553 271.3929 1019.4538;
	2.7058 36.5607 94.461 119.8134 14.6443 34.1352 16.6117 19.1405 26.3745 26.3516 48.7105 72.6665 109.3991 66.7464 186.4169 70.2315 87.1391 92.3414 51.7841 69.962 5.5372 79.6487 55.1024 88.8558 105.8823 75.7744 14.1415 1166.7614 750.3183 750.3183 325.4762 49.9325 172.6138 180.0822 209.2591 320.1358 1204.1253 132.5351 278.5984 283.6133 118.0527 378.6729 164.162 283.4804 1216.6682;
	3.8103 51.485 92.7818 88.0797 14.1725 34.0557 8.8606 18.6414 6.4972 16.6071 30.6979 45.7952 68.9445 68.2371 194.3876 73.2344 90.8649 96.2897 41.6655 72.2273 2.9535 79.4634 49.168 86.7459 103.3264 74.9653 13.9349 1230.2556 718.1061 718.1061 356.6065 40.3738 138.8851 185.9132 213.9325 306.392 1124.1119 104.5695 101.1399 276.767 114.9714 377.7915 177.0917 272.7548 1135.8214;
	3.7844 51.1352 88.6736 116.8908 14.178 32.0452 0.6277 18.9353 1.5356 15.7461 29.1065 43.4211 65.3703 64.5495 190.6702 71.8339 89.1272 94.4482 62.128 68.9731 0.2092 74.772 64.3221 84.6879 102.1608 73.5951 13.5352 1203.927 652.8062 652.8062 577.2214 45.744 207.0933 177.5369 202.3714 278.5307 1170.4255 141.6662 33.0048 273.6449 113.229 355.4876 178.0292 275.4957 1182.6175;
	3.6806 49.7334 88.9337 113.4486 13.9829 32.2115 0.4779 18.1554 26.4628 28.4328 52.5576 78.4056 118.0392 62.9345 190.495 71.7679 89.0453 94.3615 45.5309 68.803 0.1593 75.1601 72.7047 86.8533 99.7015 72.2257 13.3487 1260.2041 619.1391 619.1391 473.7514 63.5023 151.7697 177.0991 197.3083 264.166 1155.1454 190.9337 416.1627 267.0575 115.4144 357.3328 190.508 269.5903 1167.1782;
	3.5611 48.1189 90.93 116.9631 14.3494 32.2172 2.7094 18.5926 27.2973 28.9796 53.5684 79.9135 120.3094 67.1612 195.5375 73.6676 91.4024 96.8593 55.6361 70.1108 0.9031 75.1735 69.6159 85.964 100.0099 73.8266 13.5083 1265.5896 686.7728 686.7728 546.7985 102.7735 185.4537 180.4654 210.5595 293.0231 1164.8127 226.1053 438.1692 267.8837 115.3666 357.3962 188.4097 272.3779 1176.9462;
	3.6152 48.8494 92.9847 118.2088 14.7703 32.8414 29.4234 18.8998 27.6756 27.2356 50.3446 75.1042 113.069 66.7834 191.1455 72.0129 89.3494 94.6837 63.9568 69.8979 9.8078 76.6299 70.0483 85.5113 103.5666 74.7953 13.9222 1231.942 676.336 676.336 548.0834 98.5928 213.1892 179.9173 209.375 288.57 1093.9244 225.5982 447.6174 277.4106 118.5426 364.3206 159.5023 270.4339 1105.3195;
];
