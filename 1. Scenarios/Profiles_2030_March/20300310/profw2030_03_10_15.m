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
	3.714 50.1839 75.9739 110.2725 11.5953 33.8408 30.1886 6.9195 25.2983 11.2136 20.7282 30.9224 46.5534 43.4972 157.332 59.2739 73.5436 77.9342 86.2408 66.8524 10.0629 78.9618 30.1343 30.6707 45.8325 23.3297 4.6164 1244.9486 793.8867 793.8867 671.8519 77.6824 287.4693 172.0783 136.3696 338.725 1219.3307 208.746 454.9233 122.7656 111.699 375.4071 202.325 107.396 1232.0321;
	3.0203 40.8114 70.148 41.009 14.4174 25.7501 30.2844 7.068 3.7203 12.0418 22.2591 33.2062 49.9918 39.1262 150.1954 56.5852 70.2076 74.3991 84.5131 66.5654 10.0948 60.0835 22.6551 34.0235 39.0612 25.763 5.1464 1275.7449 815.8881 815.8881 722.7632 62.5228 281.7103 171.3394 122.6658 348.1123 1261.4929 200.06 466.8104 104.6282 114.7148 285.654 206.5456 88.003 1274.6334;
	2.785 37.6317 85.198 46.2251 14.4185 21.0878 31.3375 6.5046 8.7013 8.2319 15.2166 22.7002 34.175 40.5713 179.6883 67.6965 83.9938 89.0084 89.1501 53.252 10.4458 49.2049 2.9097 37.8268 39.2544 26.6643 5.535 1278.7288 837.0804 837.0804 746.4048 89.5442 297.1669 137.0708 127.1966 357.1543 1257.7126 215.7965 464.3554 105.1457 28.6733 233.934 209.5724 124.9237 1270.8138;
	3.3422 45.1605 83.4529 45.2742 14.168 12.0617 31.4965 7.0383 9.6506 11.1291 20.572 30.6893 46.2026 27.8495 189.2261 71.2898 88.4522 93.7329 87.3568 61.221 10.4988 28.1441 23.857 32.8423 36.033 29.4167 5.232 1295.4645 844.3657 844.3657 766.9014 94.9149 291.1892 157.583 87.3121 360.2627 1270.1435 235.718 462.3805 96.5168 39.5908 133.805 210.6058 106.246 1283.3742;
	3.7721 50.969 79.8648 37.9841 14.4266 20.3315 31.3513 7.1156 10.841 10.8596 20.0738 29.9462 45.0838 32.8085 172.9416 65.1548 80.8402 85.6664 90.5685 62.3772 10.4504 47.4401 2.6305 25.9699 39.268 58.5084 5.169 1243.9758 838.8636 838.8636 781.0508 98.7139 301.8949 160.5592 102.8592 357.9151 1289.7377 240.5713 463.913 105.1821 36.9111 225.5437 210.9493 187.8075 1303.1725;
	3.7726 50.9758 91.1846 110.0955 14.3571 32.068 31.5432 5.6094 9.3582 10.3348 19.1038 28.4991 42.9053 28.4812 171.9174 64.7689 80.3614 85.1591 88.4757 58.9066 10.5144 74.8254 0.2894 20.9472 52.2628 60.3667 4.1317 1123.3232 830.0453 830.0453 726.8766 101.1597 294.9189 151.6257 89.2926 354.1527 1245.2698 228.9592 460.0889 139.9896 65.6558 355.7413 209.0066 222.1048 1258.2414;
	3.9069 52.7912 89.8415 114.1847 14.657 33.694 31.6727 10.5987 11.4008 10.9519 20.2443 30.2006 45.4668 38.6524 182.3384 68.6949 85.2326 90.3211 75.4124 64.5809 10.5576 78.6193 19.8904 43.895 98.5246 74.3489 10.8175 1052.3776 812.9938 812.9938 753.691 108.6202 251.3748 166.2313 121.1806 346.8774 1261.0441 281.0481 470.4356 263.9052 104.337 373.7785 213.5122 269.073 1274.1799;
	3.8361 51.8339 88.8399 112.5964 14.4887 34.1685 31.3704 18.4605 10.89 10.1227 18.7116 27.914 42.0244 61.1199 175.632 66.1683 82.0977 86.9991 80.1668 46.8121 10.4568 79.7264 23.397 48.9564 102.1111 74.4025 13.5966 996.3263 799.2254 799.2254 737.5766 110.7832 267.2225 120.4944 191.6191 341.0028 1220.4932 284.7261 462.1535 273.5119 115.9309 379.0421 212.7335 274.5433 1233.2067;
	3.7521 50.6991 89.3586 110.6764 14.5519 33.8056 29.8493 17.4582 9.8591 11.8835 21.9664 32.7696 49.3344 61.0841 179.1903 67.5089 83.7611 88.7617 44.589 54.9956 9.9498 78.8797 28.4077 85.3947 100.516 71.9631 13.2776 765.1703 844.1966 844.1966 732.7246 106.9855 148.6299 141.5588 191.507 360.1905 1209.033 277.0582 447.0784 269.2394 118.5488 375.0168 213.8212 275.4105 1221.6271;
	3.7148 50.1946 87.2169 113.5277 14.3888 32.9972 30.5524 17.3928 19.7078 9.6503 17.8384 26.6114 40.0634 63.2056 165.0193 62.1701 77.1369 81.7421 44.8838 49.4242 10.1841 76.9934 20.5631 86.4532 99.0279 68.6396 12.9238 601.246 850.2347 850.2347 742.7697 110.4375 149.6128 127.218 198.1582 362.7668 1154.2535 262.7361 457.9386 265.2532 115.9652 366.0485 207.32 267.9293 1166.277;
	3.7037 50.0455 90.2701 114.9617 14.1468 32.6734 31.0185 17.5847 27.9061 8.5639 15.8302 23.6155 35.5531 67.8461 191.3084 72.0743 89.4255 94.7644 37.4547 62.4373 10.3395 76.2379 20.5315 83.5382 100.1369 71.0321 13.6796 468.3463 835.1014 835.1014 755.0435 103.161 124.8489 160.7139 212.7068 356.3099 1007.8087 270.5546 459.7352 268.2239 117.6959 362.4567 204.9128 268.2076 1018.3067;
	3.467 46.8462 93.1504 119.1479 14.3483 31.9378 29.8626 18.4419 27.4936 16.2169 29.9767 44.7193 67.3246 63.447 189.4561 71.3765 88.5597 93.8469 50.807 54.7879 9.9542 74.5214 22.4049 82.4447 99.8463 73.1059 13.6994 340.8464 830.024 830.024 712.1103 105.3242 169.3567 141.0242 198.9149 354.1436 845.4971 249.7322 467.6809 267.4454 120.478 354.2962 201.2287 281.4007 854.3044;
	2.0728 28.008 91.5164 115.5436 14.2135 19.8551 26.5863 18.6353 27.2054 25.9306 47.9324 71.5057 107.6514 63.6199 189.8161 71.5121 88.728 94.0252 90.441 61.8348 8.8621 46.3286 52.3681 81.958 98.4456 71.9203 13.8236 291.0322 756.0305 756.0305 658.2842 105.305 301.4701 159.163 199.457 322.573 697.3796 229.2611 441.6016 263.6936 119.629 220.2592 179.4262 274.1258 704.644;
	2.391 32.3082 90.788 117.5767 14.588 11.6778 26.6916 18.6261 26.8001 30.2373 55.8932 83.3817 125.5307 63.7239 191.5365 72.1603 89.5322 94.8774 90.5099 66.7501 8.8972 27.2483 71.7097 82.8164 99.2408 71.7288 13.8996 305.13 642.9533 642.9533 589.055 103.0179 301.6998 171.815 199.7832 274.3268 547.6159 206.6716 447.5504 265.8236 119.2371 129.546 152.0451 265.8902 553.3203;
	2.2691 30.6603 90.8256 118.7876 12.6794 1.199 22.2954 18.732 26.8047 28.4365 52.5644 78.4157 118.0544 57.9918 199.7586 75.2579 93.3755 98.9502 88.8224 69.9173 7.4318 2.7978 69.0114 84.2238 100.7081 70.4473 13.6555 462.5069 506.1326 506.1326 408.3262 89.1169 296.0747 179.9674 181.8122 215.9499 460.0941 182.8863 430.9269 269.7539 116.0143 13.3014 124.3399 259.7136 464.8868;
	3.5434 47.879 90.5127 91.7155 14.5781 27.447 17.0225 18.8087 22.81 29.1037 53.7978 80.2558 120.8246 45.0444 199.6457 75.2154 93.3228 98.8943 90.0421 69.9314 5.6742 64.0431 71.2489 87.5679 101.43 72.9243 13.8154 475.3453 530.3197 530.3197 408.7212 47.7451 300.1403 180.0036 141.2202 226.2698 482.8249 161.2807 440.2351 271.6874 114.2284 304.4791 90.3994 263.4976 487.8543;
	3.3394 45.1228 94.3982 70.5986 15.3141 32.6771 14.7863 18.9429 26.9066 25.9834 48.03 71.6512 107.8706 60.8216 195.1459 73.5201 91.2194 96.6653 89.4918 69.1548 4.9288 76.2465 68.8519 89.3839 105.5843 73.8194 13.7875 601.13 613.9553 613.9553 460.9578 30.2092 298.306 178.0047 190.6838 261.9543 608.0319 124.1204 164.9608 282.815 113.7723 362.4978 115.8853 273.7975 614.3655;
	3.7448 50.5999 91.8555 68.2258 15.2889 33.4731 28.4173 18.9527 26.746 10.6108 19.6139 29.2601 44.0509 63.2603 180.885 68.1474 84.5532 89.6012 77.4446 70.9963 9.4724 78.104 37.1578 88.6746 105.4359 73.0922 13.8614 673.2879 621.7028 621.7028 414.3409 31.15 258.1485 182.7447 198.3295 265.2599 760.1165 86.1788 380.994 282.4175 109.3734 371.3286 129.1529 262.9215 768.0344;
	3.7542 50.7273 91.1667 57.0077 14.7519 33.4559 27.0674 18.819 26.536 21.23 39.2433 58.5433 88.1366 64.9684 178.5935 67.2841 83.4821 88.4661 59.8855 70.2173 9.0225 78.0638 48.2543 86.216 104.6905 73.3808 13.7498 972.3937 691.226 691.226 489.1767 43.9706 199.6184 180.7395 203.6848 294.9231 972.0617 105.1798 435.2955 280.4209 113.0342 371.1378 156.2177 244.6323 982.1874;
	3.6004 48.6494 62.6994 40.8254 14.7172 32.6254 0.0 18.8835 25.8499 26.9188 49.759 74.2306 111.7538 64.5124 190.8564 71.904 89.2143 94.5405 51.6953 70.7916 0.0 76.1259 67.848 80.637 103.7444 74.7805 13.4725 1113.3498 573.769 573.769 557.7324 65.7782 172.3178 182.2177 202.2552 244.8081 1070.312 144.1055 427.1518 277.8867 116.5556 361.9245 157.2189 239.974 1081.4611;
	3.5713 48.2556 60.8243 61.9208 14.1933 31.332 28.0265 18.5575 0.0 26.0965 48.239 71.9631 108.3401 63.6628 192.1771 72.4016 89.8316 95.1947 62.5737 71.9317 9.3422 73.1081 68.1608 88.257 101.3062 75.1424 13.3132 1192.3461 694.5352 694.5352 427.9426 71.4022 208.5789 185.1524 199.5914 296.335 1063.5814 192.6102 422.5992 271.3559 111.6989 347.5768 140.2715 261.8371 1074.6603;
	3.6823 49.7554 48.2316 84.8604 14.8143 33.328 4.5131 18.5344 27.075 29.4359 54.4118 81.1718 122.2037 67.9779 195.9865 73.8368 91.6123 97.0817 61.182 71.2128 1.5044 77.7652 70.3026 88.5365 104.0076 75.7079 13.7153 1257.3004 720.4281 720.4281 544.3243 88.8886 203.94 183.3018 213.1198 307.3827 1189.5379 226.076 458.3189 278.5918 114.5209 369.7181 155.6709 256.3391 1201.9289;
	3.7656 50.8815 61.1719 97.7117 14.856 33.5056 30.987 18.3467 27.4809 29.6346 54.7791 81.7197 123.0285 67.7878 190.4604 71.7549 89.0292 94.3444 52.6226 68.977 10.329 78.1797 68.6084 89.574 103.9406 74.8407 13.6048 1279.0758 760.7928 760.7928 614.6417 107.1246 175.4088 177.547 212.524 324.6049 1245.5585 253.9218 467.1337 278.4123 115.2736 371.6886 157.8838 274.8924 1258.533;
	3.8151 51.5505 90.3823 109.6368 15.1298 34.7725 30.9364 18.7773 27.5696 30.5707 56.5094 84.301 126.9146 65.7442 193.8433 73.0294 90.6105 96.0201 42.2827 71.8516 10.3121 81.1359 67.1872 90.0066 105.6476 73.3771 13.4489 1246.5621 717.0296 717.0296 605.9788 106.1614 140.9424 184.9463 206.117 305.9326 1249.4667 229.0937 470.7815 282.9847 116.893 385.7433 179.6935 283.9525 1262.482;
];