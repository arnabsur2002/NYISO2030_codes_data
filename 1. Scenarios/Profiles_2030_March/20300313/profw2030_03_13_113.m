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
	0.5461 7.3789 49.7509 59.255 4.3998 0.6935 9.5027 8.322 2.4354 17.2362 31.8609 47.5302 71.5564 2.6495 130.2027 49.0531 60.8622 64.4957 81.7824 67.8589 3.1676 1.6182 64.3914 68.6203 48.3175 46.688 3.8335 197.9946 334.4943 334.4943 232.4716 43.9211 272.6079 174.6689 8.3066 142.7176 375.8879 86.4856 10.9806 129.4218 63.1665 7.6932 23.3644 68.4422 379.8034;
	0.4747 6.4143 49.7791 60.7241 4.22 2.6678 15.9958 11.7761 4.0796 10.1413 18.746 27.9654 42.1017 4.0148 120.7503 45.492 56.4438 59.8135 76.6598 67.4823 5.3319 6.2248 32.6814 72.3213 52.4921 50.0404 6.3282 100.8615 222.7 222.7 157.3146 29.3799 255.5327 173.6997 12.5868 95.0187 287.9506 88.4764 91.5153 140.6038 83.5272 29.5947 76.8504 90.4891 290.9501;
	0.2788 3.7671 50.6696 61.3328 2.551 0.4838 7.9983 11.2555 0.1157 7.6631 14.1651 21.1315 31.8134 9.292 86.1846 32.4696 40.2863 42.6915 66.3664 65.4947 2.6661 1.1289 17.9492 77.0225 51.4801 52.7843 5.834 32.9681 13.4784 13.4784 45.7882 16.0931 221.2213 168.5836 29.1317 5.7508 158.3493 2.4954 30.2232 137.8932 69.74 5.3672 26.2527 85.2356 159.9988;
	0.3707 5.0093 59.2276 68.5936 6.0277 0.521 2.6158 13.4224 0.0 11.7742 21.7645 32.4684 48.8809 10.7994 98.5818 37.1401 46.0813 48.8324 45.1436 67.0549 0.8719 1.2156 40.5134 79.257 56.4769 65.1163 6.7457 13.7571 48.603 48.603 92.0886 16.6401 150.4788 172.5995 33.8576 20.7373 3.6407 1.7804 14.0743 151.2774 70.0578 5.7792 30.1261 123.9597 3.6786;
	0.3722 5.029 74.9028 71.9709 7.8487 1.2497 4.0154 14.0336 0.0 12.7039 23.483 35.032 52.7405 10.3822 130.5354 49.1784 61.0177 64.6605 56.2145 68.6093 1.3385 2.916 37.2712 81.7116 75.5202 69.5248 7.4214 36.4239 11.6534 11.6534 4.9623 8.481 187.3816 176.6006 32.5494 4.9721 7.8133 0.0328 0.7899 202.2862 66.489 13.8633 38.8819 128.2302 7.8947;
	0.3425 4.628 73.5182 54.0963 8.5911 3.651 2.327 12.2632 0.0 6.6687 12.327 18.3895 27.6852 2.3731 155.3033 58.5096 72.5953 76.9293 83.8818 69.2262 0.7757 8.519 13.5544 76.6505 53.5807 66.5576 7.3401 90.7619 31.9285 31.9285 7.4805 9.1883 279.6059 178.1885 7.44 13.6228 18.2073 1.9439 0.2481 143.5198 50.4967 40.5016 26.2841 123.9244 18.397;
	0.2095 2.8305 49.5863 33.0697 7.707 1.9753 4.0458 7.3265 1.6431 5.6707 10.4821 15.6373 23.5418 2.3919 124.4551 46.8878 58.1755 61.6487 65.602 66.7149 1.3486 4.6091 9.1067 51.0572 31.5176 62.011 3.9683 272.836 29.8217 29.8217 6.3599 0.2851 218.6734 171.7243 7.4989 12.7239 72.6437 0.4855 4.3546 84.4222 26.4283 21.9128 32.0882 112.7394 73.4004;
	0.2288 3.0923 28.7273 23.5853 3.275 1.4856 5.5168 6.4179 2.1737 2.936 5.4271 8.0962 12.1887 4.1923 64.7085 24.3786 30.2475 32.0533 20.4961 40.0858 1.8389 3.4664 9.644 30.2192 31.2807 61.2503 4.083 388.6556 58.2339 58.2339 12.7776 0.3511 68.3204 103.1809 13.1435 24.8464 133.3052 2.2612 34.9236 83.7877 9.6261 16.4801 7.7153 82.8181 134.6938;
	0.4512 6.0961 17.2361 16.7274 3.2824 0.0048 1.6217 4.9252 0.0 0.0 0.0 0.0 0.0 10.8628 18.4218 6.9403 8.6111 9.1252 8.8974 13.5996 0.5406 0.0111 0.0 32.4797 28.6803 48.4309 3.78 119.8696 25.6563 25.6563 1.3853 2.5817 29.658 35.0054 34.0563 10.9467 63.701 1.6931 0.0 76.8223 3.9716 0.0529 7.0738 25.1546 64.3645;
	0.2712 3.6644 9.9819 22.612 5.3043 0.0064 0.0217 4.2803 0.0 0.0 0.0 0.0 0.0 10.1897 8.0628 3.0376 3.7689 3.9939 4.3702 2.8393 0.0072 0.015 0.0 33.0902 31.4886 45.2562 2.957 60.3216 32.6643 32.6643 7.7953 2.9065 14.5674 7.3082 31.946 13.9367 33.4652 4.3252 0.0 84.3444 0.6716 0.0712 50.4117 75.4006 33.8138;
	0.7959 10.7545 39.6234 19.19 10.8321 1.7108 1.7011 3.5579 0.0 0.0014 0.0025 0.0037 0.0056 8.5333 7.5419 2.8414 3.5254 3.7359 3.515 0.9063 0.567 3.9918 2.3897 45.2023 51.2817 48.712 1.2879 137.2731 74.9613 74.9613 70.4487 8.9883 11.7166 2.3327 26.7531 31.9835 135.2101 25.5903 0.0 137.3618 5.0557 18.9781 50.0697 84.9298 136.6186;
	1.4171 19.1477 58.0706 23.6449 12.9628 1.0128 11.9026 1.1901 1.1728 0.0001 0.0003 0.0004 0.0006 3.3924 8.8595 3.3378 4.1413 4.3885 20.7727 0.9908 3.9675 2.3633 41.6279 59.6276 37.6738 49.5188 1.5438 186.0387 116.373 116.373 70.3705 4.7684 69.2423 2.5504 10.6356 49.6525 153.374 22.3006 5.3846 100.9119 13.5909 11.2357 42.0614 104.8008 154.9716;
	2.288 30.9162 78.0039 11.2015 14.1617 2.0626 20.6757 1.7935 7.6984 15.8536 29.3051 43.7174 65.8164 2.044 29.0906 10.9597 13.5982 14.41 9.95 4.9267 6.8919 4.8127 22.739 70.8795 74.633 56.2833 0.4204 230.0586 179.2163 179.2163 47.9334 8.4662 33.1667 12.6814 6.4083 76.4656 207.1053 15.6332 27.0485 199.9099 9.9725 22.8808 118.7071 162.6651 209.2627;
	1.7768 24.0089 0.0791 10.7369 13.9135 18.5536 20.6174 0.5047 2.5357 0.0 0.0 0.0 0.0 5.4641 20.4386 7.7001 9.5539 10.1242 6.5713 7.971 6.8725 43.2917 39.1256 5.9194 14.4948 31.6688 0.1737 197.1771 210.3255 210.3255 30.2007 5.4406 21.9044 20.5174 17.1306 89.7389 199.4097 12.0057 55.2237 38.8254 4.5591 205.821 82.8973 126.6378 201.4869;
	2.1894 29.5841 0.0119 4.2068 9.6214 0.5288 16.7016 0.005 17.101 0.0004 0.0008 0.0012 0.0018 12.7345 5.0444 1.9005 2.358 2.4987 0.166 0.2711 5.5672 1.2338 25.1617 4.8539 3.7941 0.3813 0.0194 270.989 255.1051 255.1051 95.5178 6.8762 0.5532 0.6979 39.9244 108.8448 266.059 21.4887 123.4811 10.1628 4.0311 5.8658 79.8952 101.9219 268.8304;
	3.2191 43.4975 82.2629 2.0803 13.9599 0.2345 6.2802 0.2208 9.2209 0.5742 1.0614 1.5835 2.3839 7.2829 34.9992 13.1857 16.3601 17.3368 1.5328 0.726 2.0934 0.5472 45.388 8.9219 9.3247 3.3456 2.2994 374.0368 258.2273 258.2273 166.6264 9.0513 5.1095 1.8687 22.8329 110.177 306.4657 39.003 19.7893 24.9768 5.4069 2.6014 2.2614 177.555 309.658;
	3.4905 47.165 0.5751 0.0559 14.3342 2.389 13.0418 0.0242 12.4696 7.2135 13.334 19.8916 29.9468 11.989 26.2627 9.8943 12.2763 13.0092 15.8183 6.0548 4.3473 5.5742 3.8533 2.3621 2.4531 0.3214 0.1096 368.7559 370.3398 370.3398 191.2887 23.0976 52.7275 15.585 37.587 158.0116 458.0457 72.7356 65.2075 6.5708 3.8567 26.5015 139.0172 208.7595 462.817;
	2.7306 36.8967 12.9413 0.9746 14.3006 19.1258 18.6638 1.3653 17.1369 8.5012 15.7143 23.4426 35.2928 5.9982 49.4552 18.632 23.1174 24.4976 21.413 2.9304 6.2213 44.6268 15.7052 1.4653 15.9795 1.3675 0.3678 551.1581 475.0755 475.0755 337.6932 32.9613 71.3766 7.5428 18.8052 202.6989 569.1408 100.0249 165.8166 42.8023 9.3841 212.1685 117.5582 221.0181 575.0693;
	2.948 39.8335 85.3211 0.1848 14.3262 24.5844 8.1199 1.6065 13.5011 9.0514 16.7313 24.9598 37.5769 6.8083 17.5758 6.6216 8.2156 8.7061 5.6162 43.4112 2.7066 57.3637 32.0776 1.0419 3.3276 57.5972 0.058 708.125 429.5162 429.5162 360.5401 42.9933 18.7207 111.7406 21.3448 183.2602 595.8366 76.0252 102.7198 8.9131 1.4043 272.7233 103.079 202.9675 602.0432;
	2.9395 39.7185 9.1974 0.3277 14.462 0.0319 17.8828 5.471 27.0388 22.4605 41.5179 61.9366 93.2452 3.3114 0.141 0.0531 0.0659 0.0698 11.433 18.9475 5.9609 0.0745 60.4598 0.959 14.4075 48.4893 0.8423 698.1838 415.465 415.465 329.7655 42.9734 38.1099 48.771 10.3816 177.2651 533.1725 75.0223 10.3195 38.5914 3.1278 0.3544 105.3897 178.7725 538.7264;
	3.2151 43.4425 87.0597 0.0048 14.159 0.5694 0.0296 6.6559 27.1108 22.2589 41.1452 61.3806 92.4082 2.9924 19.8086 7.4628 9.2594 9.8122 2.8892 30.4694 0.0099 1.3286 69.2029 82.9662 11.547 61.0929 0.2722 628.9062 345.9705 345.9705 235.3989 56.7613 9.6307 78.4282 9.3817 147.6141 525.0694 72.904 0.0 30.9294 0.0747 6.3164 102.2882 179.7354 530.5389;
	3.6304 49.0553 92.3391 3.8606 14.6554 22.4652 10.9238 15.3357 26.482 24.4841 45.2584 67.5167 101.646 9.4908 5.2187 1.9661 2.4394 2.5851 3.906 50.968 3.6413 52.4187 56.6396 85.5832 100.8751 71.5081 5.8412 681.5855 297.1647 297.1647 204.3219 59.3683 13.02 131.1918 29.755 126.7903 455.1738 100.4509 39.8445 270.2012 12.5925 249.2136 7.3333 200.9045 459.9152;
	3.6595 49.4484 89.155 107.1623 14.5206 23.9965 11.209 15.8935 25.345 24.8563 45.9464 68.543 103.1912 6.4546 37.1082 13.9803 17.3459 18.3815 0.0 63.1269 3.7363 55.9919 60.1415 83.3895 95.2335 70.4601 7.0385 727.8381 309.2906 309.2906 275.9244 46.3306 0.0 162.4888 20.236 131.964 413.892 92.4284 0.0 255.0898 6.6939 266.2017 134.7842 196.4505 418.2034;
	3.5815 48.3936 87.2767 102.2388 15.0063 15.4893 9.8737 16.663 24.5162 25.3522 46.8631 69.9105 105.2499 10.5573 31.7705 11.9693 14.8509 15.7375 0.0001 46.1881 3.2912 36.1417 56.765 86.3563 100.224 73.3002 6.1928 668.9327 347.0333 347.0333 243.2908 47.2821 0.0003 118.8884 33.0986 148.0675 388.8639 66.6228 246.4105 268.4572 5.7235 171.8281 136.0061 218.5559 392.9146;
];
