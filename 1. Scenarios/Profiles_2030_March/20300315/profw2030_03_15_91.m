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
	3.8862 52.5109 94.9374 120.4876 15.3705 34.3382 32.1003 18.3606 10.9658 16.9597 31.3498 46.7677 70.4086 46.3388 201.4229 75.8849 94.1535 99.7746 88.9222 68.4528 10.7001 80.1225 23.008 86.6741 103.9427 73.2884 13.801 1301.9992 838.4533 838.4533 738.1614 109.0174 296.4072 176.1976 145.2783 357.7401 1195.887 249.2491 447.7785 278.4179 121.5613 380.925 218.5564 284.2267 1208.3441;
	3.9322 53.1322 94.7613 119.783 15.4111 34.006 32.6515 17.8303 12.7393 14.1094 26.0811 38.9078 58.5755 60.1804 199.8578 75.2953 93.4219 98.9993 90.4663 71.6317 10.8838 79.3473 24.7984 84.8274 100.6224 70.7586 13.1023 1313.6959 829.5941 829.5941 756.7835 109.399 301.5543 184.3801 188.6738 353.9601 1269.9669 258.1671 455.1838 269.5243 123.2231 377.2397 217.4812 284.0987 1283.1957;
	3.8251 51.6854 93.8781 117.9055 15.3908 33.7241 33.3396 18.5379 22.9378 15.6834 28.9905 43.2482 65.1099 54.7246 182.9638 68.9305 85.5249 90.6309 88.2402 71.9386 11.1132 78.6895 25.9026 86.9618 101.9711 72.6218 13.4465 1277.0214 830.2086 830.2086 737.4149 105.563 294.134 185.17 171.569 354.2223 1265.6775 270.6054 446.5697 273.1368 121.9325 374.1122 217.5566 278.0344 1278.8616;
	3.7566 50.76 92.5798 119.0578 15.3795 32.8314 32.0655 18.2692 27.9396 29.1453 53.8746 80.3703 120.997 63.004 201.0655 75.7503 93.9865 99.5976 89.5613 69.2859 10.6885 76.6066 25.5309 86.475 100.9624 73.2793 13.2827 1282.0347 830.517 830.517 764.5025 103.5436 298.5377 178.3421 197.5261 354.3539 1221.7381 308.2264 445.0247 270.4349 121.5441 364.2098 187.4628 272.3488 1234.4646;
	3.4246 46.2741 94.1389 119.4444 15.3312 30.9989 31.6718 18.9568 28.0085 30.9596 57.2283 85.3734 128.5292 60.0016 195.3266 73.5881 91.3038 96.7548 87.6922 69.7584 10.5573 72.3307 73.6201 89.8608 105.8147 74.4629 13.8649 1303.6851 825.2315 825.2315 756.9869 110.0407 292.3072 179.5582 188.1131 352.0988 1173.0394 320.1811 445.4081 283.4322 122.5245 343.8808 186.7684 277.5572 1185.2585;
	3.8936 52.6116 95.1758 120.8224 15.3625 33.3354 20.9403 19.1556 26.6252 30.9289 57.1716 85.2889 128.4019 49.3608 198.8485 74.915 92.9501 98.4994 62.4045 72.4163 6.9801 77.7825 74.8608 90.081 106.7816 75.9201 14.0718 1217.9502 814.2073 814.2073 736.3436 110.7005 208.0151 186.3997 154.7529 347.3951 1184.1259 309.7345 469.562 286.0221 123.5576 369.8004 174.4577 280.6332 1196.4606;
	3.8027 51.3823 94.7987 120.7528 15.0853 33.9808 14.3117 19.0389 25.866 29.8044 55.093 82.1879 123.7335 61.6136 196.1214 73.8876 91.6754 97.1485 85.8598 71.1594 4.7706 79.2885 72.4733 90.1727 106.5843 75.8109 14.0586 1236.2857 829.2836 829.2836 697.0746 107.9123 286.1994 183.1646 193.1669 353.8277 1182.8644 313.214 436.5319 285.4937 123.6842 376.9604 186.0243 279.8503 1195.1859;
	3.841 51.9003 95.1233 120.995 15.166 34.3924 7.1111 19.0743 9.7653 29.5217 54.5704 81.4084 122.5599 37.0722 198.8342 74.9096 92.9434 98.4923 88.2839 72.2296 2.3704 80.249 73.649 90.0692 106.4826 73.2932 14.1182 1282.7096 819.1957 819.1957 715.8934 112.7208 294.2797 185.9192 116.2264 349.5235 1228.4781 310.5715 182.551 285.2214 123.4014 381.5266 210.4918 278.3274 1241.2748;
	3.8016 51.3681 95.1413 121.0214 15.2635 32.4463 1.4716 19.0178 2.7146 29.4388 54.4171 81.1796 122.2154 25.4494 192.8819 72.6672 90.1611 95.5438 86.6076 71.3122 0.4905 75.708 71.6769 90.1208 106.489 74.3824 14.1494 1189.0408 710.7837 710.7837 665.5549 107.5071 288.6921 183.5578 79.7872 303.2677 1066.3326 272.7248 12.3536 285.2385 123.6534 359.9373 197.9595 281.9882 1077.4403;
	3.8864 52.5132 95.2252 121.0252 15.3868 32.1059 0.0 19.0607 0.475 25.0418 46.2893 69.0546 103.9613 22.5186 195.2108 73.5445 91.2497 96.6974 85.4383 72.3093 0.0 74.9138 43.3748 90.1659 106.452 74.8302 14.1631 1030.8718 626.4588 626.4588 550.1369 107.6991 284.7945 186.1243 70.599 267.2891 858.4992 250.8972 0.0 285.1392 123.9462 356.1618 176.0316 282.9651 867.4419;
	3.6503 49.323 94.6675 120.6185 15.3694 25.3882 0.0 19.0635 2.0123 28.6267 52.916 78.9403 118.8442 3.6713 200.0787 75.3785 93.5251 99.1087 81.3573 72.0198 0.0 59.2391 70.7106 90.0667 106.1609 74.7535 14.1198 837.4369 693.9217 693.9217 514.5964 111.5627 271.1912 185.3791 11.5099 296.0733 772.014 205.6885 3.4675 284.3595 123.7692 281.6397 157.2917 280.1419 780.0558;
	3.5826 48.4093 95.2836 120.9885 15.4191 19.9332 1.0627 19.1524 1.4208 27.1877 50.256 74.9721 112.8701 3.6929 202.0481 76.1204 94.4457 100.0843 38.6224 71.317 0.3542 46.5109 71.4801 90.1084 106.3614 75.5788 14.1034 652.2576 751.8191 751.8191 516.8664 111.0472 128.7414 183.5701 11.5777 320.7761 833.0254 209.7691 13.8252 284.8965 123.4712 221.1259 148.2032 283.6101 841.7027;
	3.8935 52.6103 95.2749 120.9221 15.4065 21.868 2.9013 19.15 26.1291 24.1453 44.6322 66.5824 100.2395 47.4801 197.1383 74.2707 92.1507 97.6522 54.1876 71.6448 0.9671 51.0254 74.0618 89.5576 106.238 75.8858 14.1105 610.2163 697.8973 697.8973 504.6462 104.9571 180.6254 184.414 148.8564 297.7695 605.6615 234.5343 25.8551 284.5661 123.8328 242.5894 155.2699 282.2594 611.9705;
	3.8479 51.9935 93.4588 121.0008 15.3823 22.2962 7.0357 19.1756 19.8473 23.8573 44.0998 65.7882 99.0438 40.4499 197.2525 74.3137 92.2041 97.7088 57.0709 71.7853 2.3452 52.0246 72.2832 90.0601 106.3544 76.2085 14.1032 517.9485 694.4584 694.4584 464.4263 90.3848 190.2364 184.7756 126.816 296.3023 672.1852 235.7793 64.6923 284.8778 123.9108 247.3397 168.0962 278.9006 679.1871;
	3.8947 52.6255 94.0829 121.0465 15.4099 20.3792 4.0619 19.1692 6.9544 24.5892 45.4528 67.8066 102.0825 28.2209 193.1865 72.7819 90.3034 95.6947 72.1986 71.3753 1.354 47.5514 71.4232 90.0001 106.5696 76.6711 14.1634 376.7447 663.9374 663.9374 430.4785 85.1367 240.6621 183.7202 88.4762 283.28 595.6297 236.7686 15.7939 285.4542 123.8394 226.0728 173.8733 269.9408 601.8341;
	3.532 47.7251 94.2415 120.6472 14.8304 10.6203 0.6719 19.1701 2.2433 28.8482 53.3255 79.5511 119.7638 17.0258 184.6304 69.5584 86.304 91.4564 63.7092 72.3445 0.224 24.7808 74.2336 89.8664 106.6839 76.5497 14.1197 407.5114 526.9526 526.9526 371.7669 85.4951 212.3639 186.215 53.3781 224.8331 461.2206 211.62 0.8718 285.7604 123.8673 117.8148 157.1214 261.4551 466.025;
	3.4714 46.9062 93.6265 119.4216 14.7315 18.412 0.622 18.8439 1.3605 28.2403 52.2018 77.8748 117.2401 25.1791 180.938 68.1673 84.578 89.6274 63.0569 73.6465 0.2073 42.9613 73.0192 88.4457 106.242 75.5407 14.0611 984.812 457.3973 457.3973 283.0411 80.087 210.1896 189.5662 78.9399 195.1562 815.9365 217.7207 101.5916 284.5768 119.2723 204.2502 131.1347 256.7817 824.4358;
	3.2462 43.8631 93.7106 118.524 15.1359 21.6403 6.1718 18.8811 0.8475 28.9697 53.55 79.8861 120.2681 49.8401 189.0553 71.2255 88.3723 93.6483 74.0919 72.488 2.0573 50.494 72.9803 87.8678 105.9537 74.6203 14.0927 1153.7532 576.3152 576.3152 209.7202 50.3633 246.9731 186.5844 156.2556 245.8945 1015.8343 200.0362 107.1099 283.8045 119.0287 240.0628 178.7164 275.2745 1026.4159;
	2.3909 32.3059 89.7902 115.6781 14.5742 32.7355 0.9664 18.4629 0.0 23.6086 43.6401 65.1025 98.0115 54.1305 183.7442 69.2246 85.8897 91.0175 49.4159 69.8801 0.3221 76.3829 47.5594 86.9975 103.0645 73.0558 13.6745 1213.2147 699.9358 699.9358 307.4522 51.2526 164.7195 179.8714 169.7063 298.6393 1213.8222 139.758 223.0926 276.0656 117.2616 363.1463 172.7386 270.7517 1226.4662;
	3.6791 49.7124 89.3402 85.8801 14.2427 33.3614 2.3539 17.5244 0.1429 15.3319 28.3408 42.2789 63.6507 63.8146 191.5674 72.1719 89.5466 94.8927 38.7314 71.9448 0.7846 77.8434 42.0977 86.1429 102.6064 73.1373 13.3396 1307.0499 733.0971 733.0971 386.5539 50.1581 129.1046 185.1861 200.0675 312.7881 1233.7753 120.8839 11.3918 274.8386 116.6928 370.0897 192.8771 266.7707 1246.6272;
	3.7411 50.5501 89.1127 118.5462 14.1138 33.9321 10.4495 18.6891 0.0174 15.6222 28.8774 43.0794 64.8557 66.0001 197.9854 74.5898 92.5467 98.0718 64.1393 71.7322 3.4832 79.175 63.8654 85.4271 101.8596 72.3836 13.6677 1289.2678 726.2861 726.2861 670.6099 50.3121 213.7977 184.6388 206.9192 309.8821 1287.2901 179.7352 49.0447 272.8382 115.5836 376.4205 201.893 278.2445 1300.6994;
	3.7242 50.3226 91.3937 119.6545 14.2244 33.9154 5.566 18.3955 25.9843 29.2681 54.1017 80.7091 121.5072 65.4226 202.9508 76.4605 94.8677 100.5314 67.1248 71.6594 1.8553 79.1358 72.2543 88.3586 101.1268 70.9435 13.4513 1305.847 679.3405 679.3405 530.0883 70.4558 223.7492 184.4516 205.1088 289.8519 1284.063 227.2364 427.9281 270.8755 117.4511 376.2343 206.2331 279.8425 1297.4387;
	3.8341 51.8071 94.3808 120.8989 14.8953 34.7237 7.3255 18.9235 27.0676 30.3009 56.0107 83.5569 125.7945 64.7251 201.0369 75.7395 93.9731 99.5834 69.3757 72.5546 2.4418 81.0219 71.1429 88.1044 102.6952 72.3307 13.666 1363.685 790.7257 790.7257 611.586 106.2523 231.2524 186.7558 202.9218 337.3763 1331.6481 254.186 455.0332 275.0763 119.7867 385.2011 213.1323 285.6933 1345.5194;
	3.9041 52.7533 92.9198 120.9083 15.251 34.7172 31.5196 18.9545 27.6192 28.8144 53.263 79.4579 119.6235 66.4998 199.1883 75.043 93.1089 98.6677 77.8434 70.1601 10.5065 81.0069 69.8231 87.5425 104.9764 73.7326 13.7168 1357.2037 781.664 781.664 597.6765 109.8881 259.4779 180.5922 208.4858 333.51 1338.1815 248.7402 468.5662 281.1869 120.4095 385.1299 212.8756 286.3303 1352.1209;
];
