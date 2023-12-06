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
	3.3264 44.9465 88.6497 108.1273 14.0378 12.1279 13.97 17.8784 25.736 18.0317 33.3313 49.7237 74.8587 1.9826 19.0141 7.1635 8.888 9.4186 8.9951 24.1934 4.6567 28.2984 36.004 79.9761 97.9922 74.7145 8.3228 647.8285 361.8426 361.8426 163.9395 35.8492 29.9838 62.274 6.2158 154.3862 468.7715 46.3288 298.8073 262.4792 13.5209 134.5386 101.8448 211.1241 473.6545;
	3.4656 46.8285 88.8457 103.1799 13.7115 15.1666 13.5377 17.9654 25.6421 18.5707 34.3276 51.2101 77.0965 3.2505 16.048 6.046 7.5015 7.9494 7.8797 13.0644 4.5126 35.3887 40.4841 81.8397 96.0004 76.184 8.3004 600.409 360.1637 360.1637 142.7736 30.9433 26.2655 33.6277 10.1907 153.6698 465.1317 43.4562 319.581 257.1438 10.6884 168.2479 108.6655 202.0616 469.9768;
	3.1514 42.5825 87.5471 99.6767 13.8335 12.3658 11.8815 17.2671 25.6513 20.8343 38.5118 57.4521 86.4938 5.912 16.8926 6.3642 7.8963 8.3677 17.3175 20.8033 3.9605 28.8535 52.852 81.7603 92.9294 72.6687 8.6338 567.3651 324.9544 324.9544 129.7192 30.4977 57.7249 53.5479 18.5349 138.6472 377.9271 32.5238 247.1687 248.9181 4.7169 137.1776 88.6587 189.8628 381.8638;
	2.7345 36.9489 88.3542 98.8374 13.7766 11.3492 9.9438 17.5161 25.4145 19.4721 35.9938 53.6957 80.8386 8.8299 15.5215 5.8476 7.2554 7.6886 9.3131 16.4102 3.3146 26.4814 57.7325 81.8074 97.4776 75.4691 10.3156 474.6439 246.8486 246.8486 137.5058 27.2922 31.0438 42.2398 27.6828 105.3221 281.8891 24.7673 183.9846 261.1007 1.489 125.9003 77.4354 202.2098 284.8255;
	2.1063 28.4602 87.3847 101.4029 13.938 12.9496 9.483 17.9024 12.8127 16.6494 30.7762 45.912 69.1203 12.9461 19.0838 7.1897 8.9206 9.4531 19.5989 19.2135 3.161 30.2157 46.634 82.3414 98.7348 76.1081 10.3985 345.3105 205.8927 205.8927 124.5799 28.9387 65.3298 49.4555 40.5878 87.8475 162.9938 25.8332 174.9354 264.4682 8.5353 143.6543 82.594 201.8475 164.6916;
	2.6514 35.8267 86.8677 107.1077 13.2561 18.9306 10.4106 17.7972 7.3082 15.7052 29.0309 43.3084 65.2006 24.9415 21.3348 8.0378 9.9728 10.5682 33.665 25.8491 3.4702 44.1715 51.4801 82.0099 98.6127 75.2075 8.6758 280.2854 184.6458 184.6458 106.2018 26.5279 112.2168 66.5356 78.195 78.7822 141.441 23.47 201.8994 264.1413 5.701 210.0038 84.1742 198.5309 142.9143;
	2.5152 33.9857 91.3321 112.5568 13.9717 21.772 11.123 17.7324 11.5084 25.9239 47.9199 71.4871 107.6234 39.1482 28.0335 10.5614 13.104 13.8863 38.5611 34.5929 3.7077 50.8014 68.3378 86.7819 103.5891 76.192 11.7008 248.3065 205.8534 205.8534 76.5136 16.3866 128.5369 89.0423 122.7349 87.8308 158.7234 16.2013 165.0263 277.4708 10.3534 241.5246 93.9461 239.1127 160.3768;
	1.6107 21.764 73.4028 107.1871 14.3343 17.6884 10.6886 18.1818 18.4876 26.5929 49.1566 73.332 110.401 34.2044 30.4698 11.4793 14.2429 15.0932 51.6131 52.6469 3.5629 41.2728 70.9422 84.019 100.647 75.7906 12.8972 94.4153 148.3371 148.3371 75.9065 10.575 172.0437 135.5133 107.2354 63.2905 87.0692 16.655 178.392 269.5903 6.2183 196.2228 89.0396 215.8139 87.9762;
	2.5615 34.6108 84.069 95.8596 14.0231 20.9172 10.2289 17.5615 19.4851 26.9705 49.8545 74.3731 111.9683 25.9358 24.7128 9.3104 11.5518 12.2415 63.2664 51.4882 3.4096 48.8069 72.1249 82.1145 96.8482 72.5778 12.3824 130.8571 138.735 138.735 78.3413 8.6965 210.8881 132.5307 81.3122 59.1936 107.6341 22.6003 135.811 259.415 15.3818 232.0418 74.2833 225.2416 108.7553;
	1.7693 23.9071 80.3017 101.0651 11.9248 12.9226 8.8715 16.499 23.3099 25.558 47.2436 70.4782 106.1045 29.4964 16.6057 6.2561 7.7622 8.2256 67.828 41.6633 2.9572 30.1527 67.6274 79.8052 94.3082 70.7404 11.692 242.7264 222.0474 222.0474 88.4659 7.6423 226.0935 107.2414 92.475 94.7402 219.5323 18.6896 0.0 252.6113 0.0786 143.3547 73.9706 197.7726 221.8191;
	1.5297 20.6696 77.7509 102.4862 11.5435 23.2334 11.4892 17.7841 23.437 21.8175 40.3294 60.1635 90.5758 40.8608 1.3789 0.5195 0.6446 0.6831 61.8719 23.8764 3.8297 54.2113 58.2933 84.2997 95.0474 74.8891 12.0757 363.1937 294.2472 294.2472 165.0981 14.478 206.2395 61.4579 128.1042 125.5455 326.4833 32.6507 128.5653 254.5913 0.1376 257.7362 86.2572 186.8264 329.8842;
	1.6183 21.8669 85.6702 94.5798 11.5409 28.7218 17.0028 18.478 23.535 21.9872 40.6431 60.6315 91.2804 47.047 21.6114 8.142 10.1021 10.7052 81.3277 46.986 5.6676 67.0176 64.1009 85.283 98.2694 75.1185 12.1317 448.6951 354.6981 354.6981 278.6257 18.131 271.0922 120.9421 147.4987 151.3379 416.3106 45.8753 159.1873 263.2215 3.5427 318.6206 102.5124 182.3787 420.6472;
	2.7687 37.4115 86.4054 90.3142 14.0286 29.5884 20.5867 16.7166 26.112 24.611 45.493 67.8666 102.1729 53.9232 43.7402 16.4789 20.446 21.6667 84.4063 56.6816 6.8622 69.0397 69.1766 80.6804 95.2877 70.783 10.5536 628.7291 444.9378 444.9378 320.6056 23.7656 281.3542 145.8986 169.0566 189.8401 591.6575 63.1154 202.132 255.2349 4.2063 328.2345 131.6238 198.7737 597.8206;
	3.261 44.0626 82.585 102.6561 14.1989 28.8604 20.874 16.2355 25.5208 27.9718 51.7054 77.1342 116.1252 50.0887 55.6934 20.9822 26.0334 27.5877 83.12 49.2094 6.958 67.341 65.6936 79.5763 92.3352 70.1472 9.6513 782.205 542.2329 542.2329 379.067 29.3306 277.0666 126.6652 157.035 231.3527 703.9783 81.6399 268.7522 247.3265 0.0015 320.1584 127.9541 223.9594 711.3114;
	3.5529 48.0071 78.7266 100.3948 14.0393 30.5235 24.3612 15.0344 25.9054 20.2591 37.4486 55.866 84.1059 57.8606 76.8779 28.9633 35.9359 38.0814 79.1344 48.2035 8.1204 71.2216 27.3284 80.7491 90.1316 64.6833 10.8368 999.9528 651.4626 651.4626 476.8712 34.2548 263.7813 124.076 181.4008 277.9574 924.3242 109.058 395.5089 241.4239 0.0 338.6077 143.189 157.7697 933.9526;
	3.5642 48.1606 86.5631 107.5717 14.1673 31.2242 25.9568 16.6899 26.3194 18.8435 34.8319 51.9623 78.229 58.464 106.7883 40.2319 49.9173 52.8975 85.355 50.468 8.6523 72.8565 41.0182 82.7032 99.289 67.8246 11.6329 1129.6091 726.0182 726.0182 673.7317 49.3974 284.5166 129.9048 183.2926 309.7678 1020.0031 168.0301 328.437 265.9526 0.0 346.3806 151.1549 212.2206 1030.6281;
	3.5894 48.5007 88.9244 117.3094 14.2065 32.0585 29.1023 17.9262 26.4735 19.8712 36.7317 54.7964 82.4958 63.8691 149.0058 56.1371 69.6515 73.8098 86.8311 67.8604 9.7008 74.8032 31.8318 85.2069 101.4476 74.3146 12.6541 1114.5012 754.8335 754.8335 719.0978 79.9929 289.437 174.6727 200.2384 322.0623 1008.6199 209.7732 388.1215 271.7347 0.0083 355.6358 198.763 261.4241 1019.1264;
	3.5631 48.1447 91.5783 116.7512 14.1412 31.8316 28.3008 18.0652 26.4413 7.719 14.2684 21.2857 32.0455 62.9342 158.7932 59.8244 74.2266 78.658 82.1089 68.4815 9.4336 74.2737 9.5437 85.5349 101.1406 74.4147 12.9548 1167.8899 752.9893 752.9893 724.7006 92.3793 273.6963 176.2716 197.3071 321.2754 1061.9472 236.2885 425.6329 270.9124 96.2659 353.1183 181.5025 250.1437 1073.0091;
	3.5617 48.1261 89.5001 115.5762 14.017 32.0575 29.6087 13.3126 26.182 9.6122 17.768 26.5063 39.9051 60.9964 168.7475 63.5746 78.8796 83.5889 84.2898 67.1784 9.8696 74.8008 26.8505 86.4776 103.4854 66.9198 12.9056 1228.1268 747.5104 747.5104 650.3544 94.1946 280.9659 172.9173 191.232 318.9378 1066.8378 238.1878 435.4813 277.1931 113.0902 355.6243 192.5772 260.2352 1077.9506;
	3.5818 48.3982 91.9084 109.4162 14.2754 32.483 30.8304 8.8431 26.8009 14.4717 26.7506 39.9067 60.0793 60.8222 186.2152 70.1555 87.0448 92.2415 84.6397 68.4081 10.2768 75.7936 26.3238 40.3233 46.4358 66.3153 10.9874 1223.1396 759.0966 759.0966 679.2621 100.8432 282.1323 176.0827 190.6857 323.8812 1123.4397 244.8461 451.4905 124.3815 116.0401 360.3445 174.5494 238.6996 1135.1422;
	3.431 46.3608 90.6082 117.9769 14.5335 32.5448 30.808 19.009 16.5074 15.1914 28.081 41.8914 63.0672 62.9959 186.8131 70.3807 87.3243 92.5376 87.3326 68.14 10.2693 75.9379 33.9857 77.9582 102.9179 74.3766 13.998 1254.5152 774.3336 774.3336 732.1266 108.7595 291.1087 175.3925 197.5007 330.3823 1095.2961 246.6019 438.361 275.673 116.2881 361.0304 201.3902 262.0481 1106.7054;
	3.6007 48.6532 91.7413 120.3545 14.6726 34.2059 30.7128 18.1407 9.4522 20.0686 37.0965 55.3407 83.315 64.344 181.0805 68.221 84.6446 89.698 88.2256 69.3268 10.2376 79.8137 38.5579 87.4614 102.6892 75.4941 13.704 1266.2486 764.2822 764.2822 733.8598 109.5806 294.0854 178.4475 201.7272 326.0937 1150.9508 247.6093 445.6723 275.0604 121.3507 379.4571 209.0492 228.5668 1162.9398;
	3.7619 50.8319 93.2666 116.5768 15.0677 34.7196 31.1261 17.9976 19.5342 20.1376 37.2241 55.531 83.6017 65.6603 192.9337 72.6866 90.1853 95.5695 89.5377 67.1289 10.3754 81.0124 49.8892 84.9442 90.045 74.7664 13.8742 1281.9266 779.5672 779.5672 742.0426 113.7982 298.4589 172.7898 205.8539 332.6153 1140.7599 258.8152 459.843 241.1921 120.657 385.156 211.8867 250.3787 1152.6428;
	3.8083 51.4588 93.3649 117.2433 14.9771 34.7752 32.8836 18.3106 10.7625 18.4537 34.1114 50.8875 76.6109 65.2857 192.3356 72.4613 89.9057 95.2732 90.4541 65.9649 10.9612 81.142 49.8407 88.8989 105.8214 73.5298 13.7138 1297.2123 805.0654 805.0654 808.7819 112.1528 301.5136 169.7937 204.6794 343.4946 1171.5419 288.7578 452.2032 283.4502 121.5861 385.7724 214.42 259.8624 1183.7454;
];
