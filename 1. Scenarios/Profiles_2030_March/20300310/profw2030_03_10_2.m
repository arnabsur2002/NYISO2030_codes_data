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
	3.7694 50.933 82.5114 114.3638 14.797 35.712 31.2934 6.2021 26.0299 0.0 0.0 0.0 0.0 40.7568 167.3263 63.0392 78.2153 82.8849 61.827 68.4361 10.4311 83.328 0.0 24.0055 40.8487 16.8968 2.9594 1240.7834 813.8392 813.8392 700.0095 85.7033 206.0901 176.1546 127.778 347.2381 1240.1437 220.3925 441.2577 109.4163 107.4738 396.165 203.6891 88.5422 1253.0619;
	2.9724 40.1638 76.2345 45.1275 14.7502 28.305 30.397 6.3701 7.6533 1.2274 2.2688 3.3845 5.0954 40.6233 177.3895 66.8305 82.9193 87.8697 85.5694 69.802 10.1323 66.0449 0.0 18.5993 31.5258 17.7456 4.6428 1255.6408 827.9983 827.9983 739.302 79.3244 285.2314 179.6706 127.3594 353.2793 1275.9764 211.4173 460.0628 84.4441 111.7228 313.9964 197.7804 44.4732 1289.2679;
	3.0168 40.7632 88.7991 49.3812 14.6249 24.8169 30.2532 5.5157 9.4111 11.4378 21.1426 31.5406 47.4841 41.1929 186.5114 70.2671 87.1833 92.3882 84.6698 63.9899 10.0844 57.9061 0.628 34.3744 37.0954 23.1318 4.62 1241.7168 832.2873 832.2873 772.7294 94.3172 282.2327 164.7101 129.1452 355.1093 1261.5662 213.6014 451.5007 99.3627 33.9055 275.3021 203.552 127.6487 1274.7075;
	3.5224 47.5958 87.6206 51.5711 14.8023 15.5809 32.1534 6.3605 12.3136 12.5123 23.1288 34.5036 51.945 27.2844 193.2449 72.8039 90.3307 95.7236 76.0149 58.9142 10.7178 36.3554 25.6024 32.1027 36.0668 21.808 5.1453 1275.7066 839.1996 839.1996 776.6168 94.8057 253.383 151.6452 85.5402 358.0585 1267.0158 232.0235 465.0333 96.6076 38.374 172.8438 213.3521 105.1892 1280.2139;
	3.8985 52.6769 85.237 44.2017 15.0521 24.5253 31.744 6.7399 11.5167 10.503 19.4146 28.9628 43.6033 33.5957 178.5642 67.273 83.4684 88.4516 84.0175 62.8735 10.5813 57.2257 0.001 25.8473 37.1541 54.1317 4.7625 1260.8691 836.0543 836.0543 781.2975 99.0872 280.0584 161.8365 105.3271 356.7165 1283.0335 247.2197 474.2097 99.5199 38.5704 272.0672 215.5905 187.6079 1296.3984;
	3.8752 52.363 94.9734 116.7668 15.2493 34.7542 31.4768 7.4759 11.0217 12.2521 22.6477 33.786 50.8646 31.7457 191.7573 72.2435 89.6354 94.9868 90.224 66.0778 10.4923 81.0932 1.3685 30.8652 53.2409 67.709 5.283 1238.17 815.3114 815.3114 768.9628 108.8667 300.7468 170.0843 99.5269 347.8662 1238.8419 246.7867 478.5921 142.6095 69.3873 385.5404 216.4228 238.4405 1251.7465;
	3.963 53.5486 93.2976 118.5888 15.2434 35.3695 31.6376 9.6604 11.03 13.0292 24.0843 35.929 54.091 46.3248 194.9371 73.4414 91.1217 96.5618 84.6946 69.0744 10.5459 82.5288 25.3889 46.5279 97.3524 72.3281 9.9003 1173.5276 819.7131 819.7131 775.846 112.2616 282.3155 177.7977 145.2346 349.7443 1274.6945 290.6959 477.5915 260.7655 110.4406 392.3655 216.4184 266.5924 1287.9725;
	3.8501 52.0236 91.5936 116.9285 15.2137 35.1029 31.8794 18.5945 10.8976 12.3173 22.7683 33.9659 51.1355 63.9031 194.7151 73.3578 91.018 96.4519 84.4809 60.1069 10.6265 81.9067 26.569 54.983 103.5697 72.7997 13.4768 1005.9766 796.349 796.349 766.9979 111.9683 281.6031 154.7153 200.3447 339.7756 1203.3465 299.8008 475.9861 277.4189 120.1296 389.4081 213.4035 271.8145 1215.8814;
	3.8606 52.1658 90.9566 111.7912 15.0392 34.462 31.3247 18.2981 9.5512 13.2535 24.4989 36.5475 55.0221 66.8598 196.0269 73.852 91.6312 97.1017 49.1056 65.5498 10.4416 80.4113 30.7695 84.5395 100.638 72.5156 13.5311 760.6183 815.7927 815.7927 769.2152 106.6491 163.6854 168.7254 209.6145 348.0715 1159.6331 292.4846 474.1977 269.566 120.45 382.2984 210.7704 270.9021 1171.7126;
	3.8487 52.0038 89.3197 110.9181 14.8139 34.1518 31.3444 17.9103 18.5066 10.2372 18.9233 28.2299 42.5 63.7165 186.9173 70.42 87.373 92.5893 51.4326 59.507 10.4481 79.6875 22.5188 86.2056 97.9086 70.2996 13.4361 634.3349 825.9933 825.9933 761.8427 109.3876 171.4419 153.1713 199.7598 352.4238 1114.8441 270.7945 451.4931 262.2553 119.888 378.857 210.9839 258.3753 1126.4571;
	3.866 52.2376 87.6303 108.3205 14.5812 33.004 30.8734 17.4994 27.2532 18.0508 33.3666 49.7764 74.9381 68.7896 200.4576 75.5212 93.7023 99.2965 43.2905 68.2946 10.2911 77.0093 29.137 83.4178 96.826 70.9519 13.2165 434.225 794.8213 794.8213 754.0771 104.1726 144.3017 175.7905 215.6646 339.1237 941.7399 277.7981 447.2793 259.3553 121.4455 366.1243 193.2538 257.4972 951.5497;
	3.2931 44.4973 88.4715 107.9521 14.6349 31.4794 29.8155 17.6099 27.0189 20.5727 38.0283 56.7307 85.4078 67.4557 192.6438 72.5774 90.0498 95.4259 50.7047 66.2643 9.9385 73.452 33.4873 84.0604 95.7235 72.3979 12.8072 329.4215 799.3203 799.3203 713.0314 100.8906 169.0158 170.5644 211.4829 341.0433 807.4571 252.4621 451.6888 256.4023 120.6139 349.2118 185.0797 266.7006 815.8681;
	2.0546 27.7615 88.763 108.8917 14.1943 19.0342 25.127 18.4166 26.6868 29.2442 54.0575 80.6432 121.4079 65.8056 190.9897 71.9543 89.2766 94.6065 91.2098 68.5831 8.3757 44.4132 65.8906 84.3858 97.3869 73.0998 13.5988 302.2689 719.1303 719.1303 644.4234 99.5505 304.0326 176.5332 206.3096 306.8289 680.7965 224.9783 427.2162 260.8577 122.2846 211.1532 173.7567 268.2822 687.8881;
	2.1773 29.42 86.3549 106.4921 14.251 10.8491 25.202 17.7769 26.9677 31.3021 57.8614 86.3179 129.9511 66.2512 193.2838 72.8185 90.3489 95.7429 88.6445 71.7247 8.4007 25.3147 75.6491 82.8922 96.497 72.9496 13.2 276.2958 580.9792 580.9792 553.1695 82.6673 295.4815 184.6197 207.7065 247.8845 478.121 198.8472 432.5597 258.474 121.8892 120.3532 139.2262 260.3923 483.1014;
	1.7744 23.976 86.6784 106.2714 10.6567 0.0 21.6311 17.9273 26.6252 29.5865 54.6902 81.5871 122.8289 66.2035 198.455 74.7668 92.7662 98.3045 89.2968 73.7467 7.2104 0.0 72.7406 82.6616 94.4496 70.2237 13.4695 497.3558 494.8882 494.8882 418.5699 89.4136 297.656 189.8243 207.557 211.1523 450.8492 186.1975 420.7138 252.99 120.614 0.0 107.6792 243.8202 455.5456;
	3.0022 40.5668 86.6737 78.1437 13.9465 24.4555 15.94 18.4454 23.047 29.1693 53.9191 80.4367 121.097 62.3247 192.7804 72.6289 90.1136 95.4935 88.4369 71.8482 5.3133 57.0628 71.4623 85.2403 96.4352 72.3441 13.5399 531.2357 503.7675 503.7675 395.0094 45.2623 294.7898 184.9375 195.3963 214.9408 477.5383 159.8292 426.2045 258.3086 122.9785 271.2927 79.1974 259.9965 482.5126;
	2.8325 38.2735 87.5683 62.5202 14.1168 30.5017 13.9919 18.5778 27.0147 25.5575 47.2426 70.4767 106.1023 63.5688 189.8175 71.5127 88.7287 94.0259 88.6897 68.7005 4.664 71.1705 68.4782 86.0164 101.1172 74.2374 13.6537 621.5685 574.7001 574.7001 439.5909 30.2227 295.6323 176.8353 199.2968 245.2054 594.1856 122.4265 176.6607 270.8497 120.1367 338.3651 105.4655 266.0898 600.3751;
	3.3431 45.1728 90.1157 63.3845 14.4578 31.6292 28.5105 18.7338 27.1563 11.8759 21.9524 32.7487 49.3029 65.7444 171.0097 64.4269 79.9371 84.7095 76.5777 69.7897 9.5035 73.8015 42.1587 89.1415 102.8768 74.6182 13.5127 722.1584 602.0426 602.0426 387.7232 27.5759 255.2588 179.639 206.1174 256.8715 776.0428 77.2038 406.578 275.563 121.4441 350.8732 120.7815 263.6576 784.1265;
	3.5676 48.2065 88.2346 51.7003 14.3474 30.3668 26.8329 18.5439 26.422 20.9582 38.741 57.794 87.0085 64.1296 172.3976 64.9498 80.5859 85.397 62.1754 68.1349 8.9443 70.8558 40.9831 86.0644 102.4852 75.5576 13.3634 1025.7059 678.958 678.958 454.0012 35.4615 207.2514 175.3794 201.055 289.6888 1006.9474 86.5329 437.095 274.5139 122.2626 336.8687 137.0932 242.9962 1017.4364;
	3.3377 45.0999 58.8548 30.5617 14.3392 22.0901 0.9535 18.4176 25.8013 24.0127 44.3871 66.2169 99.6891 62.7753 183.1588 69.004 85.6161 90.7275 44.0548 68.2604 0.3178 51.5436 47.607 80.1269 103.25 73.8207 12.7014 1213.7119 605.3033 605.3033 516.3626 52.0986 146.8494 175.7024 196.8091 258.2628 1139.2756 121.0514 414.0813 276.5624 122.1717 245.053 136.9879 204.1873 1151.143;
	3.5591 48.0908 58.9118 53.4119 14.1535 27.4753 28.3664 18.3303 0.0047 25.5248 47.1821 70.3864 105.9664 64.7512 187.0287 70.462 87.425 92.6444 57.8275 71.0312 9.4555 64.109 58.6067 86.8253 102.5531 73.8089 13.2524 1300.1824 708.077 708.077 411.433 58.491 192.7584 182.8345 203.0038 302.1129 1151.5886 175.3174 428.8369 274.6957 121.1402 304.7926 129.4626 243.4583 1163.5843;
	3.6127 48.8158 47.0681 75.7931 14.6415 31.2263 1.5991 18.6057 27.1679 28.1985 52.1246 77.7596 117.0667 67.5975 186.4758 70.2537 87.1666 92.3706 54.7868 69.597 0.533 72.8613 62.3738 87.531 103.03 75.0245 13.6126 1268.5676 725.7309 725.7309 505.3444 77.6744 182.6228 179.1428 211.9272 309.6452 1164.6412 205.278 447.3074 275.9731 119.2959 346.4033 142.564 243.1379 1176.7729;
	3.7696 50.9357 62.3096 94.7211 14.5228 31.7905 29.7048 18.4806 26.9152 27.8459 51.4727 76.7872 115.6026 66.8637 182.497 68.7547 85.3067 90.3997 52.2384 70.1599 9.9016 74.1778 58.597 88.9552 105.1388 75.4326 13.6498 1234.5884 737.1147 737.1147 561.86 101.3724 174.1279 180.5917 209.6266 314.5023 1164.0558 243.6975 455.8598 281.6217 121.6239 352.6627 148.1469 262.9822 1176.1813;
	3.6794 49.717 89.6168 103.4901 14.5108 32.2399 30.0468 18.6222 26.3239 28.1961 52.12 77.7528 117.0564 65.3462 186.0293 70.0855 86.9579 92.1494 42.014 71.4147 10.0156 75.2265 58.4072 88.4905 105.6021 74.7347 13.4882 1221.6355 711.9315 711.9315 593.5065 108.8173 140.0466 183.8215 204.8693 303.7574 1166.372 229.2793 451.1471 282.8627 122.6805 357.6485 155.5423 270.9849 1178.5217;
];