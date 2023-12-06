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
	3.8842 52.4846 95.1869 116.2542 15.3363 34.8319 29.5935 19.0247 27.5497 29.9609 55.3822 82.6194 124.383 69.715 196.5852 74.0623 91.8922 97.3783 35.101 72.2746 9.8645 81.2745 72.9502 90.1189 106.6693 75.7757 14.0288 1247.7755 724.4695 724.4695 651.3795 107.6839 117.0035 186.0351 218.5658 309.107 1186.2115 228.2601 468.7161 285.7213 123.4556 386.4022 145.861 283.359 1198.5679;
	3.8068 51.4383 95.2307 120.4265 15.4148 33.7701 30.1529 18.4198 27.1635 29.3188 54.1954 80.8489 121.7176 69.3571 198.2491 74.6892 92.6699 98.2025 27.7586 73.5047 10.051 78.7969 69.4708 90.1128 106.4846 74.0637 13.75 1252.2708 736.2935 736.2935 611.0302 101.6997 92.5287 189.2014 217.4438 314.1519 1184.374 230.498 462.5093 285.2265 123.7203 374.623 139.1022 280.5713 1196.7112;
	3.7831 51.1186 94.2958 66.7664 15.1709 34.1615 29.6431 18.0426 26.8743 29.4834 54.4996 81.3026 122.4006 69.1005 194.3736 73.2291 90.8584 96.2827 24.0219 72.1377 9.881 79.7102 69.8456 89.0068 105.0837 72.1893 13.9 1217.6689 690.6761 690.6761 569.6409 104.1897 80.0729 185.6825 216.6394 294.6885 1155.23 217.1126 447.5604 281.4743 122.7922 378.9651 139.7707 277.1196 1167.2636;
	3.7681 50.915 94.022 85.8146 15.2979 33.9907 29.1376 18.4636 26.8778 29.1437 53.8718 80.3661 120.9907 69.6028 197.6529 74.4646 92.3912 97.9071 39.6104 71.9917 9.7125 79.3116 59.9774 88.4627 104.1097 73.8439 13.7782 1254.2468 716.7765 716.7765 541.9669 94.6593 132.0346 185.3068 218.2141 305.8246 1123.934 235.6533 460.2874 278.8653 119.2482 377.0699 171.2194 276.6535 1135.6417;
	3.5947 48.572 94.8996 119.323 15.3148 34.8471 24.4657 18.4449 26.6522 29.0864 53.7657 80.2079 120.7526 69.4745 191.2624 72.057 89.404 94.7416 68.7205 70.1248 8.1552 81.3099 41.7986 89.1461 105.0673 73.5538 13.5922 1197.3579 686.9603 686.9603 550.0951 94.5214 229.0684 180.5013 217.812 293.1031 1198.9368 241.8226 462.6519 281.4304 121.7624 386.5707 188.9558 274.0563 1211.4257;
	3.8257 51.6937 91.9942 116.4536 15.3167 35.0228 29.3886 18.296 27.7603 30.4318 56.2527 83.918 126.3381 69.7862 198.8988 74.934 92.9736 98.5243 87.5463 71.2768 9.7962 81.72 67.7418 88.9472 104.7593 71.478 13.7256 1250.5541 775.8996 775.8996 557.4274 102.7378 291.8211 183.4668 218.7892 331.0505 1183.8513 240.6766 474.4605 280.6052 122.7572 388.5201 198.6774 268.423 1196.1831;
	3.8707 52.3023 94.8278 118.5812 15.309 34.1689 29.0215 18.8293 27.105 29.9078 55.2841 82.473 124.1627 69.8047 202.1874 76.1729 94.5109 100.1533 90.3713 71.5882 9.6738 79.7275 71.4701 88.5436 104.5527 74.9473 13.8463 1247.1533 783.3589 783.3589 611.0589 100.1351 301.2376 184.2682 218.8472 334.2331 1185.5713 260.1079 476.8319 280.052 123.5874 379.0473 200.9698 273.3209 1197.921;
	3.8141 51.5371 93.7724 118.7506 15.3558 34.5695 27.2499 18.7567 26.8802 30.4602 56.3051 83.9962 126.4558 69.4713 204.6348 77.095 95.6549 101.3656 87.0659 72.9011 9.0833 80.6622 73.8343 89.1269 105.4553 75.5848 13.7843 1170.0413 749.5874 749.5874 564.9221 84.5886 290.2196 187.6475 217.8018 319.824 1138.6766 241.971 472.0943 282.4695 121.2106 383.4912 201.834 270.0929 1150.5378;
	3.8605 52.1636 94.2096 120.1449 15.2587 34.8413 28.309 18.9772 27.0159 31.2801 57.8208 86.2572 129.8598 69.6499 203.1516 76.5362 94.9615 100.6309 92.4541 73.1082 9.4363 81.2963 75.5154 90.1065 106.2104 75.6679 14.1084 1215.9701 807.5681 807.5681 639.5222 78.3676 308.1802 188.1807 218.362 344.5624 1204.8976 282.9715 472.955 284.4921 123.3949 386.5061 180.0291 279.6515 1217.4486;
	3.8754 52.3655 95.1438 120.8916 15.1846 35.1296 29.1502 19.04 27.5973 31.4083 58.0578 86.6109 130.3922 68.875 202.9721 76.4686 94.8777 100.542 91.801 72.3236 9.7167 81.969 75.6393 90.1633 106.2322 75.8252 13.9729 1085.7705 781.4555 781.4555 694.576 91.8133 306.0033 186.1611 215.9324 333.421 1144.2242 293.9665 467.5953 284.5506 122.9849 389.7041 163.0456 278.2199 1156.1432;
	3.8927 52.5984 95.0051 121.0175 15.3572 35.1538 28.8479 19.1 28.3334 31.5127 58.2508 86.8987 130.8255 67.9987 205.0117 77.237 95.831 101.5523 92.1694 72.8653 9.616 82.0254 74.4423 90.1764 105.9846 75.2566 13.724 1105.8179 792.3131 792.3131 660.0875 92.097 307.2313 187.5554 213.1851 338.0536 1130.4608 306.386 476.2975 283.8873 121.0361 389.9724 176.4358 274.9521 1142.2365;
	3.8675 52.259 94.2683 120.5616 15.268 34.9403 27.002 18.7572 27.3926 30.8039 56.9406 84.9442 127.883 69.1557 202.2746 76.2058 94.5516 100.1965 89.6591 70.5703 9.0007 81.5275 71.9303 89.2249 105.2963 75.6068 13.4023 1052.239 755.5033 755.5033 667.9037 98.9356 298.8635 181.6481 216.8126 322.3481 1103.9133 304.4851 469.5489 282.0437 121.6129 387.6048 190.246 271.9812 1115.4124;
	3.8448 51.9517 94.6438 120.3001 14.8631 34.8423 29.1464 18.7043 27.0264 31.3808 58.0069 86.5349 130.2779 69.6248 205.7554 77.5172 96.1787 101.9207 92.0967 72.3883 9.7155 81.2987 73.9196 89.9488 106.0153 74.3978 13.3361 1045.0153 763.7422 763.7422 695.6125 104.5447 306.989 186.3275 218.2832 325.8633 1012.917 310.8764 461.7883 283.9696 119.4326 386.5172 162.8424 266.0856 1023.4682;
	3.8885 52.5424 94.7879 120.429 15.1523 34.8616 29.5512 18.6686 27.6175 30.9039 57.1255 85.22 128.2982 68.4843 205.4541 77.4036 96.0378 101.7714 91.7781 70.5326 9.8504 81.3437 73.1488 89.1911 104.1898 73.2436 13.632 1091.8322 730.1881 730.1881 712.4902 101.2175 305.9272 181.5512 214.7074 311.5469 1021.8292 317.9821 468.5622 279.0797 119.1075 386.7311 159.442 265.2946 1032.4732;
	3.9049 52.7642 94.7587 119.2514 15.3408 34.1345 27.8656 19.0187 28.2463 31.3172 57.8894 86.3596 130.0138 69.4328 203.1865 76.5493 94.9779 100.6482 86.4905 70.8487 9.2885 79.6473 74.9089 89.859 105.1061 75.1067 13.6157 1034.0347 715.3717 715.3717 662.6892 102.2317 288.3018 182.3647 217.6813 305.2253 962.5625 323.6916 478.2548 281.5341 120.1646 378.6659 179.606 261.0889 972.5892;
	3.9082 52.8088 94.6133 117.2511 15.3723 34.1357 28.001 18.1769 27.6157 30.6483 56.653 84.5151 127.237 68.9755 199.9395 75.326 93.4601 99.0398 84.4353 70.6985 9.3337 79.65 73.6854 89.1535 102.4971 74.6527 13.5522 1151.3952 750.7626 750.7626 674.7528 112.5373 281.4509 181.978 216.2475 320.3254 1075.0842 314.119 468.15 274.5457 118.3933 378.6789 187.8516 264.4999 1086.283;
	3.6962 49.9435 92.8173 114.6244 15.3542 34.26 25.9485 16.9134 26.9618 30.9263 57.1667 85.2815 128.3908 67.8907 195.3606 73.601 91.3197 96.7716 86.3566 70.816 8.6495 79.94 73.3236 87.7267 97.653 72.3592 12.716 1143.8304 736.5446 736.5446 634.8357 111.1604 287.8555 182.2805 212.8464 314.259 1160.925 303.5751 452.6866 261.5707 120.4024 380.0576 197.6761 229.6698 1173.018;
	3.7752 51.0113 90.0831 111.5969 15.1776 33.0014 25.4399 13.9435 26.9342 30.8462 57.0187 85.0607 128.0584 67.326 187.7804 70.7452 87.7764 93.0168 84.8066 68.4875 8.48 77.0032 70.5647 85.9278 98.2944 70.4188 11.6689 1310.8764 732.5343 732.5343 673.722 108.0556 282.6887 176.2871 211.0761 312.548 1207.0717 322.4247 463.0888 263.2884 121.4378 366.095 188.0268 251.3183 1219.6454;
	3.6729 49.6285 91.5806 112.7466 15.1182 32.5245 26.1229 15.4259 26.7872 30.2672 55.9484 83.464 125.6546 68.3882 191.6557 72.2052 89.5879 94.9365 84.1349 70.9089 8.7076 75.8906 72.3953 88.7333 99.3695 50.7807 12.2494 1352.085 756.458 756.458 640.7733 107.2161 280.4498 182.5197 214.4061 322.7554 1283.3662 296.2984 457.2388 266.1683 123.1222 360.8054 155.0902 227.0097 1296.7346;
	3.6341 49.1051 90.2244 108.1314 14.8211 28.4749 25.2781 14.5297 26.4026 30.0827 55.6075 82.9554 124.8889 63.5227 187.9413 70.8058 87.8516 93.0965 83.7271 69.4805 8.426 66.4414 71.3837 87.9425 99.4097 53.7075 10.7595 1302.3274 734.4422 734.4422 593.677 113.0219 279.0905 178.843 199.1523 313.362 1303.5865 271.1033 441.0298 266.2761 119.9653 315.8816 167.0497 251.3602 1317.1656;
	3.7228 50.3033 91.1539 111.2138 15.0795 30.7998 29.9895 15.0386 27.7395 29.7748 55.0382 82.1061 123.6103 66.901 189.733 71.4808 88.6891 93.984 86.7055 70.1538 9.9965 71.8663 72.4689 89.2385 102.2562 62.4955 10.3952 1310.0531 786.1468 786.1468 685.2657 115.1987 289.0185 180.576 209.7438 335.4226 1318.7874 296.2268 457.7216 273.9004 118.88 341.6728 150.2677 249.9697 1332.5248;
	3.6044 48.7034 88.1905 100.2063 14.9649 29.9742 27.6233 12.7384 27.554 28.8184 53.2704 79.4689 119.64 65.5954 197.0668 74.2438 92.1173 97.6168 88.8438 72.2447 9.2078 69.9399 70.1113 84.4483 98.1037 66.5997 10.1159 1255.5861 807.5285 807.5285 776.9944 111.6274 296.1461 185.958 205.6503 344.5455 1212.4444 306.7975 456.9519 262.7778 113.1872 332.5143 145.115 243.6858 1225.074;
	3.5782 48.3494 88.1108 92.5381 14.789 28.4707 29.6965 11.6088 27.5408 29.079 53.7522 80.1876 120.722 68.1849 195.4931 73.6509 91.3817 96.8373 88.1526 72.0959 9.8988 66.4317 71.3837 81.583 91.0462 58.9614 9.233 1245.0871 784.1151 784.1151 781.9694 117.1641 293.842 185.5751 213.7689 334.5558 1225.5801 296.8285 454.5459 243.8738 113.8499 315.8353 167.2229 222.9317 1238.3466;
	3.7606 50.8138 87.1781 99.9352 15.1103 31.1239 28.1766 11.1455 28.0243 29.1321 53.8502 80.3339 120.9423 66.977 197.0359 74.2321 92.1028 97.6015 85.9336 72.0412 9.3922 72.6225 71.1863 87.147 96.8322 58.5804 9.1782 1248.7578 751.107 751.107 791.4982 110.5651 286.4454 185.4342 209.982 320.4723 1179.8948 298.0561 452.7267 259.3719 116.728 345.2683 178.5136 221.4513 1192.1854;
];