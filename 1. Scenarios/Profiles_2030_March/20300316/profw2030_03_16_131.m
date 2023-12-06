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
	3.8512 52.0387 93.0115 116.9444 14.1112 33.4402 29.306 18.3249 27.2571 29.1562 53.8948 80.4004 121.0424 66.7718 201.9525 76.0844 94.401 100.0369 89.3276 72.7103 9.7687 78.027 74.1615 86.7792 103.222 72.3191 13.5568 1252.181 790.6367 790.6367 591.5062 110.9519 297.7588 187.1565 209.3386 337.3383 1194.3198 218.7642 465.755 276.4876 117.0299 370.9629 204.4744 280.3004 1206.7606;
	3.7644 50.8659 93.2648 115.745 14.298 33.4075 25.4051 17.95 26.8104 29.2018 53.979 80.5261 121.2316 66.2163 190.5611 71.7928 89.0762 94.3942 88.4103 71.1337 8.4684 77.9508 71.5939 86.4509 100.2099 69.7351 13.2023 1321.5064 765.253 765.253 617.0715 106.9111 294.701 183.0983 207.5971 326.508 1209.224 220.2839 459.2675 268.4194 117.0044 370.6004 187.2472 271.5486 1221.8201;
	3.8103 51.485 91.6294 117.5411 14.4295 34.4769 21.6166 17.682 26.7946 29.6183 54.749 81.6747 122.9608 64.8878 201.8982 76.064 94.3757 100.01 89.1305 71.8571 7.2055 80.4462 70.604 87.1396 100.4185 72.2688 13.2789 1308.9121 760.3211 760.3211 647.4712 102.3496 297.1018 184.9604 203.4321 324.4037 1248.2771 242.329 434.5488 268.9782 116.5224 382.464 195.9282 258.8008 1261.28;
	3.7908 51.2219 92.4573 119.7388 14.2371 34.4121 23.4725 18.4837 26.7817 29.7322 54.9596 81.9889 123.4339 66.8249 200.6868 75.6076 93.8094 99.41 88.8552 71.8848 7.8242 80.2948 70.865 89.0516 103.9094 70.5068 13.7559 1346.0669 798.188 798.188 654.5012 108.899 296.1842 185.0316 209.5052 340.5602 1295.0385 256.1905 449.8041 278.3289 119.4449 381.7444 168.2326 266.9294 1308.5285;
	3.7638 50.8577 93.1423 119.3646 14.1631 34.6333 30.32 18.5133 26.9281 30.4334 56.2557 83.9225 126.3448 67.1452 199.8121 75.2781 93.4006 98.9767 90.5301 72.061 10.1067 80.811 72.1032 89.0906 105.6732 71.4125 13.6349 1297.0507 781.7996 781.7996 661.4901 111.0398 301.767 185.4853 210.5093 333.5678 1257.8822 248.3885 471.316 283.0533 122.6999 384.1986 193.6843 265.9422 1270.9851;
	3.7765 51.0286 89.7582 115.6983 14.0881 34.1478 28.6061 17.4494 26.2297 29.8427 55.1637 82.2934 123.8922 64.5376 197.8669 74.5452 92.4913 98.0131 87.2758 70.9976 9.5354 79.6783 71.8098 85.4863 99.6483 69.3356 13.3093 1301.8747 753.5918 753.5918 681.5061 112.1258 290.9192 182.7479 202.3342 321.5325 1184.1632 242.1736 456.3405 266.9151 121.3105 378.8134 181.284 258.2703 1196.4983;
	3.6899 49.8588 88.2622 115.9582 14.1214 33.9789 30.3164 17.1436 26.2897 29.8519 55.1808 82.3188 123.9305 66.3442 198.1638 74.6571 92.6301 98.1602 86.8183 71.9736 10.1055 79.2841 71.0737 83.2543 97.5387 69.6129 13.2335 1236.6803 733.9249 733.9249 645.6527 104.682 289.3945 185.2603 207.9979 313.1413 1172.9269 264.2431 461.3314 261.2644 117.1932 376.9391 162.9814 241.0119 1185.1449;
	3.6776 49.6926 86.8043 116.5963 14.2751 33.1229 30.6113 17.0638 27.0693 29.266 54.0978 80.7033 121.4983 68.904 200.2563 75.4454 93.6082 99.1967 86.7027 71.3718 10.2038 77.2868 70.9265 84.2403 96.7322 68.0646 12.7982 1273.8871 759.2854 759.2854 675.2541 111.5244 289.009 183.7111 216.0234 323.9618 1238.7531 289.366 457.1282 259.1041 113.9446 367.4434 166.4037 216.1567 1251.6567;
	3.6546 49.3816 86.603 114.5513 14.6998 33.1385 31.8863 15.941 26.9286 29.9579 55.3766 82.6111 124.3705 67.9048 204.6034 77.0831 95.6402 101.35 92.4639 73.3903 10.6288 77.3231 71.9359 84.167 96.6461 69.2274 11.9849 1297.7884 746.3012 746.3012 701.2908 113.8183 308.2131 188.9069 212.8906 318.4218 1249.2145 300.6951 466.2094 258.8736 115.5815 367.616 198.5733 216.291 1262.2272;
	3.832 51.7781 88.9669 116.9431 14.8649 32.356 27.6048 15.879 27.5164 30.446 56.279 83.9572 126.3971 69.2689 200.4775 75.5287 93.7116 99.3063 90.8485 73.2078 9.2016 75.4973 74.0851 86.392 98.3151 62.0181 11.4194 1314.3709 803.6594 803.6594 711.7895 114.093 302.8282 188.437 217.1674 342.8947 1273.085 305.5115 477.9568 263.3441 115.7867 358.9358 206.5026 239.3318 1286.3463;
	3.8597 52.1526 89.9185 116.4528 14.59 32.3623 28.8899 17.1124 27.2087 30.1402 55.7136 83.1138 125.1273 68.8913 191.6546 72.2048 89.5874 94.9359 87.259 72.8845 9.63 75.512 72.0075 86.165 99.8613 69.22 12.1731 1327.8156 810.5582 810.5582 735.6478 114.0109 290.8634 187.6048 215.9835 345.8382 1337.6219 291.6624 472.6135 267.4856 116.2284 359.0059 208.7509 260.6828 1351.5555;
	3.8744 52.352 86.3855 114.3134 14.7161 32.3109 25.3936 16.8492 26.2514 28.9335 53.4832 79.7864 120.118 67.1309 189.6647 71.4551 88.6572 93.9502 83.9028 72.3121 8.4645 75.3921 72.108 85.7323 96.9292 63.1348 11.9318 1280.9911 787.3227 787.3227 701.7267 112.7635 279.6761 186.1316 210.4644 335.9244 1285.185 269.3859 464.2025 259.6319 119.3274 358.4357 208.548 231.4095 1298.5724;
	3.91 52.832 87.8432 118.8685 15.0561 34.1473 27.3388 17.4973 26.9269 30.7092 56.7655 84.683 127.4898 68.7832 191.8283 72.2702 89.6686 95.0219 88.7507 71.8038 9.1129 79.677 73.36 82.7837 98.2105 68.6385 12.6359 1302.0025 801.0515 801.0515 710.2473 111.7266 295.8358 184.823 215.6448 341.782 1307.1577 286.069 462.7985 263.0639 119.8449 378.8073 217.8906 247.5874 1320.7739;
	3.9229 53.0068 87.3758 118.0707 14.6522 33.242 27.0017 17.6385 27.7876 30.5682 56.5049 84.2943 126.9046 68.959 193.0078 72.7146 90.2199 95.6062 86.3474 72.4728 9.0006 77.5646 73.1937 85.6141 97.6946 70.1899 12.9282 1276.717 784.6156 784.6156 724.6338 108.0813 287.8245 186.5452 216.1959 334.7693 1260.1774 270.5429 456.1035 261.682 118.3718 368.7643 205.3968 259.3027 1273.3043;
	3.7144 50.1896 87.301 113.1905 14.0648 32.981 22.9955 17.2354 25.979 29.5733 54.6657 81.5505 122.7738 68.7964 188.3789 70.9707 88.0562 93.3133 86.1436 70.5167 7.6652 76.9557 72.9035 84.8871 96.3895 68.1781 12.3982 1243.1561 759.9572 759.9572 721.13 109.6984 287.1453 181.5101 215.686 324.2484 1221.0013 273.3424 442.2551 258.1861 115.7098 365.8696 204.025 259.542 1233.7201;
	3.6133 48.8233 88.2397 112.735 14.3745 31.4335 22.5068 17.4023 23.7623 28.5638 52.7998 78.7669 118.5832 63.1832 174.6795 65.8095 81.6525 86.5273 84.132 68.9698 7.5023 73.3449 69.1297 84.9945 97.4072 70.9019 12.2862 1242.8693 724.7132 724.7132 666.7928 108.9131 280.44 177.5286 198.0879 309.211 1145.8757 249.1764 434.351 260.9122 115.1857 348.7026 198.9945 269.6325 1157.8119;
	3.6299 49.0481 89.2366 110.445 14.0852 31.1216 22.9934 16.9753 26.4733 29.5399 54.604 81.4584 122.6352 63.3263 192.1655 72.3972 89.8262 95.1889 87.8671 68.1818 7.6645 72.617 70.1267 83.0185 97.5955 57.9422 11.5357 1170.2325 702.7544 702.7544 623.9753 93.8185 292.8902 175.5002 198.5365 299.8419 1100.2302 248.3481 446.3522 261.4165 114.5954 345.2418 188.0065 258.3724 1111.6909;
	3.5765 48.3269 87.8211 100.7941 13.9671 27.9545 19.4011 11.7945 25.7946 28.7559 53.1548 79.2965 119.3805 64.3355 194.5691 73.3028 90.9498 96.3796 88.3078 68.7025 6.467 65.2271 70.6954 82.0851 96.8175 66.8778 8.6631 1152.869 699.0398 699.0398 608.1845 107.2572 294.3594 176.8405 201.7005 298.257 1173.5422 261.8006 449.6561 259.3325 113.0094 310.1083 167.7836 226.605 1185.7665;
	3.8259 51.6958 82.8723 96.7399 14.8306 26.2487 15.7774 7.0147 26.2353 28.727 53.1015 79.2169 119.2606 63.6532 189.1604 71.2651 88.4215 93.7004 88.3093 68.301 5.2591 61.2469 72.0464 83.5694 89.7467 60.4581 6.3968 1161.3188 709.0598 709.0598 623.3619 105.6502 294.3642 175.807 199.5612 302.5322 1170.7957 290.2734 452.9163 240.3928 118.3291 291.1851 139.5124 224.8525 1182.9915;
	2.925 39.5238 77.8305 62.234 14.5526 23.0294 25.9255 8.25 26.0814 28.3939 52.4857 78.2983 117.8777 63.9191 181.1327 68.2407 84.669 89.7238 83.2853 67.6107 8.6418 53.7354 68.6842 83.3898 84.0073 44.2877 6.3483 1212.5876 742.9262 742.9262 689.6142 106.676 277.6176 174.03 200.3949 316.9819 1162.4399 303.694 437.0242 225.0196 114.5427 255.4732 115.9828 199.0753 1174.5486;
	2.5587 34.5736 79.0842 66.9585 14.1561 12.7079 24.0015 8.5977 26.8993 29.1836 53.9454 80.4759 121.156 63.2616 186.6209 70.3084 87.2344 92.4425 84.4571 69.1296 8.0005 29.6517 71.9655 86.1052 80.0139 47.7361 8.5753 1181.5214 756.98 756.98 662.6808 107.8263 281.5235 177.9399 198.3337 322.9781 1158.0767 281.1929 444.8767 214.323 112.7231 140.9727 84.5639 191.8027 1170.14;
	2.2391 30.2551 78.7347 77.7859 14.6337 16.1759 25.4936 10.6343 27.52 28.6143 52.8931 78.9061 118.7927 63.2697 181.7565 68.4757 84.9606 90.0329 85.851 66.782 8.4979 37.7438 72.8002 85.7089 92.7054 61.0544 9.2869 1087.0569 721.924 721.924 642.3244 103.0 286.17 171.8969 198.3589 308.0209 1062.2983 251.2101 467.0457 248.318 118.3268 179.445 72.9952 191.9544 1073.3639;
	2.7079 36.5902 78.7988 73.1808 13.8128 16.8032 21.6628 11.2666 26.2873 28.3288 52.3653 78.1188 117.6074 58.594 176.1046 66.3464 82.3187 87.2332 84.7068 69.5882 7.2209 39.2075 71.9579 85.4501 88.4901 54.4144 7.9621 885.8621 680.0388 680.0388 616.2131 95.9499 282.3562 179.1202 183.7001 290.1499 967.9986 246.946 439.191 237.0271 117.4635 186.4039 73.5817 213.539 978.0819;
	2.875 38.8472 82.7191 69.8662 14.1094 20.4344 19.2437 9.1617 26.6012 27.4162 50.6785 75.6024 113.8189 61.5762 186.3063 70.1898 87.0874 92.2866 86.4724 69.2158 6.4146 47.6802 69.537 84.6747 80.9448 55.786 6.3182 820.7635 682.3549 682.3549 604.8797 100.2444 288.2414 178.1616 193.0496 291.1381 881.2911 243.2224 438.8029 216.8165 113.9582 226.6855 86.9651 225.4457 890.4712;
];