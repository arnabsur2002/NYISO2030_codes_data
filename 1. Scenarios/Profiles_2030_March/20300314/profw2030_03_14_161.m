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
	3.5881 48.4835 86.5404 110.7671 14.3094 13.9075 14.9984 17.91 26.6958 22.423 41.4486 61.8331 93.0894 4.5568 14.9558 5.6345 6.991 7.4084 8.8712 26.2892 4.9995 32.4509 55.2377 82.9439 98.6762 71.4887 7.888 716.1246 386.5709 386.5709 197.2913 37.3053 29.5705 67.6683 14.2861 164.9369 513.5062 54.703 303.8871 264.3113 15.2646 154.281 117.9122 220.9632 518.8553;
	3.4422 46.5121 88.9609 111.8877 14.2062 15.4658 14.4806 17.3859 26.8131 23.1082 42.7152 63.7226 95.934 2.7429 6.1058 2.3003 2.8541 3.0245 9.1869 13.221 4.8269 36.0869 60.707 83.9728 101.4156 72.791 6.9661 701.083 368.474 368.474 162.4955 33.4351 30.623 34.0308 8.5995 157.2156 489.5022 50.7334 305.6678 271.649 11.7968 171.5676 110.1613 221.0822 494.6012;
	3.0871 41.7142 86.7795 108.5679 14.3945 11.1861 12.696 17.4431 26.5154 23.2132 42.9093 64.0123 96.3701 2.6694 8.9137 3.3582 4.1667 4.4154 17.7953 22.2277 4.232 26.1008 59.0033 83.346 96.0741 71.1001 7.841 614.7524 321.7194 321.7194 135.808 31.4441 59.3175 57.2142 8.3688 137.2669 391.9001 34.6428 243.2827 257.3413 8.2997 124.0907 81.4912 190.1939 395.9824;
	2.933 39.6315 91.2688 111.5963 14.8522 11.8858 11.6557 17.6795 26.0263 24.7063 45.6692 68.1295 102.5686 7.9076 12.1633 4.5824 5.6856 6.0251 10.7129 22.3986 3.8852 27.7336 64.7562 85.4188 102.4253 74.5139 9.7817 500.8897 272.8761 272.8761 146.3832 28.0491 35.7097 57.6541 24.7915 116.4272 314.5066 29.6877 192.9683 274.3534 9.0899 131.8534 74.9937 206.707 317.7827;
	2.3019 31.1043 89.1522 112.4143 14.1757 11.5926 9.9761 17.6239 16.2889 23.6902 43.791 65.3275 98.3502 10.2944 13.2905 5.0071 6.2125 6.5834 19.0521 25.1525 3.3254 27.0493 58.8183 84.4936 99.7981 73.0223 9.5602 389.0809 213.856 213.856 126.9267 26.7762 63.507 64.7426 32.2743 91.2452 198.0317 29.3666 176.5307 267.3164 9.7241 128.6 77.4865 208.3752 200.0945;
	2.9157 39.3982 87.1247 110.7574 13.7242 18.0496 10.7286 16.9031 9.3369 21.5165 39.7729 59.3333 89.3259 24.5424 18.0223 6.7898 8.4244 8.9273 33.9057 29.0138 3.5762 42.1158 60.475 82.9835 98.7333 70.2303 7.0935 295.0643 172.4147 172.4147 100.477 20.8698 113.0191 74.6817 76.9437 73.5636 131.4053 26.3046 184.0624 264.4641 4.146 200.2305 80.2323 207.1169 132.7741;
	2.6125 35.3012 88.1192 112.1154 13.9381 21.7565 12.0479 14.5102 12.4602 27.8859 51.5466 76.8974 115.7686 36.3523 27.8842 10.5052 13.0342 13.8124 40.4017 39.3338 4.016 50.7651 69.7529 83.9968 99.7392 69.9316 9.2143 264.69 202.1337 202.1337 87.2486 15.2697 134.6722 101.2453 113.9693 86.2437 163.9108 21.8679 161.6386 267.1586 3.513 241.352 89.8286 226.3973 165.6182;
	1.6225 21.9242 57.2648 85.0498 13.8494 15.2584 11.0799 9.3476 16.2306 28.2995 52.3112 78.038 117.4858 40.9779 28.4466 10.7171 13.2971 14.091 51.1842 56.4729 3.6933 35.6029 71.7766 81.0537 71.4971 65.9385 7.8639 135.3994 163.1461 163.1461 78.6968 8.4343 170.6138 145.3614 128.4713 69.609 106.8222 15.3791 165.2091 191.51 2.9938 169.2666 86.9181 124.3329 107.9349;
	2.4325 32.8686 75.6793 87.7799 13.3675 21.3169 9.8269 10.2595 18.2263 28.2467 52.2135 77.8923 117.2665 42.4459 22.3933 8.4366 10.4676 11.0925 62.274 54.6801 3.2756 49.7394 74.0596 81.5785 88.1892 69.2222 9.6453 123.9245 126.7268 126.7268 70.8658 6.3513 207.5801 140.7468 133.0737 54.0701 100.0687 15.597 124.6649 236.2211 17.5985 236.4754 76.1858 213.2468 101.1111;
	1.8446 24.9252 81.4752 105.7196 12.5368 14.4638 9.7951 17.7219 25.4004 29.548 54.619 81.4807 122.6688 45.1409 51.6015 19.4405 24.1207 25.5607 71.4322 51.9798 3.265 33.749 73.9671 85.7985 100.542 72.0483 12.1416 254.0797 220.8614 220.8614 107.5307 7.6586 238.1072 133.7962 141.5228 94.2342 211.0195 19.582 17.1486 269.3089 1.3074 160.4522 80.2128 212.3448 213.2176;
	1.4187 19.1692 75.6042 93.3491 10.5896 24.8409 13.4426 16.8237 25.8775 28.2136 52.1525 77.8012 117.1293 51.6009 34.7729 13.1005 16.2543 17.2247 67.4344 41.9911 4.4809 57.9622 71.2966 84.9596 90.0945 70.4846 11.5999 384.9663 292.3038 292.3038 162.5845 11.9557 224.7814 108.0851 161.7758 124.7163 314.5026 24.6174 153.2436 241.3247 1.4256 275.5689 89.264 174.1751 317.7786;
	1.6442 22.2164 85.007 79.849 11.1717 30.0807 19.4987 17.4206 26.4303 28.3546 52.413 78.1898 117.7143 51.208 83.5611 31.4812 39.0599 41.3919 82.7943 57.8729 6.4996 70.1883 72.2784 84.9144 94.3329 70.5322 11.6038 468.5069 346.8056 346.8056 265.8909 13.7797 275.9811 148.965 160.5441 147.9704 398.38 35.141 191.9844 252.6775 0.0393 333.695 103.944 186.6496 402.5298;
	2.7014 36.5019 87.1558 74.6277 13.3765 30.2209 20.2832 17.365 26.2522 27.2722 50.4122 75.2051 113.2209 47.9159 47.7425 17.9867 22.3169 23.6492 83.319 63.2853 6.7611 70.5153 69.7599 84.1914 96.9016 70.7292 10.8688 604.8408 403.9014 403.9014 281.392 16.5818 277.7301 162.8965 150.2229 172.3312 537.822 46.581 200.179 259.5577 0.2156 335.2501 127.3779 211.0154 543.4243;
	3.461 46.7663 84.318 89.393 14.0808 30.1454 21.5892 16.4477 26.0955 27.7612 51.3162 76.5537 115.2511 53.3147 68.7501 25.9012 32.1367 34.0553 83.5904 58.6932 7.1964 70.3393 67.7159 82.9727 95.4157 72.321 9.4193 793.1159 534.8347 534.8347 368.8294 19.9519 278.6345 151.0764 167.1489 228.1961 704.193 71.5229 262.6119 255.5778 0.0 334.4133 134.1586 248.6242 711.5283;
	3.6233 48.9587 85.0824 93.1689 14.1635 32.0358 25.6304 17.0373 26.511 25.1588 46.5056 69.3773 104.4471 59.5606 97.8409 36.861 45.7349 48.4654 80.7526 58.5636 8.5435 74.7503 50.8051 82.6605 96.2557 72.9111 11.0822 918.8006 616.883 616.883 462.0982 30.0104 269.1754 150.7428 186.7306 263.2034 877.6604 93.6457 391.1315 257.8279 0.8944 355.3843 152.3839 247.5721 886.8027;
	3.6774 49.6894 86.563 83.3618 14.1613 31.7486 27.3428 15.3036 25.8173 19.5054 36.0553 53.7875 80.9768 61.4952 135.3294 50.9846 63.2586 67.0353 89.7334 67.9778 9.1143 74.08 45.146 75.5093 93.4661 69.6573 10.1211 1033.3068 690.2061 690.2061 612.3776 36.3726 299.1114 174.9749 192.7957 294.4879 968.769 137.8865 366.2416 250.3556 0.0006 352.1974 162.1078 257.436 978.8604;
	3.7903 51.2151 87.9063 104.3336 14.6151 32.2977 31.1017 17.4177 27.1254 19.0363 35.1882 52.4939 79.0293 60.9783 162.517 61.2273 75.9672 80.5026 88.6308 67.7934 10.3672 75.3614 27.823 82.4463 97.8572 72.8863 11.676 1032.3295 736.6957 736.6957 652.7364 76.6424 295.4359 174.5005 191.1752 314.3235 987.9855 180.1721 433.1045 262.1175 0.0306 358.2894 203.505 277.4389 998.277;
	3.8704 52.2972 92.1183 109.9481 14.8944 33.0651 30.8637 17.6752 27.7854 18.3313 33.8851 50.55 76.1027 64.3218 189.2741 71.3079 88.4746 93.7567 88.4427 68.8945 10.2879 77.1518 35.6687 83.5765 100.4305 73.0107 12.6967 1140.3644 760.7355 760.7355 643.0426 92.8628 294.8089 177.3345 201.6575 324.5805 1054.802 220.6239 466.5661 269.0103 102.2943 366.8017 197.4115 269.562 1065.7895;
	3.7372 50.4974 88.0888 111.3454 14.6733 32.7353 31.3599 12.9065 27.4214 20.1339 37.2172 55.5207 83.5861 62.8823 189.1014 71.2428 88.3939 93.6711 86.1373 67.6904 10.4533 76.3825 50.2162 84.7371 102.8815 63.7922 11.9248 1171.711 775.1388 775.1388 641.9517 98.6851 287.1242 174.2353 197.1445 330.7259 1064.5038 235.6244 456.8777 275.5755 112.8504 363.144 201.5893 266.2568 1075.5924;
	3.841 51.9001 91.009 104.1188 14.5403 33.2464 31.5573 8.5913 27.0016 20.1287 37.2076 55.5065 83.5647 62.9267 193.2355 72.8004 90.3264 95.719 84.5017 67.3665 10.5191 77.575 48.8122 37.658 47.4676 65.8371 9.8795 1202.4724 752.7923 752.7923 682.5965 107.4546 281.6722 173.4017 197.2837 321.1914 1054.1385 246.0793 458.2441 127.1454 115.7856 368.8136 205.9475 250.2521 1065.1191;
	3.9016 52.7193 90.5949 116.2989 14.4511 34.2003 31.7812 18.4575 15.8195 19.7182 36.4487 54.3744 81.8603 61.7352 193.447 72.88 90.4252 95.8237 84.0291 67.0025 10.5937 79.8008 29.7049 69.9445 102.7739 71.419 13.4291 1220.2887 760.6216 760.6216 676.3946 108.5121 280.0971 172.4645 193.5481 324.5319 1045.7868 228.3376 457.4511 275.2872 117.2281 379.3957 215.3145 276.0833 1056.6804;
	3.794 51.265 88.5815 118.5467 14.4244 33.638 30.7366 17.518 8.5186 21.0424 38.8966 58.0261 87.3579 60.8175 185.538 69.9004 86.7282 91.906 82.7709 68.3889 10.2455 78.4887 40.4265 83.5634 101.894 73.685 13.2784 1220.2769 772.7666 772.7666 705.9081 111.9231 275.9028 176.0333 190.6711 329.7137 1091.5283 233.9535 462.4627 272.9302 115.2531 373.1576 202.906 243.0622 1102.8984;
	3.9155 52.9064 93.7892 118.3549 14.9977 34.9726 31.4977 17.5673 19.4466 21.2407 39.2632 58.573 88.1813 62.1334 197.8747 74.5482 92.4949 98.017 88.8132 66.3284 10.4992 81.6027 50.235 83.3829 90.8256 74.1655 13.4763 1199.6389 796.996 796.996 717.4659 115.2108 296.0439 170.7295 194.7965 340.0516 1116.5785 249.1598 470.2062 243.2829 116.5423 387.9625 211.2851 262.9068 1128.2096;
	3.8924 52.5955 92.8012 119.2012 14.8226 34.5605 31.8309 18.0899 10.6309 19.5594 36.1552 53.9365 81.2011 63.5899 195.7294 73.7399 91.4921 96.9543 88.2957 66.8874 10.6103 80.6412 48.3365 85.6789 104.7124 73.6983 13.6078 1211.6161 789.9662 789.9662 749.3274 119.0848 294.319 172.1683 199.363 337.0523 1119.2399 281.3076 472.2215 280.4797 118.8603 383.3911 211.5808 268.4152 1130.8986;
];
