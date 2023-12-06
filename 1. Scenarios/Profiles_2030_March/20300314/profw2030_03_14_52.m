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
	3.5547 48.0317 89.0262 118.5877 14.0532 15.104 16.9492 16.8529 27.5115 24.1733 44.6839 66.6596 100.3556 5.722 27.6896 10.4319 12.9433 13.716 13.2498 30.011 5.6497 35.2426 56.3218 83.4047 99.0403 65.8659 7.7599 580.8452 405.9193 405.9193 221.6094 36.8345 44.1659 77.2483 17.9392 173.1922 501.1166 52.8368 322.0672 265.2864 18.7571 167.5533 122.3798 224.3464 506.3365;
	3.6146 48.8409 89.0516 116.7763 14.2847 17.7063 15.9571 17.1616 27.1006 24.4447 45.1856 67.408 101.4824 5.6165 20.1343 7.5855 9.4116 9.9735 11.9151 16.9248 5.319 41.3146 61.0955 85.2834 98.1538 70.2291 7.3013 643.6001 380.0613 380.0613 179.8924 32.4437 39.7171 43.5645 17.6085 162.1595 492.0956 49.3095 329.5307 262.9119 16.2503 196.4214 114.5778 225.9601 497.2216;
	3.3618 45.425 90.7371 116.5045 14.2725 15.7669 13.7594 18.2385 27.007 22.6497 41.8676 62.4583 94.0306 6.8343 18.7115 7.0494 8.7465 9.2687 18.6571 23.4594 4.5865 36.7895 55.2798 86.5722 98.4767 72.1558 8.6563 625.8285 361.1862 361.1862 155.768 34.1925 62.1903 60.3845 21.4264 154.1061 428.276 35.3446 258.6934 263.7768 87.3714 174.9078 89.9605 211.9477 432.7372;
	3.1045 41.9481 88.6166 113.1463 14.0528 15.5146 12.7162 18.4081 25.7405 21.691 40.0954 59.8145 90.0504 8.3378 17.4183 6.5622 8.142 8.6281 12.7051 26.1639 4.2387 36.2007 60.8299 86.5926 100.4809 73.4562 10.5177 470.1856 281.6615 281.6615 161.25 29.7965 42.3503 67.346 26.1402 120.1756 320.5682 29.9386 195.8388 269.1452 51.283 172.1083 79.2671 214.4119 323.9075;
	2.5343 34.2439 88.3042 113.486 14.204 17.5469 12.4874 18.3864 16.9831 18.425 34.0583 50.8083 76.4916 14.8132 21.4693 8.0884 10.0357 10.6348 21.4952 28.3739 4.1625 40.9428 53.7097 86.1402 99.4485 72.4183 10.0648 389.7262 235.3224 235.3224 150.4232 28.1172 71.6507 73.0346 46.4414 100.4042 206.6332 34.5279 181.4471 266.3798 15.193 194.6535 85.3532 225.4239 208.7856;
	3.1623 42.729 87.083 111.6081 14.4217 23.8047 12.3062 18.2796 9.7515 15.6488 28.9265 43.1527 64.9661 29.8434 19.3315 7.283 9.0363 9.5758 35.4623 29.3731 4.1021 55.5442 51.674 85.6906 99.17 70.8569 8.6188 307.2972 215.6475 215.6475 139.0372 26.0963 118.2077 75.6065 93.563 92.0096 177.7651 34.3204 197.269 265.634 16.4066 264.0731 91.2573 220.9643 179.6169;
	2.7853 37.6358 89.6888 114.8475 14.1781 24.7443 13.5679 17.8569 12.4857 23.7683 43.9354 65.5429 98.6745 41.1891 28.8141 10.8555 13.4689 14.273 42.7896 37.5018 4.5226 57.7367 61.6338 86.9898 102.8845 71.3746 11.8579 257.3649 235.0011 235.0011 113.4094 14.704 142.6318 96.5296 129.1333 100.2672 200.8343 22.4433 163.5088 275.5835 12.5273 274.4968 94.9726 249.6509 202.9264;
	1.9371 26.175 68.0126 110.7873 14.4798 20.4996 14.1311 18.2389 20.2498 26.7334 49.4163 73.7194 110.9842 43.0372 30.9838 11.673 14.4831 15.3478 53.5172 54.6459 4.7104 47.8323 69.7396 84.9877 99.6421 72.6156 13.2586 117.453 180.8176 180.8176 93.3849 8.7062 178.3908 140.6588 134.9273 77.1488 127.8023 18.8272 181.0568 266.8985 10.6968 227.4084 91.4997 234.3595 129.1336;
	2.7862 37.6481 84.2167 106.1804 14.2951 24.7785 11.4271 18.6079 20.1093 27.6204 51.056 76.1654 114.6666 43.2743 22.2313 8.3755 10.3919 11.0123 65.1823 50.9027 3.809 57.8164 69.7664 86.8718 104.2267 70.7641 12.5695 100.1539 140.1501 140.1501 76.4941 6.083 217.2744 131.0237 135.6708 59.7974 125.8368 15.8555 144.8356 279.1787 19.1102 274.8758 78.985 244.8064 127.1476;
	2.0297 27.4257 82.3753 104.2594 12.2177 14.9293 10.8729 18.3599 25.7652 28.2905 52.2945 78.0132 117.4484 39.018 57.6448 21.7173 26.9456 28.5543 73.3484 47.545 3.6243 34.8351 69.9356 79.1178 102.709 69.035 12.6364 260.4077 237.1893 237.1893 106.1968 7.4996 244.4947 122.3809 122.3266 101.2008 238.0894 21.5034 52.0592 275.1135 27.3404 165.6163 78.1725 210.3153 240.5695;
	1.6468 22.2514 72.6507 91.3936 11.7352 25.0716 13.3834 16.7896 25.3048 25.0292 46.2661 69.0199 103.9091 47.1854 69.76 26.2817 32.6087 34.5555 65.7704 39.3559 4.4611 58.5005 59.4465 77.5006 94.7069 68.7555 11.5825 351.0281 304.6481 304.6481 154.0282 12.9251 219.2347 101.3023 147.9326 129.9832 330.8173 24.703 153.4869 253.6793 3.5019 278.1281 89.4324 177.5751 334.2633;
	1.7316 23.3973 82.5972 80.6602 12.0413 30.3819 17.7159 17.9363 24.7618 26.0836 48.2152 71.9276 108.2866 46.7806 16.5379 6.2305 7.7305 8.192 72.1776 51.3228 5.9053 70.8911 68.1641 81.3312 96.9462 69.9933 12.4871 427.5721 350.9764 350.9764 251.0578 16.5016 240.592 132.1049 146.6634 149.7499 425.3409 37.7355 171.7011 259.6773 11.7915 337.0367 104.7555 176.9461 429.7715;
	2.8706 38.7883 87.5258 80.1163 13.6247 31.6989 18.7586 17.0851 25.7826 27.4627 50.7644 75.7305 114.0118 53.4823 41.4239 15.6062 19.3633 20.5193 83.8212 61.8429 6.2529 73.9641 69.336 82.1969 98.2268 68.4008 11.3409 517.5053 431.312 431.312 301.0923 23.7419 279.404 159.1838 167.6742 184.0264 562.397 53.5576 196.3613 263.1075 27.5253 351.6464 134.1014 210.5424 568.2553;
	3.6893 49.8512 90.7519 108.0497 14.7365 32.3061 21.2033 17.79 26.1059 28.6344 52.9302 78.9615 118.8761 54.3173 59.4089 22.382 27.7702 29.4281 86.3675 59.2872 7.0678 75.3809 67.4072 84.4139 100.3058 71.3992 11.7441 744.2076 590.2622 590.2622 391.7958 29.9435 287.8918 152.6055 170.292 251.8452 729.4533 80.0071 270.3475 268.6764 65.3242 358.3824 142.3927 258.0624 737.0518;
	3.8916 52.5845 90.6178 110.9027 14.7577 34.482 26.1429 17.8658 27.3758 25.6781 47.4656 70.8093 106.603 64.2433 92.3684 34.7992 43.1768 45.7546 87.3732 60.6726 8.7143 80.458 47.2635 83.687 97.225 71.1058 12.833 968.3956 700.1812 700.1812 548.8629 39.4708 291.244 156.1714 201.4114 298.744 957.3049 122.1134 428.9598 260.424 96.9012 382.5204 161.0791 257.9007 967.2768;
	3.9206 52.9757 90.5552 112.6379 15.2315 34.8422 29.907 17.5902 28.2406 21.4709 39.6885 59.2075 89.1366 65.2606 134.1926 50.5563 62.7272 66.4721 91.8421 70.1297 9.969 81.2986 44.3236 81.8753 97.1197 70.0016 12.4787 1064.9151 747.7978 747.7978 696.7237 50.5712 306.1404 180.5141 204.601 319.0604 1024.3441 173.63 403.3417 260.1421 48.3087 386.5166 174.8884 266.3791 1035.0144;
	3.9204 52.9737 88.9258 112.3555 14.89 34.6459 31.0761 17.7856 26.9089 18.909 34.953 52.1429 78.5009 63.5642 167.1189 62.9611 78.1184 82.7821 91.8527 70.605 10.3587 80.8404 30.9571 83.1135 99.4667 73.4921 12.4614 1052.4696 752.3612 752.3612 738.2632 80.6252 306.1757 181.7375 199.2823 321.0074 1018.933 231.7309 427.3965 266.4286 65.7794 384.3385 206.3389 282.0046 1029.5468;
	3.9188 52.9519 89.9446 112.7108 14.4145 34.6924 30.6797 18.1961 26.7408 7.6361 14.1152 21.0571 31.7013 66.3905 176.1916 66.3792 82.3593 87.2763 91.3662 70.113 10.2266 80.9488 9.3228 83.5643 101.4828 72.9459 13.0429 1185.8667 796.3396 796.3396 742.7394 94.8942 304.5541 180.4711 208.1432 339.7715 1149.3787 251.9324 459.8447 271.8289 114.2938 384.8539 198.6432 265.0501 1161.3514;
	3.9239 53.0206 92.803 118.4761 14.775 35.0308 31.2247 14.3848 26.8253 16.1921 29.9309 44.651 67.2218 66.418 185.4269 69.8585 86.6763 91.851 90.397 65.9819 10.4082 81.7385 28.0079 85.6088 104.7079 68.7036 13.3881 1224.121 806.819 806.819 739.2696 111.2522 301.3235 169.8376 208.2295 344.2428 1167.7853 274.5945 470.8093 280.4675 120.687 388.608 208.8788 273.6291 1179.9498;
	3.9317 53.1264 94.3541 112.5526 15.2897 35.0762 32.0924 8.8789 28.1464 18.8185 34.7856 51.8933 78.1251 67.8867 194.4725 73.2664 90.9046 96.3317 90.9407 71.9455 10.6975 81.8446 41.5937 42.4485 48.1418 66.6218 10.9534 1160.6456 804.4552 804.4552 760.673 110.9235 303.1357 185.188 212.8338 343.2342 1180.5106 288.4751 479.1865 128.9514 120.9431 389.1125 211.6195 240.5571 1192.8076;
	3.9316 53.1245 95.0865 119.7847 15.3977 35.167 31.9326 18.6383 20.3549 21.0445 38.9005 58.0319 87.3668 67.5657 190.4429 71.7483 89.021 94.3357 89.4399 70.0593 10.6442 82.0563 43.4053 80.5912 103.769 72.8396 13.6441 1269.4347 802.2064 802.2064 770.5165 112.2744 298.1329 180.3327 211.8275 342.2747 1185.6499 275.8939 480.0238 277.9527 120.7004 390.1189 218.1617 277.1231 1198.0004;
	3.9327 53.14 95.0944 122.9762 15.4134 35.1819 31.7727 18.5488 11.2485 22.1414 40.928 61.0565 91.9202 67.8589 188.6593 71.0763 88.1873 93.4522 91.7872 72.1678 10.5909 82.0912 48.8107 89.4285 105.3377 75.4462 13.5997 1276.4388 840.3814 840.3814 788.325 114.0287 305.9572 185.76 212.7469 358.5627 1286.8511 288.9992 479.4423 282.1546 121.8381 390.2849 219.2593 255.9395 1300.2558;
	3.9309 53.1152 95.0966 118.9664 15.2577 35.1102 32.2088 18.6174 20.6657 20.5113 37.9148 56.5614 85.1528 68.2415 191.0465 71.9757 89.3031 94.6347 91.6974 69.882 10.7363 81.9238 51.7607 86.8832 96.8199 76.0496 13.9113 1257.8072 854.6272 854.6272 791.0194 114.2042 305.6581 179.8765 213.9464 364.6409 1297.4078 287.8462 479.9039 259.339 121.0971 389.4893 218.0614 274.946 1310.9224;
	3.9319 53.1287 93.7405 118.9724 15.2584 35.159 33.2381 18.535 12.2314 19.0766 35.2629 52.6052 79.1969 68.807 198.7219 74.8673 92.8909 98.4367 92.7646 72.5678 11.0794 82.0377 48.5506 87.3404 106.1619 74.73 13.9441 1260.8033 846.656 846.656 813.6261 118.2762 309.2154 186.7897 215.7193 361.2399 1296.1728 303.4326 479.8619 284.3623 121.5686 390.0306 216.9045 277.4371 1309.6746;
];
