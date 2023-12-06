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
	3.6598 49.4518 88.908 112.9964 14.8146 15.357 16.2588 17.6906 26.7497 24.1736 44.6845 66.6605 100.3571 6.3254 21.2472 8.0047 9.9318 10.5248 13.5615 22.6318 5.4196 35.8329 59.9268 87.9135 100.0418 71.1145 7.7388 686.9296 413.1424 413.1424 203.9868 39.5666 45.2049 58.2542 19.8309 176.2741 536.8436 59.4334 327.1787 267.9691 16.4884 170.36 126.8976 218.994 542.4357;
	3.4477 46.5865 86.142 109.332 14.3422 16.0785 14.1769 16.472 26.2569 24.0305 44.42 66.2659 99.7629 4.0184 14.2143 5.3552 6.6444 7.041 11.6171 5.3032 4.7256 37.5166 62.1686 85.9047 96.277 70.0959 6.4844 682.9987 384.7606 384.7606 162.4196 34.0513 38.7237 13.6505 12.5984 164.1645 512.9012 54.3872 306.5348 257.8847 12.3379 178.3644 115.0878 205.2639 518.2439;
	3.3032 44.6328 91.7688 113.0458 15.2259 14.5994 13.3286 18.2072 27.8241 24.069 44.4911 66.372 99.9227 5.4366 17.6329 6.6431 8.2423 8.7344 19.7774 15.963 4.4429 34.0652 65.2405 89.5344 101.0626 72.0938 8.4762 584.5052 363.0165 363.0165 152.9147 32.3858 65.9247 41.0888 17.0444 154.887 416.6997 41.8586 247.6362 270.7035 39.3013 161.9555 96.034 204.7844 421.0404;
	2.8863 39.0004 89.5459 109.7766 14.7626 12.9254 11.7701 16.3235 26.5722 23.2872 43.0461 64.2163 96.6772 8.0707 15.5572 5.8611 7.2721 7.7062 9.9147 17.1765 3.9234 30.1592 65.65 86.4992 99.9036 71.1297 8.6401 485.2101 290.0601 290.0601 160.2572 28.2187 33.0488 44.2124 25.3028 123.759 319.9633 31.6533 189.87 267.599 5.5355 143.3856 82.3015 198.5613 323.2962;
	2.3368 31.5754 91.8359 115.4341 14.963 14.0043 9.84 17.3591 16.6147 22.7036 41.9673 62.607 94.2545 12.23 19.8336 7.4722 9.2711 9.8246 19.0338 22.9376 3.28 32.6766 58.8218 88.3968 103.0152 72.4592 8.4545 310.083 218.6007 218.6007 146.2142 22.9732 63.446 59.0415 38.3426 93.2696 175.0553 29.3798 163.9248 275.9337 13.4697 155.3541 86.8223 224.4757 176.8788;
	2.9058 39.2637 89.9652 115.6502 14.7785 21.2745 9.7901 17.1129 6.3558 20.4528 37.8067 56.4001 84.9101 24.344 17.8587 6.7282 8.3479 8.8463 24.7631 21.1218 3.2634 49.6405 60.5209 85.1516 98.2965 70.7297 7.1517 280.3812 197.9101 197.9101 130.177 23.2566 82.5436 54.3675 76.3216 84.4416 150.4263 26.9547 167.9405 263.2941 9.6536 236.0051 84.1807 213.1205 151.9933;
	2.384 32.2131 88.7526 113.654 14.1299 20.5426 10.6643 15.2059 7.9488 25.4981 47.1328 70.3128 105.8556 38.5324 25.1409 9.4717 11.7519 12.4535 32.789 34.7657 3.5548 47.9328 66.6508 85.1359 98.722 69.543 8.2156 241.2495 225.4184 225.4184 100.0439 16.1567 109.2967 89.4871 120.8043 96.1785 178.1463 16.8593 133.6037 264.434 7.9028 227.8864 89.9354 222.938 180.002;
	1.6452 22.2298 69.7886 114.4957 14.1955 17.775 11.4097 16.1032 16.6473 27.1557 50.197 74.884 112.7375 38.1257 27.7085 10.439 12.9521 13.7254 51.3623 52.4304 3.8032 41.4749 68.9015 87.8022 101.4282 70.3105 11.0463 114.9254 170.9156 170.9156 91.4739 9.5178 171.2078 134.9559 119.5292 72.924 118.4404 16.1284 152.0173 271.6827 5.1335 197.1836 83.4004 202.7441 119.6741;
	2.5496 34.451 83.9466 103.0809 14.1697 22.2592 9.8285 15.2461 19.1501 27.5243 50.8782 75.9003 114.2675 39.9569 18.9083 7.1236 8.8385 9.3662 58.6939 47.2249 3.2762 51.9382 68.4405 85.7293 100.5622 69.4507 7.5694 93.7892 143.3586 143.3586 82.2418 6.381 195.6464 121.5569 125.2702 61.1663 121.9882 16.6235 114.0394 269.3631 17.5956 246.929 77.0137 218.7672 123.2589;
	1.6564 22.3822 83.7958 109.9699 12.2855 12.4312 10.0442 16.7962 24.7596 28.9153 53.4495 79.7362 120.0424 42.7548 24.0542 9.0623 11.2439 11.9152 68.3842 44.3549 3.3481 29.0061 68.8234 84.8873 100.5424 69.9097 10.8861 258.4592 232.8798 232.8798 98.5631 7.8262 227.9474 114.1696 134.0421 99.362 230.7184 16.7609 4.539 269.3099 0.0 137.9032 76.4288 196.7902 233.1217;
	1.2902 17.4329 76.8436 101.55 12.4459 23.0564 13.3091 15.9551 24.9026 27.8727 51.5222 76.861 115.7139 50.3221 36.6894 13.8225 17.1502 18.1741 66.8367 37.996 4.4364 53.7984 68.2927 85.6891 93.4883 69.659 10.7585 319.1148 278.7451 278.7451 145.4821 11.5969 222.7891 97.8017 157.7665 118.9312 302.9255 19.4366 161.3777 250.415 0.044 255.7728 83.0572 177.0231 306.0809;
	1.5695 21.2068 84.7436 91.3863 12.1047 28.5211 20.7579 16.8316 25.9703 27.5584 50.9413 75.9944 114.4091 54.2475 11.1789 4.2116 5.2255 5.5375 74.0432 54.9018 6.9193 66.5493 66.8996 86.2216 97.0037 71.1041 10.9641 462.6344 345.4667 345.4667 274.0604 16.3481 246.8107 141.3174 170.0733 147.3991 416.2971 35.1492 214.7616 259.8312 0.0011 316.3946 99.0251 185.0375 420.6336;
	2.5713 34.7434 88.1707 91.3437 13.966 29.4675 20.5141 15.7026 25.6503 27.8534 51.4867 76.808 115.634 53.4868 45.9207 17.3003 21.4652 22.7468 81.2548 65.2484 6.838 68.7575 66.2872 85.5259 99.7895 72.2128 9.5398 591.7882 422.1809 422.1809 305.0447 13.9751 270.8492 167.9495 167.6883 180.1305 549.9085 46.2053 211.21 267.2934 0.0 326.8929 127.7436 220.9578 555.6367;
	2.8566 38.5996 86.7663 107.0059 14.3078 27.2463 21.3672 16.5155 25.5195 30.0113 55.4754 82.7584 124.5923 51.2374 70.1897 26.4436 32.8096 34.7684 85.6503 63.2785 7.1224 63.5747 68.8118 86.7308 99.8413 75.2963 10.4036 707.6415 556.8433 556.8433 376.3243 24.4823 285.501 162.8789 160.6361 237.5865 683.4913 69.2706 269.6775 267.4321 2.476 302.2523 119.2112 251.424 690.611;
	3.6728 49.6271 88.8968 112.4956 15.2744 32.5863 26.8981 16.3027 27.2582 26.5719 49.1178 73.2741 110.3137 62.9875 115.9679 43.6902 54.2082 57.4445 84.9777 63.0569 8.966 76.0346 45.9055 86.7863 99.3918 70.896 11.3858 986.648 680.4355 680.4355 482.3105 30.5216 283.2591 162.3085 197.4743 290.3191 957.3497 101.9481 436.0455 266.228 3.018 361.4902 153.0128 254.5211 967.3221;
	3.7315 50.4209 92.343 114.8577 15.2197 33.7078 28.6693 17.6561 27.8249 21.7272 40.1624 59.9145 90.2009 64.9199 142.9542 53.8572 66.8228 70.8122 89.4162 70.9654 9.5564 78.6516 41.6717 87.3973 101.2816 74.899 12.8847 1052.5164 752.1129 752.1129 633.2817 39.6759 298.054 182.6652 203.5326 320.9015 1016.0235 143.8963 397.9708 271.29 8.7406 373.9321 163.6212 266.9824 1026.6071;
	3.6508 49.3302 89.3138 115.4174 15.009 33.7081 30.1517 18.3889 27.1858 18.7298 34.6217 51.6488 77.757 62.6525 162.3377 61.1598 75.8834 80.4138 87.0092 71.2387 10.0506 78.6521 1.7621 87.1527 101.2272 76.1292 12.8204 965.0158 765.8542 765.8542 665.4058 67.3499 290.0307 183.3686 196.4241 326.7644 1001.5468 175.0375 404.1735 271.1442 16.4335 373.9347 201.6468 281.9852 1011.9796;
	3.7292 50.3892 92.0903 115.0489 14.718 33.5089 30.7331 18.7219 27.8399 18.6891 34.5464 51.5365 77.5879 59.7934 178.9154 67.4053 83.6326 88.6255 89.3943 71.511 10.2444 78.1874 14.2514 84.4078 102.7328 75.213 13.4949 1098.7277 782.8643 782.8643 739.4505 83.4557 297.981 184.0695 187.4604 334.0221 1104.2271 216.331 436.1907 275.177 114.5241 371.7254 192.2077 266.9217 1115.7295;
	3.8818 52.4518 90.337 117.0121 14.2597 34.089 32.0845 13.9883 28.1975 17.304 31.9862 47.7172 71.8379 63.1213 189.6438 71.4472 88.6474 93.9398 88.8892 70.15 10.6948 79.541 27.335 83.6269 104.1404 68.3874 13.0174 1116.2961 788.0643 788.0643 711.1985 91.5483 296.2972 180.5664 197.8937 336.2408 1096.2489 229.5927 452.588 278.9476 118.9544 378.1609 200.0945 266.7357 1107.6682;
	3.9197 52.9631 94.5305 115.6807 15.0745 34.1021 32.3353 9.5921 28.2136 20.1573 37.2604 55.5852 83.6832 62.8276 199.3288 75.0959 93.1746 98.7373 90.8666 70.5345 10.7784 79.5715 46.1096 42.8904 51.7437 69.7924 11.6222 1125.4069 783.9727 783.9727 721.2086 103.6228 302.8886 181.5561 196.9729 334.495 1138.8757 257.593 454.6714 138.5992 120.9578 378.3058 203.1255 247.3037 1150.739;
	3.9197 52.9641 94.3036 120.5386 15.3463 34.7228 32.406 18.7001 19.4827 21.0159 38.8475 57.9528 87.2477 65.6004 193.9958 73.0868 90.6818 96.0956 87.4539 68.907 10.802 81.0199 36.6063 79.3751 104.2525 72.9754 13.8269 1176.693 804.2995 804.2995 751.3827 104.1414 291.513 177.3668 205.6662 343.1678 1116.6585 250.8195 448.0522 279.2478 117.9514 385.1916 212.6392 269.9128 1128.2903;
	3.8887 52.5445 92.5003 121.6811 15.1824 34.7291 32.3365 17.5258 11.5178 22.9315 42.3885 63.2354 95.2005 65.1672 191.2783 72.063 89.4115 94.7495 84.677 70.4604 10.7788 81.0345 45.1003 85.5269 103.4762 74.5659 13.3685 1226.151 810.0124 810.0124 722.0558 104.005 282.2568 181.3653 204.3081 345.6053 1190.1839 248.9179 452.1155 277.1683 120.281 385.261 211.6171 244.4217 1202.5817;
	3.8614 52.1759 90.552 116.784 14.6936 34.163 32.403 16.5081 20.2356 19.6891 36.3951 54.2943 81.7398 66.1853 188.1687 70.8915 87.9579 93.2092 84.2969 66.7534 10.801 79.7136 43.5219 82.9577 81.8472 73.6857 13.3692 1166.2965 813.5389 813.5389 716.0095 106.7313 280.9897 171.8234 207.4997 347.1099 1191.9835 245.676 450.4846 219.2337 117.3328 378.9811 207.8578 250.8147 1204.4;
	3.8394 51.8787 89.7978 118.2075 14.7876 33.7611 34.0766 17.5844 12.0181 17.8657 33.0245 49.2661 74.1698 67.323 194.4644 73.2633 90.9008 96.3277 88.2959 70.7565 11.3589 78.7758 46.402 85.9101 103.8891 72.9785 13.442 1245.6179 832.8656 832.8656 779.4465 110.7436 294.3196 182.1274 211.0666 355.356 1244.4219 271.8704 475.0215 278.2744 117.3319 374.5228 210.3622 258.0134 1257.3846;
];