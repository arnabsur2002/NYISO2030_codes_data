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
	3.5546 48.0301 90.2062 119.4637 14.867 13.7528 17.2787 17.8161 28.3966 24.9741 46.1642 68.8679 103.6803 7.8584 24.1505 9.0986 11.289 11.9629 10.4085 24.5893 5.7596 32.0898 59.3421 85.3165 101.3304 69.5532 7.92 698.7702 404.6408 404.6408 211.7534 39.1925 34.6949 63.293 24.6373 172.6468 522.7613 59.9704 341.1673 271.4208 17.7345 152.564 122.696 224.719 528.2067;
	3.3712 45.5523 88.8395 119.1356 14.1277 13.4557 15.0512 16.4642 27.6834 20.1558 37.2576 55.581 83.6769 5.848 10.3328 3.8928 4.83 5.1183 9.0561 5.3892 5.0171 31.3966 43.8147 82.6271 97.5357 70.7395 6.6509 678.2639 367.8289 367.8289 164.546 32.8904 30.1868 13.8717 18.3344 156.9403 484.1268 49.1625 325.3132 261.2564 12.8382 149.2683 109.7864 208.4469 489.1698;
	3.2956 44.5302 92.7087 118.1532 14.0224 13.2504 12.984 18.2076 28.0284 22.2752 41.1754 61.4256 92.4759 7.0579 15.6099 5.8809 7.2967 7.7324 22.8283 19.5932 4.328 30.9177 55.092 85.6662 100.9851 71.9639 8.4648 610.2209 343.3581 343.3581 158.2509 34.2169 76.0944 50.4328 22.1275 146.4995 405.3426 35.8817 251.9134 270.4958 7.0296 146.9915 89.2538 207.047 409.5649;
	2.8871 39.0106 92.2054 113.6114 13.871 12.2477 11.5939 18.238 26.9238 22.1014 40.854 60.9462 91.7541 10.6483 14.1853 5.3442 6.6308 7.0267 12.0837 18.7473 3.8646 28.5781 59.946 86.1325 102.6152 74.7124 9.6659 439.0542 256.0053 256.0053 160.0747 29.3188 40.279 48.2557 33.384 109.2289 296.8303 26.5315 182.3882 274.862 10.3229 135.8683 79.8225 211.7954 299.9223;
	2.2515 30.4226 91.5561 116.5152 13.8182 13.3301 9.4373 18.2501 17.2994 20.1614 37.268 55.5965 83.7003 13.5504 17.7272 6.6786 8.2865 8.7812 20.9719 23.7312 3.1458 31.1035 51.5562 87.119 104.0681 74.41 10.0941 361.4509 202.8803 202.8803 138.0324 29.3193 69.9062 61.0841 42.4822 86.5623 181.4563 29.3687 125.789 278.7539 13.9109 147.8751 82.6165 213.9599 183.3464;
	2.8654 38.7181 89.9436 113.6647 13.7953 21.2952 10.9699 18.2364 10.4299 18.4504 34.1053 50.8784 76.5972 28.4702 16.8876 6.3623 7.894 8.3652 32.1156 24.8485 3.6566 49.6889 54.4275 84.3142 100.5216 72.6318 8.3721 302.7623 188.8259 188.8259 115.6569 25.356 107.0519 63.96 89.2579 80.5657 176.0891 28.8144 169.8886 269.2544 12.8977 236.2353 87.0768 210.1162 177.9233;
	2.4086 32.5449 89.4984 114.698 12.6868 22.1751 11.6844 16.9652 12.2033 24.9575 46.1335 68.8221 103.6113 40.7915 7.2217 2.7207 3.3757 3.5772 36.0124 20.3609 3.8948 51.742 64.8446 83.9096 100.6505 71.0235 10.9539 255.5749 209.7287 209.7287 95.6364 15.9094 120.0413 52.4091 127.8868 89.4842 193.144 18.5079 137.6748 269.5995 11.7126 245.9963 94.2651 226.4504 195.1559;
	1.9372 26.1753 72.5906 115.3207 13.7261 20.4017 13.7195 17.9608 19.6261 27.5899 50.9995 76.0812 114.5399 44.0465 23.5711 8.8803 11.0181 11.6759 49.8452 45.4189 4.5732 47.6039 71.5659 85.291 103.1569 71.7943 12.8019 158.6973 181.6638 181.6638 95.8187 10.6191 166.1505 116.9084 138.0919 77.5099 146.6163 20.194 178.7187 276.313 9.7538 226.3223 95.961 218.3406 148.1436;
	2.8628 38.6823 82.3652 106.2235 14.3816 25.0022 11.273 17.1722 22.2995 28.9476 53.5091 79.8251 120.1763 47.7857 16.4348 6.1917 7.6823 8.141 62.6718 39.3888 3.7577 58.3386 73.9465 82.9081 100.5048 70.7866 12.3207 144.3599 149.3916 149.3916 88.3126 8.6259 208.906 101.3868 149.8146 63.7404 138.8795 23.2848 144.44 269.2092 20.3519 277.3582 81.6309 235.9071 140.3262;
	2.2989 31.063 82.7055 112.9509 13.5163 16.1972 11.6963 18.1542 27.2726 30.0108 55.4745 82.757 124.5903 49.4426 19.6281 7.3948 9.175 9.7227 72.7435 39.0971 3.8988 37.7935 74.8906 82.5148 101.9964 71.5309 12.4244 252.4065 232.1163 232.1163 93.1146 8.5649 242.4783 100.6359 155.0093 99.0363 234.9213 20.8922 302.4053 273.2046 45.638 179.6813 82.2907 215.9688 237.3684;
	1.7309 23.3885 75.3302 104.3123 12.2485 27.1057 16.6871 17.2546 28.2428 30.1351 55.7043 83.0999 125.1064 56.1834 5.7936 2.1827 2.7082 2.8699 70.7115 29.7802 5.5624 63.2466 74.1169 81.1891 92.531 69.3946 11.6147 382.939 299.8895 299.8895 161.6031 13.9217 235.7049 76.6543 176.1424 127.9529 333.1334 25.4373 187.9744 247.8509 5.4251 300.6926 94.6856 178.9992 336.6035;
	1.7077 23.0741 81.5502 87.2382 11.8287 28.6214 21.5015 16.8326 28.2507 28.9329 53.482 79.7846 120.1152 55.2298 6.0745 2.2885 2.8395 3.009 78.4661 46.9623 7.1672 66.7833 73.2402 78.0801 88.217 69.6287 11.2758 418.1657 352.2775 352.2775 264.1892 17.3363 261.5538 120.8811 173.153 150.3051 419.4117 40.5789 205.0499 236.2954 7.9902 317.5071 100.8588 169.7986 423.7806;
	2.5607 34.6009 78.8344 80.9241 11.6583 26.812 20.7838 15.5949 28.1646 28.2395 52.2003 77.8725 117.2366 55.4192 40.5493 15.2767 18.9545 20.0861 83.0402 54.671 6.9279 62.5613 72.3464 80.1384 94.1668 68.081 9.5417 582.9601 439.5498 439.5498 301.9698 23.617 276.8006 140.7233 173.7465 187.5413 578.2841 50.1727 212.6513 252.2326 12.1659 297.4342 126.0522 184.4479 584.3079;
	3.4365 46.4346 78.0284 98.8027 13.8163 27.0729 22.5589 16.4264 27.9025 29.2701 54.1053 80.7145 121.5153 53.6622 57.1916 21.5466 26.7338 28.3298 85.1325 52.4062 7.5196 63.1702 69.2526 77.2528 91.1737 69.0101 10.1952 716.3481 594.7171 594.7171 386.6999 32.3024 283.7751 134.8937 168.2382 253.746 715.0915 76.0985 288.8064 244.2153 3.9026 300.329 133.7138 213.346 722.5403;
	3.6348 49.1135 83.9279 104.4875 14.0685 32.1045 25.5736 17.1308 27.9876 25.9109 47.8959 71.4512 107.5694 62.8826 86.1069 32.4403 40.25 42.6529 84.3775 51.7228 8.5245 74.9105 49.7061 83.0696 94.6424 70.9462 11.9525 960.1358 677.4296 677.4296 469.997 36.1679 281.2584 133.1346 197.1454 289.0366 934.725 99.8504 420.0932 253.5065 7.5362 356.146 153.658 226.7133 944.4617;
	3.579 48.3596 86.7672 109.3538 14.307 31.9903 27.3628 17.6646 27.7602 21.3435 39.4531 58.8563 88.6078 64.9982 126.5481 47.6762 59.1539 62.6854 84.3892 61.0462 9.1209 74.6441 46.218 85.3532 97.7315 70.4543 12.0689 1019.0384 719.7311 719.7311 643.0453 48.4946 281.2975 157.133 203.7781 307.0853 1014.2137 150.5928 390.3987 261.7807 18.872 354.8794 165.0852 234.1037 1024.7784;
	3.6264 49.0004 88.7646 115.3975 14.4106 33.1146 29.7126 17.8602 26.9483 20.1954 37.3309 55.6904 83.8416 66.3903 148.99 56.1311 69.6442 73.802 82.7287 67.1206 9.9042 77.2675 28.6923 87.0397 101.4304 73.014 11.9534 976.7027 709.8818 709.8818 644.6254 75.3384 275.7624 172.7685 208.1427 302.8829 956.3124 186.8607 414.2168 271.6885 2.36 367.3517 204.6273 262.0213 966.274;
	3.8794 52.4186 92.1448 118.1913 14.8651 34.6243 29.4101 18.5797 27.9981 18.6295 34.4364 51.3723 77.3408 65.6535 176.6606 66.5559 82.5786 87.5086 84.9287 69.3148 9.8034 80.7899 36.4898 89.6746 104.3239 72.972 13.1385 1091.928 749.2266 749.2266 663.9368 89.5314 283.0956 178.4166 205.8326 319.67 1034.991 210.9433 455.7394 279.4391 112.3831 384.0984 209.7536 257.0085 1045.7722;
	3.8759 52.3717 89.8223 117.8205 14.8247 34.9412 31.4263 14.5573 28.2289 20.9663 38.7559 57.8162 87.042 63.0028 171.4079 64.5769 80.1232 84.9067 81.3909 63.8526 10.4754 81.5295 51.0698 87.7842 105.1765 68.8341 12.8208 1195.177 759.3549 759.3549 633.2937 104.8392 271.3029 164.3567 197.5224 323.9914 1123.7299 234.3168 472.4654 281.7226 118.0894 387.6147 215.3279 263.0674 1135.4355;
	3.7642 50.862 90.6605 110.1939 14.4069 34.9044 31.3461 7.7785 27.3562 20.3433 37.6042 56.0981 84.4554 63.5914 186.2242 70.1589 87.049 92.2459 74.8165 66.8711 10.4487 81.4436 49.1353 34.457 42.3043 63.8772 9.7758 1137.2295 753.8142 753.8142 639.8577 106.2685 249.3883 172.1264 199.3676 321.6274 1077.8276 231.8752 467.5556 113.3151 118.672 387.2059 211.3356 221.9209 1089.055;
	3.7497 50.6669 90.383 116.2931 14.445 34.3562 30.923 18.3832 18.2003 20.636 38.1454 56.9054 85.6708 62.1706 187.8207 70.7603 87.7952 93.0367 82.3119 68.3393 10.3077 80.1645 38.2353 72.9315 101.1511 72.7904 13.576 1111.3765 738.356 738.356 643.403 105.5096 274.3732 175.9054 194.9133 315.0319 959.1533 229.8374 463.471 270.9404 118.3384 381.1249 206.3252 251.2034 969.1444;
	3.8773 52.3903 92.3734 121.8493 14.7518 34.5783 29.8684 17.897 9.1506 23.1433 42.78 63.8194 96.0797 59.0501 182.5877 68.7889 85.3491 90.4446 83.6521 69.1462 9.9561 80.6827 45.1047 87.6707 105.181 75.0146 13.4202 1153.165 710.4155 710.4155 664.0192 104.3385 278.8403 177.9825 185.1302 303.1106 1050.6599 237.2728 456.6332 281.7348 122.2095 383.5885 209.3027 243.3159 1061.6042;
	3.9075 52.7991 93.5234 120.0056 14.9093 34.8355 30.0422 18.3396 19.1511 20.4316 37.7675 56.3416 84.822 61.1941 186.6076 70.3033 87.2282 92.4359 85.2101 66.6693 10.0141 81.2828 32.3713 87.3235 98.584 75.3878 13.8446 1157.5396 779.9242 779.9242 685.7405 109.1766 284.0337 171.607 191.8517 332.7676 1094.1856 247.0214 451.9993 264.0642 120.8876 386.4418 210.6478 254.0201 1105.5834;
	3.895 52.6294 92.537 119.5745 15.1221 34.3051 30.0306 18.6951 9.691 18.3075 33.8412 50.4844 76.004 61.89 188.014 70.8332 87.8856 93.1325 85.7039 67.535 10.0102 80.0452 25.5444 88.821 106.3991 73.3068 13.8432 1104.1819 744.7197 744.7197 628.8144 108.8901 285.6796 173.8352 194.0336 317.7471 1039.0627 263.036 448.9257 284.9975 122.4935 380.5579 207.7349 262.9002 1049.8863;
];