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
	3.5991 48.6321 89.9298 115.2631 14.3358 13.4153 14.5327 18.423 26.5105 24.0487 44.4536 66.3161 99.8385 7.7026 18.402 6.9328 8.6019 9.1154 14.0046 21.2063 4.8442 31.3024 60.7272 87.6894 102.4289 70.1744 8.2218 625.0558 390.9198 390.9198 231.4175 36.2628 46.682 54.5852 24.1486 166.7924 494.6444 56.3365 293.4422 274.3631 14.9746 148.8204 114.4864 226.58 499.7969;
	3.4619 46.7772 89.0577 111.7166 14.4182 14.5865 14.2147 17.6686 26.501 24.8885 46.006 68.6318 103.3249 5.4083 7.6375 2.8774 3.5701 3.7832 13.4122 8.6133 4.7382 34.0351 66.6548 87.2385 100.4738 71.9463 7.266 622.4243 358.0107 358.0107 175.3576 30.9712 44.7072 22.1707 16.9559 152.7512 472.5577 47.167 294.1751 269.1264 9.4744 161.8125 107.3358 216.0413 477.4802;
	3.3246 44.9225 91.2136 111.7639 14.645 12.9228 13.0676 17.5592 27.596 24.0726 44.4979 66.3821 99.9379 5.1809 7.7424 2.9169 3.6191 3.8352 21.2914 17.4086 4.3559 30.1532 65.941 87.7634 100.7099 70.9846 8.19 558.6483 334.1417 334.1417 148.185 30.1836 70.9714 44.8099 16.2427 142.5671 390.3594 35.8541 237.006 269.7587 13.7868 143.3571 87.5966 205.1524 394.4256;
	3.0775 41.5834 92.1276 111.9189 14.9354 13.1322 12.0268 17.406 27.8463 25.7539 47.6058 71.0185 106.9179 10.2982 9.6334 3.6293 4.5031 4.7719 13.6916 20.7982 4.0089 30.6418 71.5735 86.4179 102.2871 72.3614 9.3092 467.2476 272.093 272.093 154.5614 28.2459 45.6387 53.5346 32.2862 116.093 319.7487 31.035 187.6646 273.9834 10.7799 145.6797 79.9687 210.9129 323.0794;
	2.3718 32.0481 89.7019 112.3725 14.858 14.5532 9.8854 17.7747 18.2582 23.4371 43.3231 64.6295 97.2994 13.7288 16.8638 6.3533 7.8828 8.3534 22.4944 24.9301 3.2951 33.9574 61.8795 83.6256 100.7947 71.8355 9.4402 347.6351 184.2714 184.2714 124.8757 27.3824 74.9813 64.1701 43.0418 78.6224 178.9078 28.9814 160.4845 269.9859 13.5299 161.4433 83.1955 218.2524 180.7714;
	2.941 39.7398 89.6361 113.0659 14.2088 21.2194 10.3817 17.9111 10.2443 20.8446 38.5309 57.4805 86.5365 22.7367 19.4652 7.3334 9.0988 9.642 37.0045 26.3643 3.4606 49.5119 60.1314 84.3813 103.9599 72.2982 7.986 257.7025 168.8515 168.8515 109.9874 22.3454 123.3483 67.8617 71.2826 72.0433 144.9535 22.6045 164.3758 278.4641 11.2758 235.3936 86.2796 211.2402 146.4634;
	2.3273 31.4465 87.046 110.2778 12.7371 20.6526 10.8984 17.5311 11.4881 28.4182 52.5306 78.3653 117.9785 37.8958 23.969 9.0302 11.2041 11.873 42.1746 34.5602 3.6328 48.1893 71.1221 83.4463 101.9548 71.9309 10.8338 132.5792 195.1147 195.1147 74.1307 13.6197 140.5819 88.9581 118.8084 83.2489 131.8421 7.7602 119.2639 273.0931 11.041 229.1057 83.5952 216.1409 133.2154;
	1.7606 23.789 66.023 112.343 13.5715 18.1356 10.8488 18.4372 17.9843 28.4832 52.6507 78.5445 118.2483 29.3108 26.9588 10.1566 12.6017 13.354 57.5936 55.3844 3.6163 42.3163 72.9509 85.0122 103.6092 74.0856 12.5329 46.8994 163.5114 163.5114 69.4319 8.9364 191.9786 142.5596 91.8932 69.7648 91.906 11.3213 125.77 277.5248 11.4217 201.1839 86.8591 183.2343 92.8634;
	2.7617 37.3161 80.2312 105.3756 14.108 24.0862 10.2925 18.4194 20.2591 27.6158 51.0474 76.1527 114.6474 40.2522 13.1973 4.972 6.169 6.5373 63.0811 45.6712 3.4308 56.2011 66.3336 83.2081 102.3691 71.8409 12.3113 38.8783 142.9262 142.9262 71.5012 7.4418 210.2703 117.5577 126.1962 60.9819 100.495 15.7021 134.2112 274.203 21.7263 267.196 79.9814 201.8308 101.5418;
	1.9783 26.7312 81.2335 108.9135 12.9365 13.8065 9.4129 18.477 25.1181 28.9834 53.5754 79.924 120.3252 41.0688 0.0364 0.0137 0.017 0.018 66.6208 41.1177 3.1376 32.2151 63.7036 85.0352 104.659 73.928 12.7963 140.3892 218.5867 218.5867 90.1225 9.2325 222.0694 105.8371 128.7563 93.2636 207.8103 19.5293 15.4351 280.3367 15.4763 153.1597 77.4279 196.705 209.975;
	1.6606 22.4383 77.0813 105.7417 12.5129 25.0751 10.6935 17.5344 24.989 28.7403 53.1261 79.2537 119.316 43.088 0.0 0.0 0.0 0.0 58.693 25.3579 3.5645 58.5086 58.4307 86.3826 99.7406 74.4842 11.7403 231.5483 269.425 269.425 139.7981 10.5782 195.6432 65.2712 135.0868 114.9547 282.8534 20.5422 141.9291 267.1623 2.4384 278.1664 85.5089 183.3118 285.7998;
	1.5847 21.4134 83.9314 93.3287 11.9072 28.946 15.9816 17.6715 21.9335 27.3489 50.554 75.4167 113.5394 33.4881 0.0 0.0 0.0 0.0 64.8339 31.224 5.3272 67.5408 63.1947 83.5268 100.4894 72.9718 11.8791 256.1303 268.1977 268.1977 252.7076 13.9593 216.113 80.3706 104.9897 114.431 328.2551 35.1492 161.8424 269.1682 0.7254 321.1081 100.888 178.5876 331.6744;
	2.6729 36.1162 87.1271 92.7645 13.5004 30.0868 16.7447 17.3373 25.4047 27.6718 51.151 76.3072 114.88 46.8396 19.8675 7.485 9.2869 9.8413 76.4516 44.6091 5.5816 70.2025 63.4984 83.9625 102.0882 70.5226 10.8238 489.1221 405.9963 405.9963 301.5194 22.4014 254.8387 114.824 146.8484 173.2251 527.4195 52.4323 180.6823 273.4506 7.325 333.7627 134.9329 204.5237 532.9135;
	3.5245 47.6236 88.5278 110.1689 13.9754 29.9181 18.5884 17.8181 24.266 29.1371 53.8595 80.3479 120.9632 45.343 53.5274 20.1661 25.021 26.5148 72.8806 49.7869 6.1961 69.8089 58.444 84.2587 102.7073 71.687 11.322 689.7421 530.7347 530.7347 382.9783 25.1682 242.9353 128.1516 142.1564 226.4468 644.3117 74.334 255.1989 275.1088 10.9487 331.8914 142.4751 247.7119 651.0233;
	3.8196 51.6114 91.3027 112.4711 14.1854 32.1648 23.5765 18.0203 26.1861 24.5572 45.3936 67.7183 101.9496 56.3593 74.8932 28.2156 35.0082 37.0982 78.1787 41.923 7.8588 75.0511 24.3453 83.2292 100.814 74.4374 12.6082 837.8532 611.4497 611.4497 477.4199 31.2262 260.5956 107.9099 176.6941 260.8852 844.9952 99.6467 410.1832 270.0374 23.3583 356.8144 172.8053 250.2431 853.7972;
	3.8572 52.1187 93.7686 115.1745 14.7482 32.8634 26.2779 17.9037 26.0637 20.5749 38.0324 56.7368 85.417 56.3857 110.2949 41.553 51.5565 54.6345 85.13 59.9008 8.7593 76.6813 31.642 84.9516 103.5818 73.5266 12.88 798.0197 635.5805 635.5805 580.7551 36.3783 283.7668 154.1847 176.7769 271.181 730.2318 132.4503 347.922 277.4513 11.9339 364.5646 181.5865 271.3252 737.8383;
	3.7979 51.3174 93.4232 116.6618 14.2369 32.4348 26.4991 18.6208 25.0676 20.0459 37.0546 55.2782 83.221 63.0248 135.2756 50.9643 63.2335 67.0086 82.081 67.2154 8.833 75.6812 26.7092 85.9357 104.2796 75.6863 12.9115 893.9209 674.2662 674.2662 628.6471 63.9491 273.6035 173.0126 197.5912 287.6869 821.7421 180.0184 354.2101 279.3203 14.2342 359.8102 205.0237 279.165 830.3019;
	3.6428 49.2219 93.978 117.3057 13.9671 31.8039 25.3883 18.4983 25.0541 16.0732 29.711 44.323 66.728 62.8814 145.2452 54.7203 67.8937 71.947 83.8687 67.2657 8.4628 74.209 30.8218 86.835 103.2771 74.1632 13.3569 999.2529 701.0365 701.0365 666.976 75.9175 279.5622 173.142 197.1418 299.1089 949.6406 207.7246 404.6712 276.6351 110.9222 352.811 193.2641 265.9362 959.5327;
	3.6976 49.9633 93.8868 120.6942 14.2384 32.4278 28.3768 14.5088 26.1833 19.034 35.184 52.4876 79.0198 65.2778 168.8368 63.6083 78.9214 83.6331 84.5926 64.391 9.4589 75.6648 48.8411 89.6407 106.3374 68.4689 13.5322 1158.8619 765.9609 765.9609 699.0734 103.2447 281.9754 165.7426 204.6548 326.81 1069.4581 225.4482 425.6458 284.8322 116.3834 359.7318 203.8994 273.4051 1080.5983;
	3.8148 51.5468 95.4228 120.318 14.9734 33.2308 29.6372 9.965 27.2447 19.7318 36.4739 54.4118 81.9167 65.7599 188.1057 70.8677 87.9285 93.1779 84.9146 67.6633 9.8791 77.5385 48.9445 50.4373 55.6542 70.4152 11.4341 1126.918 771.7357 771.7357 722.5583 108.6179 283.0488 174.1655 206.1661 329.2739 1066.2295 231.9984 438.6588 149.0739 118.4073 368.6404 207.1943 246.5601 1077.336;
	3.8555 52.0962 95.1024 121.3821 14.9985 33.0601 30.5962 18.9762 18.4949 18.389 33.9917 50.7089 76.342 62.2409 186.7463 70.3556 87.2931 92.5046 85.9598 67.7426 10.1987 77.1403 39.4611 85.1386 106.3388 74.9391 13.9069 1123.3576 753.3951 753.3951 722.2472 108.8408 286.5327 174.3697 195.1337 321.4486 998.348 221.872 441.106 284.8361 117.8144 366.7468 205.1337 266.5604 1008.7474;
	3.8456 51.963 92.8007 121.4502 15.1275 33.9942 30.1034 18.8562 9.6615 20.5721 38.0273 56.7292 85.4055 56.563 184.6323 69.5592 86.3049 91.4574 88.1518 69.2668 10.0345 79.3199 44.7998 88.1102 106.1809 74.966 14.053 1214.773 744.1641 744.1641 710.5461 113.9894 293.8393 178.2929 177.3326 317.51 1073.9299 230.3166 445.8803 284.413 118.2886 377.1095 211.5563 241.0835 1085.1166;
	3.8654 52.23 93.4744 117.7101 14.9908 33.9641 29.6666 18.141 16.6371 18.3725 33.9613 50.6636 76.2737 47.0529 185.9541 70.0571 86.9227 92.1121 85.6159 65.9403 9.8889 79.2497 52.1409 84.0735 93.7697 74.4071 13.9118 1191.3269 749.9479 749.9479 711.4635 113.4786 285.3863 169.7304 147.5173 319.9778 1052.2287 244.2559 437.9875 251.1688 116.7903 376.7756 207.9051 247.6231 1063.1895;
	3.8566 52.1116 93.0849 118.002 14.8307 34.0929 30.4365 18.633 9.9123 17.1175 31.6414 47.2027 71.0634 60.5056 188.4252 70.9881 88.0778 93.3362 87.7707 67.4913 10.1455 79.55 51.2757 86.6601 105.9654 72.9262 13.9688 1185.7101 737.5939 737.5939 724.0532 113.5455 292.5691 173.7229 189.6933 314.7067 1058.5387 257.3984 443.9491 283.8359 117.8789 378.2035 212.5468 259.0409 1069.5652;
];