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
	3.5665 48.1917 90.225 111.7829 15.0545 31.3171 28.1519 11.8503 27.3107 27.6999 51.2028 76.3845 114.9965 65.7597 187.1973 70.5255 87.5038 92.728 84.702 65.1195 9.384 73.0732 69.8117 88.9757 94.2497 69.0443 8.3914 1196.6045 774.7988 774.7988 780.1892 115.7891 282.34 167.6178 206.1654 330.5808 1139.7961 306.1271 446.6576 252.4546 111.2179 347.4108 188.8953 235.0392 1151.669;
	3.4375 46.4477 82.4928 100.9095 14.2615 30.1737 26.209 8.4969 26.4566 23.6648 43.744 65.2575 98.2448 64.8257 187.9236 70.7991 87.8433 93.0877 84.8023 66.842 8.7363 70.4054 68.3743 82.5395 83.3379 59.0707 3.0022 1201.4028 770.1133 770.1133 762.3868 112.9625 282.6744 172.0515 203.2373 328.5817 1201.7552 284.417 433.4291 223.2266 104.6564 334.7274 186.3832 209.5046 1214.2734;
	3.6192 48.9038 86.3962 92.9777 14.7643 31.6893 25.2673 9.1283 26.2063 20.4334 37.7708 56.3465 84.8294 63.2903 183.5885 69.1659 85.817 90.9404 86.5995 65.854 8.4224 73.9416 47.4847 86.823 81.8641 61.1615 6.204 1228.5671 765.162 765.162 753.6951 113.7172 288.665 169.5083 198.4235 326.4691 1128.5703 274.9211 436.5199 219.2789 111.5532 351.5395 169.7107 244.4072 1140.3262;
	3.5943 48.5673 85.7583 96.6096 14.4782 30.6504 21.8072 8.9021 25.4 20.2889 37.5037 55.9482 84.2297 62.217 178.3696 67.1997 83.3774 88.3552 84.5303 66.8267 7.2691 71.5176 44.7175 86.2056 78.813 55.5241 7.5395 1172.8802 759.8909 759.8909 697.7754 110.993 281.7676 172.012 195.0588 324.2201 1139.2764 252.807 367.1394 211.1063 99.8158 340.0152 176.2944 227.4688 1151.1439;
	3.6395 49.1773 84.0594 79.8646 14.5452 29.1944 17.2889 7.287 20.7204 24.0038 44.3707 66.1924 99.6523 62.5879 175.4233 66.0897 82.0002 86.8957 87.0595 66.9679 5.763 68.1203 56.2946 87.9028 70.5811 51.326 7.0224 1167.9944 702.8405 702.8405 626.2002 106.6046 290.1983 172.3754 196.2216 299.8786 1083.7712 238.526 328.096 189.0565 99.2716 323.8632 185.2575 207.0086 1095.0605;
	3.6195 48.9075 78.9567 72.349 14.6698 29.9699 15.5958 5.2387 22.0518 25.6212 47.3603 70.6523 106.3666 63.4283 158.9288 59.8755 74.29 78.7252 84.4549 63.8553 5.1986 69.9298 57.6948 84.8191 55.321 35.292 5.6209 1154.9814 659.937 659.937 602.2246 89.9466 281.5163 164.3636 198.8564 281.5731 1076.3567 214.9743 282.0136 148.1813 88.5857 332.4664 182.7095 160.496 1087.5687;
	3.3173 44.8245 69.2441 60.2222 14.9108 27.8974 12.7804 5.1902 15.9896 18.6747 34.5198 51.4968 77.5281 64.7713 148.3302 55.8826 69.3358 73.4752 83.5114 61.6092 4.2601 65.0939 42.8362 81.8884 50.6807 24.8881 4.6413 1210.8778 649.1418 649.1418 540.486 65.0888 278.3713 158.5824 203.0667 276.9672 1067.4103 200.8676 144.8037 135.7519 82.5602 309.4748 152.8924 124.5199 1078.5291;
	3.5418 47.8579 64.3165 54.62 14.3057 26.8394 12.6015 3.9926 13.2797 11.0994 20.517 30.6074 46.0792 63.1658 157.8302 59.4616 73.7765 78.181 85.5304 64.0042 4.2005 62.6252 26.9572 79.2409 55.2684 14.2186 3.3599 1208.7841 653.9004 653.9004 628.676 68.7706 285.1013 164.747 198.0334 278.9975 1053.4759 203.839 175.3243 148.0405 78.317 297.7383 145.7266 116.6083 1064.4496;
	2.8878 39.0203 53.9139 38.6383 14.0403 22.0758 12.75 2.8812 7.8986 9.6515 17.8407 26.6148 40.0684 61.9464 159.0434 59.9187 74.3435 78.782 85.4204 57.0781 4.25 51.5102 18.3162 78.3127 53.1819 9.7442 2.5858 1193.1266 759.8395 759.8395 747.223 95.0487 284.7348 146.9193 194.2104 324.1982 1100.3504 239.3673 71.4222 142.4514 53.0366 244.894 127.6067 135.8204 1111.8124;
	2.6351 35.6062 47.464 52.4543 14.4652 18.279 14.5632 1.993 13.8079 7.5419 13.941 20.7972 31.3101 61.1716 162.731 61.308 76.0673 80.6086 83.9451 62.5035 4.8544 42.6509 15.3236 70.8858 36.3227 4.8884 1.1592 1077.2988 684.2817 684.2817 701.4996 111.1027 279.8168 160.8843 191.7813 291.9602 1035.7774 233.3343 286.1842 97.2929 44.6103 202.7747 118.0279 115.4547 1046.5668;
	2.3118 31.2369 34.9722 40.5709 14.1273 13.9609 15.5405 1.0735 16.5749 4.3604 8.0601 12.0241 18.1023 61.7211 159.4658 60.0778 74.541 78.9912 86.7308 67.236 5.1802 32.5755 1.9614 55.7054 23.6127 4.3989 1.6456 1107.006 739.4528 739.4528 738.4918 110.7422 289.1027 173.0658 193.5039 315.4999 1056.2672 243.066 338.0341 63.2482 38.6731 154.8733 82.1585 81.0555 1067.27;
	1.5361 20.7567 26.546 23.4598 10.3362 10.5265 17.5998 1.2527 14.813 14.3804 26.582 39.6551 59.7005 62.9599 170.5686 64.2607 79.7309 84.4909 85.5062 66.3509 5.8666 24.5619 34.4483 38.4449 20.3562 7.5707 3.6022 988.0166 700.3217 700.3217 709.3019 111.8531 285.0206 170.7875 197.3878 298.8039 1008.6907 210.5839 374.3085 54.5256 31.3455 116.7741 58.3988 62.2498 1019.1979;
	1.0999 14.8625 26.5059 26.141 9.2921 8.1945 16.6745 1.8401 13.7345 12.7211 23.5147 35.0793 52.8117 61.6848 167.7909 63.2142 78.4325 83.115 84.1371 62.7189 5.5582 19.1204 35.1724 42.3633 25.6848 11.0638 2.6886 999.6971 722.4434 722.4434 705.0758 106.8775 280.4569 161.4387 193.3901 308.2425 1013.0479 219.9063 398.6771 68.7984 31.089 90.9039 48.5868 43.8403 1023.6005;
	0.8933 12.0709 23.2283 29.3669 7.5422 7.6215 11.4963 2.3286 12.0996 17.3113 31.9996 47.7371 71.868 62.7311 176.941 66.6615 82.7096 87.6475 78.7501 66.0981 3.8321 17.7835 48.4248 42.4601 27.3362 11.1645 3.7813 936.3039 731.2677 731.2677 728.3019 96.9003 262.5004 170.1367 196.6703 312.0076 898.108 219.4703 396.0753 73.2221 33.1062 84.5478 32.9442 49.6164 907.4632;
	0.9495 12.8296 21.5049 1.1876 6.653 8.1937 8.844 1.8286 12.299 18.2122 33.665 50.2215 75.6083 63.4186 165.4059 62.3157 77.3177 81.9336 75.0085 65.5 2.948 19.1185 54.4213 51.2355 27.0466 5.3818 3.7539 842.1137 660.1828 660.1828 647.965 87.6966 250.0284 168.5971 198.8258 281.678 824.4735 207.8084 327.7877 72.4462 30.0372 90.895 34.3377 46.9608 833.0617;
	0.9118 12.3206 16.728 28.2499 7.3454 1.697 5.3115 1.5241 9.1087 15.7639 29.1394 43.4702 65.4441 64.271 148.4442 55.9255 69.389 73.5317 67.0461 60.2474 1.7705 3.9596 52.9862 47.2251 26.1276 4.0227 2.6647 800.6613 533.8747 533.8747 560.7021 82.2703 223.487 155.0769 201.4982 227.7865 627.9359 195.3013 230.3055 69.9848 29.9926 18.8248 2.5643 24.7511 634.4769;
	0.5344 7.2207 0.0148 0.0 6.5233 0.607 3.079 0.7854 10.7049 18.1266 33.5067 49.9854 75.2528 57.63 142.3504 53.6297 66.5405 70.5131 74.9199 47.3404 1.0263 1.4164 53.3912 42.6018 16.7016 4.1192 1.9102 753.6362 478.9031 478.9031 532.0574 82.61 249.733 121.8544 180.6778 204.332 676.8907 178.3208 223.7831 44.7365 37.2946 6.7338 0.0164 30.7279 683.9417;
	1.1453 15.4757 2.1572 0.075 3.6345 3.5912 1.5161 0.1253 6.4463 20.3764 37.6655 56.1895 84.593 62.3305 113.8333 42.886 53.2104 56.3872 67.1428 41.4347 0.5054 8.3794 68.1223 38.0597 14.636 3.0932 1.8063 723.7513 495.568 495.568 574.2021 90.3836 223.8093 106.6531 195.4146 211.4423 713.5102 190.2739 340.2047 39.2036 80.1923 39.8378 4.2333 8.3046 720.9426;
	0.4783 6.4622 20.2109 31.367 11.2756 3.2751 0.1861 1.3828 1.8992 22.7717 42.0932 62.7947 94.5371 64.2997 108.2201 40.7713 50.5866 53.6067 1.1858 55.1503 0.062 7.6419 69.829 46.0766 19.2947 4.7078 2.1767 739.094 449.6258 449.6258 581.8086 84.6865 3.9526 141.9569 201.5884 191.8403 631.5353 174.902 316.8172 51.6822 90.2204 36.3316 11.3369 24.3085 638.1138;
	0.3263 4.4095 22.6524 48.6325 3.2277 3.6198 0.9563 2.2974 0.4065 24.9524 46.1241 68.808 103.5901 64.9735 102.1945 38.5012 47.77 50.6219 6.6931 61.7811 0.3188 8.4462 69.3938 61.7722 24.8613 12.7031 2.8295 659.8093 337.9766 337.9766 597.7101 72.6285 22.3104 159.0247 203.7006 144.2033 576.8869 188.0067 16.5168 66.5928 85.4784 40.1557 11.2681 4.1283 582.8962;
	0.7212 9.7456 38.3653 69.6068 5.9242 4.6771 2.796 4.3437 0.4173 24.4857 45.2614 67.5211 101.6527 50.502 103.7829 39.0996 48.5125 51.4087 76.185 66.316 0.932 10.9132 65.6395 75.595 34.8664 12.6736 2.3741 577.9144 324.9633 324.9633 476.7039 57.4256 253.9499 170.6976 158.3304 138.651 613.9481 172.4763 0.6346 93.3922 95.6392 51.8845 17.6122 42.2915 620.3433;
	0.5291 7.1489 40.8034 66.7448 2.4015 2.5226 6.3428 2.1696 0.6847 23.2113 42.9057 64.0069 96.362 34.7688 135.776 51.1528 63.4674 67.2565 77.5455 67.5019 2.1143 5.886 65.8435 69.8309 35.7373 15.5585 1.3869 424.4255 328.1864 328.1864 452.7741 53.7992 258.4852 173.75 109.0049 140.0262 643.6012 150.3792 5.4865 95.725 78.8761 27.9838 10.6305 35.2763 650.3054;
	0.6132 8.286 42.3131 69.3172 7.997 2.8826 5.7803 3.4804 1.1188 18.4523 34.1088 50.8836 76.6049 21.0149 140.0408 52.7596 65.4609 69.3691 82.5688 70.3685 1.9268 6.726 45.8877 72.92 40.7954 31.9986 1.8378 409.9455 377.3992 377.3992 501.1759 59.582 275.2292 181.1287 65.8847 161.0237 524.969 142.665 21.7847 109.2735 63.8322 31.9773 7.6996 39.4274 530.4374;
	0.0357 0.4824 48.4925 71.7834 6.1286 2.1102 12.1609 5.7737 6.5259 22.906 42.3414 63.165 95.0946 8.4536 152.4614 57.4389 71.2668 75.5216 83.6173 70.1125 4.0536 4.9238 71.8383 77.0469 45.9111 39.3736 3.1464 282.1214 303.9042 303.9042 382.4182 54.1153 278.7243 180.4696 26.5032 129.6658 382.043 115.8086 131.1317 122.9762 60.0276 23.4093 25.5468 62.1954 386.0226;
];
