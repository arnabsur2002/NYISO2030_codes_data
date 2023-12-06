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
	3.6984 49.9739 90.2824 116.0213 14.7765 33.3701 28.7096 17.7238 27.476 28.3076 52.3261 78.0602 117.5193 65.6528 188.3632 70.9647 88.0489 93.3055 83.8793 68.5256 9.5699 77.8636 74.7902 84.7269 99.7546 70.3607 13.0595 1264.6656 753.5263 753.5263 573.3238 117.5089 279.5976 176.3851 205.8303 321.5045 1247.5382 230.7745 443.6523 267.1997 113.4641 370.1856 201.5274 274.9377 1260.5334;
	3.6099 48.778 88.4963 111.2944 14.4606 32.6585 26.2713 17.6886 27.0888 28.6668 52.9902 79.051 119.0108 66.0327 182.8335 68.8815 85.464 90.5664 82.4987 69.0561 8.7571 76.2033 73.7174 85.7091 97.4596 69.2419 13.0274 1253.1938 747.9502 747.9502 600.2288 111.3993 274.9955 177.7505 207.0214 319.1254 1199.0995 224.5371 439.0298 261.0525 105.2396 362.292 184.1274 267.6432 1211.5901;
	3.7306 50.4081 88.0389 115.2188 14.5163 33.2187 23.2131 17.6483 27.9281 29.6173 54.7472 81.672 122.9567 63.4234 188.8984 71.1664 88.299 93.5706 86.2214 69.5706 7.7377 77.5104 72.8113 86.8484 97.1621 72.1051 13.183 1267.8069 741.513 741.513 642.4712 103.7316 287.4046 179.0749 198.841 316.3789 1269.8986 227.7815 420.1695 260.2555 113.4888 368.5065 193.5932 258.8066 1283.1267;
	3.7475 50.6367 90.9442 116.7364 15.0501 33.197 24.6859 17.8852 27.7605 29.9827 55.4226 82.6796 124.4737 64.7562 190.0563 71.6026 88.8403 94.1442 85.3569 68.9348 8.2286 77.4597 72.6136 87.3248 97.8192 70.3554 12.9847 1301.7548 766.4925 766.4925 641.2469 110.1403 284.523 177.4384 203.0194 327.0368 1257.5408 241.0659 445.9786 262.0157 115.4025 368.2655 164.4022 270.9502 1270.6401;
	3.8249 51.6827 91.2521 115.609 15.1333 32.7399 31.5492 17.7047 28.1575 29.9859 55.4285 82.6884 124.4869 67.0746 194.8259 73.3995 91.0698 96.5068 84.0377 71.6371 10.5164 76.3932 73.3516 85.5539 98.9904 71.4795 12.7971 1254.3714 764.5028 764.5028 700.2187 110.5926 280.1257 184.3941 210.288 326.1879 1248.9235 247.679 470.3355 265.1528 119.2965 363.195 198.0472 265.9302 1261.9331;
	3.7567 50.7614 94.7654 117.6746 15.2708 33.4119 29.5006 18.5395 27.6152 29.2056 53.9861 80.5367 121.2475 64.2762 200.4074 75.5023 93.6788 99.2716 85.1167 70.7992 9.8335 77.9612 73.7744 89.383 100.9292 72.5107 13.2861 1245.5467 739.5417 739.5417 664.4945 113.7701 283.7222 182.2372 201.5147 315.5378 1193.8725 224.2025 450.3429 270.346 121.565 370.6496 184.3329 279.3161 1206.3086;
	3.815 51.5484 92.6416 117.1253 15.1234 34.2933 29.6369 18.8782 26.0947 27.5328 50.894 75.9238 114.3029 63.4067 194.4051 73.241 90.8731 96.2984 84.0036 72.3015 9.879 80.0178 72.4233 88.7281 102.9635 73.8295 13.6883 1241.3908 706.066 706.066 653.5654 112.7544 280.0119 186.1043 198.7884 301.2548 1227.5348 255.7817 438.5831 275.7951 118.3923 380.4273 173.3692 266.6559 1240.3216;
	3.9084 52.8104 94.2813 116.279 15.1428 34.7024 28.7918 18.7918 26.1309 26.9959 49.9016 74.4433 112.074 58.6618 196.3512 73.9742 91.7828 97.2623 87.3297 69.7724 9.5973 80.9723 67.3605 89.1538 103.4257 72.8352 13.8244 1263.5314 728.8541 728.8541 713.7747 113.2469 291.099 179.5945 183.9127 310.9778 1246.2649 272.8245 447.4395 277.0332 120.3455 384.9657 189.0639 273.4605 1259.2468;
	3.8603 52.1606 89.6347 109.8998 14.9633 33.5242 30.1775 17.9157 25.9979 28.0463 51.8432 77.3398 116.4346 61.3032 192.0299 72.3462 89.7628 95.1218 88.447 69.4155 10.0592 78.2231 62.2259 85.9881 97.796 68.7781 13.0233 1287.6308 760.4168 760.4168 738.838 115.745 294.8232 178.6757 192.1937 324.4445 1253.0881 267.7165 450.0997 261.9537 119.4844 371.8948 210.5771 265.792 1266.1411;
	3.8144 51.5407 91.5245 111.9346 14.836 33.4759 23.8924 17.3709 26.9049 28.449 52.5876 78.4503 118.1065 64.9465 189.9966 71.5801 88.8124 94.1146 85.366 69.1635 7.9641 78.1103 64.6648 86.6563 98.3161 69.1788 12.9811 1254.3781 760.0765 760.0765 665.3675 116.4347 284.5535 178.027 203.616 324.2993 1210.6169 262.125 445.1082 263.3468 120.8786 371.3588 211.646 270.2838 1223.2275;
	3.7872 51.1734 89.7583 112.5024 14.7174 33.3185 25.7989 17.9008 27.2669 29.96 55.3806 82.617 124.3795 63.9095 190.5097 71.7734 89.0522 94.3688 88.4957 72.2456 8.5996 77.7433 70.897 85.1607 98.594 67.1539 13.1185 1257.6291 765.0197 765.0197 687.5564 112.4895 294.9856 185.9603 200.3649 326.4084 1251.5646 267.767 450.7248 264.0912 119.4999 369.6137 215.0665 265.2305 1264.6017;
	3.7504 50.676 91.2501 114.9992 15.2041 33.7137 26.2808 17.4954 28.1364 29.6881 54.878 81.8672 123.2506 65.2056 189.4092 71.3588 88.5378 93.8236 87.225 69.5332 8.7603 78.6654 72.155 88.469 99.7007 65.1607 12.826 1257.2361 775.0647 775.0647 693.895 114.1996 290.7499 178.9786 204.4284 330.6943 1269.1611 272.4952 469.3416 267.0555 120.7954 373.9976 213.899 266.2521 1282.3815;
	3.7947 51.2741 88.7674 111.1209 15.0272 34.1469 26.8883 18.0781 28.1995 30.9228 57.1604 85.2721 128.3767 66.5811 170.8078 64.3508 79.8427 84.6094 88.0748 67.7937 8.9628 79.676 73.0534 85.281 100.1201 69.7823 13.1614 1304.5052 782.9254 782.9254 689.2228 109.5699 293.5827 174.5012 208.7408 334.0482 1291.1262 285.5043 456.1753 268.1788 119.019 378.8026 217.2653 264.7437 1304.5754;
	3.8217 51.64 90.4665 114.3136 15.0905 34.1392 26.8231 17.9783 28.3616 31.097 57.4823 85.7523 129.0996 67.8125 183.8348 69.2587 85.9321 91.0623 85.8261 70.7747 8.941 79.6582 74.2486 85.7907 98.1097 69.687 13.0459 1330.8505 793.212 793.212 684.607 114.6088 286.087 182.1743 212.6013 338.4371 1302.788 270.2635 472.9119 262.7939 116.7869 378.7177 210.7868 272.9679 1316.3587;
	3.8561 52.1046 92.4172 113.4544 15.276 34.7402 24.6559 18.5449 28.4833 30.9103 57.1371 85.2374 128.3244 68.2546 183.2055 69.0216 85.6379 90.7506 86.4104 69.1342 8.2186 81.0605 75.6811 89.3973 102.3407 71.8936 13.1599 1320.0465 780.8438 780.8438 700.6337 112.838 288.0347 177.9517 213.9875 333.16 1294.2428 271.2393 478.4244 274.1268 122.1792 385.3847 212.2013 282.7673 1307.7245;
	3.7166 50.2197 88.8596 112.9454 15.144 33.8302 26.3614 18.0356 28.4808 30.6847 56.7201 84.6153 127.3879 66.1631 175.8947 66.2673 82.2205 87.1292 86.667 69.2691 8.7871 78.9371 75.3711 87.5205 98.9357 68.739 13.1237 1274.8855 771.7738 771.7738 698.5124 108.9009 288.8901 178.2987 207.4304 329.2902 1225.3355 241.423 479.71 265.0064 122.6422 375.2897 209.1292 281.9717 1238.0995;
	3.5788 48.3571 90.8895 111.6411 14.7366 32.1966 24.2036 17.2601 28.4622 30.3712 56.1407 83.7509 126.0865 67.0237 186.5346 70.2758 87.1941 92.3997 89.0672 67.2717 8.0679 75.1255 73.895 85.4513 99.4861 50.604 11.9714 1305.4752 744.7552 744.7552 676.0958 106.2813 296.8906 173.1575 210.1285 317.7622 1254.9451 294.0485 477.5026 266.4806 121.3277 357.1679 195.7046 263.8268 1268.0174;
	3.6265 49.002 91.4725 111.3751 14.8743 30.4291 20.1802 13.3834 28.3253 29.8981 55.2662 82.4464 124.1225 66.1821 189.1407 71.2576 88.4123 93.6906 90.5339 65.3864 6.7267 71.0013 74.745 88.076 102.7557 67.5234 10.1224 1303.1053 729.7272 729.7272 662.8402 111.4131 301.7797 168.3049 207.4898 311.3503 1262.4798 279.7121 475.1443 275.2385 123.5786 337.5604 178.3605 253.2507 1275.6306;
	3.7664 50.8929 85.4325 104.5204 14.6024 27.5134 15.4159 8.6607 27.6236 29.894 55.2586 82.435 124.1055 66.1898 183.5488 69.1509 85.7984 90.9207 92.2477 66.9701 5.1386 64.1979 74.1601 88.4833 100.4424 62.1904 8.9495 1297.2155 710.7444 710.7444 654.6519 107.4868 307.4923 172.3813 207.5139 303.2509 1222.6999 278.8674 460.7749 269.0421 123.17 305.2152 138.2137 238.2321 1235.4364;
	2.9854 40.3392 82.3213 71.3057 14.4441 23.8773 25.2289 9.4702 27.3024 29.8419 55.1623 82.2914 123.8892 65.0959 178.548 67.2669 83.4608 88.4436 90.1871 67.8877 8.4096 55.7137 74.8476 88.0349 94.9424 39.7985 7.6088 1286.9066 693.6837 693.6837 669.2797 97.297 300.6236 174.7431 204.0845 295.9717 1151.8125 252.1332 446.8635 254.31 115.3467 264.8788 115.5876 200.788 1163.8105;
	2.4813 33.5275 77.5269 74.3256 14.2059 12.5409 24.0721 9.3703 26.5315 29.1161 53.8207 80.2899 120.876 64.3309 179.6583 67.6852 83.9798 88.9935 89.6552 67.4361 8.024 29.2622 73.0089 87.8777 85.2073 46.291 8.6007 1203.3982 626.9458 626.9458 586.397 99.3476 298.8506 173.5807 201.686 267.4969 1075.9869 232.2242 445.4426 228.2337 108.9955 139.1208 72.3497 176.3856 1087.1951;
	2.2803 30.8123 80.953 87.8999 14.073 16.8604 26.3054 13.0127 26.7878 28.843 53.3159 79.5368 119.7423 64.8797 189.2829 71.3112 88.4788 93.7611 91.3954 68.9679 8.7685 39.3408 74.8766 88.6557 99.5587 66.5548 10.7905 1148.9607 625.0504 625.0504 628.178 96.5257 304.6513 177.5236 203.4067 266.6882 997.4165 220.0586 464.4558 266.675 116.2071 187.0376 60.7576 188.0606 1007.8063;
	2.6908 36.3585 73.5149 86.208 12.9957 18.157 24.7563 14.0678 27.1709 28.3292 52.3661 78.12 117.6092 66.3628 182.6363 68.8072 85.3718 90.4687 86.9506 65.5222 8.2521 42.3664 72.3691 84.6142 93.0898 61.927 9.98 957.3297 648.7204 648.7204 635.4742 93.9363 289.8355 168.6544 208.0564 276.7874 920.0684 232.0871 471.4246 249.3477 115.577 201.4221 68.2779 203.1726 929.6524;
	3.0151 40.7404 81.4692 78.9365 13.7876 22.171 20.5109 10.9191 27.3433 28.7077 53.0657 79.1636 119.1804 67.35 181.3944 68.3393 84.7914 89.8535 88.0802 67.1935 6.837 51.7324 74.7227 85.6199 88.4228 66.15 7.3302 849.508 579.677 579.677 587.2571 90.1808 293.6008 172.9563 211.1514 247.3289 749.0289 225.804 450.1424 236.8467 117.9879 245.9506 87.9757 222.059 756.8313;
];