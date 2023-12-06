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
	3.4396 46.4761 91.7563 115.463 14.0208 31.7199 27.3553 18.1994 25.9671 27.7798 51.3505 76.6048 115.3281 65.125 195.1436 73.5192 91.2183 96.6642 86.4082 71.294 9.1184 74.0131 74.1347 85.3741 104.2232 73.3797 13.1589 1248.1534 739.2953 739.2953 534.5688 109.4343 288.0274 183.511 204.1756 315.4327 1204.9725 207.2502 436.765 279.1692 113.5421 351.8793 188.5119 268.9499 1217.5243;
	3.5847 48.4367 91.9473 115.0099 14.3262 31.5282 26.0167 18.0201 27.4381 29.8236 55.1284 82.2408 123.8131 64.9213 194.4747 73.2672 90.9056 96.3328 86.0924 70.5249 8.6722 73.5657 74.7943 86.3277 101.7523 71.8989 13.2033 1254.181 744.5485 744.5485 599.3849 103.848 286.9746 181.5314 203.537 317.674 1213.1511 210.6362 447.5607 272.5508 112.7172 349.7525 173.7985 258.5699 1225.7881;
	3.5542 48.0245 91.8418 115.347 14.3449 32.286 22.5706 17.6868 27.9359 30.0442 55.5362 82.8491 124.7288 63.3675 202.6208 76.3362 94.7134 100.368 86.9555 71.8183 7.5235 75.3339 73.9796 86.1231 98.6399 74.7946 13.5232 1253.111 733.3064 733.3064 637.0403 97.0856 289.8518 184.8604 198.6656 312.8774 1231.1015 212.3462 425.9588 264.2139 113.222 358.1589 181.1739 262.964 1243.9254;
	3.2513 43.9317 89.9611 112.8979 14.3722 31.2469 22.7424 17.8058 27.1854 30.7327 56.8088 84.7476 127.5871 64.5524 201.3168 75.8449 94.1039 99.722 87.6338 70.4793 7.5808 72.9093 74.6344 86.1166 98.7145 73.7437 13.4742 1261.687 732.508 732.508 635.2378 103.9863 292.1127 181.4139 202.3806 312.5367 1217.2117 226.494 414.4397 264.4137 114.3838 346.6318 153.2818 266.9852 1229.891;
	3.638 49.158 93.7947 117.0172 14.8391 33.0594 30.3594 18.025 28.4596 31.1876 57.6499 86.0023 129.4759 66.8605 205.5994 77.4584 96.1058 101.8434 88.4415 73.5695 10.1198 77.1385 75.2271 84.5091 100.028 73.7459 13.5452 1259.5257 758.7128 758.7128 679.2078 108.1624 294.8049 189.3682 209.6167 323.7175 1238.4565 229.3087 467.4636 267.932 115.2423 366.7385 198.4323 261.0631 1251.3571;
	3.672 49.6163 91.6065 114.5279 15.064 34.5553 30.026 17.5928 28.4986 31.0869 57.4636 85.7244 129.0576 67.2803 205.763 77.52 96.1823 101.9245 91.8652 72.6901 10.0087 80.629 75.4825 84.0095 97.561 70.3769 13.1063 1290.748 786.3391 786.3391 724.8315 111.5041 306.2174 187.1046 210.9328 335.5047 1214.0831 235.3881 469.0045 261.3242 113.7707 383.3332 198.8408 270.872 1226.7298;
	3.6227 48.951 94.3924 118.9206 15.2137 34.3005 31.6907 18.5928 28.5007 30.671 56.6949 84.5777 127.3312 67.019 205.5928 77.4559 96.1027 101.8401 91.5841 73.0222 10.5636 80.0345 75.0859 85.9402 101.7561 73.3114 13.6356 1280.9112 785.8491 785.8491 704.6116 112.445 305.2802 187.9594 210.1137 335.2956 1238.6311 271.112 473.7858 272.5611 114.1239 380.5067 180.1089 267.0795 1251.5335;
	3.5997 48.6396 94.8128 119.1817 14.673 34.4466 30.6929 18.208 28.4592 29.575 54.6689 81.5553 122.781 67.384 201.3655 75.8633 94.1267 99.7462 87.8785 69.1987 10.231 80.3754 74.2311 86.0635 100.1572 70.5845 13.023 1279.813 767.2069 767.2069 667.3354 111.3558 292.9284 178.1177 211.2579 327.3416 1249.5003 268.941 472.3883 268.2782 113.1837 382.1276 191.1048 265.3434 1262.5159;
	3.628 49.0222 91.9937 114.41 14.7843 34.5421 31.0028 17.6656 27.6961 29.393 54.3325 81.0533 122.0254 67.222 199.2965 75.0838 93.1595 98.7213 89.2748 69.7044 10.3343 80.5983 72.1688 86.3863 101.0172 70.2234 12.9497 1283.64 787.1678 787.1678 729.595 118.4944 297.5828 179.4193 210.7499 335.8583 1250.822 294.2926 468.1126 270.5818 117.5405 383.1874 210.0548 269.3108 1263.8514;
	3.6232 48.9579 90.0819 113.764 14.8274 33.1554 23.6817 17.122 26.7793 25.0298 46.2672 69.0216 103.9116 65.6556 191.6042 72.1858 89.5638 94.9109 78.7658 68.0642 7.8939 77.3626 69.3514 86.2488 98.2154 69.4966 12.3436 1250.5117 805.1806 805.1806 729.7738 117.0967 262.5527 175.1974 205.8392 343.5437 1226.3142 313.1532 445.2461 263.0769 113.9444 367.8037 208.5546 260.2751 1239.0883;
	3.624 48.968 89.0413 113.2072 14.3631 33.3286 25.0795 17.2596 26.3648 27.7445 51.2853 76.5076 115.1818 64.9479 190.2438 71.6733 88.9279 94.2371 84.8305 70.3854 8.3598 77.7667 70.1703 84.2013 97.2959 66.8143 12.8366 1251.943 792.7861 792.7861 719.359 116.8019 282.7684 181.1723 203.6206 338.2554 1256.2959 298.6311 450.6568 260.614 115.6729 369.7253 210.7544 259.5917 1269.3823;
	3.5949 48.5755 89.5192 116.9141 14.9449 34.5893 23.9051 17.3752 26.9864 27.5928 51.0048 76.0892 114.5519 65.3927 198.0831 74.6267 92.5923 98.1202 88.1342 68.8788 7.9684 80.7084 72.1641 85.9726 98.1243 62.6763 12.9605 1238.4015 770.9233 770.9233 724.4723 116.9156 293.7805 177.2942 205.0149 328.9273 1244.0701 293.2153 462.7301 262.833 116.6009 383.7106 210.8393 264.1124 1257.0291;
	3.6981 49.969 90.3067 114.5834 15.0027 34.2595 26.043 17.2661 26.7975 28.6487 52.9567 79.001 118.9356 65.6092 200.4938 75.5349 93.7192 99.3144 88.4382 68.4826 8.681 79.9389 70.5269 81.6817 88.0147 64.4688 12.8227 1270.8033 832.1492 832.1492 734.5306 115.2474 294.794 176.2745 205.6936 355.0503 1289.2089 303.9742 463.3155 235.7536 119.1762 380.0524 215.8471 263.065 1302.6381;
	3.5686 48.2203 87.4433 113.6384 14.5414 32.7644 26.4515 14.531 27.3325 28.7674 53.176 79.3281 119.4281 64.4691 200.4884 75.5328 93.7167 99.3117 86.4704 71.1795 8.8172 76.4504 72.4566 81.8258 80.2064 63.7342 12.571 1253.2573 805.2083 805.2083 727.4679 111.9302 288.2347 183.2162 202.1192 343.5556 1262.2686 292.6178 469.0153 214.8385 112.3175 363.4669 206.1342 257.0576 1275.4172;
	3.6584 49.4329 93.0696 117.8754 15.0773 33.5685 22.2726 17.2878 26.7754 29.9136 55.2948 82.4889 124.1866 66.5058 200.5425 75.5532 93.7419 99.3385 87.0703 71.2582 7.4242 78.3265 74.85 86.1562 96.9751 63.3171 12.7639 1243.9269 780.8403 780.8403 745.0279 114.2897 290.2344 183.4187 208.5046 333.1585 1239.5055 273.9649 466.3392 259.7547 115.3247 372.3867 205.9744 266.6365 1252.417;
	3.597 48.6031 92.2632 114.5629 14.8647 32.5893 23.6458 16.9061 26.5995 29.0564 53.7103 80.1252 120.6281 65.6249 188.9483 71.1852 88.3224 93.5953 88.2573 70.0712 7.8819 76.0416 71.5617 85.534 97.0148 50.3407 12.1374 1222.6566 806.4782 806.4782 689.938 112.6209 294.191 180.3635 205.7429 344.0974 1188.1514 285.1856 461.7026 259.861 116.8394 361.5235 198.2187 276.5338 1200.528;
	3.6238 48.9655 93.0277 111.0638 14.8366 31.58 21.8983 16.7738 25.8248 28.6011 52.8687 78.8697 118.7379 64.7816 198.0395 74.6102 92.5719 98.0986 90.2408 68.4338 7.2994 73.6866 69.4242 82.132 96.7485 46.1761 11.8389 1156.0874 750.6406 750.6406 591.7638 112.8867 300.8025 176.1488 203.0991 320.2733 1104.8772 280.9854 460.2783 259.1479 114.9391 350.327 192.2048 266.3361 1116.3863;
	3.6098 48.7759 90.2776 105.0848 14.7464 28.7291 16.4614 11.243 22.2602 27.157 50.1993 74.8875 112.7428 63.388 188.436 70.9922 88.0829 93.3416 90.1324 66.8898 5.4871 67.0347 70.376 82.2138 95.8745 64.3358 9.5105 1141.1307 709.0481 709.0481 595.4487 108.716 300.4415 172.1746 198.7298 302.5272 1110.3633 268.289 444.9876 256.8067 120.091 318.702 171.3242 230.4776 1121.9296;
	3.6082 48.755 80.473 90.6994 14.659 23.6607 12.6926 6.2341 23.2677 25.612 47.3434 70.6271 106.3287 62.5538 185.5564 69.9073 86.7368 91.9151 86.6519 66.4295 4.2309 55.2084 70.4514 81.4288 83.6615 58.0404 8.1788 1083.9984 666.5996 666.5996 563.1002 104.7402 288.8396 170.9897 196.1145 284.4158 1037.9847 281.2877 425.0347 224.0933 114.6912 262.4763 120.3631 220.9789 1048.797;
	2.8187 38.0867 77.137 34.3681 14.6013 19.2872 24.9129 7.1239 26.2111 26.9888 49.8883 74.4235 112.0442 65.0442 188.8093 71.1328 88.2574 93.5265 87.7201 66.9717 8.3043 45.0036 68.9942 77.0267 66.0902 41.6642 5.539 1187.9455 724.4772 724.4772 646.2221 105.7962 292.4003 172.3853 203.9225 309.1103 1065.2191 291.7036 437.6071 177.0273 112.1098 213.9598 102.5569 193.7713 1076.3151;
	2.4713 33.3921 83.2163 68.7208 14.7401 10.9631 23.9981 9.5622 25.9344 28.2312 52.1849 77.8497 117.2022 64.601 187.6517 70.6967 87.7163 92.9531 86.9122 67.3176 7.9994 25.5805 68.7093 84.1435 75.7883 54.8684 9.0221 1212.2625 710.8918 710.8918 658.2069 111.5617 289.7073 173.2756 202.5328 303.3138 1075.1018 276.4198 437.1754 203.0045 113.2114 121.6171 73.0903 200.9341 1086.3007;
	1.9677 26.5876 81.2088 76.9236 14.6775 13.9029 23.4184 11.5359 25.4784 25.2799 46.7296 69.7113 104.95 63.0425 183.3547 69.0778 85.7077 90.8245 84.7187 58.9362 7.8061 32.4402 62.0164 84.9114 88.7944 67.8808 10.0594 1109.0282 650.9437 650.9437 598.1164 105.5871 282.3956 151.702 197.6467 277.736 931.8519 242.5189 438.7361 237.8421 113.9114 154.23 55.6984 194.0985 941.5587;
	2.703 36.5241 81.6141 79.6765 14.8763 17.4507 21.59 12.7303 25.9333 28.3801 52.4601 78.2602 117.8203 66.0655 178.0533 67.0805 83.2295 88.1985 88.1771 63.19 7.1967 40.7182 68.7458 83.3329 85.4458 59.2532 8.1793 919.3459 657.062 657.062 662.5271 99.4109 293.9235 162.6512 207.1243 280.3465 894.7024 247.1885 438.6395 228.8726 111.7415 193.5861 67.1417 213.1865 904.0222;
	2.8882 39.0265 87.4265 70.5895 14.6907 21.666 18.7162 9.6148 26.1627 28.6305 52.9231 78.9508 118.8601 64.5517 187.9083 70.7934 87.8362 93.0802 85.65 66.9883 6.2387 50.5541 71.7776 83.5986 74.5792 59.4408 5.765 837.6435 611.4555 611.4555 604.5419 103.5923 285.5001 172.428 202.3783 260.8877 802.551 234.9449 429.3371 199.7658 112.2802 240.3485 85.4722 229.5981 810.9109;
];