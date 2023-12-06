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
	1.0909 14.7401 59.2414 66.9741 11.3319 9.1798 4.2034 8.8365 8.3947 19.6241 36.2748 54.1149 81.4697 2.6748 153.3204 57.7626 71.6684 75.9471 78.7522 71.9644 1.4011 21.4195 70.4289 72.833 52.2188 49.769 4.5237 209.0207 336.1287 336.1287 231.4404 46.9865 262.5075 185.2366 8.386 143.4149 418.9093 93.1805 123.1663 139.8717 65.2499 101.8343 102.0443 82.6483 423.2729;
	0.7321 9.8918 56.8919 68.4157 11.8178 16.6591 3.3603 12.2378 16.1919 12.9949 24.0208 35.8343 53.9483 2.7393 123.1062 46.3795 57.545 60.9805 70.6537 73.2257 1.1201 38.8713 36.1109 75.3538 57.086 56.603 6.8432 154.251 233.87 233.87 163.3742 30.487 235.5124 188.4831 8.5879 99.7845 336.9928 98.4713 209.3846 152.9089 77.0706 184.8055 125.094 108.3835 340.5032;
	0.4625 6.2493 61.0986 68.054 7.8665 2.9183 2.7278 11.6271 5.0481 10.756 19.8823 29.6605 44.6538 0.3752 74.6765 28.1339 34.9069 36.9909 55.1103 71.2284 0.9093 6.8093 29.5717 78.6984 54.9741 57.8468 6.7919 57.547 6.0167 6.0167 16.2736 17.1645 183.7009 183.342 1.1762 2.5671 176.1683 5.3248 26.7609 147.252 65.6603 32.3734 100.4989 108.5478 178.0034;
	0.623 8.4176 67.9882 80.1119 9.4164 6.347 2.966 13.3138 1.4413 15.8587 29.3145 43.7315 65.8376 0.0062 82.6111 31.1233 38.6159 40.9213 41.398 69.1195 0.9887 14.8097 50.7999 77.6267 59.4831 64.3244 7.7929 27.9328 7.229 7.229 1.7765 18.9957 137.9934 177.9139 0.0196 3.0844 41.6377 2.7037 23.3291 159.3296 65.7397 70.4096 75.8016 148.2818 42.0714;
	0.7473 10.0978 81.792 76.2042 12.3158 14.3595 5.3193 14.7121 2.4601 16.3948 30.3055 45.2098 68.0632 6.1738 122.7492 46.245 57.3781 60.8037 47.7362 71.3184 1.7731 33.5055 50.9084 81.8547 79.8411 71.0193 8.7815 29.2797 32.2062 32.2062 56.2883 10.4304 159.1207 183.5737 19.3558 13.7413 33.4581 0.4068 107.6642 213.86 70.6284 159.2949 115.7611 168.3174 33.8066;
	0.8778 11.8612 82.094 66.6343 12.5174 7.7036 7.3914 13.9495 5.6333 9.8126 18.1385 27.0591 40.7373 0.4702 148.9997 56.1348 69.6487 73.8068 72.4963 72.7746 2.4638 17.975 37.4438 82.3207 64.7053 74.1945 8.9898 32.5311 96.694 96.694 34.3332 10.077 241.6544 187.3221 1.4741 41.2561 66.5616 0.0599 80.5271 173.3177 57.7644 85.4584 28.9636 169.6136 67.2549;
	0.6314 8.5317 57.8459 39.6905 12.1421 3.4187 4.348 8.0371 2.1876 7.8548 14.5195 21.6602 32.6093 1.8766 118.9697 44.8211 55.6114 58.9315 61.6781 69.8255 1.4493 7.9769 22.7989 56.0068 35.754 65.4279 4.0416 43.1617 116.5986 116.5986 68.5931 9.2806 205.5936 179.731 5.8835 49.7487 90.4507 3.8955 97.43 95.7695 28.1401 37.9246 37.6152 147.276 91.3929;
	0.6829 9.2272 39.2821 30.7005 5.7321 3.5628 4.798 7.1828 2.1698 5.3686 9.9237 14.8042 22.2876 0.9731 65.4419 24.6549 30.5903 32.4166 18.6491 47.5892 1.5993 8.3132 12.7463 39.9742 35.6166 61.8013 4.1397 97.2466 277.3873 277.3873 106.0476 15.3059 62.1637 122.4947 3.0509 118.3519 295.9582 8.249 289.5652 95.4015 13.2565 39.5231 112.2829 115.772 299.041;
	0.5787 7.8191 29.5441 25.4245 4.8174 0.0288 0.0 5.6446 0.0222 1.6785 3.1027 4.6287 6.9684 0.0 16.1241 6.0747 7.5371 7.9871 14.711 17.1923 0.0 0.0672 5.2626 39.6927 31.8637 51.4077 3.7831 18.7216 60.2729 60.2729 30.7458 12.797 49.0365 44.253 0.0 25.7164 15.5249 5.5265 30.433 85.3491 9.0294 0.3193 20.4268 77.2168 15.6866;
	0.5089 6.876 29.2503 22.0865 8.9761 0.0 0.0069 4.4304 4.1756 0.3372 0.6234 0.93 1.4 0.0 9.1607 3.4512 4.2821 4.5377 34.0795 13.3606 0.0023 0.0 9.4976 38.6726 30.9606 43.2436 3.1084 24.419 77.7183 77.7183 26.2909 2.1768 113.5984 34.3901 0.0 33.1598 5.1721 2.9452 47.1326 82.9302 2.1944 0.0 49.1511 87.2707 5.226;
	0.8981 12.1348 44.6942 1.2492 12.6916 0.2531 0.0 3.6879 2.9216 0.4709 0.8704 1.2985 1.9548 0.0 19.4007 7.3091 9.0687 9.6101 20.4478 11.2699 0.0 0.5906 31.3364 43.6746 48.2694 50.9432 1.2933 49.4317 73.1978 73.1978 51.5026 5.4096 68.1593 29.0087 0.0 31.2311 50.0152 15.9688 15.2822 129.2931 3.0296 2.8078 1.7542 103.6992 50.5362;
	1.6092 21.7436 67.5394 10.8845 14.4372 1.8415 2.9572 1.3079 13.8442 1.0536 1.9476 2.9055 4.3742 0.2361 27.7561 10.457 12.9744 13.749 15.6854 11.3945 0.9857 4.2968 51.3467 57.3432 17.1393 49.8831 0.8804 147.9576 109.66 109.66 42.4134 5.1338 52.2847 29.3296 0.7403 46.7883 130.1216 16.4395 68.2616 45.9088 6.4113 20.428 5.4881 139.5994 131.477;
	2.1717 29.3442 83.6852 7.259 14.6182 0.014 0.8314 0.7015 7.6314 22.8426 42.2242 62.9901 94.8313 0.0 28.3629 10.6856 13.258 14.0495 5.6553 10.7464 0.2771 0.0326 34.9414 67.2809 70.6061 54.2374 1.574 205.6596 154.9911 154.9911 5.3996 3.2541 18.851 27.6613 0.0 66.1295 162.3121 4.6383 24.2643 189.1235 4.7125 0.1548 101.8311 177.6096 164.0029;
	1.8377 24.8316 10.0012 4.1849 14.5491 20.2427 2.8588 0.2076 11.3256 0.1459 0.2696 0.4022 0.6056 0.1963 18.367 6.9197 8.5855 9.0981 2.625 7.4361 0.9529 47.2331 43.7429 0.7771 7.9792 32.1785 0.8779 228.2503 219.0102 219.0102 39.0693 6.3631 8.75 19.1405 0.6153 93.4444 206.8632 13.7164 29.8244 21.3728 6.9955 224.5596 80.3893 133.6709 209.018;
	2.1726 29.3562 21.6075 11.8573 10.2016 4.3969 0.3499 1.2243 10.8026 0.2939 0.5433 0.8105 1.2203 0.0107 6.1402 2.3133 2.8702 3.0415 1.1649 0.5551 0.1166 10.2594 27.5863 5.8154 19.7446 13.2491 1.3726 274.3309 247.176 247.176 83.8512 6.8305 3.8831 1.4289 0.0334 105.4617 248.916 12.4099 31.9128 52.8873 4.7678 48.7761 76.2416 104.01 251.5088;
	3.1823 43.0 88.0442 32.6294 14.6028 2.9845 2.4949 3.5328 25.8389 8.3068 15.3551 22.9067 34.4859 4.6773 56.7184 21.3683 26.5126 28.0954 14.9651 0.1626 0.8316 6.9638 47.4908 47.1007 37.605 26.4488 3.3686 356.8931 290.8679 290.8679 180.3923 12.5794 49.8836 0.4184 14.6641 124.1037 306.5615 44.7717 171.8911 100.7277 33.5855 33.108 0.3785 183.6668 309.7548;
	3.3907 45.8157 5.5582 8.9857 14.7492 6.0453 8.8486 2.9646 21.3365 0.2794 0.5165 0.7706 1.1601 2.543 58.2951 21.9623 27.2496 28.8764 46.0756 0.0965 2.9495 14.1056 0.5178 10.8627 23.9072 29.5301 5.9546 388.3624 389.5682 389.5682 198.0617 27.0703 153.5853 0.2484 7.9725 166.2158 479.1229 73.1983 205.2623 64.0372 61.4786 67.0622 133.6502 220.4049 484.1138;
	2.8042 37.891 32.5664 39.2698 15.1749 21.1479 7.7716 2.0375 20.5746 9.8744 18.2526 27.2293 40.9936 6.6354 122.8544 46.2847 57.4273 60.8558 86.5316 0.9393 2.5905 49.3451 16.2391 22.9086 35.798 43.1347 8.1169 603.5372 504.3212 504.3212 335.9761 36.8515 288.4385 2.4178 20.803 215.1771 590.9629 100.733 290.3521 95.8876 86.3694 234.6009 112.9206 235.2207 597.1188;
	3.0629 41.3866 84.9228 27.0517 14.9403 27.2157 9.3664 1.9818 22.5154 8.9104 16.4708 24.5712 36.9918 7.9878 1.3253 0.4993 0.6195 0.6565 24.3061 33.7581 3.1221 63.5034 27.5258 25.2995 25.5586 62.7843 5.959 848.857 473.3908 473.3908 337.8671 47.36 81.0203 86.8935 25.0429 201.9801 660.8813 73.3222 158.4833 68.4605 42.9502 301.9133 109.5049 213.6736 667.7655;
	3.0772 41.5796 1.7952 14.6405 14.9101 11.6521 19.8817 5.6528 27.1209 22.9008 42.3319 63.1508 95.0732 5.7222 12.2615 4.6194 5.7315 6.0737 30.4552 18.2933 6.6272 27.1883 56.088 39.7559 20.9543 57.019 9.8945 754.9533 421.8749 421.8749 270.882 40.3673 101.5174 47.0869 17.9398 180.0 565.0334 68.538 170.9866 56.1276 74.2631 129.261 108.0305 171.6077 570.9192;
	3.26 44.0498 85.4615 15.7014 14.307 12.3896 18.1807 9.3248 27.497 22.256 41.1398 61.3725 92.3959 8.7845 21.4183 8.0692 10.0118 10.6095 5.6721 25.5204 6.0602 28.909 59.5528 85.7494 29.4454 62.4571 6.7991 704.4782 382.683 382.683 212.0646 53.9203 18.9069 65.6896 27.5405 163.2781 584.9186 68.0872 304.4251 78.8715 43.6728 137.4416 103.9677 165.8826 591.0115;
	3.3165 44.8129 84.5632 0.0 14.1538 22.8086 12.7204 14.8194 26.5431 23.8536 44.093 65.7781 99.0286 11.5604 0.0 0.0 0.0 0.0 2.4808 47.9129 4.2401 53.2202 36.1794 82.6325 98.6501 68.8144 6.5026 808.3753 316.0399 316.0399 170.6071 57.7348 8.2694 123.328 36.2435 134.8437 550.4133 93.1983 207.3131 264.2412 14.9606 253.0239 0.0642 180.3995 556.1468;
	3.6271 49.0104 86.6818 109.7357 14.5992 25.0243 14.7987 17.2604 27.3008 26.1513 48.3402 72.1141 108.5674 8.3594 51.5113 19.4066 24.0785 25.5161 9.5302 66.7146 4.9329 58.3899 57.4523 86.3368 98.875 70.8927 8.9889 882.217 364.9543 364.9543 278.3771 41.46 31.7672 171.7236 26.208 155.7139 524.421 99.5097 146.3919 264.8438 13.2489 277.6024 140.7085 171.1072 529.8837;
	3.4963 47.2426 86.1053 101.626 14.2731 15.498 11.9591 16.9553 27.1175 24.4169 45.1342 67.3314 101.367 11.4969 45.908 17.2956 21.4593 22.7405 3.3456 51.369 3.9864 36.162 48.883 84.9024 101.2312 71.7746 7.6307 813.4251 387.5349 387.5349 254.0609 45.7302 11.1518 132.224 36.0444 165.3482 488.029 79.4816 315.0453 271.1549 12.6976 171.9244 128.5405 198.5908 493.1127;
];
