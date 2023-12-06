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
	3.9344 53.1623 89.0705 114.4135 14.5196 34.1609 30.6702 17.8384 9.2702 16.3418 30.2076 45.0638 67.8433 58.6088 198.6912 74.8558 92.8766 98.4215 87.0204 67.1639 10.2234 79.7087 0.0 85.5923 102.2627 73.2101 13.4607 1311.0302 738.4214 738.4214 703.5532 118.0296 290.068 172.88 183.7464 315.0598 1144.3513 272.8272 441.9851 273.9179 122.2481 378.958 209.3984 266.4463 1156.2717;
	3.9614 53.5273 90.2504 112.7314 14.4017 34.277 31.9697 18.0772 10.7472 12.4257 22.9688 34.2649 51.5857 67.9982 194.1424 73.142 90.7503 96.1682 85.9866 70.897 10.6566 79.9797 3.161 83.2543 98.3154 73.943 13.091 1328.3101 802.4689 802.4689 787.5268 120.4869 286.622 182.489 213.1834 342.3867 1256.8308 270.9046 452.4785 263.3449 120.1456 380.2462 212.9151 264.5539 1269.9228;
	3.7876 51.1794 88.4157 109.6715 14.3777 34.1241 32.7649 18.0841 22.4239 10.2171 18.8861 28.1744 42.4164 66.917 172.8395 65.1163 80.7924 85.6159 84.3992 69.7955 10.9216 79.623 0.0 83.8428 97.8753 74.2682 13.1666 1329.9666 802.1385 802.1385 730.6568 117.6988 281.3307 179.6537 209.7939 342.2458 1253.4329 293.3007 445.5219 262.166 121.5599 378.5505 209.1231 251.6179 1266.4895;
	3.6461 49.2665 86.8637 109.7507 14.4428 33.2374 31.8469 17.8187 26.8046 26.8218 49.5796 73.9631 111.351 68.8359 194.382 73.2323 90.8623 96.2869 84.7538 67.7029 10.6156 77.5539 0.2124 81.608 96.4331 73.233 12.8814 1332.9074 802.8426 802.8426 756.3414 119.5652 282.5128 174.2673 215.8098 342.5462 1194.883 308.1156 445.0483 258.3029 120.339 368.7134 167.3608 239.8169 1207.3297;
	3.1953 43.176 89.4214 115.2476 14.7819 31.145 31.7566 18.2618 26.7694 24.8099 45.8607 68.4152 102.9987 67.9734 197.4817 74.4001 92.3112 97.8223 84.4612 70.1448 10.5855 72.6716 58.3773 84.0882 99.6967 70.5488 13.1062 1324.2623 796.7599 796.7599 752.8602 118.3944 281.5374 180.5529 213.1058 339.9509 1172.7567 334.1733 454.3174 267.0448 119.6839 345.5013 174.5092 250.9018 1184.9729;
	3.5014 47.3112 88.8314 112.4607 14.086 31.7912 19.007 17.9545 25.29 26.6289 49.2231 73.4312 110.5502 57.4826 199.6889 75.2316 93.3429 98.9157 56.0798 69.2769 6.3357 74.1795 63.4726 85.0879 99.4801 71.5665 13.2402 1292.9673 801.1492 801.1492 769.4623 117.4229 186.9327 178.3189 180.2159 341.8237 1154.8479 333.6343 439.125 266.4646 118.7986 352.6705 146.1901 243.7084 1166.8775;
	3.3028 44.6285 89.9159 113.3914 14.1187 32.342 12.8525 17.5753 24.4913 28.3633 52.4291 78.2138 117.7505 68.7896 198.5647 74.8081 92.8175 98.3588 85.7642 70.9198 4.2842 75.4646 68.9504 86.4757 101.4406 70.2682 13.2534 1273.7971 788.0123 788.0123 732.345 116.7765 285.8806 182.5476 215.6647 336.2186 1108.4266 344.3311 404.5833 271.7159 120.0691 358.7801 149.4307 247.1194 1119.9727;
	3.577 48.3325 89.0808 114.9657 14.286 32.4048 0.0 17.5816 0.0 28.0479 51.8461 77.3441 116.4412 51.5476 199.964 75.3353 93.4715 99.0519 88.0828 70.3978 0.0 75.6112 69.235 84.3862 97.9375 71.0236 13.2707 1267.1975 779.0787 779.0787 735.9732 121.666 293.6092 181.2042 161.6088 332.4069 1140.5112 348.2003 164.4142 262.3327 117.4981 359.4773 188.8423 255.2545 1152.3916;
	3.754 50.7242 92.45 118.3199 14.9217 31.6052 1.8354 18.6024 1.5014 29.0818 53.7573 80.1954 120.7337 30.4588 198.803 74.8979 92.9288 98.4768 86.4745 72.2331 0.6118 73.7454 71.2379 85.4007 100.8781 74.5705 13.5969 1178.6634 709.3821 709.3821 720.7902 116.5858 288.2485 185.9282 95.4925 302.6697 1026.7469 317.0966 27.2803 270.2092 120.482 350.6065 184.1498 265.7811 1037.4422;
	3.6686 49.5713 88.6748 115.3381 14.9216 28.9386 1.4179 18.729 1.0563 24.9458 46.1119 68.7899 103.5628 21.5402 191.2828 72.0647 89.4136 94.7517 87.4274 72.3965 0.4726 67.5235 43.3413 86.167 99.0502 75.5846 13.3359 990.2964 610.2517 610.2517 579.8964 113.8006 291.4246 186.3487 67.5315 260.3741 809.1065 270.4391 22.044 265.313 119.7714 321.0258 150.1183 267.7525 817.5347;
	3.5928 48.5466 88.712 116.9369 15.1553 26.4103 0.5827 18.0321 7.8653 28.4403 52.5715 78.4263 118.0704 7.1133 196.9577 74.2027 92.0663 97.5628 82.3439 71.6037 0.1942 61.6239 71.3281 86.5399 101.4361 73.8814 13.4334 741.948 671.2374 671.2374 527.2048 115.328 274.4797 184.3082 22.3011 286.3946 726.3779 210.5947 19.9566 271.7038 118.402 292.9778 150.7994 262.1521 733.9443;
	3.3969 45.9002 89.2823 117.0783 15.0642 20.0855 3.7292 17.6934 3.2227 25.6606 47.4332 70.761 106.5303 2.1837 197.5458 74.4242 92.3412 97.8541 40.6041 71.9202 1.2431 46.8663 67.906 86.1269 100.2296 74.0863 13.3309 527.5585 714.4554 714.4554 507.911 106.3052 135.3469 185.1228 6.8462 304.8343 739.3702 206.4417 2.4838 268.4722 119.7737 222.8156 147.191 268.5245 747.072;
	3.7181 50.239 92.2621 118.7359 14.8148 22.3698 0.2499 17.7084 26.198 19.6969 36.4095 54.3157 81.772 48.4716 196.4612 74.0156 91.8342 97.3168 57.8997 71.2014 0.0833 52.1963 68.0794 86.7664 101.3761 73.9781 13.4942 511.5346 682.7116 682.7116 521.1662 105.3854 192.9989 183.2725 151.9652 291.2903 550.5322 237.272 0.0 271.5433 117.8691 248.156 144.1644 257.9985 556.2669;
	3.5641 48.1593 87.3267 111.9533 14.6592 19.1092 1.3798 17.7102 19.6292 12.2093 22.5687 33.6681 50.6871 37.7337 201.5866 75.9466 94.23 99.8557 57.9024 72.397 0.4599 44.5881 60.5492 82.5987 97.0689 71.1324 13.022 466.0771 687.5538 687.5538 493.8559 91.1356 193.0081 186.3502 118.3004 293.3563 651.3385 242.0232 16.7452 260.0059 114.9242 211.9845 157.3822 239.2583 658.1233;
	3.6295 49.0421 87.6277 113.3087 14.9754 19.6187 2.243 17.7938 13.0915 16.4922 30.4856 45.4786 68.4677 24.4644 190.8224 71.8912 89.1984 94.5236 67.2036 69.0123 0.7477 45.7771 49.2067 84.9979 97.4266 73.4677 13.0679 333.673 657.0689 657.0689 447.0123 85.301 224.0121 177.6378 76.6992 280.3494 558.9073 236.9367 4.4398 260.964 113.6248 217.6373 165.9695 242.5696 564.7293;
	3.3478 45.236 88.5119 114.4473 14.9952 10.5533 4.5311 18.2118 22.0583 21.3037 39.3795 58.7465 88.4426 22.9989 173.3145 65.2952 81.0145 85.8511 62.487 69.0215 1.5104 24.6243 55.3693 87.2205 101.5558 73.388 13.4142 424.8179 557.3122 557.3122 410.3382 88.6719 208.2899 177.6615 72.1045 237.7865 473.6853 224.5469 52.9925 272.0246 118.9744 117.0709 159.1318 236.0184 478.6195;
	3.3431 45.1721 90.0676 115.4848 15.3207 18.9807 4.4371 18.3712 10.6362 25.8409 47.7666 71.2584 107.2791 32.1284 184.7965 69.621 86.3816 91.5387 70.5284 69.3114 1.479 44.2883 64.6411 86.3074 102.47 71.5264 13.3109 977.842 475.5096 475.5096 311.9951 87.0379 235.0947 178.4077 100.7267 202.8841 797.9035 235.1002 115.5582 274.4732 117.685 210.5594 137.7699 232.6479 806.215;
	3.107 41.9826 91.0163 116.0424 15.1847 21.7902 4.7413 18.7158 11.2758 27.5247 50.8789 75.9014 114.2691 55.4531 184.163 69.3823 86.0855 91.2249 81.9862 69.1821 1.5804 50.8438 69.5834 88.413 101.7403 71.303 13.6992 1123.7131 569.4694 569.4694 216.8648 67.0738 273.2873 178.0749 173.853 242.9736 940.998 211.4278 138.1835 272.5188 119.0665 241.726 175.9613 257.6985 950.8001;
	1.7776 24.0197 87.0436 110.1347 14.8934 31.2629 0.8288 17.9846 1.1418 24.751 45.7519 68.2528 102.7542 61.4151 190.3884 71.7277 88.9955 94.3087 60.1425 70.6082 0.2763 72.9467 50.0977 86.1823 98.7749 71.83 13.31 1123.781 687.0439 687.0439 297.0412 57.2358 200.475 181.7458 192.5446 293.1387 1095.9446 135.1836 257.0173 264.5757 117.5366 346.8093 149.3245 252.8141 1107.3607;
	3.5196 47.5577 86.8771 69.9983 14.5447 31.7188 0.0076 17.5043 1.6256 15.6413 28.9127 43.132 64.935 64.857 193.8061 73.0153 90.5931 96.0016 51.3263 71.0439 0.0025 74.0106 45.0441 86.3044 102.4153 73.2854 13.3691 1232.0178 724.8197 724.8197 377.4199 51.0984 171.0876 182.8671 203.3354 309.2564 1121.2636 110.3751 35.5791 274.3267 116.3442 351.8674 162.2785 251.9889 1132.9434;
	3.5596 48.0981 87.1183 111.0416 14.1933 27.5804 1.3686 18.4237 6.0734 14.3705 26.5637 39.6278 59.6595 64.8512 192.6728 72.5884 90.0633 95.4402 70.7063 69.2288 0.4562 64.3542 66.5044 85.9767 104.8201 72.496 13.5314 1173.4844 647.9307 647.9307 581.193 49.3036 235.6875 178.1952 203.3174 276.4504 1148.37 150.3651 59.8171 280.7682 115.7194 305.9585 132.1576 261.2829 1160.3322;
	3.579 48.3604 92.0717 112.6974 14.5225 31.6853 1.6203 18.3145 27.5827 29.1162 53.8209 80.2902 120.8765 66.0851 195.2916 73.575 91.2875 96.7375 70.812 68.8656 0.5401 73.9323 73.72 89.4923 104.7416 71.5026 13.8011 1202.8202 649.4987 649.4987 496.8404 68.6719 236.0401 177.2602 207.1857 277.1194 1105.4753 197.117 421.9237 280.558 118.5115 351.4954 171.3475 261.1683 1116.9907;
	3.5481 47.9425 90.889 110.5372 14.4496 32.0654 0.0 18.6456 26.9225 28.6678 52.9921 79.0537 119.015 65.3598 197.2447 74.3108 92.2004 97.7049 71.7175 69.6894 0.0 74.8194 68.988 88.6817 102.8379 71.7173 13.7286 1246.6334 736.1423 736.1423 570.2474 106.7735 239.0583 179.3807 204.9119 314.0874 1171.6118 232.1412 433.021 275.4587 116.292 355.7127 164.4592 261.5726 1183.8161;
	3.6245 48.9747 89.5596 111.8593 14.6222 32.2703 29.8052 17.8081 27.6139 26.9399 49.7979 74.2887 111.8413 67.5311 187.5396 70.6544 87.6639 92.8975 72.058 68.8563 9.9351 75.2973 69.01 87.0109 101.8023 70.3521 13.1771 1240.449 722.2208 722.2208 578.6067 107.3539 240.1935 177.2363 211.7192 308.1475 1154.8358 246.6169 455.7267 272.6848 117.9055 357.9847 159.0472 263.2575 1166.8654;
];