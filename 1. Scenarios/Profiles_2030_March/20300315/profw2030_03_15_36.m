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
	3.883 52.4679 95.0231 118.1138 14.9565 33.9784 31.9019 17.9534 10.6917 15.942 29.4685 43.9613 66.1834 51.9285 197.8411 74.5355 92.4792 98.0003 86.5383 67.6965 10.634 79.283 16.9097 87.7675 105.8059 72.9974 13.738 1208.1118 760.2508 760.2508 672.495 97.3488 288.4609 174.251 162.8029 324.3737 1045.9887 234.1426 464.3697 283.4087 123.0391 376.9341 217.216 283.185 1056.8844;
	3.7946 51.2731 93.773 114.314 14.9817 33.3936 31.7993 18.3796 11.8737 14.3117 26.455 39.4657 59.4154 59.3023 192.1958 72.4086 89.8403 95.2039 86.2194 71.6208 10.5998 77.9184 5.9793 86.0444 102.5975 71.9716 13.6942 1224.6445 794.5267 794.5267 741.2598 106.5662 287.3979 184.352 185.9208 338.998 1198.3057 237.5146 465.9433 274.8147 123.6733 370.4463 211.4397 278.2987 1210.788;
	3.6636 49.5033 90.6561 111.7511 14.7814 33.3873 33.2438 17.7817 23.2351 14.2967 26.4273 39.4243 59.353 57.9695 173.05 65.1956 80.8908 85.7201 84.2936 72.2397 11.0813 77.9037 14.803 83.8898 99.0374 71.1989 13.3652 1205.7074 784.9053 784.9053 749.9167 106.1372 280.9787 185.9452 181.7422 334.8929 1218.1206 249.888 468.1463 265.2788 123.148 370.3762 210.4498 257.5126 1230.8093;
	3.5723 48.2694 91.6466 115.5034 14.691 32.8048 32.0651 18.1548 28.2206 28.1142 51.9687 77.527 116.7165 63.7408 190.7748 71.8733 89.1761 94.5001 84.8048 67.6898 10.6884 76.5445 16.8828 86.4986 101.2984 71.7825 13.4532 1234.9243 790.6148 790.6148 750.332 104.4119 282.6827 174.2337 199.8361 337.329 1200.5878 259.1266 466.5882 271.335 122.4692 363.9146 165.4368 260.0338 1213.0939;
	2.9308 39.602 91.664 118.0178 14.5056 30.7046 31.0163 17.905 27.9569 29.3336 54.2227 80.8896 121.7788 63.6537 195.145 73.5197 91.2189 96.6648 85.9978 69.4797 10.3388 71.644 68.9766 86.3534 103.592 70.8918 13.3207 1256.8451 810.2182 810.2182 769.3467 112.1894 286.6592 178.8409 199.5629 345.6931 1187.2016 302.0518 471.9164 277.4784 123.3159 340.6163 168.7122 264.5285 1199.5683;
	3.5732 48.2821 93.0512 117.347 14.5338 32.9682 19.1436 17.865 26.3913 28.87 53.3658 79.6113 119.8544 52.6393 191.5254 72.1561 89.527 94.8719 47.6217 67.6501 6.3812 76.9258 69.627 86.7078 102.4138 70.222 13.454 1204.8175 826.9746 826.9746 781.1719 114.1904 158.7391 174.1314 165.0312 352.8425 1242.0488 286.5333 470.5025 274.3226 121.7758 365.7274 153.2668 270.0346 1254.9868;
	3.6701 49.5911 93.3153 118.4945 14.8019 34.3199 13.9405 17.7197 26.7004 28.7046 53.0601 79.1552 119.1677 66.3757 189.019 71.2118 88.3554 93.6303 80.6995 70.1239 4.6468 80.0798 69.188 87.1951 103.5488 70.0678 13.3645 1257.6114 838.6284 838.6284 778.2249 114.1065 268.9984 180.499 208.0968 357.8148 1256.9952 310.061 450.5346 277.3628 123.1289 380.7221 176.5547 270.4299 1270.0888;
	3.7535 50.7186 94.0331 120.2244 14.8325 34.599 3.204 17.8558 8.6028 28.6407 52.9419 78.9789 118.9023 44.6031 201.1941 75.7987 94.0465 99.6613 84.0881 70.7036 1.068 80.7309 69.6937 86.5832 101.9728 72.1956 13.4027 1266.2477 818.1754 818.1754 750.2155 113.9818 280.2937 181.9912 139.8367 349.0882 1252.9406 301.7662 189.8828 273.1416 123.0857 383.8179 200.2379 279.7233 1265.992;
	3.7592 50.7944 94.3378 117.9536 14.3947 32.4901 2.2746 18.4764 3.8355 29.2163 54.0059 80.5662 121.292 26.7278 199.6586 75.2202 93.3288 98.9006 86.2091 71.7187 0.7582 75.8103 70.4614 86.4405 103.0791 71.3776 13.6335 1139.153 712.6007 712.6007 711.204 110.9949 287.3638 184.6041 83.7952 304.043 1033.2492 267.1797 56.8582 276.1046 123.9544 360.4237 178.2592 283.3786 1044.0122;
	3.7526 50.7055 93.9591 119.1809 14.7358 30.774 4.1414 19.0271 0.7748 25.7173 47.5381 70.9175 106.766 20.2706 188.6227 71.0625 88.1702 93.4341 86.0899 69.8281 1.3805 71.8061 39.3133 87.6673 105.337 74.4264 13.7257 941.9768 639.0981 639.0981 593.0531 113.0876 286.9663 179.7378 63.5512 272.6819 807.7906 251.1335 50.1585 282.1527 123.7276 341.3867 150.5736 273.7117 816.2051;
	3.6746 49.6519 93.8682 117.9881 14.9132 25.2852 12.9518 18.3126 2.0324 28.8546 53.3373 79.5687 119.7903 0.3716 193.8355 73.0264 90.6068 96.0162 77.7317 69.9235 4.3173 58.9989 69.6308 87.1735 103.2945 73.1384 13.5702 770.1972 663.5208 663.5208 499.2045 111.6277 259.1058 179.9833 1.165 283.1022 742.892 200.7483 162.4973 276.6818 122.029 280.4974 144.7788 271.008 750.6305;
	3.4738 46.9385 92.5897 117.8449 14.8891 19.5699 15.3225 18.607 2.1001 27.629 51.0718 76.189 114.7022 0.2466 197.0843 74.2504 92.1255 97.6255 42.1417 70.3769 5.1075 45.663 70.192 87.1509 103.9736 73.6502 13.7851 615.4074 728.6132 728.6132 495.106 112.2695 140.4724 181.1504 0.7732 310.8749 807.5101 205.9421 211.1374 278.5008 123.3902 217.0951 135.9431 272.2814 815.9217;
	3.7668 50.8974 93.6805 116.6823 15.0032 20.8914 9.9337 18.6663 26.2821 24.7879 45.82 68.3544 102.9072 47.1564 194.8664 73.4148 91.0887 96.5268 58.3387 70.2379 3.3112 48.7467 71.25 85.2993 103.6106 72.1907 13.8396 666.3132 716.4282 716.4282 500.7518 104.6172 194.4622 180.7926 147.8418 305.676 625.643 221.1987 311.1749 277.5285 122.232 231.7556 146.1131 270.6689 632.1601;
	3.6547 49.3833 91.5775 111.9772 15.3034 19.9471 7.2317 18.8907 19.6576 23.5547 43.5404 64.9538 97.7875 34.7327 194.2645 73.188 90.8073 96.2287 57.5723 70.5127 2.4106 46.5432 70.956 85.0132 103.1829 71.9967 13.8155 540.863 702.7176 702.7176 461.8358 94.6897 191.9077 181.4998 108.8917 299.8262 691.7694 237.9653 68.1467 276.3827 121.5277 221.2798 150.6314 267.5009 698.9753;
	3.5954 48.5811 91.6312 113.1582 15.259 18.7416 3.2813 18.7093 4.2374 25.9551 47.9775 71.5731 107.7528 30.1755 189.9342 71.5566 88.7832 94.0837 69.8377 70.4286 1.0938 43.7304 71.8326 86.3754 103.3181 72.4309 13.3901 396.4966 678.0443 678.0443 434.6356 90.3053 232.7925 181.2833 94.6042 289.2989 619.0 226.9224 32.8511 276.7449 120.7382 207.9069 154.4354 253.3018 625.4479;
	3.2168 43.4666 90.4635 113.6166 15.3205 10.3129 6.3744 18.1727 25.5283 28.073 51.8925 77.4134 116.5455 24.7905 183.1329 68.9943 85.604 90.7147 68.6207 71.3932 2.1248 24.0634 69.0013 87.9406 103.2976 71.404 13.4683 394.9832 543.7017 543.7017 386.0865 91.1684 228.7358 183.7662 77.7217 231.9794 489.8324 207.4609 32.0163 276.69 120.9518 114.4044 148.8469 246.0089 494.9349;
	3.1976 43.2061 91.2141 112.9548 14.8548 17.9641 5.4953 18.4794 13.3588 29.7347 54.9642 81.9958 123.4442 33.9539 191.749 72.2403 89.6315 94.9827 71.9825 72.7054 1.8318 41.9162 71.1369 87.8025 104.9634 71.9831 13.2976 977.9917 481.3618 481.3618 292.8908 86.5639 239.9418 187.1439 106.4502 205.381 854.4434 216.1406 125.1849 281.1519 118.9172 199.2815 122.0873 250.7284 863.3439;
	3.1566 42.6528 93.454 115.9676 14.7854 21.6072 6.1667 18.9 6.2848 29.7302 54.9559 81.9833 123.4255 57.5188 194.0552 73.1092 90.7095 96.125 84.3803 73.2063 2.0556 50.4167 72.6976 88.671 105.6847 74.0374 13.9656 1245.2272 597.953 597.953 221.8756 71.2267 281.2678 188.4333 180.3294 255.1266 1042.95 209.0229 136.9922 283.084 122.3433 239.6955 163.7312 278.0482 1053.814;
	2.3868 32.2509 93.0042 115.4288 14.108 33.4562 18.9035 18.3578 14.5171 22.2896 41.202 61.4653 92.5356 64.5946 187.4718 70.6289 87.6322 92.8639 61.0849 69.9721 6.3012 78.0644 47.8408 87.5424 103.0715 73.1605 13.51 1244.1103 700.4858 700.4858 310.3943 63.5248 203.6162 180.1084 202.5129 298.874 1204.6481 141.8821 288.2496 276.0844 121.7174 371.1406 151.5036 275.2228 1217.1966;
	3.7857 51.1531 93.3365 88.4674 14.1405 34.5615 23.7095 17.7285 24.4654 6.2488 11.5508 17.2315 25.942 65.0589 195.0456 73.4823 91.1725 96.6156 48.2981 72.0246 7.9032 80.6435 37.7834 87.4449 103.66 74.4056 13.5973 1263.4726 726.8711 726.8711 383.0556 51.4533 160.9936 185.3914 203.9683 310.1317 1195.8335 113.5423 146.6168 277.6607 120.5794 383.4021 187.8869 278.1015 1208.2901;
	3.8578 52.1278 94.4323 120.2198 14.719 34.6623 17.6357 18.3257 18.7141 13.9229 25.7363 38.3935 57.8013 63.872 197.7457 74.4995 92.4346 97.9531 70.9728 72.4649 5.8786 80.8787 64.9212 87.6126 103.5467 73.2899 13.5341 1225.5289 657.8683 657.8683 580.0502 44.6197 236.5761 186.5247 200.2474 280.6905 1202.0135 145.2558 169.7004 277.3572 120.0946 384.5207 197.7132 279.5253 1214.5344;
	3.8314 51.7707 94.763 117.8663 14.6167 34.2603 10.9942 18.589 27.3724 29.3578 54.2674 80.9563 121.8793 63.5623 200.2281 75.4348 93.595 99.1828 79.9035 73.6202 3.6647 79.9407 73.5559 89.3627 103.7333 73.9731 13.7276 1238.7973 635.2916 635.2916 516.0601 73.6293 266.3452 189.4985 199.2763 271.0578 1174.477 207.9671 432.5314 277.857 120.7962 380.061 201.2628 273.4651 1186.7111;
	3.9104 52.8378 95.0195 120.5852 15.1478 34.0144 8.8322 19.0329 27.8228 29.7544 55.0006 82.0501 123.526 64.8713 199.4238 75.1318 93.219 98.7844 78.7522 73.4004 2.9441 79.367 71.0769 87.8064 105.1606 75.7808 13.9783 1271.1565 729.437 729.437 622.1845 112.4546 262.5074 188.9329 203.3804 311.2265 1201.3318 247.6294 449.9738 281.6803 123.409 377.3334 204.6638 278.2627 1213.8457;
	3.9227 53.0041 94.2852 119.4517 15.2912 34.3669 28.9423 18.4899 27.4533 27.9492 51.6638 77.0722 116.0317 63.9742 198.8687 74.9226 92.9596 98.5094 82.275 73.8438 9.6474 80.1894 71.4471 86.6069 104.9926 74.2342 13.6823 1299.2398 730.8038 730.8038 620.8055 117.0505 274.2501 190.0741 200.5678 311.8096 1191.0112 244.7281 460.7181 281.2302 123.982 381.2435 204.5715 278.6964 1203.4176;
];