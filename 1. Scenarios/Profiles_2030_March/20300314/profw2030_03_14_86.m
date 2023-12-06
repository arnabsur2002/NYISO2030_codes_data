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
	3.0832 41.6612 83.4328 112.0397 14.0719 14.9136 12.8067 17.1723 26.2844 15.4492 28.5575 42.6022 64.1374 5.6444 7.1564 2.6961 3.3452 3.5449 8.6092 21.5386 4.2689 34.7984 40.2802 83.1395 95.9063 65.7822 7.0807 669.5651 373.299 373.299 185.3698 34.2765 28.6973 55.4404 17.6961 159.2742 522.0965 49.2341 274.2119 256.8919 14.9197 165.4416 119.6506 193.392 527.535;
	3.1418 42.4525 84.7171 110.3358 13.4624 15.3589 12.6105 14.942 26.4815 14.8263 27.4063 40.8847 61.5518 5.4144 1.148 0.4325 0.5366 0.5687 2.743 9.9532 4.2035 35.8373 39.9648 80.4813 87.1371 65.5998 4.5529 664.7105 372.9578 372.9578 155.0269 28.8672 9.1433 25.6196 16.975 159.1287 495.0005 46.2586 297.9733 233.4029 9.2079 170.3809 109.4157 166.5053 500.1568;
	2.8068 37.9257 86.5813 110.1823 13.9349 10.8493 11.7166 16.8377 26.5109 17.5471 32.4356 48.3876 72.8472 7.7069 6.8248 2.5712 3.1902 3.3806 9.3915 20.9057 3.9055 25.3151 43.711 82.6964 91.2701 70.0543 7.5259 594.6698 347.525 347.525 134.5354 30.2993 31.3051 53.8113 24.1621 148.2773 412.409 32.9017 231.9301 244.4734 5.2096 120.3554 82.1419 172.3672 416.7049;
	2.662 35.9689 82.6088 94.2967 13.8749 10.2575 11.6962 16.0839 26.1432 16.0802 29.7241 44.3425 66.7573 9.5911 7.7072 2.9036 3.6027 3.8177 9.6691 22.8521 3.8987 23.9343 55.8902 79.247 89.2341 72.6595 9.0764 473.0208 269.7933 269.7933 155.2104 28.1216 32.2302 58.8212 30.0694 115.1118 314.2288 31.4023 169.3082 239.0199 0.0789 113.7903 76.7834 141.6347 317.5021;
	1.8567 25.0887 83.1144 94.1421 13.6427 7.0286 9.7201 15.6595 17.4789 16.7218 30.91 46.1116 69.4207 14.541 12.4069 4.6742 5.7995 6.1457 19.4754 26.0523 3.24 16.4001 46.633 78.7205 91.1677 72.7422 8.4399 351.2496 226.83 226.83 150.8132 29.3276 64.918 67.0586 45.5879 96.7808 202.0061 32.608 154.8221 244.1993 10.5697 77.9707 79.1256 189.9982 204.1103;
	2.3284 31.4619 82.2575 68.6467 13.8 14.8036 10.4616 14.9086 9.929 8.7968 16.2607 24.2577 36.5198 27.0525 16.1925 6.1004 7.5691 8.0209 31.7768 29.4325 3.4872 34.5417 41.3672 78.9277 88.2177 71.6849 6.4922 304.2335 205.3548 205.3548 116.898 25.276 105.9225 75.7593 84.8134 87.618 168.1442 25.6504 180.804 236.2973 10.974 164.2213 84.218 192.2087 169.8957;
	1.9429 26.2524 83.1355 89.015 13.4917 19.6733 11.3634 13.8611 12.1534 24.4604 45.2146 67.4513 101.5476 40.0298 21.6282 8.1483 10.1099 10.7135 36.1944 39.77 3.7878 45.9043 62.6353 82.3479 95.649 71.3259 10.1554 248.1262 228.7508 228.7508 100.9054 17.5875 120.6478 102.3681 125.4988 97.6003 185.9278 20.8782 153.7484 256.2027 10.0182 218.242 91.4826 215.3131 187.8645;
	1.4931 20.1752 67.5537 97.1362 13.8649 16.1592 11.7245 16.7456 18.1852 24.9903 46.1943 68.9128 103.7478 38.7892 20.0453 7.5519 9.37 9.9294 49.1432 50.7737 3.9082 37.7048 66.7117 84.77 95.7126 73.0477 12.304 118.303 178.9674 178.9674 83.6029 10.0662 163.8107 130.6915 121.6095 76.3594 119.4754 19.979 160.1298 256.373 7.2591 179.2593 85.361 194.0995 120.72;
	2.2001 29.7277 84.2425 94.893 13.6519 21.219 10.5063 17.8147 22.2472 27.3605 50.5754 75.4485 113.5873 42.1253 18.9086 7.1237 8.8387 9.3664 64.1447 52.9177 3.5021 49.5109 67.4514 83.1897 95.7558 71.9819 11.8048 53.7255 143.0764 143.0764 83.7789 8.5617 213.8156 136.2103 132.0686 61.0459 108.6587 16.5223 122.9818 256.4887 18.7598 235.389 72.7148 217.9119 109.7905;
	1.1925 16.1138 82.5231 97.6174 12.417 11.7022 9.3525 17.3136 26.0114 27.4678 50.7738 75.7445 114.033 29.4937 41.7186 15.7172 19.501 20.6653 72.4405 48.2926 3.1175 27.3052 64.6483 83.4492 96.6546 72.0356 11.9365 198.2275 218.0445 218.0445 103.6984 9.3223 241.4684 124.3054 92.4667 93.0323 211.6926 18.2709 0.0 258.8964 2.3178 129.8169 64.7173 195.9227 213.8977;
	1.2168 16.4421 77.8806 101.2587 12.1533 22.9083 13.7536 16.547 26.8947 28.3789 52.458 78.257 117.8154 49.3758 70.9319 26.7232 33.1565 35.136 70.4065 37.6831 4.5845 53.4528 69.4505 85.4828 89.4974 72.9425 11.3053 344.1775 299.1408 299.1408 168.1083 13.2569 234.6884 96.9965 154.7999 127.6334 329.934 25.9249 160.5739 239.7251 9.6019 254.1297 80.0564 176.3831 333.3708;
	1.4189 19.1719 81.7274 84.3683 11.4786 28.1862 20.0519 16.5563 27.0708 27.6352 51.0832 76.2061 114.7278 50.8664 78.831 29.6991 36.8489 39.0488 82.0439 50.9924 6.684 65.7679 70.6088 81.038 86.7706 71.7254 11.6583 422.7552 355.8761 355.8761 278.7041 16.8156 273.4798 131.2545 159.4729 151.8405 415.5779 42.7429 198.9113 232.4212 2.7388 312.6793 100.1779 175.6549 419.9069;
	2.6643 36.0011 87.8246 88.6178 13.4685 31.7127 21.8271 16.9802 27.8635 28.257 52.2326 77.9208 117.3094 53.4833 55.3493 20.8525 25.8726 27.4172 87.433 65.152 7.2757 73.9964 69.3486 83.0913 94.4573 72.8735 11.1042 538.4704 431.9924 431.9924 321.7801 24.2807 291.4434 167.7013 167.6773 184.3168 565.5715 60.0362 224.0907 253.0106 3.9678 351.7999 134.9149 205.9791 571.4629;
	2.8616 38.6668 86.5084 100.5047 13.7727 31.0931 22.7474 16.5221 27.3994 29.0282 53.6582 80.0474 120.5109 51.7171 71.27 26.8506 33.3146 35.3035 88.715 57.3765 7.5825 72.5507 67.9906 80.7515 84.9169 72.0366 11.1283 717.3777 571.1066 571.1066 409.9311 30.6307 295.7167 147.6872 162.1401 243.6721 695.4776 85.9438 271.0638 227.4559 6.0499 344.9266 128.1954 241.3892 702.7222;
	3.568 48.2117 88.3553 104.7703 13.9445 31.8631 25.4113 16.8477 27.7111 24.0475 44.4515 66.3129 99.8338 57.5206 104.0229 39.19 48.6247 51.5276 86.997 58.4276 8.4704 74.3472 44.1613 83.1848 90.9716 70.4056 12.7382 855.5072 634.5044 634.5044 481.5614 36.3885 289.9899 150.3928 180.3349 270.7219 819.8977 114.2487 396.7147 243.6739 29.4958 353.4677 150.8522 244.2719 828.4383;
	3.5647 48.1669 88.9369 103.1045 14.3777 32.7362 26.0753 16.7517 27.782 20.3186 37.5586 56.0301 84.353 63.8505 136.6806 51.4936 63.8902 67.7046 89.0961 68.7219 8.6918 76.3845 43.7708 81.9831 92.8483 67.9923 12.6238 954.4763 702.8872 702.8872 669.9764 49.1949 296.9869 176.8904 200.1801 299.8985 904.0613 162.1221 367.6982 248.7009 1.9124 363.1537 159.4217 254.1533 913.4786;
	3.6369 49.1429 90.2516 112.3971 14.3665 32.5254 30.3758 16.813 27.8679 18.772 34.6998 51.7652 77.9323 64.133 170.3117 64.1639 79.6108 84.3637 88.6169 71.9131 10.1253 75.8926 25.2003 82.8923 96.6 69.9374 12.3086 1029.0989 742.7625 742.7625 709.9245 78.2315 295.3896 185.1045 201.0655 316.912 938.8066 206.5011 411.0965 258.7499 0.0 360.8152 199.7118 268.4485 948.5858;
	3.6158 48.8576 91.3962 109.6609 14.226 31.3431 29.4349 17.4722 26.7461 17.2117 31.8155 47.4624 71.4544 65.1536 184.6138 69.5522 86.2962 91.4482 90.6039 72.9174 9.8116 73.1339 28.5651 83.311 97.6991 69.8848 12.9305 1108.0479 774.2105 774.2105 751.1696 94.0563 302.013 187.6897 204.2655 330.3298 1045.1313 229.2325 434.1542 261.6939 100.6892 347.6997 187.9475 248.2712 1056.018;
	3.5824 48.4058 90.9486 112.6185 14.8541 31.2005 29.8873 13.407 26.9444 17.3001 31.9789 47.7063 71.8216 63.6372 187.3945 70.5998 87.596 92.8256 89.2849 73.237 9.9624 72.8012 40.8673 83.8539 102.7477 66.7003 13.0606 1153.0854 766.3043 766.3043 699.1824 103.7029 297.6162 188.5123 199.5113 326.9565 1081.0492 233.6535 435.4315 275.217 115.6938 346.1177 198.645 253.4573 1092.3101;
	3.6541 49.3745 92.7202 110.5999 14.778 33.7309 31.3557 8.1794 27.6511 19.3184 35.7097 53.2718 80.2004 64.238 202.652 76.348 94.728 100.3834 90.363 73.1647 10.4519 78.7054 45.2133 37.1072 44.8757 66.6234 10.6793 1221.8403 777.3502 777.3502 697.0418 108.714 301.21 188.3261 201.3947 331.6694 1137.8662 244.2646 452.4656 120.2027 118.2921 374.1881 206.7066 223.1473 1149.7189;
	3.8744 52.3513 94.2261 120.8867 15.1247 34.1198 30.9749 18.7637 19.8336 20.5578 38.0009 56.6898 85.3462 67.0665 201.3814 75.8693 94.1341 99.7541 91.8173 73.59 10.325 79.6128 44.0886 80.9777 104.3251 74.3822 13.7926 1259.3212 783.0016 783.0016 718.3843 107.6688 306.0577 189.4209 210.2624 334.0807 1116.9442 243.8666 444.5203 279.4422 119.4963 378.5018 209.1914 265.709 1128.5791;
	3.8261 51.6993 89.295 118.7362 14.6253 34.2205 30.6396 17.4754 11.0603 20.3032 37.5302 55.9877 84.2892 65.0392 194.7225 73.3606 91.0215 96.4556 89.5639 72.0867 10.2132 79.8478 45.1463 84.7916 101.4099 75.5638 13.4112 1276.7196 777.3716 777.3716 743.6054 114.7314 298.5465 185.5513 203.9068 331.6785 1197.7548 260.1779 445.6758 271.6337 116.0007 379.6191 204.4104 232.458 1210.2314;
	3.756 50.7525 92.4087 117.8143 14.6746 33.2761 31.6693 17.3619 21.5548 19.0684 35.2476 52.5825 79.1627 68.0509 193.44 72.8774 90.422 95.8203 87.6671 71.7484 10.5564 77.6442 48.9364 82.8732 81.82 75.4916 13.2933 1247.6451 791.5275 791.5275 713.2123 113.7797 292.2238 184.6807 213.3487 337.7184 1195.1003 262.7889 469.4071 219.1608 114.2145 369.1427 199.907 253.093 1207.5492;
	3.7874 51.1767 91.5987 118.7246 14.2032 33.1634 33.4806 17.608 12.6113 16.3039 30.1376 44.9593 67.686 65.0436 196.8682 74.1689 92.0244 97.5184 85.3694 70.9161 11.1602 77.3813 45.1322 85.5551 102.9921 75.3109 13.3811 1254.6712 771.4956 771.4956 730.9744 112.3481 284.5646 182.5382 203.9205 329.1714 1194.035 268.5876 473.8747 275.8718 119.1448 367.8929 207.1512 257.7335 1206.4729;
];