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
	3.5045 47.3541 90.7401 109.5629 14.5065 13.7279 14.1535 17.158 26.2785 24.3052 44.9278 67.0235 100.9035 5.501 21.0238 7.9206 9.8274 10.4141 14.957 30.1458 4.7178 32.0317 57.4876 79.0962 90.2868 69.0367 6.8492 700.5711 377.8897 377.8897 213.095 38.8944 49.8567 77.5954 17.2463 161.2329 485.8115 57.0074 305.8155 241.8397 11.5023 152.2878 118.3219 225.2545 490.8721;
	3.4376 46.4497 91.3623 110.0727 14.1359 15.9591 14.8313 16.9791 27.0678 25.312 46.7888 69.7997 105.0831 6.5155 16.3291 6.1519 7.6329 8.0886 14.2108 17.2201 4.9438 37.238 62.9593 81.7474 93.2851 70.4882 7.2752 676.0441 379.8198 379.8198 193.674 34.2293 47.3693 44.3245 20.4269 162.0564 486.8515 55.4507 319.7991 249.8708 8.7874 177.04 112.7693 216.975 491.9228;
	3.1777 42.9371 90.3414 110.0838 14.3693 12.186 12.8978 17.8413 27.5084 24.4087 45.1192 67.309 101.3333 7.6759 16.5288 6.2271 7.7263 8.1875 31.1664 25.4863 4.2993 28.4341 65.9057 83.0977 97.6335 72.0994 8.1499 621.9311 342.9914 342.9914 162.7168 34.17 103.888 65.6019 24.0651 146.343 407.773 38.1663 255.5364 261.5183 6.0129 135.1839 83.1196 202.4605 412.0206;
	2.808 37.9425 87.2677 102.7295 14.1508 12.003 11.6839 17.3763 26.4013 24.3054 44.9281 67.0239 100.9041 10.3761 8.6955 3.276 4.0646 4.3073 16.75 22.9475 3.8946 28.0071 68.0199 79.0436 96.5307 72.5307 8.8535 480.493 262.7827 262.7827 160.9269 31.4152 55.8334 59.0668 32.5306 112.1206 306.3328 31.3296 191.7499 258.5644 1.5057 133.1536 67.0767 184.7127 309.5238;
	2.0757 28.0466 86.6327 108.7805 13.8021 13.4017 9.6558 17.7032 16.0014 23.0046 42.5236 63.4369 95.5039 14.4071 20.1632 7.5964 9.4251 9.9878 35.7814 29.521 3.2186 31.2707 60.0794 81.5528 96.4329 73.1924 9.4241 382.3763 197.8809 197.8809 144.3509 28.9783 119.2713 75.9872 45.1681 84.4292 185.9758 33.2602 162.3147 258.3023 12.2013 148.6698 73.8515 193.0622 187.913;
	2.9554 39.9339 91.2907 117.2079 14.2032 21.7457 11.1502 18.7883 10.7409 21.4787 39.7031 59.2292 89.1693 26.9745 19.0942 7.1936 8.9254 9.4583 39.4279 32.0215 3.7167 50.7399 67.0056 84.2454 101.0267 73.9518 8.6672 338.9049 191.364 191.364 119.8859 25.7067 131.4264 82.4234 84.5687 81.6486 173.6841 28.1526 196.1962 270.6073 13.3551 241.2318 83.7005 213.4818 175.4933;
	2.6399 35.6708 89.9504 116.2033 14.0483 23.6098 11.819 17.0963 13.1243 28.0339 51.8203 77.3056 116.3832 41.958 26.2212 9.8787 12.2569 12.9886 45.5418 39.8744 3.9397 55.0896 72.0466 84.2036 98.0707 71.1651 11.0279 314.2626 224.471 224.471 99.9662 16.9161 151.8059 102.6368 131.544 95.7743 203.568 19.3957 160.9532 262.6893 11.7706 261.9117 91.8803 223.7222 205.6885;
	1.9195 25.9361 73.9839 114.2273 14.7847 20.243 12.6218 18.0243 20.8706 29.08 53.7539 80.1903 120.7261 42.9725 30.5409 11.5061 14.2761 15.1284 64.2648 58.8257 4.2073 47.2336 75.5098 86.1414 98.4952 72.7071 12.328 193.3805 189.2027 189.2027 89.8143 12.0167 214.2161 151.4174 134.7247 80.7265 144.7315 19.8197 185.1843 263.8263 11.3728 224.5623 94.7513 210.316 146.2391;
	2.7408 37.0337 84.6369 103.8097 14.6339 25.3364 10.598 17.2008 22.1857 27.003 49.9146 74.4627 112.1032 42.2703 23.2141 8.7458 10.8512 11.4991 75.8425 54.1242 3.5327 59.1183 71.4121 84.4655 96.6475 69.5594 11.541 171.102 150.7786 150.7786 81.7204 8.5678 252.8082 139.3157 132.5232 64.3322 132.6512 18.7515 145.0245 258.8773 18.9005 281.0653 84.1077 220.9844 134.033;
	2.0144 27.2196 83.5252 108.5709 13.1419 14.992 9.906 17.1903 26.6204 28.0948 51.9329 77.4737 116.6362 43.9375 14.3457 5.4047 6.7058 7.1061 78.1526 47.1765 3.302 34.9814 73.4266 78.4239 94.4412 67.5613 11.634 274.7436 252.1504 252.1504 99.7461 9.7152 260.5087 121.4323 137.7502 107.5842 245.4832 24.7509 85.9918 252.9675 1.525 166.3114 86.056 190.0423 248.0403;
	1.543 20.8496 77.1242 102.5625 12.2568 25.534 14.2269 14.6673 27.4075 29.1734 53.9265 80.4478 121.1137 53.0921 7.2445 2.7293 3.3864 3.5885 74.7555 34.1206 4.7423 59.5794 74.9397 81.8097 82.4556 68.145 10.782 425.3116 320.2032 320.2032 174.3877 12.8601 249.1851 87.8266 166.4511 136.62 363.8337 32.8406 181.4531 220.8633 0.2479 283.2575 91.7272 158.2602 367.6236;
	1.6246 21.9518 83.0793 91.3469 11.1989 29.8377 19.3054 15.7969 26.8023 28.9072 53.4346 79.7139 120.0088 49.4362 1.7948 0.6762 0.8389 0.889 85.0989 45.2834 6.4351 69.6213 74.1289 77.9544 85.4352 69.2522 11.4512 444.5431 364.4007 364.4007 265.6253 15.04 283.6631 116.5595 154.9891 155.4776 414.0888 48.9614 190.9482 228.8443 0.0019 330.9994 98.5282 139.7309 418.4022;
	2.8808 38.9258 86.7636 83.0023 13.9564 30.5811 20.8048 15.0211 27.0314 29.4522 54.442 81.2167 122.2714 52.6017 41.7585 15.7323 19.5197 20.685 87.7555 57.0922 6.9349 71.3559 75.3852 81.7398 90.2854 68.3892 10.7552 670.7815 451.5663 451.5663 319.2581 22.7293 292.5183 146.9556 164.9133 192.6683 601.6322 60.3208 198.3798 241.8358 0.0559 339.2465 133.8821 189.1534 607.8992;
	3.5362 47.782 86.7496 104.3628 14.2886 29.972 22.2401 16.9699 26.5751 30.045 55.5377 82.8514 124.7323 52.0915 61.6536 23.2276 28.8195 30.5401 90.5511 50.1295 7.4134 69.9348 71.4445 82.0645 90.034 70.0791 10.9207 829.4512 605.7597 605.7597 416.9117 28.767 301.837 129.0334 163.314 258.4575 754.3824 84.3653 274.661 241.1625 0.4507 332.4898 137.9805 222.6584 762.2406;
	3.5464 47.9197 84.8788 102.7147 14.1091 31.2272 25.5854 15.9155 27.1672 26.5911 49.1533 73.327 110.3935 56.1653 91.7987 34.5846 42.9105 45.4724 89.1583 50.0695 8.5285 72.8634 50.392 82.3595 86.1971 69.194 11.4688 1027.0463 672.832 672.832 474.5483 33.8007 297.1942 128.8789 176.0857 287.075 947.0852 106.924 400.5893 230.885 0.8023 346.4133 144.5081 181.5498 956.9507;
	3.6611 49.47 88.3575 109.9018 14.7094 32.2076 27.711 17.2528 28.0626 22.6418 41.853 62.4364 93.9977 62.7137 131.3594 49.4889 61.4029 65.0687 92.7574 63.5117 9.237 75.1511 53.133 83.717 94.9177 68.63 11.7739 1099.6525 756.2221 756.2221 647.0459 43.3919 309.1914 163.4794 196.6158 322.6548 1010.0889 149.2993 389.2763 254.2437 3.0512 357.29 166.94 233.475 1020.6107;
	3.6277 49.0178 88.4175 111.9839 14.1388 31.8301 29.1506 18.0573 27.0228 21.6604 40.0389 59.7301 89.9233 67.3506 177.3703 66.8232 82.9103 87.8602 92.9555 71.3968 9.7169 74.2702 36.7652 83.2939 96.9265 72.6658 11.7909 1048.7929 771.4158 771.4158 691.5377 76.7668 309.8517 183.7756 211.1533 329.1374 986.4331 186.1213 419.3478 259.6245 15.5373 353.1016 190.9118 267.2805 996.7085;
	3.7192 50.2547 91.1887 112.7819 14.1819 32.9403 28.3599 18.3 27.5199 19.754 36.515 54.4731 82.009 67.8866 192.8114 72.6406 90.1281 95.5089 91.9358 70.9667 9.4533 76.8607 39.9502 84.1819 99.8941 72.0008 12.8892 1138.1505 799.5909 799.5909 709.95 88.1166 306.4528 182.6684 212.8335 341.1588 1063.0258 214.8166 451.5597 267.5736 112.4078 365.4178 187.2145 259.6135 1074.099;
	3.6136 48.8273 88.079 112.4503 14.4713 32.2375 29.799 12.6274 27.4734 20.9621 38.7481 57.8046 87.0245 64.3208 193.6544 72.9582 90.5222 95.9265 87.8 69.1103 9.933 75.2209 52.6328 82.6196 99.6302 62.7594 11.4199 1178.5978 789.0173 789.0173 647.3326 99.4849 292.6667 177.89 201.6545 336.6474 1089.0404 230.787 450.0801 266.8666 116.7608 357.6215 189.3931 267.5491 1100.3846;
	3.6234 48.9597 87.2839 101.7885 14.3624 31.9413 30.6507 3.2519 26.8079 18.9751 35.0752 52.3252 78.7754 65.7413 194.296 73.1999 90.8221 96.2443 85.5091 67.0018 10.2169 74.5297 46.3723 8.4985 11.3433 53.4304 6.3429 1213.5417 810.4261 810.4261 693.6473 102.9332 285.0303 172.4628 206.1077 345.7818 1135.2783 229.5404 458.3746 30.3837 118.4322 354.3353 189.5421 217.805 1147.1041;
	3.8193 51.6075 90.7514 117.7557 14.4847 33.8351 32.2497 17.6873 19.4916 21.2509 39.282 58.601 88.2234 68.6248 199.9226 75.3197 93.4522 99.0314 86.2377 68.2564 10.7499 78.9486 41.9395 69.2438 99.7544 70.2142 12.9651 1238.2103 842.6222 842.6222 762.8266 104.0723 287.4591 175.6921 215.1479 359.5188 1159.8666 229.0462 472.1766 267.1992 120.2895 375.344 205.1311 271.1343 1171.9485;
	3.6858 49.8029 91.413 120.6029 14.5486 33.0697 31.9179 16.7892 10.918 23.4117 43.2762 64.5596 97.1941 65.0346 190.7495 71.8638 89.1643 94.4876 85.7549 69.1669 10.6393 77.1627 49.4937 85.3441 101.4185 72.1398 12.7104 1314.0066 833.7637 833.7637 757.1601 108.3397 285.8495 178.0358 203.8923 355.7392 1243.7482 241.1583 465.1118 271.6566 120.4063 366.8534 201.6495 251.8362 1256.7039;
	3.8595 52.1508 92.8115 117.1961 14.6633 33.4324 31.2583 17.0391 17.5033 21.7703 40.2422 60.0334 90.3799 64.9472 191.5294 72.1576 89.5288 94.8738 84.6907 66.8542 10.4194 78.0088 48.6744 82.929 84.6407 73.0181 13.2594 1235.6556 828.7498 828.7498 740.4063 104.5466 282.3024 172.0829 203.6181 353.5999 1210.2539 240.43 454.1305 226.7162 119.5282 370.8762 201.4038 262.7032 1222.8607;
	3.8935 52.6097 94.7932 119.1173 14.7459 34.3148 31.923 17.8274 9.3266 19.4218 35.9009 53.557 80.6298 64.4859 189.8931 71.5411 88.764 94.0633 83.739 66.7502 10.641 80.0678 43.7036 88.1179 106.0085 72.8642 13.471 1247.6043 814.5396 814.5396 695.0908 107.1555 279.1299 171.8151 202.172 347.5369 1165.3448 245.965 442.7323 283.9513 121.5748 380.665 201.0498 275.7273 1177.4838;
];