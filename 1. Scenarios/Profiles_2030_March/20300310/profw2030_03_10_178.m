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
	3.8616 52.1782 82.1981 111.3164 14.7586 34.8556 30.5177 6.2396 26.2354 12.7569 23.581 35.1782 52.9605 40.1751 166.2365 62.6287 77.7059 82.3451 76.9678 67.546 10.1726 81.3297 27.7716 28.95 41.086 23.7698 4.6691 1210.0793 796.5921 796.5921 626.811 67.4791 256.5593 173.8636 125.9544 339.8793 1264.4463 204.8692 450.8892 110.0517 113.7804 386.6644 215.1286 104.7545 1277.6176;
	3.2915 44.4753 76.986 42.389 15.0262 29.5489 29.6481 7.2153 0.8231 13.2061 24.4112 36.4167 54.8252 37.2999 175.1275 65.9783 81.8619 86.7492 80.625 69.1405 9.8827 68.9474 23.1719 32.7663 35.2852 26.3917 5.6375 1227.1145 805.0037 805.0037 669.3786 46.8601 268.75 177.9679 116.9402 343.4683 1312.1949 194.8644 440.0161 94.5139 114.2229 327.7957 216.9295 86.6766 1325.8636;
	3.1211 42.1723 86.336 43.7747 14.6773 22.8532 26.9924 6.9621 1.133 11.8448 21.895 32.663 49.174 31.9788 179.3726 67.5776 83.8463 88.852 84.5022 58.9009 8.9975 53.3241 24.8544 33.0379 31.3575 29.5346 6.4337 1228.2589 824.0883 824.0883 748.8414 71.7377 281.6741 151.611 100.2579 351.611 1293.1878 205.4082 433.4616 83.9932 33.8187 253.5182 209.7274 125.7016 1306.6585;
	3.4576 46.7196 81.3533 42.3517 14.4704 10.8695 26.795 7.119 0.0 7.3752 13.6329 20.3376 30.6182 23.1723 184.5351 69.5225 86.2594 91.4092 74.3928 57.8044 8.9317 25.3621 20.3392 24.1485 29.2778 30.1962 5.7864 1220.3413 819.6217 819.6217 756.3445 78.6596 247.976 148.7886 72.6484 349.7052 1259.2369 229.5999 411.9576 78.4227 36.1167 120.5788 200.4712 110.9181 1272.354;
	3.8125 51.5156 78.0869 38.5076 15.1099 20.3279 29.4013 6.4753 0.5299 6.5933 12.1876 18.1815 27.3721 30.9963 159.2503 59.9966 74.4403 78.8845 84.0115 60.644 9.8004 47.4319 0.0 6.4214 5.6142 58.737 5.5356 1231.1101 835.0044 835.0044 777.0481 94.0069 280.0383 156.0977 97.1776 356.2685 1298.7889 242.9327 420.4908 15.038 36.2614 225.5047 204.3462 192.0369 1312.318;
	3.8703 52.2957 92.2708 112.129 15.0864 33.1793 29.8162 6.0613 0.0458 9.3807 17.34 25.8679 38.944 27.4939 177.249 66.7775 82.8536 87.8001 89.5419 63.019 9.9387 77.4184 0.0 20.934 48.669 63.0141 5.4292 1176.245 832.1798 832.1798 744.6501 103.2676 298.4732 162.2112 86.1971 355.0634 1256.3056 241.8638 434.5282 130.3634 68.325 368.0694 211.2356 244.2161 1269.3921;
	3.9818 53.8028 92.6153 119.9941 15.0781 35.3188 30.6521 11.0557 0.0526 11.6377 21.5122 32.0919 48.3142 37.1807 189.0374 71.2188 88.364 93.6395 79.6498 68.2435 10.2174 82.4106 22.3073 49.6566 100.124 74.0762 11.6047 1127.3658 832.4091 832.4091 714.7867 108.4887 265.4993 175.6588 116.5665 355.1612 1278.9808 279.5709 437.7791 268.1894 113.5485 391.8036 216.265 280.9218 1292.3035;
	3.8931 52.6037 89.922 119.1944 14.9195 34.9734 29.6067 18.4686 0.0 10.0932 18.6572 27.8329 41.9022 60.2665 194.2449 73.1806 90.7982 96.219 80.5013 58.0128 9.8689 81.6045 21.8268 54.8578 103.175 73.9561 13.7648 979.3761 804.6423 804.6423 675.5467 113.2869 268.3376 149.3252 188.9436 343.314 1215.9266 300.7949 437.0667 276.3615 120.894 387.9712 213.4961 281.5448 1228.5925;
	3.8651 52.2259 90.0301 118.9923 15.031 34.7729 29.9025 17.9419 0.1811 11.7383 21.6981 32.3693 48.7318 64.0535 197.662 74.468 92.3955 97.9116 54.6135 64.5639 9.9675 81.1369 24.6756 86.5406 102.2573 72.7669 13.3915 737.9581 823.9897 823.9897 676.024 113.4749 182.0449 166.1876 200.8164 351.5689 1182.2259 302.8451 449.0131 273.9034 120.0454 385.7478 216.3328 270.6999 1194.5408;
	3.8323 51.7821 89.2213 119.7735 15.0654 34.4642 30.1579 17.8914 14.3136 11.7859 21.7861 32.5006 48.9295 61.803 190.1198 71.6265 88.87 94.1756 57.1231 57.8566 10.0526 80.4165 24.0993 88.4937 101.9544 72.3417 13.0321 579.9571 836.113 836.113 693.2869 106.886 190.4103 148.9231 193.7606 356.7416 1101.767 269.2665 440.9973 273.0921 117.7305 382.3229 213.6143 267.0686 1113.2437;
	3.8639 52.2096 94.0332 119.0951 15.1589 34.9274 31.3626 18.2175 26.7389 19.7921 36.5854 54.5781 82.1671 68.9232 203.3436 76.6085 95.0513 100.726 50.558 67.6503 10.4542 81.4972 30.1768 85.9427 101.8762 74.7821 13.3362 437.5761 830.0311 830.0311 739.4152 98.4763 168.5267 174.1321 216.0835 354.1466 945.4557 284.4709 452.9246 272.8828 120.6778 387.461 205.2195 265.9393 955.3042;
	3.532 47.7247 91.7525 118.0164 14.9729 33.6279 29.4907 17.9308 26.9367 20.5595 38.0039 56.6944 85.353 65.9656 201.6601 75.9743 94.2644 99.8921 54.609 64.4694 9.8302 78.4651 33.4946 85.4826 98.972 74.6278 12.6491 303.1866 810.3124 810.3124 694.6242 104.897 182.0298 165.9444 206.8111 345.7333 796.423 258.8157 451.2398 265.1035 119.9893 373.0453 185.3127 262.3627 804.719;
	2.4565 33.193 93.1228 119.5113 15.0814 23.0837 26.1668 19.0225 26.5137 29.2463 54.0613 80.6488 121.4163 66.6273 195.1157 73.5087 91.2052 96.6503 92.1132 65.0418 8.7223 53.8619 62.7408 86.7328 102.2052 74.4799 13.7019 306.6907 754.104 754.104 695.6722 109.4068 307.044 167.4177 208.8855 321.751 708.0004 242.3457 438.7161 273.7638 123.1764 256.0746 174.6731 270.5541 715.3754;
	2.5925 35.0306 92.3194 117.4407 15.2135 15.0215 25.2746 18.2451 26.4982 31.3819 58.009 86.538 130.2824 65.9404 197.9389 74.5723 92.5249 98.0488 90.3578 69.2599 8.4249 35.0501 75.2262 83.54 99.6318 72.4219 13.1817 333.1632 658.2324 658.2324 649.8822 106.6066 301.1927 178.2751 206.7319 280.8458 535.6834 222.7897 453.9762 266.8708 122.0844 166.6383 142.1741 265.1655 541.2634;
	2.2183 29.974 91.775 116.3295 12.9482 8.5552 20.8275 18.5203 25.7867 29.8657 55.2063 82.357 123.988 64.7646 201.3199 75.8461 94.1054 99.7236 88.2163 72.4202 6.9425 19.9622 72.3634 84.9398 100.084 73.6907 13.4692 435.7285 495.0852 495.0852 441.2956 91.8738 294.0543 186.4097 203.0457 211.2364 417.8527 194.4893 428.7434 268.0822 118.7188 94.906 109.8038 251.3616 422.2054;
	3.3462 45.2146 93.605 92.597 14.2878 26.6317 15.484 18.4993 19.8644 29.3474 54.2482 80.9276 121.8361 57.9915 191.8219 72.2678 89.6656 95.0188 87.8906 71.1224 5.1613 62.1406 70.9485 87.8618 100.9268 74.8704 13.4653 449.8864 521.8826 521.8826 420.0461 47.2103 292.9686 183.0691 181.8113 222.6699 443.0948 169.9334 431.3198 270.3398 120.5967 295.4341 79.6675 267.9364 447.7104;
	3.221 43.5231 93.5467 67.1387 14.7514 32.1624 14.3921 18.8808 26.0825 27.6508 51.112 76.2491 114.7926 63.1682 186.4347 70.2382 87.1474 92.3502 85.2805 68.629 4.7974 75.0456 68.3278 88.2325 105.6304 76.1464 13.4735 546.7258 579.0918 579.0918 453.466 29.2873 284.2683 176.6512 198.0407 247.0792 572.9084 125.6759 163.3245 282.9385 120.875 356.7881 103.0656 274.1859 578.8762;
	3.6617 49.4773 90.2397 64.3408 14.3408 31.8366 28.4631 18.7165 25.8034 12.7742 23.6129 35.2258 53.0322 61.3284 174.1872 65.624 81.4224 86.2834 76.1295 69.8405 9.4877 74.2854 46.0072 87.5295 104.9455 75.2625 13.2349 660.3033 587.5129 587.5129 409.2426 30.0541 253.7652 179.7695 192.2727 250.6722 725.3146 86.5717 379.8032 281.1041 120.2618 353.1739 105.9281 264.458 732.87;
	3.7816 51.0977 88.0777 52.0262 15.0552 32.7428 27.4674 18.7204 26.0923 22.8446 42.2279 62.9957 94.8396 60.6565 185.3838 69.8423 86.6562 91.8297 61.9681 71.6771 9.1558 76.3999 52.7376 82.0663 104.1036 75.4414 13.4569 911.5905 642.888 642.888 466.5787 40.3366 206.5603 184.4969 190.1664 274.2989 927.9861 94.2137 437.8404 278.8489 119.4214 363.2272 137.4423 245.3924 937.6526;
	3.7023 50.026 64.7902 39.4281 15.1816 31.6892 0.0 18.7853 25.909 28.0269 51.8074 77.2864 116.3542 63.5371 191.8383 72.274 89.6733 95.0269 56.2501 71.0948 0.0 73.9416 69.763 77.3665 104.3988 74.6979 13.2133 1027.2386 554.6808 554.6808 543.5954 60.6158 187.5002 182.9982 199.1973 236.6638 1008.7738 139.9491 398.3392 279.6395 121.496 351.5393 143.5002 232.2392 1019.2818;
	3.7277 50.369 63.0563 60.0565 14.9695 31.8425 27.8341 18.5016 0.0094 27.1097 50.1119 74.757 112.5463 61.1883 186.9964 70.4498 87.41 92.6285 69.6344 71.4693 9.278 74.2991 70.8131 85.2282 100.7425 74.0439 13.2053 1186.8205 686.5121 686.5121 424.3766 67.4594 232.1145 183.962 191.8337 292.9118 1067.3762 190.3608 418.191 269.846 119.0937 353.2391 132.2747 254.2657 1078.4947;
	3.7193 50.256 48.5525 84.5416 14.682 33.7908 1.9335 18.2659 27.031 30.1573 55.7453 83.161 125.1984 63.3376 189.1726 71.2697 88.4272 93.7064 63.7892 71.1127 0.6445 78.8452 71.1291 84.8986 102.7216 74.5006 13.5262 1226.5554 669.9353 669.9353 534.2941 79.7057 212.6308 183.0443 198.5719 285.8391 1149.7635 225.1285 436.8396 275.1472 120.1562 374.8526 146.127 247.6099 1161.7402;
	3.7413 50.5535 61.5084 96.4994 14.5909 33.485 29.5893 18.7461 27.6335 30.8964 57.1115 85.1991 128.2668 62.4438 188.24 70.9183 87.9913 93.2445 53.6062 71.7202 9.8631 78.1316 71.2237 85.7018 104.5375 75.9509 13.4731 1205.8939 651.9303 651.9303 572.5131 102.1603 178.6873 184.608 195.7697 278.1569 1138.1695 253.6748 452.4725 280.0111 120.8197 371.4602 147.7326 268.6391 1150.0254;
	3.8237 51.6665 91.0936 109.8681 15.0164 34.5167 29.6287 18.6677 27.4534 31.1252 57.5345 85.8302 129.2169 64.9079 192.9798 72.704 90.2068 95.5923 48.094 72.9488 9.8762 80.539 71.155 85.6258 103.8908 75.0913 13.4054 1182.5513 652.0181 652.0181 575.34 109.3102 160.3133 187.7703 203.4949 278.1944 1165.7716 232.5544 463.6451 278.2789 120.4497 382.9053 163.0047 274.6397 1177.915;
];