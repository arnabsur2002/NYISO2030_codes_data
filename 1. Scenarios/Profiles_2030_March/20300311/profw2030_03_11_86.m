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
	3.9031 52.7396 95.2369 119.4277 15.424 35.1403 28.436 18.9799 28.174 30.654 56.6635 84.5308 127.2607 69.0552 204.0035 76.8571 95.3598 101.0529 37.4529 73.8032 9.4787 81.9941 75.6934 90.0162 106.5287 76.3125 14.0614 1177.3586 659.7901 659.7901 587.1492 110.269 124.8431 189.9697 216.4975 281.5104 1094.6132 228.3714 471.571 285.3447 123.2969 389.8236 166.3176 280.7061 1106.0155;
	3.8313 51.7692 95.2179 120.844 15.4152 34.9723 29.5362 18.9607 27.8034 29.1397 53.8644 80.3551 120.9741 68.7996 201.2826 75.8321 94.0879 99.7051 31.8735 72.9911 9.8454 81.602 70.2475 89.947 105.6521 76.0612 14.0165 1238.4134 719.0505 719.0505 602.9448 110.4927 106.2451 187.8792 215.696 306.7949 1163.1264 246.6015 471.1575 282.9967 121.561 387.9592 158.8271 285.0875 1175.2423;
	3.8249 51.6822 95.3295 69.4558 15.4188 34.7228 29.6264 18.4869 27.7295 29.5835 54.6846 81.5786 122.8162 69.0726 203.5985 76.7046 95.1705 100.8523 35.1536 72.0292 9.8755 81.0199 74.2152 89.2952 105.3494 74.8091 13.9561 1230.0795 717.5334 717.5334 589.2971 109.2671 117.1786 185.4033 216.552 306.1476 1183.5215 237.1957 470.099 282.1859 121.8336 385.1919 156.5967 279.5575 1195.8499;
	3.885 52.4949 95.4019 93.7738 15.423 35.0334 28.2415 18.5646 28.3291 30.5455 56.4628 84.2315 126.81 68.421 204.2131 76.9361 95.4578 101.1567 42.5665 71.9152 9.4138 81.7446 74.0652 89.5062 105.8439 75.757 14.0146 1224.5309 740.6879 740.6879 547.1178 96.7567 141.8885 185.11 214.509 316.0268 1113.9679 240.4286 472.8157 283.5104 123.7931 388.6374 197.1913 276.534 1125.5718;
	3.7094 50.1223 95.4181 121.0564 15.424 34.5912 23.6135 18.7899 28.1761 31.2206 57.7109 86.0933 129.613 68.1856 204.416 77.0125 95.5526 101.2572 78.1074 71.8349 7.8712 80.7127 70.696 89.512 106.3875 74.4821 14.0273 1203.4971 685.0725 685.0725 532.8606 96.5293 260.358 184.9033 213.7711 292.2976 1175.5464 245.5709 472.7283 284.9664 123.8141 383.7314 205.1925 274.3954 1187.7917;
	3.9163 52.9184 95.3068 120.8078 15.3967 34.8985 28.0197 18.4799 27.878 31.2785 57.8178 86.2528 129.8531 67.6174 202.754 76.3864 94.7757 100.4339 90.326 72.9633 9.3399 81.4298 75.8802 87.7464 105.5685 73.5505 13.9077 1285.155 723.7892 723.7892 514.8213 95.1519 301.0867 187.8076 211.9896 308.8167 1140.3907 226.2871 466.4272 282.7728 123.8239 387.1405 212.9978 278.3854 1152.2697;
	3.9084 52.8106 94.4345 119.4041 15.248 33.8301 28.1713 18.15 27.0774 30.4114 56.215 83.8617 126.2533 67.8201 201.5443 75.9306 94.2102 99.8347 89.1522 72.7484 9.3904 78.9368 75.4568 88.3392 104.624 75.1123 13.8299 1267.4834 762.7307 762.7307 578.4606 94.6028 297.174 187.2545 212.6251 325.4318 1178.7773 249.7941 468.5922 280.243 123.7765 375.2881 210.6574 270.2608 1191.0563;
	3.92 52.9683 93.6018 120.6571 15.2862 34.2239 28.1439 18.1454 26.8288 29.3812 54.3106 81.0208 121.9763 67.6038 199.288 75.0806 93.1555 98.7171 84.3874 71.7762 9.3813 79.8558 75.3088 89.0421 105.4715 74.7414 13.7173 1234.683 738.3795 738.3795 543.5881 79.6219 281.2914 184.7521 211.9471 315.0419 1151.2555 249.8678 461.212 282.513 122.3741 379.6573 210.4086 261.8091 1163.2477;
	3.9207 52.9778 92.7559 120.3485 15.2751 34.8792 29.1073 17.6696 26.8045 30.0586 55.5628 82.8888 124.7887 67.5671 200.1868 75.4192 93.5757 99.1623 90.3111 72.8347 9.7024 81.3849 75.1594 86.1071 102.7236 74.1024 13.6076 1267.6105 801.5609 801.5609 604.3797 75.3083 301.0369 187.4767 211.8321 341.9993 1218.4888 286.7149 463.5414 275.1526 122.1646 386.927 196.1844 276.8592 1231.1814;
	3.9079 52.8038 91.4195 118.6225 15.3432 34.7042 28.7129 17.5436 26.4438 30.5206 56.4168 84.1628 126.7066 68.6521 195.8519 73.7861 91.5494 97.015 90.0177 70.0707 9.571 80.9764 74.8831 86.2551 101.7948 72.2983 13.4121 1237.7688 780.4048 780.4048 644.9785 88.0275 300.0591 180.362 215.2335 332.9727 1177.0623 306.6975 447.5152 272.6647 122.1569 384.985 177.6549 272.9167 1189.3234;
	3.876 52.3733 91.8057 119.693 14.9828 33.9985 25.6297 17.551 26.0307 30.52 56.4158 84.1612 126.7043 68.1532 199.6204 75.2058 93.3109 98.8817 88.8161 71.3809 8.5432 79.3298 74.6515 85.2311 100.9491 71.0227 13.1731 1220.3619 754.9263 754.9263 632.476 87.9253 296.0537 183.7345 213.6694 322.1019 1133.3829 306.0209 442.0849 270.3995 118.9228 377.1563 175.8355 270.5691 1145.189;
	3.8533 52.0666 91.7789 119.555 14.9691 33.4383 24.9127 18.0812 26.6155 31.1841 57.6433 85.9925 129.4613 67.1942 201.6625 75.9752 94.2655 99.8933 91.7039 72.1606 8.3042 78.0228 75.5124 84.1317 102.3639 71.7476 13.2861 1144.0935 741.7128 741.7128 625.6099 93.2011 305.6796 185.7416 210.663 316.4641 1093.7133 287.3315 462.4272 274.189 120.754 370.9426 189.9216 268.5669 1105.1062;
	3.8912 52.5792 93.9967 120.3034 15.0586 34.5321 27.675 18.399 27.2226 31.317 57.8891 86.3591 130.0132 68.8949 202.6866 76.361 94.7442 100.4006 89.6722 72.0836 9.225 80.575 75.7431 88.745 105.1638 74.0954 13.6088 1113.0451 767.8746 767.8746 658.6383 95.2358 298.9073 185.5434 215.9947 327.6265 1011.5929 282.3002 462.2985 281.6888 122.4826 383.0764 168.5579 268.962 1022.1303;
	3.8264 51.7028 93.5119 119.4648 14.7218 33.5711 26.9242 18.3771 26.9458 31.2963 57.8507 86.3019 129.927 69.8884 204.3541 76.9892 95.5237 101.2266 90.801 73.2954 8.9747 78.3325 75.6627 87.8193 104.7398 73.4521 13.6776 1027.6807 712.1778 712.1778 687.8924 91.6437 302.67 188.6625 219.1096 303.8625 965.7112 294.4299 465.8458 280.5529 122.7563 372.4151 159.9321 269.7624 975.7707;
	3.9166 52.9223 94.9574 119.6869 14.857 34.1413 25.2965 18.7361 27.6774 31.3787 58.003 86.5291 130.2691 69.8 198.8012 74.8972 92.928 98.4759 89.092 72.7479 8.4322 79.663 75.78 89.1606 106.1909 74.5456 13.773 1004.6039 716.7139 716.7139 680.0684 92.1068 296.9734 187.2533 218.8326 305.7979 912.6538 309.0291 471.8647 284.4399 121.0766 378.7407 186.533 268.8529 922.1606;
	3.8869 52.5207 94.3442 118.3937 14.3478 33.9354 25.9482 17.6267 27.5311 31.2662 57.795 86.2188 129.802 68.4016 199.1728 75.0372 93.1017 98.66 90.7337 73.2774 8.6494 79.1826 75.7604 85.3535 103.6891 72.8627 13.4521 1058.1122 733.515 733.515 659.0398 92.6281 302.4456 188.6162 214.4483 312.9664 956.9439 301.7432 465.0487 277.7386 117.6037 376.4567 184.9134 262.8183 966.9121;
	3.8703 52.2965 93.4846 118.1367 14.5928 34.6917 25.9776 17.7243 27.8188 31.2626 57.7885 86.209 129.7872 67.8971 195.9533 73.8243 91.5968 97.0652 88.9366 73.6919 8.6592 80.9473 75.828 86.7566 103.5513 71.1742 12.4436 1124.2856 764.6397 764.6397 705.9135 100.5778 296.4552 189.683 212.8667 326.2463 1150.1753 299.1322 473.5109 277.3696 117.9862 384.8465 189.3773 244.4529 1162.1563;
	3.8178 51.5872 93.2211 113.5674 14.9116 32.2086 26.3658 14.4893 28.3126 31.0469 57.3897 85.6141 128.8915 66.3206 190.1021 71.6199 88.8617 94.1669 85.3988 72.9604 8.7886 75.1533 75.0701 85.7516 103.122 57.8365 11.4991 1194.1037 712.2495 712.2495 680.959 96.8045 284.6626 187.8004 207.9239 303.8931 1113.7623 298.7664 473.1677 276.2195 115.8692 357.3005 178.2996 244.4619 1125.364;
	3.6793 49.7148 92.997 109.8255 15.0719 32.0322 26.8334 16.4988 27.6954 28.4428 52.576 78.4331 118.0806 66.8568 188.7718 71.1187 88.2399 93.5079 87.076 72.7789 8.9445 74.7418 73.6574 85.3717 103.0204 42.7244 12.7683 1234.2099 762.4482 762.4482 645.2204 99.3894 290.2533 187.3331 209.6052 325.3113 1202.1083 286.331 465.1984 275.9475 117.1903 355.3436 150.0893 226.4591 1214.6302;
	3.7365 50.4878 92.8915 108.0318 14.9477 27.1972 27.5722 15.788 27.2411 30.0528 55.5521 82.8728 124.7645 64.7144 188.3712 70.9678 88.0526 93.3095 88.5836 70.0916 9.1907 63.46 74.6019 88.2865 102.61 47.6909 11.5807 1257.0087 767.5421 767.5421 659.6366 109.5281 295.2786 180.4159 202.8885 327.4846 1245.602 290.8787 463.9867 274.8483 114.3434 301.7071 172.2857 246.6426 1258.577;
	3.6542 49.3766 92.8628 110.9295 14.8077 28.4925 31.4133 15.0099 28.1185 30.8275 56.9842 85.0092 127.9809 66.9202 192.6801 72.5911 90.0668 95.4439 90.8098 72.4302 10.4711 66.4824 74.8685 86.425 96.9196 56.1045 10.6907 1278.0917 814.3112 814.3112 706.8164 114.3876 302.6995 186.4355 209.8039 347.4395 1261.2366 310.537 471.5522 259.6061 115.9131 316.0763 151.0712 239.7537 1274.3745;
	3.6782 49.7004 90.6371 103.6532 15.1189 29.1712 29.9414 14.223 27.7502 30.9607 57.2304 85.3764 128.5338 66.3526 185.3048 69.8125 86.6192 91.7905 87.2419 70.604 9.9805 68.0662 75.5691 88.2905 99.4585 65.5089 10.9946 1247.2109 781.0457 781.0457 719.4729 113.1129 290.8062 181.7349 208.0244 333.2461 1108.2515 310.9534 476.3056 266.4068 117.7239 323.606 149.8777 241.4658 1119.7958;
	3.7128 50.1682 92.3226 102.4851 15.3238 30.1953 30.7888 13.642 27.4505 29.4768 54.4874 81.2844 122.3733 67.6641 183.7411 69.2234 85.8883 91.0159 84.0012 67.2481 10.2629 70.4556 72.5155 88.6857 100.5137 61.1765 10.3835 1181.4839 761.662 761.662 728.4795 117.1531 280.0039 173.0967 212.136 324.9758 1156.768 312.8973 475.4463 269.2332 120.7451 334.9662 175.9357 235.0349 1168.8177;
	3.7577 50.7744 90.5451 109.2706 14.9917 31.8818 29.4191 13.7473 27.6702 28.8698 53.3654 79.6107 119.8535 69.1695 188.2615 70.9264 88.0013 93.2551 84.2693 68.4313 9.8064 74.3908 70.1919 87.5072 101.5198 62.1961 10.8256 1141.1967 750.4078 750.4078 748.1327 112.7067 280.8978 176.1424 216.8557 320.174 1114.9811 296.9788 475.8382 271.928 122.4397 353.6752 184.0342 246.0733 1126.5955;
];
