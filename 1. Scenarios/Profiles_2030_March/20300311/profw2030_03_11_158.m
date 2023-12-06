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
	3.7433 50.5804 88.1474 103.7195 13.943 32.3471 27.2927 17.8821 26.1812 30.1105 55.6588 83.032 125.0043 67.9537 200.205 75.4261 93.5842 99.1713 37.8626 73.3011 9.0976 75.4765 69.7235 85.3827 92.3009 71.1818 13.7581 1163.5413 716.4016 716.4016 579.2435 107.4253 126.2088 188.6773 213.044 305.6647 1162.5417 212.033 448.0398 247.2345 121.8992 358.8367 129.1922 264.7371 1174.6515;
	3.7597 50.8023 89.4571 110.891 14.1347 31.7554 27.2047 18.3608 26.5669 29.415 54.3731 81.114 122.1166 67.5891 200.7612 75.6356 93.8442 99.4468 34.4222 73.7649 9.0682 74.0959 69.15 85.2742 97.7834 70.7177 13.7678 1159.1441 714.9997 714.9997 565.8538 106.8551 114.7407 189.871 211.9009 305.0665 1173.9613 227.1856 444.0145 261.9198 123.8783 352.2732 133.4553 271.7314 1186.1901;
	3.7942 51.2678 91.657 56.8085 13.9707 32.0907 26.729 18.1946 25.6465 28.7681 53.1773 79.3301 119.4311 69.7368 198.9941 74.9699 93.0181 98.5715 36.6886 72.6671 8.9097 74.8782 64.1884 85.1659 93.1214 70.9052 13.9003 1138.917 730.2726 730.2726 567.7088 111.4707 122.2953 187.0454 218.6344 311.583 1206.0881 229.8083 429.3168 249.4322 123.8534 355.9923 126.9635 268.2418 1218.6515;
	3.7333 50.4447 91.2812 75.2933 13.9898 31.8769 25.4911 18.6718 26.3995 29.5833 54.6842 81.5781 122.8154 68.9994 204.5839 77.0758 95.6311 101.3404 48.4979 72.693 8.497 74.3795 66.7555 84.2132 97.7783 71.88 14.0759 1193.8111 720.5701 720.5701 522.7084 100.5168 161.6597 187.1119 216.3224 307.4432 1125.834 236.2323 429.9573 261.9062 123.0385 353.6212 156.1168 270.3329 1137.5615;
	3.6749 49.6561 94.1698 117.4145 14.7298 32.1443 21.9557 18.8843 27.1174 30.3458 56.0937 83.6808 125.9809 69.2713 202.979 76.4712 94.8809 100.5454 84.2148 73.3697 7.3186 75.0034 59.8503 85.6985 100.307 73.5107 14.0126 1202.1775 685.5211 685.5211 534.3358 98.6505 280.716 188.8538 217.175 292.489 1183.3508 229.5528 436.5975 268.6796 122.4193 356.5874 178.0373 269.6037 1195.6773;
	3.7903 51.2149 93.77 117.3547 14.5503 33.1636 26.6864 18.8308 26.6373 30.1049 55.6485 83.0167 124.9812 68.7758 202.0843 76.1341 94.4626 100.1022 90.4871 72.8637 8.8955 77.3818 71.2894 85.498 102.161 72.5864 13.8209 1231.1697 715.3614 715.3614 512.714 100.0427 301.6237 187.5512 215.6214 305.2208 1139.4233 219.4863 433.032 273.6456 121.1566 367.8951 190.3782 276.7936 1151.2923;
	3.8106 51.49 93.0161 117.4576 14.3796 32.2027 28.319 19.0404 27.3375 30.662 56.6782 84.5528 127.2938 68.8996 204.704 77.121 95.6872 101.3999 89.609 73.3685 9.4397 75.1396 74.3306 84.8242 102.0682 75.0111 13.8971 1232.1008 735.7842 735.7842 556.8221 98.6399 298.6965 188.8508 216.0096 313.9346 1144.6611 232.5981 441.1038 273.3971 121.39 357.2352 193.9099 272.272 1156.5846;
	3.6816 49.7468 89.5629 115.6553 14.5708 32.0017 26.2142 18.6207 26.0286 30.3861 56.1682 83.7919 126.1482 64.858 199.774 75.2637 93.3827 98.9578 86.3809 72.329 8.7381 74.6706 74.4739 85.075 103.3415 73.2649 13.535 1139.2408 677.8318 677.8318 517.3349 84.1855 287.9365 186.1749 203.3385 289.2082 1040.8198 222.4275 434.8078 276.8075 118.4863 355.0051 172.1874 262.8215 1051.6617;
	3.6375 49.1512 89.7127 114.2349 14.4507 31.5983 27.4381 18.6857 26.5198 30.0828 55.6076 82.9556 124.8892 66.6748 200.8086 75.6535 93.8664 99.4703 87.9322 72.1215 9.146 73.7293 72.9751 85.456 101.5115 73.4662 13.5215 1137.3971 742.2577 742.2577 555.8362 74.9326 293.1074 185.641 209.0345 316.6966 1096.7728 245.6766 442.2914 271.9058 119.5489 350.53 123.1532 273.9301 1108.1975;
	3.2381 43.7544 89.8002 113.532 14.4931 31.4734 27.8525 18.6888 26.3355 30.1527 55.7368 83.1484 125.1795 66.8792 196.5606 74.0531 91.8807 97.3661 88.2475 69.6753 9.2842 73.438 72.0875 86.073 100.8914 73.3373 13.4765 1089.8843 702.9363 702.9363 604.8089 87.9424 294.1585 179.3443 209.6753 299.9195 1029.0856 271.806 443.9493 270.2448 120.6465 349.1453 144.4797 269.5728 1039.8052;
	3.2126 43.4092 88.0418 110.4562 14.131 26.8517 23.6904 17.9386 25.0105 30.3394 56.0819 83.6632 125.9545 67.0445 200.7808 75.643 93.8533 99.4565 86.3697 73.3515 7.8968 62.654 71.9753 86.3551 100.7086 72.3352 13.1884 1134.4238 714.9044 714.9044 630.0722 90.7343 287.8989 188.8068 210.1937 305.0259 989.575 279.0931 449.4027 269.7552 120.9279 297.8752 138.9759 262.5982 999.8831;
	3.2707 44.1948 86.8605 112.4772 13.972 27.5316 21.7241 18.2541 25.0905 29.9247 55.3154 82.5197 124.233 65.0968 194.31 73.2052 90.8286 96.2512 83.8813 71.3716 7.2414 64.2404 71.1111 84.7435 101.0283 72.4174 13.3687 1042.8609 691.8071 691.8071 605.6668 91.6865 279.6043 183.7106 204.0872 295.171 980.9809 266.4797 424.0235 270.6116 123.2691 305.4172 151.3069 259.6401 991.1995;
	3.5611 48.1181 90.111 116.2074 14.1434 31.905 26.3963 18.4803 25.8014 30.1787 55.7848 83.22 125.2873 62.1757 195.1367 73.5166 91.2151 96.6607 79.8809 72.7475 8.7988 74.4449 71.915 88.6782 104.7628 75.2278 13.8865 1022.5301 701.2937 701.2937 654.9757 90.3047 266.2698 187.2522 194.9292 299.2187 881.3933 286.4363 434.1694 280.6146 123.2748 353.9323 135.9521 264.0031 890.5744;
	3.5794 48.3652 89.8451 114.3487 14.5159 31.8766 25.416 18.4154 25.7372 29.8399 55.1587 82.2859 123.881 57.1524 195.881 73.797 91.563 97.0294 89.591 72.6085 8.472 74.3787 73.5594 88.1378 101.448 73.1639 13.7581 925.926 633.8712 633.8712 662.1113 93.6832 298.6367 186.8946 179.1804 270.4517 826.0041 293.7943 424.1482 271.7356 122.9029 353.6178 139.5245 266.0434 834.6083;
	3.6988 49.9784 93.3077 117.4968 14.7557 32.7756 24.1724 18.5492 26.0253 30.6158 56.5928 84.4253 127.1018 66.5617 194.423 73.2477 90.8814 96.3072 85.8819 71.1335 8.0575 76.4765 74.2163 88.3309 104.2535 72.8799 13.7295 898.3519 672.9605 672.9605 691.506 90.9114 286.2729 183.0978 208.68 287.1298 818.8563 320.9066 450.2465 279.2505 120.5454 363.591 171.3593 258.0759 827.386;
	3.6989 49.9801 92.1266 115.8229 14.698 32.2466 25.1735 18.1694 27.4146 30.8764 57.0745 85.1439 128.1837 67.4963 198.1776 74.6623 92.6365 98.167 89.7559 72.2064 8.3912 75.2422 75.5382 85.625 101.3082 72.0695 13.7275 994.2914 702.665 702.665 680.5713 101.3446 299.1862 185.8595 211.6101 299.8037 936.9642 306.2595 455.0073 271.3613 118.605 357.7228 170.6148 254.9731 946.7242;
	3.5972 48.6062 93.5356 118.2449 14.4654 32.4346 21.8871 18.3858 26.2234 30.8427 57.0123 85.0511 128.0439 65.2984 192.6801 72.5911 90.0667 95.4439 87.2514 72.0774 7.2957 75.6807 74.4262 87.3973 100.3831 70.4533 13.0686 1001.5952 715.0479 715.0479 686.2664 107.2987 290.8381 185.5273 204.7194 305.0871 1040.9799 291.4679 429.8567 268.8832 120.4494 359.8075 171.2033 245.836 1051.8234;
	3.7778 51.0464 92.6174 111.9071 14.2233 31.6473 22.8008 16.2896 26.0217 30.6534 56.6623 84.529 127.258 65.4317 191.1236 72.0047 89.3392 94.6729 85.7539 71.1565 7.6003 73.8438 73.5286 85.341 101.2606 65.1696 11.9636 1147.0394 710.3885 710.3885 680.9998 96.7431 285.8463 183.1571 205.1372 303.0991 1107.6524 295.9896 443.4988 271.2338 120.3232 351.0744 178.8155 255.9403 1119.1905;
	3.6643 49.5129 91.276 110.2032 14.292 32.1777 21.8991 16.7835 25.8318 30.1438 55.7204 83.1239 125.1425 65.3795 192.1812 72.4032 89.8335 95.1967 85.8793 72.8326 7.2997 75.0813 73.0641 86.3218 102.9188 46.8659 12.1944 1160.6674 715.1725 715.1725 615.4726 98.5955 286.2644 187.4712 204.9734 305.1403 1151.3346 280.8397 427.7621 275.6753 119.0919 356.9581 149.5235 230.9648 1163.3277;
	3.5999 48.6424 89.8525 102.1903 14.1238 27.0748 24.1163 16.5027 27.0866 30.7679 56.874 84.8449 127.7335 64.7809 187.2164 70.5327 87.5128 92.7374 85.0936 70.2564 8.0388 63.1745 73.4411 86.8605 103.2054 49.6237 11.6351 1229.9191 739.3501 739.3501 644.0698 110.328 283.6452 180.8402 203.0968 315.4561 1256.596 267.486 438.5768 276.443 118.6017 300.3496 171.5962 253.0833 1269.6855;
	3.5999 48.6429 88.6318 106.5189 14.2135 28.5699 28.2559 15.923 26.1604 30.4342 56.2572 83.9247 126.3481 64.931 186.7115 70.3425 87.2768 92.4873 86.2087 67.8354 9.4186 66.6632 73.4215 87.2842 100.2667 61.3194 10.2707 1235.8104 788.1104 788.1104 670.4973 102.1663 287.3623 174.6085 203.5675 336.2604 1253.1639 278.1048 435.5487 268.5714 113.898 316.9358 153.4002 250.9161 1266.2177;
	3.5715 48.2589 85.9977 93.1801 14.2769 28.5133 26.191 13.6595 26.0847 30.1989 55.8223 83.2758 125.3713 64.6596 184.6204 69.5547 86.2993 91.4515 89.5924 68.8823 8.7303 66.531 72.5548 85.0882 96.6153 66.1646 10.1234 1214.3643 783.309 783.309 719.6453 100.7366 298.6413 177.3033 202.7165 334.2118 1127.4295 261.3121 444.4902 258.7911 105.8153 316.3072 153.9735 244.8268 1139.1736;
	3.5725 48.2719 85.4152 83.5898 14.2858 27.3784 25.3706 12.1262 25.6653 29.8849 55.2417 82.4097 124.0674 65.4382 185.1263 69.7453 86.5358 91.7021 85.4961 66.7101 8.4569 63.883 72.0469 85.3716 96.7096 63.0593 9.0175 1141.7338 770.4594 770.4594 724.0095 101.5967 284.9869 171.7118 205.1576 328.7294 1104.8823 237.399 443.3911 259.0435 111.4012 303.718 169.9466 238.6499 1116.3915;
	3.7244 50.3249 89.0759 100.6109 14.398 31.8247 25.9366 12.408 26.4402 29.603 54.7207 81.6325 122.8973 63.4356 179.1576 67.4966 83.7457 88.7455 84.1803 67.5225 8.6455 74.2577 70.3769 86.4785 99.6026 60.5239 9.5287 1155.9121 782.5369 782.5369 725.6597 93.1238 280.6011 173.803 198.8792 333.8824 1166.0667 260.7151 451.711 266.7928 114.4964 353.0425 186.3646 239.2242 1178.2132;
];