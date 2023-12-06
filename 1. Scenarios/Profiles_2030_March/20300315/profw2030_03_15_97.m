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
	4.0029 54.0878 93.4374 120.6803 15.1111 34.9121 32.5216 18.7841 11.5183 16.4166 30.3458 45.27 68.1537 53.9847 196.9513 74.2002 92.0633 97.5596 86.9007 67.2921 10.8405 81.4616 13.2426 88.3025 105.22 74.6611 13.9621 1308.6271 817.4403 817.4403 785.3406 115.7763 289.6689 173.21 169.2493 348.7745 1195.8264 281.932 444.2056 281.8392 123.313 387.2915 217.3762 285.1177 1208.2829;
	3.9613 53.5254 93.2494 119.3138 15.286 34.9386 32.455 18.8011 11.9219 13.7305 25.3805 37.8628 57.0022 63.3641 193.1802 72.7795 90.3005 95.6916 87.3823 70.1527 10.8183 81.5234 24.6116 88.0481 104.6535 75.3301 14.0438 1319.6472 830.7202 830.7202 802.0268 117.6306 291.2742 180.5731 198.655 354.4406 1299.82 264.876 445.665 280.322 123.3865 387.5855 216.7374 281.2464 1313.3598;
	3.8886 52.5439 90.793 113.8902 15.1866 34.8239 32.6983 18.3178 21.2047 15.2724 28.2309 42.1149 63.4038 59.6192 167.6365 63.1561 78.3603 83.0386 86.9773 69.1387 10.8994 81.2558 23.3967 87.0364 103.2261 73.8619 13.9041 1299.7458 827.1633 827.1633 792.6995 116.6013 289.9242 177.9632 186.9144 352.923 1264.9348 292.5856 441.9633 276.4985 122.626 386.3135 216.2951 260.4473 1278.1112;
	3.7529 50.7097 91.4015 114.9218 14.7874 34.5724 31.3461 18.2523 27.376 29.0755 53.7456 80.1779 120.7074 66.7268 197.8201 74.5276 92.4694 97.9899 89.6273 65.2964 10.4487 80.669 24.4067 84.4215 101.7744 73.4738 13.7854 1291.7473 816.8628 816.8628 746.8958 114.0032 298.7576 168.073 209.1974 348.5281 1186.569 284.5276 441.9845 272.61 122.0461 383.5234 187.0123 268.6855 1198.9291;
	3.2185 43.4884 92.8235 118.7407 14.9238 31.8039 31.5939 17.794 27.5587 29.3048 54.1695 80.8103 121.6594 64.9164 197.7461 74.4997 92.4348 97.9533 89.5289 67.6784 10.5313 74.2091 70.2683 86.2309 102.3355 73.841 13.2235 1295.806 808.7662 808.7662 760.1621 113.1001 298.4295 174.2043 203.5216 345.0736 1107.1086 308.0198 461.4479 274.113 123.1265 352.8112 182.0494 274.9852 1118.641;
	3.7202 50.2684 89.4367 113.8966 14.7825 32.932 18.1308 17.4998 25.4921 28.9245 53.4665 79.7615 120.0805 51.7312 192.0717 72.3619 89.7823 95.1425 55.6228 67.5621 6.0436 76.8413 69.4803 84.3588 98.2566 71.3722 13.3478 1252.9792 813.3816 813.3816 766.3538 118.8376 185.4094 173.905 162.1842 347.0428 1114.4053 305.2734 446.8596 263.1872 122.2465 365.3257 161.6164 266.847 1126.0137;
	3.6857 49.8013 90.2696 115.4408 14.8976 32.882 12.8429 17.6185 25.2528 29.8418 55.1621 82.2909 123.8885 61.9303 188.3526 70.9607 88.0439 93.3002 72.8154 69.1223 4.281 76.7247 70.7704 86.1419 99.8401 72.3679 13.3261 1274.4679 808.0124 808.0124 731.1911 112.7405 242.7179 177.9209 194.16 344.752 1126.8156 285.1867 423.1735 267.4289 121.8355 364.7712 163.4037 273.2162 1138.5533;
	3.7488 50.6551 88.6505 116.0235 15.0408 32.5732 0.0 17.4169 1.6767 30.5693 56.507 84.2973 126.9091 42.1782 201.7268 75.9994 94.2955 99.9251 87.9888 71.6847 0.0 76.004 73.2526 84.8386 98.1427 72.6117 13.3139 1266.3852 773.9412 773.9412 712.1285 114.0255 293.2961 184.5166 132.2343 330.2149 1111.4675 282.4222 146.9458 262.8824 122.1422 361.3448 193.7731 274.9838 1123.0453;
	3.6414 49.2039 88.9355 117.545 14.6352 28.5479 0.0 17.4031 0.0 29.2108 53.9957 80.551 121.2691 2.3153 194.9297 73.4386 91.1183 96.5582 83.2113 71.6345 0.0 66.6118 71.3299 84.3094 97.8955 72.866 13.0775 1256.5481 679.33 679.33 686.0688 113.0199 277.371 184.3875 7.2589 289.8475 1019.2214 246.6137 0.0 262.2201 120.6664 316.6918 174.082 273.7224 1029.8383;
	3.636 49.1306 88.9882 116.7914 14.7584 27.2223 0.0 17.8977 0.0 25.7962 47.6839 71.135 107.0933 0.0 190.0132 71.5864 88.8201 94.1228 85.5756 71.3229 0.0 63.5187 49.0322 85.8061 100.0751 73.1276 13.1169 987.7223 572.1235 572.1235 545.5074 114.0708 285.2521 183.5855 0.0 244.106 743.5673 218.0302 0.0 268.0584 120.8959 301.9862 141.948 281.1177 751.3128;
	3.2084 43.3521 90.2587 115.9005 14.2347 23.8132 0.0 17.4664 0.0 26.4865 48.9599 73.0385 109.959 0.0 191.1551 72.0166 89.3539 94.6884 79.0591 70.8037 0.0 55.5641 68.7496 86.5008 100.1993 72.253 13.2349 826.0474 643.3883 643.3883 494.6038 109.9001 263.5303 182.2488 0.0 274.5123 702.7687 172.8354 0.0 268.3909 117.4644 264.1676 126.0829 279.9454 710.0892;
	2.7931 37.7404 91.5647 117.6303 14.3262 18.857 0.0138 17.6491 0.0 25.86 47.8018 71.3108 107.358 0.0 198.2037 74.6721 92.6487 98.18 43.4522 70.5589 0.0046 43.9996 71.1116 85.3754 99.2599 73.5853 13.2355 657.5436 680.1427 680.1427 500.9113 113.5501 144.8408 181.6187 0.0 290.1942 806.6107 203.2966 0.0 265.8748 118.8665 209.1866 129.4513 274.7473 815.0129;
	3.5655 48.1778 91.9155 116.7344 14.1693 20.4841 0.0 17.0858 23.2936 21.872 40.43 60.3136 90.8019 40.344 193.6148 72.9433 90.5037 95.9069 59.295 70.7112 0.0 47.7962 69.4121 83.6636 99.8112 71.2814 13.3491 684.3596 711.4774 711.4774 499.6222 104.1771 197.6499 182.0109 126.4838 303.5637 623.5376 210.4241 0.0 267.3515 118.6132 227.2368 136.5282 271.8902 630.0328;
	3.2348 43.7094 88.0255 114.2133 13.2804 19.3406 0.0 17.3593 15.7685 21.8149 40.3246 60.1563 90.565 25.6523 194.6254 73.324 90.9761 96.4075 59.0978 70.8855 0.0 45.1281 69.8748 81.8481 99.7927 70.2291 12.9929 531.0807 656.9322 656.9322 434.8736 82.3226 196.9926 182.4594 80.4233 280.2911 641.5499 200.5512 0.0 267.3018 117.1286 214.5517 148.3297 260.7398 648.2327;
	3.5822 48.4034 89.8345 115.6807 14.2025 19.3475 5.3189 17.4327 0.6517 24.03 44.4191 66.2646 99.7609 26.7099 187.361 70.5872 87.5804 92.809 70.939 69.681 1.773 45.1442 69.4042 82.6041 100.9788 70.1226 13.0564 422.6517 651.9886 651.9886 438.4559 85.1237 236.4634 179.3591 83.739 278.1818 584.3352 215.0294 3.2252 270.4789 117.1476 214.6286 163.7053 240.0775 590.422;
	3.3856 45.7469 89.9032 117.2921 14.2579 10.7557 9.2739 17.5147 2.5145 26.7397 49.4279 73.7367 111.0102 24.5161 167.2088 62.9949 78.1604 82.8267 64.0378 69.8 3.0913 25.0966 69.4835 84.8608 101.6722 69.5353 13.2464 459.4931 554.931 554.931 427.2952 94.0313 213.4593 179.6655 76.8612 236.7705 496.2594 211.9574 29.8312 272.3362 122.1991 119.3164 159.6497 231.5049 501.4288;
	3.4938 47.2095 90.4502 114.0789 14.0031 20.4459 4.1195 18.1676 0.0 26.3676 48.74 72.7105 109.4653 32.7438 184.4289 69.4825 86.2098 91.3566 68.3196 70.6816 1.3732 47.707 69.6919 84.6029 103.5983 71.4304 13.2155 1095.5314 500.4365 500.4365 321.8632 91.5743 227.7321 181.9345 102.6564 213.5196 900.2569 235.9024 95.3056 277.4954 120.7219 226.8128 139.3799 232.3102 909.6346;
	3.2562 43.999 91.2208 114.8179 14.2278 24.1765 2.5346 18.5104 0.0 27.2543 50.3791 75.1557 113.1466 56.5991 185.7003 69.9615 86.8041 91.9864 79.2923 69.4275 0.8449 56.4117 69.4959 84.6239 100.8283 72.5979 13.9585 1281.237 603.2968 603.2968 232.7699 74.4699 264.3078 178.7066 177.4457 257.4066 1060.0633 215.5974 122.859 270.0757 121.2275 268.1976 179.2083 263.1368 1071.1057;
	2.5365 34.274 93.0768 119.3334 14.4403 34.965 6.6512 18.7571 1.0498 24.0189 44.3986 66.2339 99.7148 63.5317 187.6955 70.7132 87.7367 92.9747 58.2241 70.1852 2.2171 81.585 50.0853 86.8323 102.3024 72.7018 14.1031 1295.1718 719.1718 719.1718 313.9143 64.8734 194.0802 180.6568 199.1805 306.8467 1219.5713 144.2943 251.6236 274.0244 120.7354 387.8786 176.7565 268.0805 1232.2751;
	3.6903 49.8639 91.7328 85.9271 13.976 34.0661 0.9664 18.0628 0.0 13.1745 24.3528 36.3296 54.694 60.5626 194.6277 73.3248 90.9771 96.4086 46.848 72.0275 0.3221 79.4876 40.8978 85.7196 102.025 73.0285 13.8878 1300.3918 733.1223 733.1223 385.1305 55.4639 156.1602 185.3991 189.8719 312.7989 1209.4026 115.8482 0.0 273.2813 120.8262 377.9067 182.6134 268.1383 1222.0006;
	3.7098 50.1273 92.2156 117.539 14.2897 33.5567 2.6405 18.5241 1.0383 16.0558 29.679 44.2752 66.6561 59.7172 193.8001 73.0131 90.5903 95.9986 70.623 71.2772 0.8802 78.2989 67.7507 84.7424 101.1701 71.9655 13.514 1240.8039 693.255 693.255 597.5607 48.7563 235.41 183.4677 187.2215 295.7888 1238.5905 162.4496 1.1477 270.9915 119.6115 372.2555 189.0003 271.4287 1251.4925;
	3.7799 51.0754 93.7768 118.4264 14.8219 33.816 1.4827 17.5299 26.6583 30.3038 56.0161 83.565 125.8066 60.5822 196.6989 74.1052 91.9453 97.4346 69.1459 71.6294 0.4942 78.9041 74.3132 87.6526 102.9465 70.6421 13.3746 1282.8505 665.8588 665.8588 518.7385 67.6087 230.4864 184.3744 189.9334 284.0998 1234.26 218.016 414.8568 275.7497 119.5921 375.1327 201.1209 265.2966 1247.1168;
	3.5549 48.0347 92.9667 118.7705 14.3986 33.1607 0.186 18.2838 26.5481 31.1105 57.5073 85.7896 129.1558 62.6974 199.6778 75.2275 93.3378 98.9102 74.142 71.9119 0.062 77.3749 75.4386 85.5725 101.8583 72.3811 13.5302 1291.2166 745.4416 745.4416 579.6213 107.4181 247.1401 185.1013 196.565 318.0551 1230.7573 245.9746 444.9165 272.8348 116.7523 367.8624 198.471 266.9081 1243.5777;
	3.5661 48.1863 94.2116 119.5137 14.2707 33.4512 29.1756 18.3949 27.9031 29.2022 53.9798 80.5273 121.2334 66.3171 192.4107 72.4896 89.9408 95.3104 78.1212 72.049 9.7252 78.0527 74.8545 85.1402 104.7905 75.1398 13.4288 1273.5433 712.0126 712.0126 582.9148 110.6677 260.404 185.4542 207.9131 303.792 1153.4297 232.3489 466.5522 280.6889 116.8037 371.085 193.7639 272.2406 1165.4446;
];