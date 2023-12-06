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
	3.9304 53.1082 88.8664 119.4001 15.1952 35.868 32.3864 7.7795 28.0867 12.6373 23.3599 34.8484 52.4641 38.7127 190.7804 71.8754 89.1788 94.5029 81.5538 69.1728 10.7955 83.692 28.3947 36.9422 47.3843 28.4462 5.251 1210.0937 791.1191 791.1191 623.5033 83.0278 271.8459 178.051 121.3694 337.5441 1223.2105 198.7322 478.1514 126.9223 115.0676 397.8956 213.6522 125.4371 1235.9522;
	3.3559 45.3461 77.7224 47.8348 15.1127 28.5373 31.9311 6.5045 10.5597 13.3268 24.6344 36.7497 55.3265 37.1001 192.1744 72.4006 89.8304 95.1934 83.3347 70.9427 10.6437 66.587 28.2107 29.5187 34.5492 20.5309 4.5988 1244.1092 804.035 804.035 684.0102 74.7435 277.7823 182.6068 116.3137 343.0549 1271.9388 194.0153 478.6186 92.5425 112.1695 316.5738 210.0345 98.746 1285.1881;
	3.1904 43.1098 90.3067 51.1797 15.1138 23.4353 32.417 6.1719 10.4144 13.3536 24.684 36.8236 55.4377 36.0014 201.376 75.8672 94.1316 99.7513 88.3876 69.1195 10.8057 54.6824 29.4436 33.9276 33.298 21.2595 4.8323 1254.7457 813.1321 813.1321 725.1569 88.546 294.6254 177.9138 112.8692 346.9364 1263.698 198.4084 478.8114 89.1912 29.7411 259.9756 209.5355 133.2278 1276.8615;
	3.2916 44.4768 87.1738 52.3639 15.1052 14.1482 32.3662 4.6821 12.3134 11.7348 21.6916 32.3596 48.7171 26.4286 198.135 74.6462 92.6166 98.1459 83.8957 69.4797 10.7887 33.0125 28.5415 30.4387 28.5355 19.2947 3.9635 1221.011 819.7088 819.7088 732.2149 92.7559 279.6523 178.8408 82.8572 349.7424 1262.1116 216.3198 477.0394 76.4343 35.4105 156.9507 207.9081 114.5137 1275.2586;
	3.6802 49.7271 87.0988 44.2799 15.374 22.6377 31.7727 5.8014 11.961 10.2598 18.965 28.2921 42.5936 31.3481 183.8609 69.2685 85.9443 91.0753 87.6311 71.3745 10.5909 52.8214 2.4349 24.9872 35.1708 56.6093 3.9646 1149.5434 820.8186 820.8186 732.2527 100.6435 292.1035 183.7182 98.2806 350.2159 1259.0196 220.4423 474.7535 94.2074 31.8678 251.1281 207.4185 204.5609 1272.1344;
	3.8308 51.763 94.7108 116.0886 15.3739 33.6587 32.2653 5.9236 11.6979 10.4748 19.3624 28.8849 43.4861 28.4816 191.6126 72.1889 89.5677 94.9151 89.1188 70.5175 10.7551 78.537 1.6121 29.5327 52.4711 58.3525 4.4024 1076.8361 801.6173 801.6173 735.1799 105.6174 297.0627 181.5122 89.2938 342.0234 1223.6222 232.0986 469.7413 140.5477 71.2352 373.3873 215.8646 256.0256 1236.3683;
	3.9383 53.2147 94.2311 120.1696 15.3516 35.1447 31.6985 10.9857 10.9885 11.8595 21.9221 32.7035 49.2349 36.2745 196.9972 74.2175 92.0847 97.5823 80.6627 71.4391 10.5662 82.0042 25.0445 51.4293 102.6296 74.4616 11.0292 1033.3998 804.5487 804.5487 702.736 109.1955 268.8757 183.8845 113.7256 343.2741 1239.3612 271.7296 446.7349 274.9007 112.28 389.8714 217.2955 282.5817 1252.2713;
	3.7169 50.2233 93.4829 118.7319 15.2027 34.5421 30.8576 18.4284 10.5401 10.6434 19.6742 29.35 44.1863 60.2971 190.5828 71.8009 89.0864 94.4049 79.8301 58.5435 10.2859 80.5982 24.6067 57.3164 104.2194 75.2284 13.6267 974.0014 799.8182 799.8182 745.8147 112.8756 266.1004 150.6911 189.0395 341.2558 1212.4844 309.2804 462.5317 279.1591 120.2482 383.1868 211.4628 280.2178 1225.1145;
	3.7405 50.542 93.1469 117.0149 15.1219 33.8909 29.8721 17.9831 9.4971 11.6792 21.5888 32.2063 48.4863 64.0783 188.3822 70.9719 88.0577 93.3149 42.7836 60.7948 9.9574 79.0788 25.1657 87.8387 104.8506 73.1869 13.3455 651.8451 806.1702 806.1702 685.4928 109.9505 142.612 156.486 200.8942 343.9659 1156.9338 293.3106 452.705 280.8499 121.4504 375.9632 213.4794 275.5121 1168.9852;
	3.667 49.5493 90.1862 113.7885 14.8658 34.0217 31.0143 17.5487 20.6502 10.5637 19.5268 29.1301 43.8553 61.3646 187.0967 70.4876 87.4568 92.6781 50.2741 60.6143 10.3381 79.3839 21.5542 87.5435 99.2326 69.3678 12.9858 465.1508 828.897 828.897 728.024 110.8437 167.5802 156.0213 192.3863 353.6627 1083.5092 279.5303 457.7906 265.8016 120.896 377.4137 210.9793 268.9337 1094.7957;
	3.7072 50.0923 91.3397 113.2052 15.2389 34.0008 30.172 17.4605 26.7955 14.4489 26.7085 39.8439 59.9847 67.4549 192.4149 72.4912 89.9428 95.3125 38.2001 68.9979 10.0573 79.3351 3.5415 84.3302 97.8907 70.7828 13.2091 351.9529 786.5174 786.5174 693.3282 105.8642 127.3337 177.6008 211.4802 335.5807 925.3441 278.6593 449.9609 262.2072 121.6565 377.1818 209.962 266.487 934.9831;
	3.1019 41.9132 87.9266 110.2424 14.9241 31.4354 29.1426 17.3808 27.6679 15.9642 29.5096 44.0226 66.2758 65.8687 189.2856 71.3123 88.48 93.7624 53.8634 67.3288 9.7142 73.3492 22.2922 82.8643 96.0743 72.2789 12.2467 203.1061 755.5692 755.5692 609.3236 103.9341 179.5446 173.3045 206.5073 322.3762 735.9379 257.2676 453.5804 257.3419 121.1458 348.7231 192.3805 259.688 743.6039;
	1.953 26.3897 90.8414 110.8938 15.1588 20.9022 25.4426 18.3964 26.9638 25.2865 46.7418 69.7296 104.9775 63.915 188.7583 71.1136 88.2335 93.5012 91.3093 70.0572 8.4809 48.7719 53.3868 86.0818 97.2736 72.872 13.5877 231.884 659.6803 659.6803 550.9468 102.431 304.3644 180.3275 200.3822 281.4636 653.1607 231.7126 427.4218 260.5544 121.8382 231.8754 170.4265 274.0294 659.9644;
	2.1495 29.0441 92.2571 112.3967 15.2952 12.37 24.1749 18.6336 25.9559 28.8629 53.3527 79.5917 119.8248 64.3069 192.429 72.4965 89.9494 95.3195 91.3836 72.136 8.0583 28.8633 72.9339 89.2385 104.2912 74.6356 13.515 214.4578 585.9818 585.9818 526.1259 104.6782 304.6119 185.6783 201.6108 250.0189 464.2198 220.8892 436.5659 279.3514 121.2887 137.2242 138.0404 270.804 469.0554;
	2.1547 29.1149 88.888 109.6154 13.7043 1.528 20.588 17.9528 25.7854 28.4275 52.5479 78.3911 118.0173 62.9468 198.235 74.6839 92.6634 98.1955 91.9912 73.42 6.8627 3.5653 72.8036 88.1343 99.6262 72.106 13.5494 377.0351 473.3422 473.3422 413.6456 96.2237 306.6373 188.9833 197.3468 201.9594 413.7224 204.1635 419.5562 266.8559 120.1165 16.9505 113.5153 258.3102 418.032;
	3.0502 41.215 87.4484 78.9605 14.4761 25.4349 15.6311 18.5008 20.6743 26.198 48.4266 72.243 108.7614 46.5611 196.578 74.0596 91.8888 97.3747 90.7143 71.8216 5.2104 59.3482 69.0522 88.8678 104.161 73.3858 13.6127 485.792 483.5766 483.5766 369.2767 55.5669 302.3811 184.869 145.9754 206.326 457.2612 173.8643 419.7743 279.0027 121.4093 282.1581 79.3625 263.3228 462.0243;
	3.069 41.4683 89.2401 60.1427 14.7496 31.311 12.6714 18.3255 26.5995 25.9827 48.0287 71.6493 107.8677 47.2341 191.8525 72.2793 89.6799 95.0339 88.1689 72.0562 4.2238 73.059 70.3341 88.0739 105.6148 73.895 13.4112 548.4614 483.8532 483.8532 393.1917 34.6254 293.8963 185.4729 148.0853 206.444 535.5079 120.8858 67.7933 282.8968 119.6045 347.3432 101.6583 263.9533 541.0861;
	3.5931 48.5512 86.5292 53.3309 14.7775 31.5784 27.0299 18.4193 25.8406 11.0637 20.4511 30.509 45.9311 43.8057 179.4182 67.5948 83.8676 88.8746 75.1699 73.5109 9.01 73.683 45.8296 86.6182 102.4563 72.2368 13.2645 654.8412 556.9863 556.9863 376.5995 30.1375 250.5662 189.2172 137.3368 237.6475 719.4858 80.3353 359.7453 274.4365 119.4284 350.3099 113.6477 257.2008 726.9804;
	3.8445 51.948 88.8614 51.098 15.003 33.4927 26.3034 18.8223 26.6603 22.1304 40.9077 61.0262 91.8746 59.5823 187.2268 70.5366 87.5177 92.7426 55.7282 73.8282 8.7678 78.1496 54.1977 85.1481 104.363 74.3707 13.521 1011.8705 655.9174 655.9174 443.27 43.1399 185.7607 190.0339 186.7984 279.8581 977.7801 91.0734 419.8519 279.5439 116.2159 371.5457 150.4492 250.9935 987.9654;
	3.7173 50.2283 64.3998 39.2907 14.7945 33.1271 0.186 19.0886 25.5131 27.2685 50.4054 75.195 113.2057 60.4463 182.3629 68.7041 85.244 90.3332 42.6959 71.5187 0.062 77.2965 66.2695 82.2384 105.7001 73.5041 13.674 1162.095 584.7672 584.7672 521.0731 64.9642 142.3195 184.0893 189.5072 249.5007 1118.8835 132.1952 413.252 283.1252 121.8965 367.4896 151.7044 235.7647 1130.5385;
	3.8353 51.824 62.4127 64.3316 14.8046 32.887 27.5733 19.1072 0.0 27.0321 49.9684 74.543 112.224 47.0079 183.4058 69.0971 85.7316 90.8499 53.2001 72.0673 9.1911 76.7364 71.4461 88.2571 105.1105 75.8815 13.9146 1219.6191 672.6333 672.6333 404.211 74.0601 177.3335 185.5013 147.376 286.9902 1095.6169 181.515 404.8749 281.546 120.7071 364.8267 137.4435 262.3025 1107.0295;
	3.7106 50.1383 46.1604 86.0901 14.8083 32.9859 0.0 18.7267 25.7738 29.7671 55.0241 82.0852 123.5787 57.0757 188.5347 71.0293 88.129 93.3904 49.9248 70.7899 0.0 76.9671 72.0125 85.5545 103.2875 74.8604 13.6676 1266.5822 706.6607 706.6607 514.8792 88.6494 166.4161 182.2133 178.94 301.5085 1199.8714 203.2857 417.2412 276.6629 119.258 365.9235 143.0991 247.8304 1212.3701;
	3.7225 50.2986 57.5768 95.7249 15.0656 32.2273 26.6625 18.8063 25.984 29.8625 55.2004 82.3481 123.9746 56.688 193.9354 73.064 90.6535 96.0657 52.4068 71.3991 8.8875 75.1971 70.0554 86.0848 101.9958 75.1727 13.5299 1262.3646 699.7078 699.7078 574.672 105.8516 174.6893 183.7815 177.7245 298.542 1148.0842 225.7916 419.7636 273.203 119.4962 357.5086 141.9488 260.4983 1160.0434;
	3.7603 50.8092 87.6418 108.9868 14.8885 33.4819 28.2118 19.1167 26.2117 30.0651 55.5749 82.9068 124.8157 58.2525 202.483 76.2843 94.6491 100.2997 45.2572 73.3885 9.4039 78.1244 72.4175 86.3044 104.2851 75.1398 13.865 1273.3349 672.1233 672.1233 582.8604 105.1637 150.8575 188.9021 182.6293 286.7726 1212.5327 201.3758 433.6676 279.3351 121.4117 371.4257 160.9119 276.9311 1225.1633;
];
