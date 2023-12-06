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
	3.6724 49.6221 95.212 120.5972 14.1799 31.8954 28.6037 18.6338 27.4824 28.4756 52.6367 78.5236 118.2169 68.0734 199.4318 75.1348 93.2228 98.7883 87.3897 72.018 9.5346 74.4226 73.5457 89.768 106.6999 75.1704 13.3498 1280.4038 731.6678 731.6678 534.4538 110.3906 291.2991 185.3745 213.4195 312.1783 1197.7967 216.3153 451.7415 285.8033 117.8159 353.8264 196.1622 286.1325 1210.2738;
	3.6401 49.1855 95.0303 120.4126 14.4265 32.7154 23.8853 18.6241 26.2276 28.9113 53.4421 79.7251 120.0257 67.0493 182.7241 68.8403 85.4129 90.5122 84.7075 70.6104 7.9618 76.3359 71.768 89.4186 106.2679 75.1681 13.3406 1291.9474 752.71 752.71 577.2624 102.5271 282.3585 181.7515 210.2086 321.1563 1184.6506 216.0291 435.9638 284.6463 114.8213 362.9228 183.9729 280.6387 1196.9908;
	3.8289 51.7362 95.1296 120.7369 15.1958 34.5033 20.999 18.2534 27.197 29.2796 54.1228 80.7406 121.5546 64.6746 190.1146 71.6246 88.8675 94.1731 87.5283 69.7812 6.9997 80.5077 70.0397 89.5551 106.1855 75.8229 13.4601 1262.4869 763.4561 763.4561 583.6343 96.7595 291.761 179.6171 202.7636 325.7413 1245.3714 223.081 398.429 284.4253 117.0434 382.7568 198.9244 284.3632 1258.344;
	3.7608 50.8164 94.9329 119.5282 15.0839 33.8793 22.0326 17.8842 25.9547 29.7098 54.918 81.9269 123.3405 64.3911 198.8342 74.9096 92.9434 98.4923 89.1255 72.1121 7.3442 79.0518 70.2622 88.26 104.2938 72.2458 12.9845 1305.1532 761.2234 761.2234 590.085 98.992 297.0851 185.6169 201.8747 324.7887 1256.3357 252.4271 431.1684 279.3583 113.6825 375.8346 159.3814 281.406 1269.4225;
	3.78 51.0759 93.1967 115.5932 14.9695 33.2805 29.9764 17.7427 26.4466 30.0544 55.5552 82.8774 124.7714 64.3068 199.5006 75.1607 93.2549 98.8224 90.9035 72.1642 9.9921 77.6546 73.6895 86.8559 103.8874 73.5525 12.9342 1276.797 750.1491 750.1491 589.8626 102.9252 303.0117 185.751 201.6104 320.0636 1213.8911 249.3195 451.1826 278.2697 111.9929 369.1922 183.9254 267.7549 1226.5358;
	3.8514 52.0406 90.3405 116.1858 15.1019 34.212 29.1575 18.0438 26.3471 30.7893 56.9136 84.9039 127.8224 64.0946 204.938 77.2092 95.7966 101.5158 91.3296 72.4802 9.7192 79.828 73.9963 86.401 102.321 70.9964 13.1536 1286.6688 770.8267 770.8267 634.1796 107.5785 304.4321 186.5642 200.9452 328.8861 1193.5177 239.5363 443.3658 274.0741 112.0972 379.5249 175.9428 271.381 1205.9501;
	3.8257 51.6941 90.8813 114.7741 15.1215 33.3787 31.389 17.7285 26.8597 30.9445 57.2004 85.3318 128.4665 64.2664 202.403 76.2541 94.6116 100.2601 91.8538 72.7991 10.463 77.8837 74.2546 84.7086 102.2054 69.7565 12.9786 1233.6088 750.3428 750.3428 664.771 104.1938 306.1794 187.385 201.484 320.1463 1187.515 283.9949 458.3709 273.7645 112.7092 370.2811 159.9433 266.4172 1199.8849;
	3.8877 52.5317 87.5298 111.2831 14.982 32.7769 30.3106 17.4276 26.7028 30.6176 56.5961 84.4302 127.1093 66.5301 201.6395 75.9665 94.2547 99.8819 91.2629 69.5559 10.1035 76.4794 73.3265 85.3656 102.6719 70.1937 12.9118 1265.5221 781.3352 781.3352 701.1832 109.5701 304.2095 179.0371 208.5807 333.3697 1238.4808 297.5517 446.5377 275.0141 112.0163 363.6051 167.6447 267.7505 1251.3817;
	3.8613 52.1749 88.5617 112.8726 15.0187 32.3145 30.9651 17.4566 25.488 31.0218 57.3434 85.545 128.7875 63.03 196.0943 73.8774 91.6627 97.1351 90.3942 69.4437 10.3217 75.4005 72.4984 85.4454 103.6253 71.1661 12.939 1284.2986 769.56 769.56 705.4137 114.9112 301.3139 178.7481 197.6075 328.3456 1245.1441 311.3731 452.477 277.5679 114.5498 358.4755 197.7907 266.9679 1258.1144;
	3.9094 52.8248 91.5731 116.0034 15.2443 32.6769 25.4325 17.8353 26.0406 31.0253 57.3498 85.5546 128.8019 64.9235 194.9925 73.4623 91.1476 96.5893 88.2503 70.1431 8.4775 76.246 74.256 87.8807 103.6914 72.7677 13.1368 1295.7959 795.1049 795.1049 746.5158 116.4141 294.1678 180.5486 203.544 339.2448 1266.6057 320.6121 443.921 277.7447 112.8689 362.4953 199.9959 273.7282 1279.7996;
	3.8577 52.1256 92.3734 117.2471 15.0611 32.8647 27.5248 18.1715 26.3565 31.2913 57.8415 86.2882 129.9064 55.8862 196.751 74.1248 91.9697 97.4604 90.7868 71.4904 9.1749 76.6843 74.7094 88.1315 102.218 74.4339 13.3413 1320.0742 807.1113 807.1113 731.5418 113.3969 302.6227 184.0165 175.2108 344.3675 1280.7242 326.2785 451.5513 273.7983 113.7664 364.5792 203.5301 274.9151 1294.0651;
	3.7938 51.2625 91.844 117.3165 14.9905 32.5555 26.0148 17.5833 26.3303 31.1524 57.5848 85.9052 129.3298 63.7626 198.1287 74.6438 92.6137 98.1428 90.5025 69.5273 8.6716 75.9628 74.8501 87.6622 100.8549 68.0246 13.264 1254.5045 806.3413 806.3413 727.0502 114.334 301.6749 178.9633 199.9043 344.039 1245.0991 337.5565 450.8171 270.1471 117.7273 361.1488 200.5939 273.0671 1258.0689;
	3.8022 51.3763 90.3755 113.0429 15.1003 32.0545 26.8538 17.6951 26.0735 31.0196 57.3393 85.539 128.7785 64.2105 199.3901 75.119 93.2033 98.7676 88.7847 71.952 8.9513 74.7939 72.4991 83.3799 98.0871 70.2871 12.9621 1275.7233 797.877 797.877 712.1305 110.7747 295.9492 185.2046 201.3086 340.4275 1261.9435 336.664 450.7234 262.7334 115.9585 355.5917 202.5122 272.919 1275.0887;
	3.857 52.117 91.7382 113.3563 15.1843 32.6671 26.4313 17.6843 25.9412 30.9555 57.2207 85.362 128.5121 63.9569 197.9499 74.5765 92.5301 98.0543 88.6265 72.5323 8.8104 76.2232 73.732 85.3401 97.8597 69.5845 13.3163 1253.8651 796.055 796.055 727.63 110.2395 295.4217 186.6982 200.5137 339.6501 1242.5947 339.4119 452.4255 262.1242 116.6596 362.3869 200.2258 274.9293 1255.5384;
	3.8277 51.7209 91.8893 111.054 15.2326 32.5036 22.6747 17.6117 26.2221 30.5116 56.4002 84.1381 126.6694 64.4926 198.0979 74.6322 92.5993 98.1276 91.6692 72.9113 7.5582 75.8416 74.744 86.6334 99.4305 68.4229 13.3451 1294.6689 817.4441 817.4441 756.0071 110.5454 305.5641 187.6739 202.193 348.7761 1258.8434 337.7254 448.9524 266.3318 118.8395 360.5728 193.2239 272.516 1271.9564;
	3.8707 52.3015 87.509 110.0948 15.2651 32.3274 24.603 17.4915 26.0973 29.7441 54.9814 82.0215 123.4829 63.1928 190.3954 71.7303 88.9988 94.3121 88.6623 70.5362 8.201 75.4306 71.3343 86.7405 99.7987 64.825 12.7972 1295.6695 833.0425 833.0425 734.6278 107.3089 295.541 181.5604 198.1178 355.4315 1239.3123 327.0523 457.5624 267.3179 121.5895 358.6185 199.993 264.9083 1252.2218;
	3.8063 51.431 86.6635 107.7015 15.0555 28.8454 21.6841 17.1619 25.5542 29.197 53.9702 80.5129 121.2118 61.2582 198.3758 74.7369 92.7291 98.2652 88.8663 70.7308 7.228 67.3059 70.8942 84.4055 97.5796 47.8365 12.1964 1301.0118 787.5849 787.5849 636.581 107.1282 296.2211 182.0613 192.0528 336.0362 1204.5002 320.5532 437.322 261.3739 117.9996 319.9916 181.4576 252.2641 1217.047;
	3.818 51.59 88.0011 109.4625 15.2117 27.7952 18.9788 12.346 26.6253 28.2959 52.3045 78.028 117.4708 62.7513 190.5601 71.7924 89.0757 94.3937 87.5956 68.1248 6.3263 64.8554 72.9212 85.2007 97.3509 62.6812 9.9303 1284.1995 753.6649 753.6649 608.9656 104.4105 291.9855 175.3534 196.7338 321.5637 1230.8973 293.0489 444.0399 260.7613 118.3233 308.3409 172.6312 244.1026 1243.7191;
	3.5947 48.5722 78.9075 99.3682 14.7815 22.1221 15.4758 0.9624 27.0421 26.1177 48.2782 72.0215 108.428 60.0739 179.5981 67.6625 83.9517 88.9637 87.5729 67.2044 5.1586 51.6182 69.8002 83.2624 83.7509 48.4702 7.2627 1264.9119 712.6406 712.6406 580.9593 97.356 291.9096 172.9842 188.3398 304.06 1161.6144 279.9221 438.2729 224.3327 107.2852 245.4075 124.352 221.1044 1173.7146;
	2.8309 38.2523 71.3306 61.5188 14.4634 20.2091 27.2905 5.5941 27.2578 27.6737 51.1545 76.3124 114.8879 63.4058 177.2864 66.7916 82.8711 87.8186 86.8804 66.5459 9.0968 47.1545 71.776 81.715 72.6364 30.0788 7.0295 1250.9558 759.2836 759.2836 686.8283 98.6717 289.6013 171.2892 198.7857 323.961 1164.1535 305.9104 448.2574 194.5619 105.4524 224.186 105.0188 194.0721 1176.2801;
	2.57 34.7268 78.7356 73.5923 14.8467 12.5007 26.9453 5.2305 28.1825 28.4746 52.6349 78.5209 118.2127 63.2022 174.2114 65.6331 81.4337 86.2954 86.3643 66.678 8.9818 29.1684 72.729 83.7494 74.7655 30.4087 7.3767 1225.5508 767.2957 767.2957 655.5521 105.4865 287.881 171.6294 198.1476 327.3795 1146.339 281.2865 460.7239 200.2646 102.2183 138.6748 82.9896 189.8421 1158.2801;
	2.1904 29.5965 81.1716 87.1116 14.3723 15.7315 26.8959 10.0012 28.2801 28.0636 51.8752 77.3875 116.5065 64.3551 179.2931 67.5476 83.8091 88.8126 85.6693 67.955 8.9653 36.7068 73.2894 86.487 94.3338 58.699 9.6703 1207.9864 747.1406 747.1406 671.6067 99.6203 285.5644 174.9162 201.7619 318.78 1117.9632 274.7882 467.5216 252.6797 115.582 174.5147 70.8091 195.1319 1129.6087;
	2.7468 37.1151 79.1227 84.2028 12.905 17.4544 25.1366 11.0365 27.7418 25.2393 46.6545 69.5994 104.7815 64.7098 166.6261 62.7754 77.888 82.538 87.5543 65.7142 8.3789 40.7268 70.134 83.0647 84.791 55.9398 9.3521 1119.7618 770.1102 770.1102 710.6621 101.1933 291.8477 169.1484 202.8739 328.5804 1081.4485 282.6131 461.2182 227.1188 118.5607 193.6271 81.5899 215.5228 1092.7136;
	2.9502 39.8632 84.6972 74.5011 13.3477 20.4671 21.1136 9.4035 27.336 22.9528 42.4279 63.294 95.2888 63.9836 154.8204 58.3277 72.3695 76.6901 85.4671 62.5895 7.0379 47.7565 68.5557 86.7284 79.9533 53.8657 7.2081 1028.1942 686.1147 686.1147 639.7474 100.105 284.8904 161.1055 200.5973 292.7423 927.921 265.1742 455.2197 214.1608 118.0636 227.0479 91.5308 239.8028 937.5869;
];