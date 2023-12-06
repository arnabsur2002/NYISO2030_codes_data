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
	3.8438 51.9379 92.8765 115.2086 15.3841 33.0562 28.3163 11.9121 27.9536 29.6715 54.8473 81.8213 123.1816 67.1831 198.6356 74.8348 92.8506 98.3939 92.1483 72.7637 9.4388 77.1312 75.5032 89.5284 100.5242 66.2546 9.1829 1261.4694 723.5074 723.5074 719.0618 111.6325 307.1609 187.2939 210.6279 308.6965 1124.349 272.4362 453.6944 269.2611 113.3168 366.7036 196.9172 250.7145 1136.0609;
	3.8792 52.417 91.5541 113.1144 15.1846 33.6296 28.2339 11.452 28.3116 28.8631 53.353 79.5921 119.8255 69.5406 201.5218 75.9222 94.1997 99.8236 91.4797 73.1289 9.4113 78.4692 75.7355 87.7903 101.8134 65.1689 7.8674 1241.3488 749.9795 749.9795 754.3269 112.7491 304.9325 188.2339 218.0192 319.9912 1196.0097 261.334 451.9679 272.7145 114.2937 373.0648 204.7204 253.5841 1208.4681;
	3.7903 51.2158 89.4107 100.5276 14.76 32.3464 24.4775 9.5913 27.5103 27.9397 51.646 77.0457 115.9919 67.9357 198.9288 74.9453 92.9876 98.5391 90.3161 71.7573 8.1592 75.475 72.3881 85.7022 87.9746 60.8831 7.9888 1271.6467 752.8408 752.8408 744.2123 109.0602 301.0536 184.7036 212.9877 321.2121 1175.9431 260.624 448.8164 235.6462 115.9838 358.8299 178.5796 246.0849 1188.1925;
	3.7811 51.0909 90.3603 102.9219 15.2623 32.2634 21.3917 10.8393 27.069 28.7275 53.1024 79.2184 119.2628 63.383 199.8347 75.2866 93.4111 98.9879 89.7848 71.0783 7.1306 75.2814 74.2853 86.224 85.357 58.1282 7.2965 1239.9826 804.3911 804.3911 744.9256 113.3654 299.2826 182.9556 198.7143 343.2069 1216.457 259.5556 418.0002 228.6347 111.0157 357.9091 186.4187 244.1042 1229.1284;
	3.6602 49.4574 89.7722 90.2569 14.4098 31.9073 18.3862 9.0741 22.3375 26.6905 49.337 73.6011 110.8061 61.6465 193.5349 72.9131 90.4663 95.8673 88.9136 70.0997 6.1287 74.4504 73.3753 87.5281 76.7493 52.4523 7.3092 1217.4472 742.9067 742.9067 660.1918 99.3997 296.3785 180.4369 193.27 316.9735 1138.6522 243.5263 364.3051 205.5785 112.0541 353.9585 190.8573 216.848 1150.5131;
	3.7179 50.2376 85.7512 81.8103 14.7443 31.6565 16.6307 7.4738 23.7941 27.8472 51.4751 76.7906 115.6079 62.3455 182.109 68.6085 85.1254 90.2075 85.938 68.2056 5.5436 73.8652 74.1949 87.3766 62.0086 42.0434 6.3168 1220.2498 709.417 709.417 638.9879 84.4233 286.4599 175.5613 195.4615 302.6846 1152.7612 216.7399 329.3578 166.0945 100.6627 351.1763 188.3018 186.9439 1164.7692;
	3.2034 43.2845 76.2999 66.3231 14.6357 28.8241 14.0147 5.6921 17.0383 27.5313 50.8912 75.9197 114.2967 61.8806 178.8876 67.3949 83.6196 88.6118 85.5122 67.8118 4.6716 67.2562 73.2193 84.3608 55.3044 28.4251 4.8057 1174.2622 625.006 625.006 507.5028 58.1323 285.0407 174.5476 194.004 266.6692 1060.4129 192.6995 265.8141 148.1369 74.8873 319.7552 150.8547 126.8488 1071.4588;
	3.5602 48.1057 72.6511 71.1996 14.3956 28.6172 15.758 5.5194 15.3192 25.1962 46.5748 69.4804 104.6023 65.219 194.2127 73.1685 90.7831 96.203 91.4791 70.7534 5.2527 66.7734 63.1545 83.8055 60.031 20.6772 3.57 1237.4037 695.3809 695.3809 613.0292 64.2709 304.9303 182.1195 204.4705 296.6959 1133.6728 206.7839 266.8935 160.7973 80.2629 317.4599 152.0677 121.8359 1145.4819;
	2.8835 38.9627 60.8432 68.7481 14.6648 26.2135 16.0648 4.0695 20.9497 24.6739 45.6093 68.0401 102.434 62.2453 185.7771 69.9904 86.84 92.0245 90.0077 69.0626 5.3549 61.1647 57.6088 83.1157 58.9758 14.0245 2.5408 1167.5448 774.6812 774.6812 702.6088 83.9389 300.0255 177.7672 195.1474 330.5307 1086.7574 232.7342 240.6325 157.9708 53.6535 290.7946 151.7565 127.6732 1098.0778;
	2.3035 31.1248 46.6563 58.8399 14.0126 18.5045 19.2272 1.6259 21.5921 19.8012 36.6021 54.6032 82.2048 61.2984 175.7523 66.2137 82.154 87.0587 91.2907 67.1849 6.4091 43.1771 48.7633 66.1372 32.9162 5.3237 0.801 1114.4399 771.4359 771.4359 707.4404 102.3985 304.3023 172.9341 192.1788 329.146 1133.806 219.4838 331.3764 88.1683 25.8515 205.2762 123.9649 109.7245 1145.6165;
	2.0953 28.3127 34.8131 43.2934 13.5204 14.8558 20.1787 0.8452 20.2038 15.6118 28.8581 43.0507 64.8125 63.3912 160.8392 60.5952 75.183 79.6715 90.2914 66.3582 6.7262 34.6634 33.4889 45.6832 20.5857 2.3308 0.5793 1154.4467 761.1964 761.1964 687.544 98.2005 300.9713 170.8063 198.7398 324.7771 1089.113 216.8897 378.4783 55.1403 29.7456 164.7998 93.5992 78.7239 1100.458;
	1.2757 17.2369 24.1095 22.5538 9.0228 10.7274 20.7267 0.9252 18.1892 16.227 29.9953 44.7471 67.3665 64.6277 148.8086 56.0628 69.5594 73.7122 87.1056 60.6487 6.9089 25.0306 37.4431 21.3271 13.9981 3.7741 0.627 986.8978 726.2381 726.2381 662.8461 94.2652 290.3519 156.1099 202.6165 309.8616 966.5867 196.1475 387.8933 37.495 25.7352 119.0024 66.495 58.3147 976.6553;
	0.9848 13.3066 24.7599 25.5379 7.0932 7.7908 19.0766 1.7625 16.2918 13.4411 24.8456 37.0648 55.8008 62.4329 153.0887 57.6753 71.5601 75.8323 87.6019 63.1113 6.3589 18.1785 39.0701 36.5674 20.8296 8.9812 1.8679 1014.0225 733.0671 733.0671 643.5318 92.4424 292.0063 162.4485 195.7355 312.7753 980.9146 193.1802 406.6761 55.7936 26.0672 86.4259 50.6933 48.7192 991.1325;
	0.804 10.8639 21.8426 27.4823 7.4415 6.875 13.5486 1.2326 13.3775 17.6077 32.5477 48.5547 73.0988 64.878 168.9169 63.6385 78.9588 83.6728 86.1906 65.1695 4.5162 16.0417 49.8286 31.7837 21.3909 7.5184 1.8199 984.1547 688.4136 688.4136 641.4115 88.355 287.3022 167.7464 203.4012 293.7231 841.7704 188.8428 398.4816 57.2972 23.709 76.2669 40.0197 51.481 850.5388;
	0.7281 9.8389 21.4614 0.0307 5.8326 4.4862 11.2614 0.8707 12.2143 16.5676 30.625 45.6865 68.7808 63.5127 166.8766 62.8698 78.0051 82.6621 79.6677 67.8051 3.7538 10.4678 53.9785 41.7858 23.2697 4.8486 2.0838 850.2438 617.7042 617.7042 593.5041 76.3951 265.5591 174.5306 199.1209 263.5538 754.3914 179.7547 321.0202 62.3297 25.9385 49.767 30.5784 46.8797 762.2496;
	0.8532 11.5281 16.1476 25.3433 6.7269 0.0 5.671 0.673 9.5782 13.6006 25.1405 37.5046 56.463 65.4949 162.7278 61.3067 76.0658 80.607 81.641 67.0995 1.8903 0.0 52.5284 40.0939 23.2002 2.7474 1.1948 866.3225 533.2192 533.2192 546.7753 76.0656 272.1367 172.7142 205.3355 227.5069 615.9688 178.1965 219.2245 62.1435 28.0542 0.0 9.7883 18.6392 622.3852;
	0.6018 8.1316 11.1027 5.7732 6.5609 0.0009 4.1867 0.0297 12.2663 17.7387 32.7898 48.9159 73.6427 64.8204 176.9443 66.6627 82.7112 87.6491 86.0592 68.5882 1.3956 0.002 58.4296 39.2328 16.328 5.3055 1.4359 819.8078 523.2281 523.2281 546.0174 74.7056 286.8641 176.5463 203.2208 223.244 734.5815 183.5257 246.0762 43.7358 29.1691 0.0095 22.3378 43.2495 742.2334;
	1.1107 15.0077 6.0856 0.5674 2.8457 0.0 9.7983 0.0201 2.3446 19.6086 36.2462 54.0722 81.4054 66.3087 130.097 49.0133 60.8128 64.4434 85.0416 57.9067 3.2661 0.0 68.9295 38.3133 15.7002 3.9975 1.5769 780.5878 539.7211 539.7211 614.4375 83.7177 283.472 149.0519 207.8868 230.281 742.2606 210.278 353.2134 42.0542 55.7477 0.0 4.9512 18.2039 749.9925;
	0.4338 5.861 23.1691 36.5776 1.7679 0.0 7.894 2.0553 2.0122 22.6789 41.9215 62.5387 94.1516 69.0735 106.4208 40.0934 49.7455 52.7154 46.4161 60.5439 2.6313 0.0 68.5976 49.8354 23.308 8.8647 2.1539 814.4979 487.7327 487.7327 625.7484 83.5602 154.7203 155.8402 216.5548 208.0993 682.1057 198.7243 371.2609 62.4321 80.4845 0.0 0.4517 17.9048 689.2109;
	0.2456 3.319 26.6007 51.8401 2.7094 0.0 2.895 2.8918 3.5699 23.7698 43.9382 65.5472 98.6809 65.1191 91.1336 34.334 42.5996 45.1429 8.8925 64.8671 0.965 0.0 65.4814 63.2072 33.512 19.9144 2.5637 707.7385 351.9074 351.9074 597.2324 70.9981 29.6417 166.968 204.1571 150.1472 580.9604 192.7657 82.5342 89.7642 77.0525 0.0 0.4028 3.2781 587.012;
	0.7016 9.4806 43.6757 75.2287 6.0078 0.4109 3.7047 4.9052 2.887 23.6205 43.6621 65.1353 98.0609 58.5125 123.8593 46.6633 57.897 61.3535 85.2992 68.2693 1.2349 0.9588 67.734 76.6169 38.6094 14.5848 2.322 574.7116 362.0877 362.0877 519.8617 54.213 284.3307 175.7254 183.4447 154.4907 630.0106 193.9868 91.2695 103.418 85.8072 4.5586 21.18 43.369 636.5732;
	0.5023 6.787 35.8095 64.4434 0.0 1.0945 0.3501 2.962 0.0 16.4576 30.4217 45.3832 68.3242 45.0985 140.726 53.0177 65.7812 69.7085 82.3492 68.782 0.1167 2.5539 47.0048 66.1317 36.3608 13.6821 0.9716 455.3163 350.872 350.872 487.3093 54.3848 274.4974 177.0451 141.39 149.7054 675.9425 169.4344 10.0974 97.3949 76.3529 12.1421 3.7082 29.5636 682.9835;
	0.5874 7.9368 37.3858 65.3792 7.237 0.4818 0.0 3.4664 0.0 6.9279 12.8061 19.1041 28.7611 24.5944 147.7326 55.6574 69.0564 73.1792 84.7316 70.5642 0.0 1.1241 16.7146 65.108 35.1987 29.3588 1.5674 415.2079 389.2203 389.2203 530.4728 56.869 282.4386 181.6323 77.1067 166.0673 539.6316 150.9167 15.1569 94.2822 63.6889 5.3443 9.7583 14.8589 545.2528;
	0.022 0.2971 41.8607 70.4378 0.5587 7.2527 0.6894 6.5533 0.0 18.8978 34.9324 52.1122 78.4547 8.9077 173.1803 65.2447 80.9517 85.7847 90.9397 71.7492 0.2298 16.9231 47.1884 71.4506 45.967 37.8783 2.957 343.1068 310.7713 310.7713 420.4536 55.1876 303.1324 184.6827 27.927 132.5957 415.0837 128.4607 71.6053 123.1259 65.5443 80.4571 28.3963 51.1411 419.4075;
];