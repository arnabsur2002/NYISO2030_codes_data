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
	3.9155 52.9066 83.4378 118.8722 14.9502 35.5626 31.3582 7.9427 27.3199 12.6292 23.3448 34.8259 52.4302 43.4196 180.0476 67.8319 84.1618 89.1864 84.7131 68.5584 10.4527 82.9795 33.3395 38.5757 51.3278 30.5062 4.9032 1255.733 821.2605 821.2605 677.2065 86.4838 282.3769 176.4695 136.1264 350.4045 1246.6317 197.9389 466.278 137.4851 114.0941 394.508 216.5088 103.8772 1259.6175;
	3.3049 44.6568 75.2663 45.8897 14.6336 28.2827 30.8453 7.7123 10.2816 11.391 21.0561 31.4115 47.2898 43.3092 175.219 66.0127 81.9047 86.7945 83.6852 70.2157 10.2818 65.993 27.4558 33.8587 40.1541 30.3984 5.3373 1245.864 830.2771 830.2771 740.4299 81.3432 278.9507 180.7355 135.7802 354.2516 1283.2475 196.9974 467.6584 107.5557 116.7366 313.7494 210.373 91.5443 1296.6146;
	3.1251 42.2272 86.9128 49.1464 14.4691 24.1129 30.4225 7.2696 9.3491 7.6481 14.1375 21.0903 31.7514 40.5604 188.9707 71.1936 88.3328 93.6064 85.7357 67.0535 10.1408 56.2635 26.0049 38.2916 41.3263 31.3639 6.0705 1246.4886 827.2269 827.2269 740.6709 96.1637 285.7858 172.5958 127.1623 352.9501 1274.715 201.6875 458.3287 110.6954 35.9875 267.4927 210.7126 131.7436 1287.9933;
	3.2688 44.169 81.0471 48.4203 14.0953 13.409 29.8264 7.5966 8.4681 10.6257 19.6415 29.3013 44.113 26.8925 186.848 70.3939 87.3406 92.5549 76.0007 65.1398 9.9421 31.2877 24.4637 34.5597 35.8369 31.4497 5.1591 1252.6094 819.2677 819.2677 757.7638 99.098 253.3357 167.67 84.3116 349.5542 1242.5767 217.5813 449.7047 95.9917 38.8492 148.7507 210.6908 112.1112 1255.5202;
	3.5797 48.3698 81.4077 41.0354 14.392 20.0763 26.3112 7.2583 8.0853 0.8086 1.4946 2.2297 3.3567 29.9544 144.0051 54.2531 67.314 71.3327 82.0796 61.1956 8.7704 46.8448 2.102 28.3764 37.9177 62.2155 5.1445 1199.0384 804.3567 804.3567 765.0043 99.1343 273.5985 157.5176 93.9111 343.1922 1215.7604 226.8729 447.831 101.5652 36.6677 222.7135 202.3487 186.062 1228.4245;
	3.6358 49.1278 92.1018 110.4477 14.8107 32.4338 29.8553 7.2418 10.9745 10.1358 18.7359 27.9503 42.079 28.2028 166.438 62.7046 77.8001 82.4449 86.3916 62.7818 9.9518 75.6788 9.3633 28.7953 52.3801 59.4501 4.5344 1181.6358 802.5439 802.5439 749.1684 100.8565 287.9721 161.6006 88.4195 342.4187 1196.3593 224.7617 458.4626 140.3037 70.7613 359.7984 201.8169 234.0264 1208.8214;
	3.4246 46.274 88.348 111.605 14.7568 32.1518 28.2427 10.6625 9.4505 10.277 18.9968 28.3395 42.665 34.7312 186.2816 70.1805 87.0758 92.2744 75.356 65.6157 9.4142 75.0208 26.3917 41.7823 97.0163 73.2495 8.3994 1109.8858 790.1223 790.1223 747.1253 105.3867 251.1866 168.8949 108.8871 337.1188 1200.1272 276.5053 431.7519 259.865 102.8224 356.6703 194.4972 268.4039 1212.6285;
	3.2061 43.3211 86.6751 110.2089 14.4791 32.6388 27.9369 18.4231 8.3008 9.8844 18.2711 27.2569 41.0351 54.9981 174.8743 65.8829 81.7436 86.6238 81.2397 49.1772 9.3123 76.1571 26.0084 44.9579 97.9955 72.3732 13.101 1023.2346 763.978 763.978 709.4214 102.829 270.7988 126.5822 172.4265 325.9639 1110.5061 265.6758 435.2473 262.4879 115.2815 362.0728 185.8384 267.4264 1122.0739;
	3.7276 50.3676 91.0504 112.7573 14.8906 33.728 29.2926 18.2218 9.8189 12.2845 22.7077 33.8754 50.9992 63.8494 182.7996 68.8687 85.4482 90.5496 50.4127 56.5264 9.7642 78.6987 32.6929 85.6808 101.1938 70.973 13.1177 825.362 826.2465 826.2465 730.7704 109.3631 168.0422 145.499 200.1765 352.5318 1160.8085 282.3804 448.2674 271.0548 117.1086 374.1559 209.7559 272.0131 1172.9002;
	3.8133 51.5256 90.9281 114.7107 15.2815 33.5352 29.8468 18.256 20.7089 10.668 19.7196 29.4177 44.2883 61.5163 167.382 63.0602 78.2414 82.9125 48.2656 47.9088 9.9489 78.2487 26.4443 87.8799 99.5726 70.5038 13.1911 592.8596 815.18 815.18 690.5826 108.2157 160.8852 123.3173 192.8618 347.8101 1055.6553 252.4793 443.1598 266.7125 118.8658 372.0166 208.9844 271.1903 1066.6517;
	3.7328 50.4382 87.7562 111.0624 15.0453 32.7303 29.1907 18.1453 26.7316 13.8183 25.543 38.1051 57.367 67.0618 187.7887 70.7483 87.7803 93.0209 17.0117 48.722 9.7302 76.3708 26.484 82.2773 97.4133 70.062 13.5203 434.714 795.8915 795.8915 674.3434 99.6891 56.7058 125.4105 210.2479 339.5804 905.7869 258.7915 440.5709 260.9284 119.0362 363.0887 205.3358 261.3448 915.2222;
	3.2915 44.476 87.2502 110.942 15.0237 30.5972 28.256 18.3862 27.0172 17.6269 32.583 48.6075 73.1783 64.9348 182.2087 68.6461 85.172 90.2569 33.8724 54.0602 9.4187 71.3935 32.2594 82.4579 96.6066 72.3195 13.2157 349.0366 780.5779 780.5779 695.7904 105.1951 112.9081 139.1511 203.5792 333.0466 759.3913 256.5449 453.5956 258.7677 118.9097 339.4253 192.5953 262.807 767.3017;
	2.1532 29.094 87.9494 111.6365 14.9813 20.3262 24.1857 18.7115 27.2177 27.1656 50.2152 74.9112 112.7784 67.5325 172.5131 64.9933 80.6399 85.4542 87.8344 43.6806 8.0619 47.4279 57.1729 82.781 97.5757 71.5424 13.8622 289.6852 701.7272 701.7272 595.9564 102.8677 292.7812 112.4339 211.7237 299.4036 642.5848 223.365 439.6475 261.3634 119.7999 225.4858 178.4306 274.0972 649.2784;
	1.6245 21.9508 83.658 105.1698 14.449 9.6633 23.2852 18.0707 26.538 29.91 55.2881 82.479 124.1717 68.0073 166.6002 62.7657 77.8759 82.5252 86.409 58.51 7.7617 22.5478 70.6986 81.8611 95.5443 71.2304 13.5279 281.1071 591.7974 591.7974 575.4862 105.0622 288.0301 150.6049 213.2121 252.5002 446.7826 211.1906 454.0543 255.9222 117.8491 107.1985 132.003 259.3358 451.4366;
	2.0563 27.7858 84.1446 107.2378 12.5625 0.0 19.8618 17.9068 26.7599 28.6092 52.8837 78.8921 118.7717 68.6434 179.1378 67.4891 83.7365 88.7357 86.6967 67.3425 6.6206 0.0 70.4504 83.6675 94.1937 70.0752 13.709 392.8362 452.6448 452.6448 405.9874 90.2586 288.9891 173.3398 215.2063 193.1284 395.7893 182.8876 446.5395 252.3045 117.0967 0.0 115.3411 241.6622 399.9122;
	1.5809 21.361 85.0977 79.5106 13.889 19.8299 14.367 18.5243 21.7529 27.7401 51.2772 76.4955 115.1635 58.2591 187.0175 70.4577 87.4198 92.6389 85.0651 67.3505 4.789 46.2699 71.926 85.707 97.0326 71.3444 13.7351 398.2912 478.5592 478.5592 385.2007 46.9803 283.5502 173.3604 182.6501 204.1853 410.0796 161.7074 440.259 259.9087 116.2639 219.9802 68.5441 249.9444 414.3513;
	2.0948 28.3055 86.4664 59.3256 14.322 26.1343 12.3813 18.6177 27.3331 26.8749 49.6779 74.1097 111.5717 63.4134 186.5161 70.2688 87.1854 92.3905 84.3443 68.4197 4.1271 60.9801 72.2627 85.3729 101.221 71.8685 13.7237 494.9541 557.0264 557.0264 431.8241 27.4675 281.1475 176.1126 198.8096 237.6646 529.2444 115.0415 179.1981 271.1277 115.5842 289.9167 99.8276 256.2422 534.7574;
	3.3408 45.1422 86.9047 60.8698 14.3751 31.338 25.9316 18.8404 26.3936 12.3425 22.8149 34.0353 51.2399 62.9156 165.582 62.3821 77.4 82.0209 72.4147 66.8892 8.6439 73.122 51.0555 85.901 102.3327 71.7266 13.6061 678.2304 627.4702 627.4702 391.7306 23.1588 241.3824 172.1729 197.2489 267.7206 750.2455 77.9508 404.6148 274.1054 117.588 347.6426 113.7632 255.3687 758.0606;
	3.7263 50.3509 86.8221 52.323 14.1644 31.9471 25.185 18.7831 25.8703 21.0268 38.8677 57.983 87.293 64.671 166.2892 62.6485 77.7305 82.3712 56.3045 66.1611 8.395 74.5432 54.89 81.7698 102.5193 72.822 13.4821 1061.1265 709.8742 709.8742 493.816 37.8308 187.6818 170.2989 202.7524 302.8797 1016.5714 102.6442 435.6759 274.6053 113.7116 354.3998 138.9786 234.1684 1027.1606;
	3.6833 49.7696 63.1481 42.852 14.5458 32.5528 0.038 18.911 25.4281 27.525 50.8796 75.9024 114.2706 66.7427 166.5605 62.7507 77.8573 82.5055 45.0898 65.5192 0.0127 75.9565 68.8678 76.9807 103.3736 72.3335 13.5071 1183.9146 607.4407 607.4407 552.0001 60.0651 150.2992 168.6467 209.2473 259.1747 1130.1895 138.902 425.0044 276.8936 118.9111 361.1189 153.0365 230.155 1141.9623;
	3.8456 51.9628 62.8118 66.6453 15.0137 32.4113 27.5189 18.9244 0.0668 26.8779 49.6834 74.1178 111.584 65.3364 174.4807 65.7346 81.5596 86.4288 61.4548 69.4184 9.173 75.6264 70.1829 87.1359 104.0491 73.9161 13.6481 1223.2971 720.3781 720.3781 437.9514 72.6746 204.8495 178.6831 204.8385 307.3613 1119.9334 189.0588 422.8084 278.7031 116.1427 359.5497 140.3907 259.5315 1131.5994;
	3.8851 52.4963 46.9679 87.6745 15.3519 33.6294 0.0 18.7744 27.1503 30.3444 56.0911 83.677 125.9752 65.6744 181.2862 68.2985 84.7407 89.7999 56.7263 67.9645 0.0 78.4686 71.4339 85.2733 104.776 75.0099 13.9717 1243.5605 742.7895 742.7895 540.6501 85.4114 189.0875 174.9409 205.8982 316.9235 1202.6046 207.2113 442.8997 280.65 119.9294 373.062 158.4058 254.9241 1215.1317;
	3.7667 50.8964 56.641 99.3118 15.2311 32.366 28.7054 18.7225 27.2269 29.9356 55.3355 82.5496 124.278 65.3397 183.6901 69.2042 85.8644 90.9907 49.7741 68.5738 9.5685 75.5206 69.5871 86.4359 104.1419 75.0006 13.9251 1239.5023 729.8635 729.8635 561.3169 102.4333 165.9136 176.509 204.8487 311.4084 1171.5079 226.5601 451.188 278.9515 116.9004 359.0463 147.4929 262.3467 1183.7111;
	3.7208 50.2756 88.6387 108.6056 14.7922 32.4401 28.5438 18.8415 26.3217 28.9267 53.4706 79.7675 120.0896 64.8803 178.6555 67.3074 83.5111 88.4968 38.7439 70.7537 9.5146 75.6935 60.4384 87.1474 104.0617 74.1716 13.7371 1194.6369 703.2685 703.2685 584.3728 107.9936 129.1463 182.1202 203.4086 300.0612 1217.1241 217.1423 442.2256 278.7367 119.0813 359.8686 165.1126 271.9944 1229.8025;
];