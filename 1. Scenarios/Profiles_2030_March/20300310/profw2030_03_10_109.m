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
	3.6556 49.3949 81.1605 110.7034 14.3852 31.0655 30.7798 2.2463 26.9921 9.8434 18.1954 27.1439 40.8651 42.2325 184.4528 69.4915 86.221 91.3685 86.0196 69.6249 10.2599 72.4862 24.9558 36.3882 42.6571 24.3107 3.0655 1183.9237 803.3549 803.3549 659.5731 90.3924 286.7319 179.2147 132.4047 342.7647 1246.6165 216.6125 456.2835 114.26 110.2011 344.6203 204.9241 98.7484 1259.6021;
	3.0438 41.128 74.8393 42.2932 14.447 25.5211 29.5125 6.2445 7.7206 10.8791 20.1098 29.9999 45.1647 41.1597 181.2045 68.2677 84.7026 89.7594 85.9131 70.5588 9.8375 59.5492 6.4346 36.1123 35.3117 24.4124 4.66 1238.6051 808.537 808.537 675.4629 81.3439 286.377 181.6184 129.0413 344.9758 1285.7191 206.4913 444.1068 94.5849 116.3139 283.1141 212.35 88.3859 1299.112;
	3.0165 40.7601 90.1526 48.6988 14.9324 22.0436 30.1757 5.4764 9.0101 9.6797 17.8927 26.6924 40.1853 38.5876 190.302 71.6952 88.9551 94.2659 88.0837 66.429 10.0586 51.4351 1.1726 42.6051 40.8378 25.7447 5.4509 1237.7165 822.1982 822.1982 732.9654 97.014 293.6124 170.9884 120.9773 350.8045 1274.6387 209.593 440.2444 109.3871 34.195 244.5373 212.9287 126.8459 1287.9161;
	2.8893 39.0405 86.2242 44.7385 14.3411 12.1315 29.8827 5.9613 7.9897 8.9014 16.454 24.5462 36.9542 27.8635 194.7186 73.3591 91.0196 96.4536 85.4254 66.4223 9.9609 28.3068 0.0 39.129 35.5979 24.3092 4.8657 1241.7105 804.6756 804.6756 634.0298 100.7507 284.7513 170.9713 87.3559 343.3283 1253.9459 225.0295 435.7011 95.3516 32.8016 134.5786 207.6748 114.6981 1267.0078;
	3.5654 48.1769 80.7689 36.1744 14.3929 19.6546 30.5931 6.6181 9.8535 9.6218 17.7857 26.5328 39.9449 33.2826 177.0472 66.7015 82.7593 87.7001 85.7312 65.1201 10.1977 45.8606 0.0 29.7184 35.1664 57.0218 5.1616 1180.0149 820.1703 820.1703 653.257 103.937 285.7708 167.6192 104.3456 349.9393 1213.7584 226.4725 438.6819 94.1958 32.2577 218.0346 210.906 191.4778 1226.4017;
	3.586 48.4554 93.2309 110.2105 14.6355 31.9931 29.3629 6.3999 3.1372 11.5774 21.4006 31.9255 48.0637 31.0 186.8156 70.3817 87.3254 92.5389 88.3789 65.9331 9.7876 74.6506 0.0 34.111 50.8673 63.5979 5.1241 1093.3387 791.5754 791.5754 627.8012 110.1905 294.5963 169.7118 97.1893 337.7389 1161.0022 211.4115 434.531 136.2517 69.114 354.9103 204.9001 246.1283 1173.096;
	3.8227 51.6525 92.897 116.161 14.6026 34.4528 29.6203 10.9135 0.1441 11.9804 22.1456 33.0369 49.7368 39.8788 194.099 73.1257 90.73 96.1467 79.848 69.3832 9.8734 80.3899 0.0 56.9014 100.1806 72.744 11.0893 1159.6702 830.2615 830.2615 739.0464 121.4609 266.1601 178.5926 125.0254 354.2449 1280.7341 267.9898 433.7773 268.341 113.1667 382.1966 207.4048 273.2869 1294.0751;
	3.8633 52.2015 93.4608 117.0844 15.1168 34.687 29.9605 18.4138 6.7004 12.3759 22.8766 34.1274 51.3786 64.0076 198.5957 74.8198 92.8319 98.3741 83.9033 55.2636 9.9868 80.9364 1.184 61.7949 103.6066 72.3759 13.7958 1032.0594 840.8369 840.8369 765.4278 117.6892 279.6776 142.2488 200.6726 358.7571 1261.1178 301.1346 440.9295 277.5176 118.749 384.7948 212.5292 273.8128 1274.2545;
	3.8301 51.7528 89.894 111.9512 14.6166 34.2052 28.1592 17.5592 0.0 10.8858 20.1223 30.0185 45.1928 65.6227 193.5804 72.9303 90.4876 95.8898 41.7596 58.2208 9.3864 79.8122 0.0 86.7211 99.7612 71.0334 13.351 798.3118 845.9826 845.9826 739.1253 114.6003 139.1986 149.8605 205.736 360.9526 1220.2597 297.477 439.4635 267.2175 115.9033 379.45 211.8173 261.7294 1232.9707;
	3.7074 50.0948 86.3873 109.5891 14.5012 32.7309 28.6603 17.4538 17.1119 11.13 20.5737 30.6919 46.2065 64.3767 177.2289 66.7699 82.8442 87.7901 35.4187 48.6671 9.5534 76.3722 22.1106 87.838 98.0811 67.1301 12.9704 557.1575 828.1441 828.1441 700.9161 111.4161 118.0623 125.2693 201.8296 353.3415 1070.1201 258.0491 439.5033 262.7174 113.273 363.0951 203.2925 240.8646 1081.2672;
	3.7858 51.1541 87.9128 110.1596 14.6248 32.2552 28.9973 17.4994 25.6037 16.1197 29.7971 44.4514 66.9213 68.9824 191.4973 72.1455 89.5138 94.858 34.7346 52.4626 9.6658 75.2622 3.498 88.6341 98.9635 70.9953 13.0708 409.3906 810.3695 810.3695 742.1761 107.5215 115.7821 135.0388 216.2691 345.7577 948.4999 266.5385 436.1336 265.0808 115.4955 357.8178 200.0202 254.1517 958.3801;
	3.3959 45.8866 92.9721 113.7114 14.881 31.9725 28.5213 18.0377 26.9713 20.508 37.9087 56.5523 85.1392 68.6926 188.379 70.9707 88.0562 93.3133 50.5301 55.0288 9.5071 74.6024 34.7607 89.5294 101.3638 74.3755 13.3609 302.4172 782.301 782.301 729.9236 111.7266 168.4338 141.6443 215.3607 333.7818 791.5947 257.5667 436.1537 271.5101 120.9801 354.6813 190.8211 266.1542 799.8405;
	2.2732 30.7158 93.7044 111.6409 15.3297 21.3811 25.8271 18.0109 27.915 27.1523 50.1906 74.8745 112.7232 69.2274 187.0421 70.467 87.4313 92.6511 90.9359 54.5194 8.609 49.8892 61.5806 89.0238 98.8442 71.616 13.676 287.6789 714.7354 714.7354 669.4135 110.1967 303.1197 140.3331 217.0374 304.9538 673.3888 239.8987 441.1947 264.7613 120.5842 237.1876 181.9668 276.205 680.4033;
	2.4092 32.5538 94.2051 112.4781 15.3332 12.2016 24.8234 18.1748 27.6916 30.7225 56.7901 84.7196 127.5449 67.967 188.6895 71.0877 88.2014 93.4671 88.7499 60.6289 8.2745 28.4705 73.8202 89.3065 103.7316 72.8885 13.5655 256.9847 616.7363 616.7363 617.0339 104.0847 295.8329 156.059 213.0857 263.1408 491.6259 207.9797 453.6323 277.8524 122.8118 135.3567 150.2519 275.433 496.747;
	2.3577 31.8578 90.8107 109.529 13.8049 0.3419 20.1137 17.3478 26.5961 29.4923 54.5161 81.3274 122.4379 67.029 193.486 72.8947 90.4435 95.8431 88.3533 68.6162 6.7046 0.7978 72.6775 86.0721 97.8621 71.39 13.4245 425.0469 500.0697 500.0697 452.2409 94.3235 294.511 176.6184 210.1448 213.3631 436.0733 195.7061 441.2129 262.1306 121.0836 3.793 121.6459 262.0463 440.6157;
	3.3786 45.6521 91.3818 79.3877 15.2076 24.4608 14.5614 18.0238 22.2276 29.8542 55.185 82.3252 123.9401 55.3839 190.1878 71.6522 88.9018 94.2093 87.2792 68.3046 4.8538 57.0753 71.5466 87.9501 98.5009 73.505 13.5585 508.3283 512.0325 512.0325 440.7116 50.1473 290.9307 175.8162 173.6361 218.4672 481.882 167.8232 449.9638 263.8418 121.0676 271.3523 85.5 265.2837 486.9016;
	3.2611 44.064 89.5032 53.644 15.3776 32.2812 14.4196 14.9449 27.5844 29.3511 54.2552 80.938 121.8517 62.2903 187.6725 70.7045 87.726 92.9633 87.4385 68.3743 4.8065 75.3227 72.3204 87.2184 100.026 71.7971 13.4653 590.1794 581.0684 581.0684 467.3941 33.3273 291.4617 175.9957 195.2885 247.9225 576.362 126.6041 189.9985 267.9269 122.8274 358.1056 116.9942 258.833 582.3658;
	3.5797 48.3702 86.6998 39.4289 15.1787 31.2683 27.8116 18.1957 25.7889 13.5173 24.9865 37.275 56.1173 61.6655 169.9712 64.0357 79.4516 84.195 69.6443 68.4568 9.2705 72.9593 46.4139 88.1278 101.4529 72.2694 13.7058 713.6472 617.6353 617.6353 436.3042 29.4936 232.1477 176.2079 193.3296 263.5244 789.2832 88.0718 396.3362 271.7488 121.735 346.8695 118.1775 232.0234 797.5049;
	3.7066 50.0848 86.1578 20.0108 14.9658 32.0421 26.8633 18.3612 25.891 23.8204 44.0316 65.6865 98.8907 66.0608 172.4032 64.9519 80.5885 85.3997 58.2407 69.597 8.9544 74.7649 53.1382 87.1613 101.7358 74.3391 13.8624 985.3927 685.91 685.91 489.8269 42.2252 194.1357 179.143 207.1094 292.6549 989.9882 98.868 435.4066 272.5066 123.0052 355.4537 147.0098 218.7625 1000.3005;
	3.5809 48.3858 58.3804 27.3438 14.6077 31.5211 0.0 18.4123 25.6399 27.9275 51.6235 77.0121 115.9413 64.3521 189.1986 71.2795 88.4393 93.7193 47.5696 69.0064 0.0 73.5493 63.3192 80.0551 102.4514 73.4689 13.5116 1127.2757 592.1377 592.1377 548.4658 62.5897 158.5655 177.6226 201.7525 252.6454 1109.5321 139.5959 403.0045 274.4233 123.8666 349.6742 153.1624 204.3576 1121.0898;
	3.6645 49.516 62.1103 58.8318 15.3027 33.1261 29.339 18.5105 4.5178 28.4758 52.637 78.5241 118.2175 66.0534 193.4696 72.8886 90.4358 95.835 61.6993 71.0871 9.7797 77.2943 67.1808 87.3122 101.0746 74.7674 13.6739 1219.9664 728.4697 728.4697 453.7231 71.5989 205.6642 182.9783 207.0862 310.8137 1139.3796 189.83 428.5202 270.7355 123.3018 367.4793 150.1897 257.4811 1151.2481;
	3.7515 50.6906 45.5097 81.2336 15.0731 34.2616 4.4715 18.3106 27.9357 31.088 57.4656 85.7274 129.0621 68.1551 192.9387 72.6885 90.1876 95.572 59.2415 69.2935 1.4905 79.9438 70.1206 88.33 102.3758 73.7278 13.949 1239.6653 726.6062 726.6062 552.7401 82.9409 197.4716 178.3617 213.6755 310.0186 1209.9918 211.914 452.7052 274.221 122.1536 380.0756 157.0821 240.0485 1222.5959;
	3.7606 50.8142 57.5925 93.8094 15.1071 33.0635 29.9874 18.2291 28.2859 30.4791 56.3402 84.0485 126.5346 68.7877 196.3829 73.9861 91.7976 97.278 52.8285 69.4936 9.9958 77.1481 66.6243 89.5222 102.9951 74.3319 13.9484 1227.4576 719.5933 719.5933 583.6985 105.5716 176.0949 178.8767 215.6587 307.0265 1167.4221 238.8345 464.0161 275.8797 122.5757 366.7841 152.1561 256.5206 1179.5827;
	3.7125 50.1646 86.273 100.0308 14.9006 32.8708 29.6296 18.2255 27.8208 30.3568 56.1141 83.7112 126.0267 66.8204 199.4578 75.1446 93.2349 98.8012 39.4283 72.0221 9.8765 76.6986 64.8892 88.6742 103.0851 72.3851 13.573 1222.1144 717.4887 717.4887 609.7819 113.693 131.4277 185.385 209.4909 306.1285 1234.0912 233.8043 458.5366 276.1208 120.3858 364.6469 163.1129 263.5658 1246.9464;
];