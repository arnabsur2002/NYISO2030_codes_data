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
	3.695 49.928 90.5772 111.2067 14.8712 31.9468 27.6646 13.1472 27.3457 28.6908 53.0345 79.1171 119.1103 67.7272 197.3133 74.3367 92.2325 97.7389 92.5575 70.2594 9.2215 74.5424 72.1414 89.9631 97.6804 66.6659 9.309 1109.9446 788.9994 788.9994 766.9766 115.5849 308.525 180.8478 212.3338 336.6397 1107.7579 302.5751 450.1817 261.644 121.6452 354.396 187.2328 245.0996 1119.2971;
	3.6903 49.8645 88.1467 111.8622 14.4213 32.1009 28.1429 12.2467 27.7893 26.8737 49.6755 74.1061 111.5664 64.6921 200.1959 75.4226 93.5799 99.1668 91.0575 69.4692 9.381 74.902 72.0724 89.0659 97.9955 61.2766 8.2451 1118.4916 770.1572 770.1572 765.3358 112.1841 303.5251 178.814 202.8186 328.6004 1153.1744 277.9484 449.6887 262.4878 119.6915 356.1056 193.9531 242.0019 1165.1866;
	3.7161 50.2128 89.6741 101.7811 14.48 32.3478 26.6022 11.5603 28.1358 28.3686 52.4389 78.2285 117.7726 64.7895 194.5925 73.3116 90.9607 96.3912 92.6493 71.1589 8.8674 75.4781 71.9816 89.9307 93.4212 61.1786 9.192 1132.0236 812.1902 812.1902 770.7326 115.0339 308.831 183.1632 203.1239 346.5345 1125.3466 265.0309 456.6803 250.2354 118.2718 358.8445 176.8762 257.727 1137.0689;
	3.6344 49.1083 89.5185 102.9216 14.2382 32.1156 24.0852 12.2623 27.8687 27.639 51.0903 76.2167 114.7439 64.1422 196.1473 73.8973 91.6874 97.1613 92.9046 71.5164 8.0284 74.9364 69.8948 89.6925 91.3059 57.4982 8.8967 1136.9152 847.302 847.302 784.3395 117.491 309.682 184.0834 201.0944 361.5155 1205.6613 272.9231 446.486 244.5694 114.4602 356.2688 188.1221 254.3247 1218.2203;
	3.6128 48.8172 87.5038 90.0463 14.3649 31.9648 19.9924 10.5346 24.2795 27.4288 50.7018 75.6371 113.8712 62.3917 197.3892 74.3652 92.268 97.7765 92.9264 71.5506 6.6641 74.5846 70.8925 89.9617 80.3759 53.9861 7.8103 1114.1756 795.665 795.665 743.4769 110.5017 309.7546 184.1715 195.6063 339.4837 1121.6393 257.0102 384.7144 215.2927 112.7684 354.5964 191.7358 227.998 1133.323;
	3.6887 49.8427 85.6751 85.7202 14.4765 30.9872 18.4242 7.9092 25.0632 28.6872 53.0279 79.1072 119.0955 64.0647 198.5531 74.8037 92.812 98.353 92.7624 72.8889 6.1414 72.3034 70.9259 89.4425 64.5701 37.4128 6.0369 1103.2674 745.5814 745.5814 672.2444 100.7598 309.208 187.6162 200.8515 318.1147 1145.8268 230.6513 340.7099 172.9557 102.5718 343.7511 185.4933 190.6972 1157.7625;
	3.2611 44.0643 71.5697 64.5496 14.0674 27.5534 14.9329 6.062 17.4828 27.6157 51.0471 76.1523 114.6469 64.3902 201.0394 75.7404 93.9742 99.5846 92.7069 71.8468 4.9776 64.2912 71.62 84.4737 52.5058 24.9386 4.7669 1110.1292 687.0053 687.0053 568.5096 70.4679 309.0229 184.9338 201.8721 293.1222 1088.4632 207.7955 262.3176 140.6405 84.7316 305.6588 149.9233 124.4287 1099.8014;
	3.3641 45.4568 68.7871 68.3535 14.2883 28.02 15.2352 5.4564 14.8762 23.9876 44.3406 66.1475 99.5847 67.2628 200.1156 75.3924 93.5424 99.127 92.2671 71.3453 5.0784 65.3801 62.4184 86.8921 62.856 18.6828 3.5808 1142.6082 675.9496 675.9496 647.1051 71.4879 307.5571 183.6429 210.878 288.4052 1077.686 206.2776 227.3912 168.3644 83.4803 310.8355 141.0867 138.0742 1088.9119;
	2.8203 38.1091 61.5523 63.5392 13.9531 23.3105 15.4131 4.0266 20.3439 22.8736 42.2814 63.0756 94.96 68.1849 188.015 70.8336 87.8861 93.133 92.5781 67.7973 5.1377 54.3911 56.2604 88.8423 64.2847 13.9538 2.6168 1128.99 781.6723 781.6723 765.7424 92.2859 308.5937 174.5105 213.7688 333.5135 1095.7911 246.7217 221.3742 172.1912 49.512 258.5908 129.9763 154.23 1107.2055;
	2.5085 33.895 48.6009 60.644 14.2825 17.5734 18.6693 2.3001 21.035 19.6476 36.3182 54.1797 81.5672 68.2266 195.2467 73.5581 91.2665 96.7152 91.9573 71.0317 6.2231 41.0046 48.1672 79.8921 40.5519 7.5163 1.227 1032.2066 790.1306 790.1306 784.9191 106.9668 306.5243 182.8359 213.8995 337.1224 1109.5031 238.4771 339.6605 108.6211 42.7338 194.9478 117.8084 123.3808 1121.0605;
	2.0277 27.3983 34.9286 42.6007 13.5723 13.1174 17.3589 1.2493 19.1371 15.4123 28.4895 42.5007 63.9846 65.0711 179.5722 67.6528 83.9396 88.9509 88.254 71.5389 5.7863 30.6073 37.1081 59.4858 23.9754 4.8071 1.6898 978.1242 761.1577 761.1577 749.5413 97.2762 294.18 184.1414 204.0066 324.7606 1012.0231 229.9951 360.3934 64.2198 31.9691 145.5157 85.7219 89.2727 1022.565;
	1.23 16.62 25.4989 26.574 8.4558 8.641 17.8609 1.2184 15.9684 16.3578 30.2371 45.1078 67.9095 64.5146 180.163 67.8754 84.2157 89.2435 83.7621 67.2558 5.9536 20.1624 42.1858 39.5506 19.2633 5.0366 0.771 862.2739 693.2377 693.2377 688.2905 97.7437 279.2069 173.1166 202.2619 295.7814 940.4376 203.9804 342.107 51.5981 19.8035 95.8579 61.6912 72.015 950.2338;
	0.9741 13.1626 25.2326 26.9405 8.451 7.5515 17.8995 2.0257 15.357 13.7216 25.3642 37.8383 56.9654 61.9502 183.6242 69.1794 85.8336 90.958 85.3486 66.7458 5.9665 17.6202 38.3436 34.3607 18.5689 1.6604 1.6291 863.2306 717.4348 717.4348 658.7481 94.7702 284.4954 171.8039 194.2224 306.1055 970.3727 219.415 388.1368 49.7382 25.6986 83.7716 56.3055 53.7333 980.4807;
	0.6888 9.307 17.1274 27.6713 6.5841 6.4812 13.4282 2.136 13.427 17.4173 32.1957 48.0296 72.3083 64.8095 183.9365 69.297 85.9796 91.1127 86.5413 66.8492 4.4761 15.1229 52.1437 36.0425 20.4372 0.4615 0.7127 939.2765 692.9219 692.9219 692.269 92.5387 288.4712 172.0699 203.1867 295.6467 892.8798 219.0697 415.6626 54.7425 25.3353 71.8985 36.2539 47.1584 902.1807;
	0.8236 11.1288 21.445 1.2109 6.0192 8.5681 10.5393 2.0463 12.7677 17.0258 31.4719 46.9498 70.6827 62.7629 188.9473 71.1848 88.3219 93.5948 77.2489 67.4094 3.5131 19.9921 55.1363 49.5354 23.4106 5.3584 2.5827 793.1799 588.0509 588.0509 586.701 74.2546 257.4965 173.512 196.7702 250.9017 724.8 192.2729 336.7383 62.7069 28.022 95.0483 37.0767 51.0507 732.35;
	0.8466 11.4393 16.023 27.6467 6.5342 1.2937 5.3261 1.524 9.8589 13.7538 25.4237 37.9272 57.0991 63.3932 189.135 71.2555 88.4096 93.6878 81.1618 67.2313 1.7754 3.0187 50.651 47.2254 22.7481 4.1857 2.0965 769.2037 487.2419 487.2419 536.1587 77.6942 270.5393 173.0535 198.7462 207.8899 571.1481 190.1097 228.0785 60.9324 29.0102 14.3519 6.9038 18.5717 577.0975;
	0.4195 5.6686 0.8238 0.691 5.7867 0.0 3.1278 0.8152 11.588 14.7981 27.354 40.8067 61.4343 61.0907 184.7405 69.5999 86.3555 91.511 83.7164 64.9226 1.0426 0.0 45.9285 42.8393 13.913 8.4212 1.4668 741.5155 515.0252 515.0252 575.5163 79.6986 279.0547 167.1111 191.5275 219.7441 697.1455 189.3925 232.541 37.2671 35.6259 0.0 0.0905 1.4486 704.4074;
	0.9747 13.1697 0.0127 0.6231 2.2446 0.0 0.0 0.0146 0.0 16.0857 29.7343 44.3577 66.7802 61.1927 141.4294 53.2827 66.11 70.0569 84.8702 51.9509 0.0 0.0 62.8247 40.1218 13.3272 2.5178 1.3074 684.6484 516.8342 516.8342 609.1164 86.2609 282.9006 133.7218 191.8474 220.5159 697.1451 205.8435 316.9477 35.6978 74.143 0.0 5.0488 0.1241 704.407;
	0.3831 5.1762 22.2375 37.2585 0.0008 0.0 0.0 1.5476 0.3932 20.2659 37.4612 55.8848 84.1342 63.649 115.6763 43.5804 54.0719 57.3001 28.6093 56.9198 0.0 0.0 63.8408 47.9797 17.198 5.9469 1.9231 688.1187 475.3401 475.3401 604.0155 78.2231 95.3642 146.5117 199.5483 202.8118 633.1582 186.196 317.8259 46.0662 83.3265 0.0 0.0 0.0164 639.7536;
	0.0667 0.9007 9.29 46.7251 1.0406 0.0998 0.0 1.2301 0.0 22.5533 41.6894 62.1924 93.6303 55.9678 98.7671 37.2099 46.1679 48.9242 19.5672 62.3653 0.0 0.2328 63.0592 58.931 0.0 6.7633 2.4189 557.0042 333.7641 333.7641 590.3977 64.6176 65.2239 160.5285 175.4667 142.406 515.9589 190.0394 0.0 0.0 73.3149 1.1068 0.0142 0.0 521.3335;
	0.2389 3.2277 41.1663 77.5964 1.7748 0.0 1.0507 4.1866 1.1441 23.671 43.7554 65.2745 98.2703 46.4124 114.4841 43.1312 53.5147 56.7096 83.5744 67.3978 0.3502 0.0 64.5635 76.118 31.6747 12.2567 2.3306 560.5097 354.3047 354.3047 521.7419 48.2406 278.5813 173.4822 145.509 151.17 620.0609 181.3287 18.8966 84.8429 88.3121 0.0 0.3185 29.558 626.5199;
	0.3616 4.8864 45.5361 72.8264 0.0545 0.0145 1.356 2.855 7.0282 21.9039 40.489 60.4016 90.9343 34.7464 123.5117 46.5323 57.7346 61.1814 78.0485 62.6009 0.452 0.0339 62.0408 71.0588 34.5805 14.9501 1.4591 463.4825 354.4237 354.4237 460.9769 46.1897 260.1617 161.1348 108.9345 151.2208 688.3359 161.2578 60.9187 92.6262 78.701 0.1612 3.3001 33.2771 695.5061;
	0.5175 6.9919 40.039 67.0707 6.9999 0.0067 4.2609 1.8546 8.8196 16.2283 29.9978 44.7508 67.3721 19.8898 129.3177 48.7197 60.4485 64.0574 80.5527 66.4842 1.4203 0.0157 20.5177 63.9563 29.7559 27.7618 1.4894 432.0263 397.6659 397.6659 510.3169 50.0945 268.5088 171.1304 62.3573 169.6708 551.4754 143.2962 92.1636 79.7034 51.5146 0.0745 10.0504 6.278 557.2199;
	0.0182 0.2454 50.5683 73.4553 2.8456 0.0017 2.7096 5.6066 8.8974 20.799 38.4467 57.3549 86.3475 8.2632 135.5253 51.0584 63.3502 67.1323 85.0929 66.4552 0.9032 0.004 62.3072 72.8402 41.2476 37.7223 3.2596 349.7064 327.3525 327.3525 393.6769 46.7828 283.643 171.0558 25.9063 139.6704 404.1244 120.281 143.8746 110.4847 55.4497 0.0189 10.8298 58.4706 408.334;
];
