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
	3.9223 52.9991 84.0008 112.8768 14.6886 35.8726 31.8763 8.1301 27.0027 12.3267 22.7857 33.9918 51.1745 45.2423 188.2339 70.916 87.9884 93.2414 87.0967 73.6503 10.6254 83.7028 34.8934 29.1723 44.8167 28.0561 5.0124 1242.0365 800.9502 800.9502 639.8413 84.2092 290.3224 189.5761 141.8406 341.7388 1213.2429 210.3965 465.8356 120.0447 110.3346 397.9468 217.24 124.1357 1225.8809;
	3.3857 45.7482 77.8509 45.3033 14.76 28.3251 31.3817 8.1342 8.3864 11.8517 21.9077 32.6819 49.2025 38.5374 189.5596 71.4155 88.6081 93.8981 90.2278 73.6037 10.4606 66.0919 26.7745 29.9465 40.1954 28.9792 5.6243 1251.7084 796.5121 796.5121 657.1395 79.5323 300.7593 189.4562 120.82 339.8451 1248.4305 196.6249 455.8482 107.6662 112.248 314.2199 216.4283 108.8934 1261.435;
	3.1768 42.9257 87.8497 45.3913 14.5889 21.4565 31.1601 7.5236 7.8922 13.0747 24.1684 36.0545 54.2799 35.9823 195.0604 73.4879 91.1794 96.623 89.4856 68.9541 10.3867 50.0652 29.2057 34.9039 39.5457 28.4319 5.8923 1279.4537 787.7744 787.7744 599.2596 93.8903 298.2852 177.488 112.8093 336.1171 1255.591 193.418 457.2249 105.926 29.0055 238.0242 212.4278 131.3628 1268.67;
	3.6312 49.0649 83.1713 47.2536 14.2505 12.4088 31.4405 7.7729 10.2491 12.6312 23.3486 34.8315 52.4387 24.7013 197.5072 74.4097 92.3231 97.835 87.1039 68.8232 10.4802 28.954 30.5274 29.8667 36.7859 30.1981 5.0474 1293.1661 790.5724 790.5724 640.4361 97.1683 290.3462 177.1512 77.4419 337.3109 1230.4809 213.2816 457.4657 98.5337 27.7337 137.6554 215.3252 114.7478 1243.2984;
	3.8162 51.5653 81.1008 40.277 14.3954 20.2103 31.5895 7.7647 11.1856 11.5477 21.3458 31.8437 47.9405 29.626 186.3177 70.1941 87.0927 92.2923 91.0141 70.1427 10.5298 47.1573 15.4883 24.5821 39.2954 61.2066 5.2753 1248.8215 786.1879 786.1879 704.9009 101.4804 303.3805 180.5475 92.8814 335.4402 1204.0471 212.3227 462.267 105.2555 27.8066 224.1992 212.9753 186.0629 1216.5892;
	3.8411 51.9021 94.2467 112.0932 14.7709 33.1927 31.4763 7.4891 9.1646 13.0642 24.1489 36.0254 54.2361 25.1036 193.1648 72.7737 90.2933 95.684 90.5426 70.8053 10.4921 77.4497 40.1882 32.7337 55.207 67.0051 4.7704 1179.6382 777.8815 777.8815 738.8757 113.0547 301.8088 182.253 78.7032 331.8961 1159.483 230.1873 459.8444 147.8759 53.67 368.2179 212.0672 242.5623 1171.561;
	3.9832 53.8222 94.448 117.9507 15.0227 35.3519 31.6134 12.3693 10.4617 13.2208 24.4384 36.4573 54.8862 29.989 192.733 72.6111 90.0915 95.4701 81.5722 68.9842 10.5378 82.4877 28.1354 51.7393 104.5659 75.724 11.5841 1165.5216 803.9584 803.9584 747.1296 117.8878 271.9075 177.5656 94.0196 343.0223 1257.1685 281.3339 460.8914 280.0871 104.6439 392.17 218.318 282.3353 1270.264;
	3.9011 52.7119 92.3628 115.4518 14.8749 35.1812 31.5431 19.0151 10.1905 12.0848 22.3386 33.3248 50.1703 56.3559 193.5676 72.9255 90.4816 95.8835 75.9729 60.2541 10.5144 82.0894 27.008 54.4967 105.5812 75.3459 13.9763 1004.4272 789.0344 789.0344 741.7226 116.247 253.2429 155.0942 176.6833 336.6547 1176.0799 287.8119 459.1956 282.8068 119.1709 390.2764 216.4419 285.963 1188.3307;
	3.9094 52.8241 90.8681 113.1785 14.9893 35.1227 31.5866 18.7748 9.6992 13.2185 24.4341 36.4509 54.8767 64.7964 201.8848 76.0589 94.3694 100.0034 48.8525 70.1182 10.5289 81.9529 30.4978 85.8969 103.7524 73.3248 13.6003 801.6096 848.4347 848.4347 738.149 116.5887 162.8417 180.4844 203.1455 361.9988 1189.6516 291.9718 470.4893 277.9082 119.1821 389.6276 219.2828 279.4516 1202.0438;
	3.9015 52.7179 91.6991 115.1096 15.1798 35.1106 30.6954 18.6363 18.1083 12.6094 23.3083 34.7713 52.3481 60.5921 193.3724 72.8519 90.3904 95.7868 54.5515 65.0159 10.2318 81.9247 24.7688 88.5136 103.6469 73.6816 13.5767 639.9701 833.3022 833.3022 724.9752 116.4047 181.8384 167.3512 189.9644 355.5423 1137.9078 262.2533 460.3071 277.6258 117.4888 389.4933 216.3869 283.4847 1149.761;
	3.8179 51.5884 89.034 113.0261 15.0826 34.8333 31.5039 18.1636 26.9834 19.5666 36.1686 53.9564 81.231 68.9252 199.2485 75.0657 93.1371 98.6975 39.9214 70.7685 10.5013 81.2777 27.114 83.2275 99.9321 69.8835 13.367 480.7463 803.9457 803.9457 694.2991 106.5579 133.0715 182.1583 216.0899 343.0169 983.0283 259.9972 463.3964 267.6754 117.2683 386.4176 215.0581 264.6113 993.2682;
	3.3354 45.0687 87.4681 112.5737 14.911 34.0206 30.1133 17.7233 27.1763 21.5368 39.8104 59.3893 89.4103 65.5583 201.3515 75.858 94.1201 99.7393 54.1181 69.5838 10.0378 79.3815 31.5327 81.5729 98.0945 70.8816 12.9456 350.9164 769.2926 769.2926 647.0864 107.9657 180.3936 179.109 205.5343 328.2315 800.5647 243.2505 465.5058 262.7531 117.3922 377.4024 198.0486 256.6791 808.9039;
	2.183 29.4973 89.6633 112.4243 15.1741 24.1338 27.0226 18.571 28.1832 30.1197 55.6758 83.0574 125.0424 68.2564 200.6385 75.5894 93.7868 99.386 90.6154 71.5658 9.0075 56.3123 61.9544 83.9035 99.1062 71.722 13.7376 352.0969 746.3244 746.3244 653.268 105.4737 302.0513 184.2107 213.9929 318.4318 730.6115 231.5269 456.7984 265.4631 118.8204 267.7246 182.1402 267.9425 738.222;
	2.4348 32.8991 89.2205 111.2861 15.1056 13.4657 25.8874 18.4594 27.4116 31.1174 57.52 85.8085 129.1842 65.292 196.1094 73.8831 91.6697 97.1426 87.4457 71.104 8.6291 31.4199 71.8362 83.2007 98.1456 72.6352 13.7868 343.1142 632.8378 632.8378 598.1295 101.2112 291.4857 183.0219 204.6991 270.0108 539.7226 206.0772 456.1135 262.8901 119.9663 149.3792 145.2975 265.9168 545.3447;
	2.4118 32.5886 91.0488 112.6017 13.6766 10.828 21.836 18.2369 27.6896 30.7522 56.845 84.8016 127.6684 67.4806 203.0684 76.5048 94.9227 100.5897 88.4302 72.6268 7.2787 25.2654 71.0708 84.2548 99.3832 71.3053 13.7223 492.1928 518.7774 518.7774 434.2153 93.225 294.7672 186.9415 211.5607 221.345 476.1857 186.9761 467.2835 266.2049 118.4543 120.1187 123.7737 248.5217 481.146;
	3.4071 46.0372 90.2805 87.4629 15.0614 27.671 16.2285 18.8964 22.9575 29.716 54.9296 81.9441 123.3665 58.5176 199.9766 75.34 93.4774 99.0582 88.4142 71.3222 5.4095 64.5657 68.9115 86.5947 101.6676 72.3302 13.905 549.5715 546.2829 546.2829 429.3826 54.9788 294.7139 183.5835 183.4605 233.0807 532.0925 173.0889 463.854 272.3239 119.3291 306.9639 83.2089 258.7632 537.6352;
	3.1825 43.0019 92.3316 65.3987 15.0174 32.6431 13.5806 18.8339 26.7658 28.0425 51.8361 77.3292 116.4187 63.2617 202.1311 76.1517 94.4845 100.1254 90.5077 72.0037 4.5269 76.1673 69.2374 86.4512 104.177 72.9995 13.8949 594.0231 607.0435 607.0435 447.8532 33.186 301.6923 185.3378 198.334 259.0052 598.5962 124.7706 185.4211 279.0455 120.0889 362.1211 108.5334 260.8065 604.8316;
	3.6112 48.7955 89.4194 58.6177 14.7152 33.0044 26.6513 18.8078 26.0678 11.8587 21.9206 32.7012 49.2316 63.0273 184.0253 69.3304 86.0211 91.1567 72.9687 70.5843 8.8838 77.0103 24.906 85.2526 101.7553 72.2122 13.7267 647.7897 619.368 619.368 411.6987 30.8216 243.229 181.6842 197.5992 264.2637 741.6817 83.8248 393.3188 272.5588 119.9844 366.129 112.15 254.2759 749.4076;
	3.6722 49.6194 89.9329 49.0889 14.4653 32.7961 25.8923 18.7446 23.3798 21.9505 40.5753 60.5303 91.128 63.7217 178.1699 67.1245 83.2841 88.2562 52.5521 70.22 8.6308 76.5243 30.9291 81.154 101.5643 72.716 13.8958 1011.4271 684.1974 684.1974 457.7389 45.2752 175.1738 180.7464 199.776 291.9242 1016.1219 94.35 429.441 272.0472 118.8145 363.8182 130.7333 245.1098 1026.7066;
	3.5812 48.3905 63.7015 36.9485 14.2881 32.4903 0.0 18.9045 23.6628 26.6299 49.225 73.4341 110.5546 64.912 186.773 70.3656 87.3055 92.5178 25.9715 70.3078 0.0 75.8106 60.4623 76.9069 103.3568 73.1532 13.8536 1157.2316 607.3228 607.3228 565.8769 63.8094 86.5717 180.9724 203.5078 259.1244 1161.9834 141.697 394.0462 276.8485 119.6088 360.4254 135.2272 228.8699 1174.0874;
	3.7858 51.1538 62.7586 60.2555 14.7311 32.7483 28.5181 19.0384 0.0 23.1013 42.7024 63.7036 95.9054 60.9223 182.8456 68.886 85.4697 90.5723 40.8327 71.1554 9.506 76.4126 52.3644 86.5273 103.5351 75.5701 14.0305 1232.7357 674.495 674.495 439.2799 73.6229 136.1089 183.1542 190.9995 287.7845 1102.0509 194.4884 391.9986 277.3262 118.175 363.2875 132.5914 261.4277 1113.5306;
	3.6479 49.2908 47.802 82.9063 14.6642 33.4993 0.0116 18.9612 25.8767 23.4616 43.3683 64.697 97.401 63.6156 189.2494 71.2986 88.4631 93.7445 50.8681 70.1212 0.0039 78.165 55.7808 86.4604 105.9542 75.5089 14.1277 1263.2317 693.2238 693.2238 522.237 92.0448 169.5603 180.492 199.4434 295.7755 1211.4978 225.0521 443.2902 283.8059 119.9709 371.6189 144.6486 245.4088 1224.1176;
	3.6444 49.2434 61.5027 96.2846 15.2909 31.9183 27.4919 18.9807 25.7454 27.9797 51.7201 77.1563 116.1584 63.0099 186.3008 70.1877 87.0848 92.2839 44.5109 69.7811 9.164 74.4761 66.1443 88.0232 105.7038 75.2971 14.1306 1227.3675 694.1863 694.1863 568.2448 113.0424 148.3698 179.6168 197.5445 296.1861 1148.5478 244.0829 445.516 283.1351 119.5561 354.0808 140.0645 261.2621 1160.5118;
	3.7649 50.872 91.2408 106.1172 15.1107 33.0587 27.3041 18.7761 25.2562 27.5508 50.9272 75.9733 114.3774 63.8644 184.7855 69.6169 86.3765 91.5333 19.9121 70.96 9.1014 77.137 60.1044 87.2401 105.576 74.815 14.018 1234.6113 703.6223 703.6223 596.8768 115.8265 66.3738 182.6514 200.2236 300.2122 1223.3552 230.8674 445.866 282.7928 118.0095 366.7316 157.7283 276.9245 1236.0984;
];