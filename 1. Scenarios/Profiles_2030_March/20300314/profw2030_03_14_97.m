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
	3.5143 47.4855 84.2824 111.9002 14.2247 14.8652 16.3405 17.6494 27.525 24.9991 46.2105 68.937 103.7843 6.2175 23.6898 8.925 11.0736 11.7347 14.0606 27.732 5.4468 34.6854 58.0874 79.7997 93.881 68.2319 7.034 684.139 402.3226 402.3226 210.8208 30.6736 46.8688 71.3821 19.4926 171.6576 499.015 46.4285 321.7839 251.467 6.9749 164.9042 120.962 228.0552 504.2131;
	3.3876 45.7735 83.5337 113.2691 14.3571 16.1908 15.1711 16.8895 27.4278 25.5417 47.2134 70.4331 106.0367 5.9515 7.4362 2.8015 3.476 3.6835 10.9951 12.6098 5.057 37.7785 66.1833 83.1648 93.5227 69.9086 6.5908 682.8089 360.4835 360.4835 159.8483 20.5788 36.6503 32.4578 18.6589 153.8063 445.3322 38.7047 309.734 250.5072 6.2732 179.6099 107.4257 210.7938 449.9711;
	2.8201 38.1053 83.3962 110.1337 14.2256 13.3224 15.2142 17.067 28.3445 24.5294 45.3423 67.6417 101.8343 8.7792 9.947 3.7475 4.6496 4.9272 19.7678 21.8196 5.0714 31.0855 66.1645 83.1706 94.9035 70.078 7.3653 643.0036 355.8473 355.8473 160.3864 31.8598 65.8927 56.1638 27.5239 151.8282 392.5042 37.4558 270.737 254.2059 5.2458 147.7894 79.4801 189.9233 396.5928;
	2.8137 38.0192 86.7096 109.737 14.5394 12.8467 13.3853 16.8807 28.2177 24.1226 44.5903 66.5199 100.1454 11.9597 8.6159 3.246 4.0274 4.2679 8.506 23.0281 4.4618 29.9757 66.2797 84.0659 97.9348 73.5042 8.0914 534.9399 286.557 286.557 171.283 28.6721 28.3533 59.2744 37.4952 122.2643 325.7932 33.9307 220.0155 262.3254 4.6626 142.513 76.5977 208.9268 329.1869;
	2.3801 32.161 88.8251 111.2061 14.7199 13.6714 12.8465 17.8118 19.3209 21.814 40.3228 60.1537 90.5611 17.7197 11.4125 4.2996 5.3347 5.6532 18.882 23.6443 4.2822 31.8998 53.4959 85.3286 102.3598 73.9879 8.0527 405.2623 228.9468 228.9468 168.0802 28.3786 62.94 60.8604 55.5537 97.684 207.6544 41.0658 195.6242 274.1782 14.6731 151.661 83.562 233.9306 209.8174;
	3.1541 42.6195 90.2985 111.4353 14.7005 20.9557 13.0484 17.8077 11.2155 20.068 37.0953 55.339 83.3125 31.0199 12.3856 4.6662 5.7896 6.1352 24.2867 25.8835 4.3495 48.8966 56.003 86.6662 102.2875 72.1164 7.1516 338.6108 210.0556 210.0556 145.3166 24.5364 80.9556 66.6242 97.2514 89.6237 182.844 36.5775 200.7942 273.9843 16.0021 232.4685 88.9028 233.3939 184.7487;
	2.7374 36.9879 90.2829 113.961 14.6726 21.232 12.7847 17.6509 13.7035 28.5355 52.7474 78.6888 118.4655 43.4584 21.1013 7.9498 9.8636 10.4525 25.8912 33.079 4.2616 49.5414 71.0849 88.7219 100.8134 71.3799 10.8491 298.7546 261.5129 261.5129 122.0354 17.6223 86.304 85.1453 136.2479 111.5788 227.8445 27.7666 172.082 270.036 13.5017 235.5338 93.2593 249.6968 230.2178;
	1.9715 26.6393 72.0619 116.4378 14.9649 17.8498 13.8214 17.9716 20.5098 29.7301 54.9557 81.9831 123.4251 44.2446 24.5579 9.252 11.4794 12.1647 41.783 52.4114 4.6071 41.6496 73.5161 88.851 102.4176 70.7969 12.0205 173.3575 218.636 218.636 112.1314 11.6567 139.2767 134.907 138.7128 93.2847 157.9402 41.5228 196.5181 274.3327 12.889 198.014 91.4953 235.0061 159.5854;
	2.9461 39.808 87.0872 112.1657 14.7492 22.9791 13.836 17.7336 23.3679 29.3253 54.2074 80.8667 121.7444 47.3783 15.3993 5.8016 7.1983 7.628 45.7803 46.2088 4.612 53.6178 73.8996 89.2846 102.8866 70.9785 11.7199 174.1505 179.8801 179.8801 92.3815 8.4282 152.601 118.9415 148.5373 76.7489 171.6654 37.9069 171.4274 275.5891 23.6054 254.9146 81.6813 251.4786 173.4536;
	2.3687 32.0062 88.0739 116.3233 13.4956 13.0933 15.6382 17.8462 27.4849 30.6413 56.64 84.4957 127.2078 49.2675 0.2931 0.1104 0.137 0.1452 64.4843 44.2851 5.2127 30.5511 74.5521 85.6792 103.8122 72.9374 12.3415 277.0055 264.2299 264.2299 112.0613 9.4801 214.9478 113.99 154.4604 112.7381 257.9304 28.7309 444.9451 278.0684 47.04 145.2484 80.5627 230.876 260.6171;
	1.8075 24.4238 81.7731 111.0914 11.7088 23.2328 14.2024 16.8249 27.2694 29.6888 54.8794 81.8692 123.2536 52.7067 2.5772 0.9709 1.2047 1.2766 59.8323 33.7863 4.7341 54.2099 71.8277 86.8048 97.1838 70.215 11.5545 374.5179 322.6585 322.6585 165.1247 13.9256 199.4411 86.9659 165.2426 137.6676 363.1507 34.3012 179.4408 260.3138 17.3221 257.7295 88.0009 182.6423 366.9335;
	1.8238 24.6439 89.0017 100.6169 11.9422 27.9729 20.4278 17.4414 27.2759 29.3185 54.1947 80.8479 121.7161 57.3282 0.0416 0.0157 0.0194 0.0206 73.5058 44.9902 6.8093 65.27 72.5516 87.9137 99.0481 69.5658 12.1418 429.7302 387.6091 387.6091 274.0047 16.9917 245.0194 115.8048 179.7315 165.3799 438.7747 49.0944 207.9154 265.3075 17.8926 310.3123 98.8515 191.917 443.3453;
	2.8467 38.4648 89.3973 95.6064 13.7345 28.2167 20.4698 17.1367 27.0657 28.0567 51.8624 77.3685 116.4778 58.7367 13.3637 5.0347 6.2468 6.6197 66.3503 49.7453 6.8233 65.8389 68.6672 87.1917 99.7191 67.1515 10.8341 649.1816 468.7732 468.7732 307.5773 23.9988 221.1675 128.0446 184.1476 200.0099 622.1902 62.4593 211.1172 267.1049 3.5275 313.0171 128.9717 211.7839 628.6713;
	3.4415 46.5017 86.3965 107.7869 13.9513 24.6815 20.1801 16.1083 25.7271 26.8168 49.5704 73.9492 111.3302 56.0588 26.6378 10.0356 12.4516 13.195 61.1927 42.0038 6.7267 57.5902 56.9556 82.8956 93.5899 63.9726 10.3269 705.9096 589.675 589.675 373.1794 26.8141 203.9758 108.1179 175.7521 251.5947 694.6311 79.1301 253.5877 250.6871 1.3356 273.8001 124.2977 185.0563 701.8668;
	3.5747 48.3027 83.3791 104.0459 14.0277 27.332 22.1071 16.0898 24.9494 22.8255 42.1927 62.9432 94.7606 60.1699 67.1631 25.3033 31.3948 33.2691 64.5467 48.843 7.369 63.7746 43.4231 81.981 89.5279 57.8663 11.5579 877.4574 648.9342 648.9342 464.8344 32.4153 215.1555 125.722 188.6407 276.8786 909.9513 109.5757 350.259 239.8068 2.3827 303.2029 139.3887 178.5812 919.4299;
	3.647 49.2789 86.2965 105.2674 13.9965 31.2258 22.7006 15.0417 18.4048 8.9279 16.5031 24.6193 37.0643 59.0054 98.7489 37.2031 46.1594 48.9152 70.6234 57.0687 7.5669 72.8601 19.2922 81.6411 90.9395 55.7782 11.3239 980.0412 715.7944 715.7944 638.8465 42.8251 235.4114 146.8949 184.99 305.4056 988.9169 154.025 333.3502 243.588 0.0009 346.3978 158.5902 208.1372 999.2181;
	3.5872 48.4711 85.7825 107.8031 14.3652 30.4843 27.7627 15.8766 24.9364 12.4689 23.0486 34.384 51.7649 64.4669 120.4363 45.3737 56.2969 59.658 76.7762 66.0555 9.2542 71.1301 28.0603 83.4159 96.5758 70.1285 10.1516 1038.3021 748.0134 748.0134 727.1558 75.1146 255.9206 170.027 202.1124 319.1524 992.5413 209.6254 383.54 258.6851 0.0998 338.173 190.5477 257.4598 1002.8803;
	3.6056 48.7199 88.4582 110.457 14.3406 31.8632 28.3375 17.1346 25.8038 6.6319 12.259 18.288 27.5325 64.6378 159.9963 60.2777 74.789 79.254 87.496 68.2537 9.4458 74.3475 31.9049 83.2272 97.7529 69.4053 11.7038 1163.0758 776.6405 776.6405 755.4177 96.839 291.6533 175.6853 202.6481 331.3666 1115.1885 241.0447 447.3889 261.8381 98.6457 353.4691 192.6372 243.8432 1126.805;
	3.6938 49.9111 88.1897 113.1435 14.6052 32.752 30.5268 10.6067 26.1574 9.8136 18.1403 27.0618 40.7414 65.9811 171.177 64.49 80.0153 84.7923 86.6294 62.3473 10.1756 76.4213 30.1552 82.6945 97.7982 57.773 11.4479 1277.6949 817.7527 817.7527 756.4964 105.6671 288.7646 160.4822 206.8597 348.9078 1181.8627 261.2919 445.9866 261.9595 112.1559 363.3286 204.9605 255.0772 1194.1738;
	3.7312 50.4171 90.8599 109.4085 15.3201 33.7396 30.8616 7.4455 26.7838 18.2231 33.6852 50.2517 75.6536 65.1324 186.282 70.1806 87.076 92.2745 86.0666 62.9846 10.2872 78.7257 40.4408 35.9244 29.0399 62.3409 10.2002 1221.7749 824.5402 824.5402 738.7235 102.4931 286.8887 162.1225 204.199 351.8038 1169.2244 263.4921 446.8583 77.7853 116.1417 374.2847 206.9029 231.196 1181.4039;
	3.8555 52.0959 91.3851 118.2038 15.3697 34.2609 31.767 18.1461 19.5307 19.872 36.7332 54.7987 82.4991 64.7492 190.2558 71.6778 88.9335 94.243 87.3459 67.4797 10.589 79.942 35.9027 78.6815 99.4471 71.3939 13.5216 1265.8508 832.4651 832.4651 755.5081 103.729 291.1529 173.6928 202.9975 355.1851 1149.9168 252.5562 463.6432 266.3762 115.586 380.067 207.7646 252.8742 1161.8951;
	3.8133 51.5266 88.591 119.2439 15.0483 33.5236 29.9015 16.6593 9.5424 17.9275 33.1388 49.4365 74.4264 61.8691 191.7543 72.2423 89.634 94.9853 87.7237 69.5945 9.9672 78.2216 39.2084 85.3938 100.7695 72.8792 13.1764 1282.9817 794.1098 794.1098 739.7656 109.6 292.4123 179.1365 193.9679 338.8202 1190.538 257.9958 435.1557 269.9183 117.6446 371.8881 202.7467 231.4076 1202.9394;
	3.7811 51.0911 90.9558 116.3486 14.6845 33.6802 30.0864 17.059 16.7753 9.4663 17.4983 26.104 39.2994 61.3222 189.3378 71.3319 88.5044 93.7883 85.9965 62.5733 10.0288 78.5872 21.7601 82.9621 81.8612 73.9682 13.3187 1295.9279 799.7101 799.7101 731.4827 107.5234 286.655 161.0639 192.2533 341.2097 1237.9942 267.5716 436.3125 219.271 114.4909 373.626 199.5027 253.1932 1250.89;
	3.8251 51.6859 91.6986 119.4372 14.8017 34.5979 30.4288 18.1693 7.5582 15.0023 27.7314 41.3699 62.2821 63.5727 188.9852 71.1991 88.3396 93.6136 89.4452 63.0147 10.1429 80.7284 41.8745 87.0626 104.7729 73.0658 13.6902 1307.983 822.8123 822.8123 745.2436 112.4967 298.1506 162.2 199.3089 351.0666 1246.3852 282.4914 436.4361 280.6417 120.0411 383.8057 202.3613 265.8277 1259.3684;
];
