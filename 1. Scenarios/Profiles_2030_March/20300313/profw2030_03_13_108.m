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
	0.8183 11.0569 56.5335 66.52 6.2779 3.5652 4.4621 8.475 0.6109 19.2488 35.5812 53.0801 79.9118 11.9878 133.8813 50.439 62.5817 66.318 76.8928 66.5236 1.4874 8.3188 67.3176 64.8692 48.7733 43.1182 4.2541 161.8766 333.2322 333.2322 240.3863 47.6035 256.3092 171.2319 37.5833 142.1791 411.7585 86.0581 90.5007 130.6427 61.8608 39.5501 36.074 66.8416 416.0476;
	0.529 7.148 53.7417 63.8992 4.6076 1.3633 0.0109 11.0758 0.3973 11.1236 20.5617 30.6741 46.1796 4.2631 117.3614 44.2152 54.8596 58.1348 72.6264 67.4047 0.0036 3.181 32.8286 67.2172 52.3487 48.2689 5.6986 23.8765 222.8794 222.8794 151.6254 29.9671 242.0879 173.4999 13.3653 95.0952 298.2486 84.9194 33.6362 140.2197 75.8313 15.1234 3.5746 79.0192 301.3554;
	0.3429 4.6327 61.5728 65.4314 5.2108 2.6204 1.7072 11.6845 5.8966 9.637 17.8139 26.5749 40.0083 7.6965 91.3311 34.4084 42.692 45.2407 65.1171 67.5275 0.5691 6.1142 25.4339 79.1154 56.0528 57.6025 6.1863 3.1875 37.9026 37.9026 26.4661 16.3498 217.057 173.8159 24.1294 16.1718 182.948 3.8268 213.9831 150.1416 64.1149 29.0684 5.1244 91.6276 184.8537;
	0.4767 6.4411 70.7269 75.5377 7.0874 3.9339 2.6032 14.1707 3.4978 14.0491 25.9696 38.7415 58.3251 12.4879 96.4154 36.3239 45.0686 47.7593 48.9662 65.778 0.8677 9.1791 44.0972 82.2485 68.358 71.9949 7.6777 6.34 92.4403 92.4403 74.0109 19.1159 163.2208 169.3126 39.1513 39.4412 139.9214 15.1147 301.0503 183.1018 65.7702 43.6401 34.739 131.6862 141.3789;
	0.4925 6.6544 80.3256 72.0106 7.9841 1.1496 1.2895 12.6689 0.6413 13.0432 24.1102 35.9676 54.149 0.6716 122.2703 46.0646 57.1542 60.5664 55.3661 62.1589 0.4298 2.6823 40.358 80.7084 77.2701 72.1395 7.0343 49.9934 128.5733 128.5733 268.6612 12.3522 184.5536 159.997 2.1055 54.8579 212.0214 31.7975 96.8147 206.9735 63.3979 12.7525 13.9871 135.6162 214.23;
	0.4247 5.7381 75.1369 58.3073 4.1082 3.5194 0.0 12.1594 0.0 6.521 12.0539 17.9821 27.072 3.8643 138.0254 52.0003 64.5188 68.3707 83.0648 67.0724 0.0 8.2118 15.8122 77.9134 55.9318 72.1539 7.0628 38.9231 44.3877 44.3877 171.484 13.9336 276.8828 172.6445 12.1151 18.9388 172.1253 29.7576 19.9011 149.8173 45.3812 39.0414 21.9334 134.1718 173.9183;
	0.4592 6.2048 56.121 38.6853 7.3841 2.6241 3.5685 6.4413 1.6739 4.6545 8.6038 12.8352 19.3234 5.954 121.7269 45.8599 56.9003 60.2973 68.6396 68.6031 1.1895 6.1228 19.1187 53.6284 33.4189 64.9866 3.1858 39.1324 35.0221 35.0221 137.6757 9.5235 228.7985 176.5846 18.6666 14.9428 34.9604 16.5342 38.1235 89.5149 18.4807 29.1097 31.9959 132.3301 35.3245;
	0.4553 6.1527 31.5434 23.7439 2.6234 2.88 3.9327 5.7615 0.9677 1.2011 2.2201 3.312 4.9862 9.953 42.4849 16.0059 19.8592 21.0448 17.0848 42.3928 1.3109 6.7201 0.0 30.229 30.2953 62.6808 2.6972 28.3009 6.6951 6.6951 25.7298 0.7636 56.9492 109.1191 31.204 2.8566 32.3467 6.0997 0.1389 81.148 6.1546 31.9493 0.5214 101.9003 32.6836;
	0.4451 6.0141 24.2101 13.3171 1.0491 0.0001 0.2498 3.6781 0.0 0.9615 1.7772 2.6513 3.9915 1.3501 7.8507 2.9577 3.6698 3.8888 3.9808 13.6665 0.0833 0.0002 4.6677 24.4459 22.6733 48.4387 0.3708 0.6618 6.1134 6.1134 17.6769 0.3772 13.2693 35.1777 4.2327 2.6084 7.2546 3.0931 8.5889 60.7322 0.0 0.0011 0.0 60.1069 7.3302;
	0.2665 3.601 27.8199 20.9621 5.2699 0.0 0.0 3.2566 0.0 0.1697 0.3138 0.4681 0.7047 1.6422 3.9999 1.5069 1.8697 1.9813 10.1102 9.2907 0.0 0.0 4.6201 34.9724 28.0444 40.9108 2.0233 14.174 22.2796 22.2796 42.8014 0.8069 33.7005 23.9142 5.1485 9.5059 1.2232 26.8861 1.3843 75.119 0.0 0.0 46.2672 64.5973 1.236;
	0.6989 9.4443 41.7118 0.0 8.9728 0.0 0.0 2.6561 0.0 0.0803 0.1484 0.2214 0.3333 1.4955 0.0092 0.0035 0.0043 0.0046 0.0001 3.5646 0.0 0.0 9.8729 38.3229 42.1574 43.6099 0.5004 12.0501 61.5579 61.5579 42.3746 1.0292 0.0005 9.1752 4.6886 26.2647 43.8147 13.2411 14.6755 112.9215 0.0 0.0 1.8579 81.5555 44.2711;
	1.296 17.5122 58.6265 0.0 10.8433 0.0 0.0 0.0 0.0 0.1115 0.2061 0.3075 0.4629 0.3624 0.0023 0.0008 0.0011 0.0011 0.0 3.4586 0.0 0.0 35.9183 51.3836 1.3591 40.222 0.0 70.6365 72.7358 72.7358 6.6821 2.0237 0.0 8.9025 1.136 31.034 87.1246 1.2139 1.5959 3.6403 0.0 0.0 0.0 99.3174 88.0322;
	1.696 22.9162 79.8383 0.1382 12.9152 0.0025 0.0 0.0202 0.0 23.92 44.2158 65.9613 99.3043 2.1495 0.0289 0.0109 0.0135 0.0143 0.0 4.5284 0.0 0.0058 31.6389 64.3302 67.9746 48.9117 0.0297 158.2481 63.9793 63.9793 3.8195 2.4582 0.0 11.6562 6.739 27.2978 112.7782 1.1939 0.0 182.0748 0.0 0.0275 101.3308 136.5744 113.953;
	1.5229 20.5771 0.0258 0.0359 12.9119 17.6774 0.0 0.0 0.0 0.3953 0.7306 1.09 1.6409 1.1196 0.0 0.0 0.0 0.0 0.0 2.175 0.0 41.2473 31.2757 0.3339 3.3116 25.9062 0.0 183.8606 170.0759 170.0759 32.5335 3.6298 0.0 5.5984 3.5102 72.5657 169.5956 6.6226 0.0 8.8703 0.0 196.1016 78.7424 118.378 171.3622;
	2.0836 28.1543 10.8152 4.2131 9.1886 0.1642 0.0 0.8215 0.0 0.9478 1.752 2.6136 3.9347 0.8453 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.383 24.7036 14.0469 30.6379 2.1742 0.2052 278.8039 230.8075 230.8075 96.5188 7.1439 0.0 0.0 2.6502 98.4779 244.6109 14.345 0.0 82.0658 10.0859 1.8211 83.0222 107.9402 247.159;
	3.1014 41.907 83.6785 13.0796 13.531 1.3146 0.0 0.0151 0.0 0.1851 0.3421 0.5104 0.7683 0.7626 0.0 0.0 0.0 0.0 0.0 0.2732 0.0 3.0674 39.386 0.1545 17.9691 0.2895 0.0 401.6775 253.0962 253.0962 186.425 12.1482 0.0 0.7033 2.391 107.9877 295.2278 41.1925 0.0 48.1314 14.987 14.5833 6.3142 176.2744 298.3031;
	3.3578 45.3719 1.9565 2.5253 13.9929 0.6815 0.5618 0.0768 0.0412 0.0 0.0 0.0 0.0 0.4165 0.0 0.0 0.0 0.0 0.0 0.379 0.1873 1.5901 0.0 4.9159 11.6566 1.4949 0.0 380.7164 363.5537 363.5537 215.0131 25.8249 0.0 0.9754 1.3056 155.1162 449.1275 73.6283 14.5296 31.2231 0.949 7.5596 133.5328 210.9545 453.8059;
	2.6714 36.0964 2.058 8.2549 14.013 17.5895 0.0405 0.0139 0.0 0.0001 0.0002 0.0004 0.0005 0.0 0.0 0.0 0.0 0.0 0.0 0.0804 0.0135 41.0421 7.8388 5.7727 9.2977 0.7009 0.0014 555.1484 463.8831 463.8831 351.8691 35.0573 0.0 0.2069 0.0 197.9235 550.5277 93.2227 0.0 24.9045 10.8062 195.126 105.8488 211.8044 556.2624;
	3.041 41.0904 81.8928 6.3485 14.0577 24.1112 0.0 0.0 0.0345 8.2838 15.3125 22.8432 34.3903 4.3092 0.0 0.0 0.0 0.0 2.1175 39.5862 0.0 56.2595 23.6939 0.0439 1.125 57.7196 0.0 719.2329 400.4151 400.4151 364.9871 43.4229 7.0583 101.8949 13.51 170.8438 563.2839 68.6933 0.0 3.0133 11.3715 267.4735 103.7489 191.4814 569.1514;
	2.9353 39.6625 0.0 0.0049 14.0678 0.0523 17.9213 0.0 25.3693 20.5823 38.0462 56.7574 85.4479 3.3114 0.0 0.0 0.0 0.0 2.4624 18.6578 5.9738 0.122 51.1096 0.0 0.0 46.5204 0.0 720.9168 411.9955 411.9955 347.3905 46.1741 8.2078 48.0253 10.3816 175.7848 542.465 74.4098 0.0 0.0 9.8933 0.5799 98.4948 169.3773 548.1157;
	3.2354 43.7178 79.117 0.0 13.8917 2.982 0.1968 0.0 26.2028 22.284 41.1916 61.4498 92.5124 6.7059 18.0115 6.7857 8.4193 8.922 20.7708 29.9183 0.0656 6.958 69.7606 66.86 0.0 48.0223 0.0 657.7825 382.6671 382.6671 255.7651 56.8205 69.2359 77.0099 21.024 163.2713 551.464 70.9784 0.0 0.0 7.3841 33.0802 97.407 165.8726 557.2084;
	3.4374 46.4467 84.3243 0.1361 13.6716 22.8031 11.6984 11.9214 26.4501 24.9197 46.0637 68.718 103.4546 10.4128 10.8788 4.0985 5.0852 5.3888 72.9818 51.9375 3.8995 53.2073 57.1754 74.0291 85.7859 62.1638 0.4502 731.928 320.8473 320.8473 234.359 61.1037 243.2728 133.6872 32.6455 136.8948 497.4381 108.7686 1.0313 229.7838 12.1003 252.9629 0.0 182.4242 502.6197;
	3.7239 50.3185 88.2495 112.7563 14.2696 25.9082 14.3995 17.238 27.2268 24.369 45.0457 67.1993 101.1681 6.2205 54.8059 20.6478 25.6186 27.148 45.7206 59.4797 4.7998 60.4525 55.0897 84.4618 95.9558 71.3259 7.6091 772.27 364.8576 364.8576 310.2582 48.9524 152.402 153.1008 19.5021 155.6726 458.7445 108.5529 80.5001 257.0245 11.0749 287.4083 138.7498 202.8909 463.5231;
	3.5771 48.3348 89.8697 110.4581 14.4427 16.8051 12.2251 17.6299 27.3966 25.6273 47.3717 70.6692 106.3921 9.2752 55.4706 20.8982 25.9293 27.4773 81.3245 47.1899 4.075 39.212 52.8777 85.7266 102.0365 73.2668 7.1417 687.3333 396.8753 396.8753 283.4017 48.7661 271.0818 121.467 29.0791 169.3335 434.015 83.2286 325.0839 273.312 13.1625 186.4249 134.3651 227.7228 438.536;
];
