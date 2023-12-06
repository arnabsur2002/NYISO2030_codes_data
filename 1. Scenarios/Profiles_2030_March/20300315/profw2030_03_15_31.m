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
	3.7983 51.3236 86.8712 87.8459 14.6099 33.5114 31.5589 17.938 10.3623 16.9791 31.3857 46.8213 70.4892 56.2675 198.1078 74.6359 92.6039 98.1325 85.8124 72.371 10.5196 78.1932 20.7198 88.0935 101.2348 72.8601 13.6803 1234.7068 788.0498 788.0498 710.6472 107.6899 286.0414 186.2831 176.4062 336.2346 1152.6018 254.6612 466.4169 271.1646 121.1829 371.7528 209.792 277.7961 1164.608;
	3.7951 51.2798 86.7406 84.3389 14.6052 33.9839 31.8408 18.1427 10.4277 13.9949 25.8694 38.592 58.1001 66.9543 196.7791 74.1354 91.9828 97.4743 89.7689 73.3336 10.6136 79.2959 25.8944 86.9185 99.1245 72.8059 13.6571 1217.2554 787.3797 787.3797 708.1132 110.9463 299.2297 188.761 209.9107 335.9487 1208.4038 247.7437 460.9272 265.5122 116.8069 376.9953 207.7276 275.7536 1220.9914;
	3.8804 52.4328 90.2926 111.9984 15.1783 34.9187 33.3679 18.8744 22.7898 16.5403 30.5746 45.6112 68.6675 62.519 185.4818 69.8792 86.702 91.8782 85.5791 73.1799 11.1226 81.477 29.7542 89.689 103.7607 75.3997 13.8923 1155.8745 781.4328 781.4328 682.9171 110.6192 285.2636 188.3653 196.0054 333.4113 1185.7295 256.8258 462.1817 277.9304 120.9378 387.3651 217.2359 278.2376 1198.0808;
	3.8379 51.8588 88.4368 109.2135 14.7164 34.354 32.1354 18.011 28.0076 30.1289 55.6928 83.0828 125.0806 67.1948 204.182 76.9244 95.4432 101.1413 85.2596 72.2928 10.7118 80.1594 27.4869 87.9713 99.9477 73.4747 13.5564 1225.1833 801.3083 801.3083 754.087 114.6853 284.1987 186.0818 210.6648 341.8915 1202.9015 303.3224 472.1575 267.7171 117.9404 381.1008 185.6024 272.3914 1215.4317;
	3.2711 44.1994 87.9248 110.8602 14.7507 31.5701 31.6697 17.8324 27.941 30.5218 56.4191 84.1661 126.7117 64.1472 204.4189 77.0136 95.5539 101.2587 85.1 73.3905 10.5566 73.6637 74.51 85.4764 100.4944 72.4568 13.2145 1246.3532 788.3145 788.3145 736.0971 114.5832 283.6667 188.9074 201.1102 336.3475 1151.0651 316.2143 470.092 269.1814 119.4588 350.2181 183.5244 264.7123 1163.0554;
	3.7451 50.6048 88.7506 112.2068 14.6944 33.8503 20.1497 17.6441 26.4049 29.1008 53.7923 80.2476 120.8123 52.2366 205.2679 77.3335 95.9508 101.6792 58.8042 73.182 6.7166 78.9841 72.6065 84.3059 99.7985 71.5328 13.2437 1229.074 803.3867 803.3867 732.5591 114.1969 196.0141 188.3707 163.7689 342.7783 1194.477 310.3259 467.5045 267.3174 120.6772 375.5131 169.4035 266.3099 1206.9195;
	3.6013 48.6608 86.618 110.05 14.5825 32.72 14.1853 17.045 26.9961 28.9918 53.5908 79.947 120.3597 66.2032 203.8536 76.8007 95.2897 100.9786 85.5237 73.42 4.7284 76.3466 71.9699 84.9833 97.9234 69.305 13.042 1242.3438 792.3697 792.3697 693.8561 108.4881 285.0791 188.9834 207.5559 338.0777 1143.2419 302.6204 442.4726 262.2949 120.3303 362.9734 171.2411 261.6437 1155.1507;
	3.8476 51.9892 89.6121 114.0714 14.6021 33.3817 4.6689 17.3855 8.3481 28.7267 53.1009 79.2161 119.2594 45.5252 204.4146 77.012 95.5519 101.2565 84.6135 72.42 1.5563 77.8907 72.7478 84.4072 98.2989 71.3603 13.3965 1293.9422 795.921 795.921 737.5128 112.7213 282.0449 186.4094 142.7275 339.593 1211.9583 319.1926 185.659 263.3005 121.0544 370.3145 201.5501 277.6634 1224.5829;
	3.894 52.6161 93.2292 117.7678 15.2094 32.3853 3.3404 17.792 6.0537 28.8635 53.3538 79.5934 119.8274 31.1271 204.4302 77.0179 95.5592 101.2643 85.5253 71.7472 1.1135 75.5658 73.9738 86.0407 100.5006 70.8819 13.4871 1223.4018 696.3285 696.3285 712.1611 111.1666 285.0843 184.6774 97.5876 297.1002 1087.8472 296.8671 37.3742 269.1982 120.7312 359.2614 192.4164 282.0034 1099.1789;
	3.8363 51.8364 90.2809 116.6337 15.0097 30.4965 5.8786 17.9605 0.7251 23.6396 43.6975 65.188 98.1402 23.2619 203.8027 76.7815 95.2659 100.9534 84.7182 71.0004 1.9595 71.1585 50.1055 85.7032 99.4269 72.1854 12.9735 1041.7494 627.5766 627.5766 612.9939 110.4215 282.394 182.7551 72.9291 267.766 861.2477 271.8612 63.8933 266.3222 119.706 338.308 158.3406 279.7992 870.219;
	3.651 49.3333 89.1579 115.3376 14.9515 25.5862 2.8591 17.9853 0.1495 26.8297 49.5943 73.985 111.384 3.7127 203.9873 76.851 95.3522 101.0449 79.4535 70.2635 0.953 59.701 70.3647 87.655 101.3399 71.1497 13.3203 836.1727 667.8442 667.8442 534.9151 106.9934 264.8452 180.8584 11.6399 284.9469 765.8159 221.0018 34.9909 271.4462 118.4127 283.8358 144.246 271.9703 773.7931;
	3.5643 48.1616 93.4233 118.2385 14.796 20.5352 4.975 18.379 0.3526 27.2251 50.3251 75.0752 113.0253 3.2007 205.0599 77.2551 95.8536 101.5762 39.7351 71.298 1.6583 47.9154 73.5878 86.8247 103.0352 73.2785 13.3311 591.9306 712.5152 712.5152 522.1907 109.0901 132.4502 183.5213 10.0345 304.0065 792.9536 223.7084 109.1219 275.987 120.565 227.8033 142.477 275.237 801.2136;
	3.8881 52.5374 94.8107 119.3328 15.0071 22.513 5.4774 18.4013 25.7938 25.2198 46.6185 69.5456 104.7005 50.4165 203.2646 76.5788 95.0144 100.6869 58.341 72.436 1.8258 52.5304 75.2879 87.7323 103.9091 73.979 13.6961 652.0114 728.9675 728.9675 563.3642 106.6106 194.47 186.4504 158.0626 311.0261 623.7493 246.0114 102.6439 278.3279 121.9359 249.7446 156.7558 280.4701 630.2467;
	3.859 52.143 93.8767 117.2308 15.3345 22.6581 14.5416 18.5339 19.0881 24.754 45.7575 68.2611 102.7668 37.7075 203.5076 76.6703 95.128 100.8073 58.1397 72.5582 4.8472 52.869 75.2472 88.6377 103.461 74.7271 13.2054 532.7062 682.348 682.348 510.4014 95.6523 193.799 186.7651 118.2181 291.1351 692.2118 257.7534 133.7818 277.1278 121.7236 251.3542 166.9964 276.8921 699.4223;
	3.8222 51.6465 94.4112 116.5165 15.195 19.7924 12.6968 17.7413 2.532 26.8842 49.695 74.1352 111.6101 27.969 198.246 74.688 92.6685 98.2009 72.3471 71.6215 4.2323 46.1824 75.1275 85.2546 97.3329 72.5105 13.075 385.3644 603.0984 603.0984 453.9171 88.8947 241.157 184.3539 87.6867 257.322 558.5344 244.1719 59.574 260.7131 114.5576 219.5642 172.5729 261.6512 564.3524;
	3.4295 46.3396 94.1615 114.4433 14.9734 10.7227 6.4132 17.4625 8.5897 29.3973 54.3404 81.0652 122.0432 22.8294 196.9557 74.2019 92.0653 97.5618 68.8186 73.0174 2.1377 25.0196 75.4729 88.2473 99.1483 71.1316 13.3177 427.3292 478.523 478.523 413.9555 95.8494 229.3952 187.947 71.5732 204.1698 442.2233 226.5543 49.0626 265.5759 117.4868 118.9503 155.9527 255.6182 446.8298;
	3.3613 45.4179 92.8278 112.8336 14.6596 18.9059 8.181 18.0697 16.2393 30.5427 56.4577 84.2238 126.7984 34.2714 196.8858 74.1756 92.0326 97.5271 68.5414 73.307 2.727 44.1137 75.458 87.2361 102.4956 70.9029 13.2127 999.3131 459.3318 459.3318 319.3187 94.1462 228.4713 188.6923 107.4454 195.9816 817.6529 237.9947 122.2256 274.5417 118.2305 209.729 127.4241 243.388 826.1702;
	3.2088 43.3581 91.5146 112.8304 14.5694 21.4355 12.2129 17.9849 8.4269 30.7349 56.813 84.7539 127.5965 59.2581 205.0259 77.2423 95.8377 101.5593 80.3412 73.7857 4.071 50.0162 75.7081 86.0048 98.6857 70.2603 13.4428 1190.5589 580.0088 580.0088 234.5062 70.8218 267.8042 189.9246 185.7823 247.4704 991.8504 209.2762 141.5825 264.3367 116.1892 237.7915 161.005 264.5841 1002.1822;
	2.4912 33.6618 91.8803 114.7375 14.6279 33.449 18.7369 18.3427 23.9234 26.9664 49.847 74.3619 111.9515 64.2655 201.5161 75.92 94.197 99.8208 56.805 71.9425 6.2456 78.0477 59.9962 87.4073 100.4291 71.4315 13.5104 1217.7844 707.0055 707.0055 310.0213 65.0451 189.35 185.1802 201.481 301.6557 1214.9389 144.6027 286.7516 269.0066 117.5368 371.061 153.2857 265.3044 1227.5946;
	3.7577 50.7751 91.425 81.7459 14.2392 33.157 12.2358 17.4267 8.1496 17.1795 31.756 47.3738 71.321 66.1616 199.0475 74.99 93.0431 98.5979 43.1616 71.9005 4.0786 77.3663 50.1812 85.8561 101.1005 71.6689 13.3247 1260.9549 739.8692 739.8692 349.6833 57.209 143.8718 185.0719 207.4255 315.6775 1192.8287 117.2962 382.8667 270.8048 115.6676 367.8213 174.864 255.4111 1205.2539;
	3.7771 51.0371 89.9448 116.7144 14.4855 33.2536 4.9197 17.8322 3.5467 16.0738 29.7121 44.3246 66.7304 65.3201 195.1121 73.5073 91.2035 96.6485 63.3895 69.4058 1.6399 77.5918 70.7558 84.8735 100.9182 70.9892 13.2253 1221.6643 674.8775 674.8775 592.8153 48.6576 211.2985 178.6507 204.7874 287.9478 1208.3499 156.1054 183.3877 270.3165 115.9551 368.8935 188.1575 266.9853 1220.9369;
	3.6623 49.4852 90.7123 114.602 14.417 33.1753 1.0346 17.7798 26.813 29.8389 55.1567 82.2829 123.8765 65.4762 194.5034 73.278 90.919 96.347 70.9976 67.9755 0.3449 77.409 75.5577 87.6673 102.1766 70.2014 13.5447 1280.2198 690.2547 690.2547 522.862 71.9446 236.6585 174.9691 205.2766 294.5087 1277.9651 219.9227 434.8206 273.6874 117.1174 368.0246 197.2902 261.9946 1291.2773;
	3.7867 51.1669 91.9981 116.8506 15.0086 34.3965 1.8066 18.2751 27.0006 30.8747 57.0714 85.1393 128.1767 66.1457 195.8425 73.7825 91.545 97.0103 67.1387 68.6373 0.6022 80.2585 75.56 86.6594 101.7657 71.1428 13.538 1301.5338 770.7078 770.7078 573.5076 106.4633 223.7956 176.6726 207.3758 328.8353 1269.4991 233.4606 452.2186 272.5867 116.4997 381.5717 210.1097 266.5143 1282.7231;
	3.8925 52.5969 92.8057 118.1632 15.2567 34.3849 29.8709 18.2006 27.3023 29.3692 54.2884 80.9877 121.9265 69.1257 191.5463 72.164 89.5368 94.8822 75.0208 68.9452 9.957 80.2315 75.7074 84.959 104.3061 71.1917 14.0245 1298.7868 770.0802 770.0802 587.0427 116.2508 250.0692 177.4651 216.7184 328.5676 1253.5434 234.2404 461.1736 279.3913 118.7795 381.4434 211.2653 273.4462 1266.6012;
];
