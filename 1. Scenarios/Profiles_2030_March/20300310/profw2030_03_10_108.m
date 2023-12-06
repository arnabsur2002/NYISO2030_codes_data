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
	3.9103 52.8366 79.955 110.4167 15.144 36.0866 31.4214 6.7401 27.9477 11.1247 20.5638 30.6771 46.1842 40.3458 186.4877 70.2582 87.1722 92.3765 87.3285 69.7161 10.4738 84.202 26.0862 35.49 42.5526 26.3352 4.4225 1337.0824 812.7005 812.7005 608.2175 82.4647 291.0951 179.4494 126.4897 346.7522 1276.9291 186.7087 458.724 113.9801 112.0198 400.3205 213.8504 110.5319 1290.2304;
	3.3445 45.192 73.9646 41.3658 15.1716 29.6506 31.1684 6.359 11.0159 12.0496 22.2735 33.2276 50.024 39.3843 190.0914 71.6158 88.8567 94.1616 87.6998 72.5735 10.3895 69.1847 26.0269 34.5824 34.1349 26.141 4.7671 1352.6157 822.0978 822.0978 623.2141 66.8237 292.3328 186.8043 123.4752 350.7617 1299.8931 174.9984 457.6841 91.4327 115.1749 328.9238 208.9498 89.6777 1313.4337;
	3.0989 41.8723 87.1979 41.9207 14.8235 24.8923 30.7054 6.0342 9.0498 7.6146 14.0754 20.9978 31.612 34.7024 191.77 72.2482 89.6413 94.9931 86.7467 67.3993 10.2351 58.0821 25.4932 36.8948 34.0918 27.8526 4.8883 1351.5516 831.2895 831.2895 666.5494 84.9416 289.1557 173.4859 108.7967 354.6835 1308.4083 178.695 444.0038 91.3174 33.0091 276.1388 214.1492 125.2114 1322.0376;
	3.3591 45.3887 85.8395 41.2866 14.4865 14.7626 31.7447 6.7301 11.1378 11.3705 21.0182 31.355 47.2048 16.5497 196.1417 73.8953 91.6849 97.1586 83.5769 67.9791 10.5816 34.4462 27.4918 36.3935 33.8995 28.3084 4.849 1333.3583 835.0504 835.0504 690.4536 91.6636 278.5896 174.9783 51.8855 356.2882 1314.077 214.1506 465.3225 90.8023 35.9199 163.767 215.7777 105.2079 1327.7653;
	3.6379 49.1557 81.3692 34.6761 14.5546 22.527 30.6316 5.7953 11.195 10.4444 19.3063 28.8013 43.3601 26.1417 180.6737 68.0678 84.4545 89.4965 87.7306 68.7429 10.2105 52.5631 10.3567 25.9538 30.8124 54.609 4.7107 1299.6937 825.8812 825.8812 651.551 86.4058 292.4354 176.9445 81.9577 352.376 1291.6972 211.6172 454.5463 82.5332 33.2686 249.9 211.2521 177.6196 1305.1524;
	3.7647 50.8699 92.9169 107.5755 14.5387 33.7245 31.4886 5.5028 11.6717 10.9656 20.2698 30.2385 45.524 23.7518 189.9843 71.5755 88.8066 94.1085 91.6689 68.271 10.4962 78.6905 2.9515 28.2473 48.9301 64.1406 3.5967 1282.1694 837.9092 837.9092 734.65 99.1912 305.5629 175.7296 74.465 357.5079 1311.1005 226.3364 468.2369 131.0627 63.6234 374.1171 214.7325 236.1759 1324.7578;
	3.9059 52.7778 92.5687 111.5197 14.6129 35.3814 31.7365 10.6235 10.7835 10.998 20.3297 30.3279 45.6585 35.2123 200.348 75.4799 93.651 99.2421 85.9192 70.7746 10.5788 82.5565 23.2949 46.2262 98.6511 74.0803 10.1909 1225.1412 850.2132 850.2132 742.1575 101.8907 286.3974 182.1741 110.3953 362.7576 1328.24 280.3198 469.8391 264.244 106.9113 392.4974 217.7615 268.5667 1342.0758;
	3.6459 49.2648 88.308 112.678 14.431 34.9576 31.9107 18.4486 10.3473 10.6651 19.7143 29.4098 44.2763 58.2145 192.9086 72.6772 90.1736 95.557 85.8706 57.6904 10.6369 81.5677 21.2602 53.9456 102.3203 73.6933 13.4667 1066.4776 793.2923 793.2923 675.5128 106.9294 286.2352 148.4953 182.5103 338.4714 1204.7483 288.7173 470.7832 274.0722 116.5953 387.7961 212.4916 267.8744 1217.2978;
	3.6162 48.8626 91.1893 111.9097 14.4269 34.2028 30.9806 18.036 9.6274 12.3206 22.7745 33.975 51.1492 63.4406 197.5452 74.424 92.3409 97.8538 56.9449 64.8141 10.3269 79.8065 26.021 86.6574 102.2393 73.2477 13.3505 804.3017 829.6871 829.6871 726.5596 108.4537 189.8165 166.8317 198.8947 353.9998 1197.9118 294.4645 465.9887 273.8552 120.3048 379.4229 213.6667 267.5218 1210.3901;
	3.5618 48.1275 89.9164 113.8445 14.5292 32.3746 30.4912 17.8265 19.0748 9.7614 18.0439 26.9179 40.5247 53.7373 182.9787 68.9361 85.5319 90.6383 58.3581 55.0723 10.1637 75.5407 17.7071 86.8014 98.3144 71.2582 12.9064 622.3634 821.5725 821.5725 735.9659 107.7231 194.5271 141.7561 168.4738 350.5376 1117.2605 272.9135 440.0702 263.3422 119.734 359.1423 207.184 262.4869 1128.8987;
	3.5986 48.6243 90.3947 116.7949 14.2584 33.2104 31.1073 18.214 27.2201 15.1724 28.046 41.8391 62.9885 65.3322 196.6792 74.0977 91.9361 97.4248 41.9846 66.4154 10.3691 77.4908 24.4476 84.4602 101.4023 72.8132 13.3532 494.0652 806.3406 806.3406 719.9421 100.6205 139.9486 170.9533 204.8254 344.0387 941.677 265.3755 436.9012 271.6134 122.8846 368.4136 202.7521 258.6469 951.4861;
	2.9691 40.1187 88.7465 112.9638 14.225 31.6175 29.0494 18.3439 26.8914 17.1787 31.7545 47.3715 71.3176 61.9348 190.0296 71.5926 88.8278 94.1309 51.1775 60.1656 9.6831 73.7742 32.5386 86.1687 99.244 75.5627 13.4847 333.6908 777.0641 777.0641 701.7508 102.7433 170.5917 154.8665 194.1739 331.5473 740.9834 236.541 428.1082 265.8322 122.5668 350.7435 188.5147 264.6926 748.702;
	1.8783 25.3796 89.5995 113.1622 13.5747 20.2386 24.6347 18.378 27.2193 26.1079 48.26 71.9945 108.3873 60.9026 187.6877 70.7102 87.7331 92.9709 88.7729 56.6287 8.2116 47.2234 58.4445 86.4853 99.4211 72.5195 13.7786 327.0925 672.9443 672.9443 604.3367 102.5887 295.9098 145.7625 190.9379 287.1229 610.2187 210.4048 393.8371 266.3064 120.9333 224.5133 165.793 272.4391 616.5751;
	2.2422 30.2973 91.9135 117.9166 14.0136 13.3745 25.8285 18.4362 28.1432 30.0685 55.5812 82.9163 124.83 59.0348 188.5159 71.0223 88.1202 93.3812 88.703 59.2471 8.6095 31.2071 73.8928 86.9504 100.4609 74.0247 13.679 347.5002 610.2814 610.2814 568.7664 95.0147 295.6765 152.5023 185.0821 260.3867 477.7184 189.9643 449.9777 269.0917 122.2775 148.3677 144.5175 273.9812 482.6947;
	2.3663 31.9738 93.9598 120.4194 12.4395 10.3867 22.4736 18.6666 28.1054 29.5051 54.5396 81.3624 122.4907 60.5657 202.9433 76.4577 94.8642 100.5277 91.0669 70.2218 7.4912 24.2356 75.4527 88.7465 104.4423 75.6706 13.9974 499.9864 503.4099 503.4099 419.7568 87.9689 303.5562 180.7512 189.8818 214.7882 457.3637 180.156 451.6944 279.7562 120.6586 115.2228 123.4676 270.0161 462.1279;
	3.5759 48.3177 94.4532 95.9425 14.3351 28.6259 15.9259 18.7817 24.6758 28.5155 52.7105 78.6337 118.3825 41.5651 191.2791 72.0633 89.4119 94.7499 87.4414 67.0736 5.3086 66.7938 73.2126 88.1201 103.7321 75.0518 13.9093 518.876 522.8825 522.8825 389.0864 41.6916 291.4714 172.6476 130.3121 223.0965 491.6769 151.398 450.1732 277.8539 119.0526 317.5568 90.0742 274.0149 496.7985;
	3.3327 45.032 92.4643 70.7641 14.1043 32.9017 13.7101 18.5875 27.0745 26.3692 48.7432 72.7152 109.4723 59.0074 187.3136 70.5693 87.5582 92.7856 85.2441 67.8111 4.57 76.7707 71.156 88.8037 104.8477 74.4249 13.7755 638.735 582.5609 582.5609 408.9215 29.2842 284.1468 174.546 184.9962 248.5593 610.0092 108.741 187.079 280.842 120.2235 364.99 111.2191 269.8541 616.3635;
	3.7793 51.0665 88.6604 64.4726 14.3692 32.5779 27.5218 18.5182 26.319 11.988 22.1597 33.0579 49.7685 57.2657 158.7963 59.8256 74.2281 78.6596 65.0959 65.4619 9.1739 76.0151 47.093 88.1493 102.4937 71.8381 13.4711 714.7261 591.7844 591.7844 389.3186 24.5255 216.9863 168.4991 179.5357 252.4947 788.3241 74.1658 408.9768 274.5367 120.8729 361.3977 120.5352 254.8402 796.5358;
	3.9065 52.7848 89.3993 54.1131 14.6658 33.8614 28.1478 18.5605 26.3927 19.9777 36.9285 55.09 82.9377 63.0099 150.4408 56.6777 70.3223 74.5207 26.5831 62.0132 9.3826 79.0098 40.4581 85.1453 103.05 73.858 13.7402 1144.494 698.2993 698.2993 460.5796 37.9744 88.6104 159.6221 197.5444 297.941 1061.075 95.2777 448.0877 276.0268 119.822 375.6353 151.3486 236.8611 1072.1279;
	3.8111 51.4961 62.1265 38.72 14.7824 32.8803 1.2631 18.61 26.9361 24.846 45.9275 68.5147 103.1486 63.3513 180.1731 67.8792 84.2204 89.2485 33.3277 67.8736 0.421 76.7208 56.2938 77.9227 103.5981 72.5159 13.2755 1221.4667 597.5004 597.5004 572.7468 61.4519 111.0924 174.7068 198.615 254.9335 1124.5796 140.0416 424.0075 277.4948 120.3887 364.7524 157.017 218.1614 1136.294;
	3.8537 52.0715 54.8956 58.6661 14.6084 32.1865 28.0201 18.035 6.5452 21.5418 39.8196 59.403 89.4309 62.4697 173.4937 65.3628 81.0982 85.9399 50.5208 69.5243 9.34 75.1019 50.7429 85.7218 100.3801 72.8387 13.1593 1233.5429 712.9032 712.9032 427.9384 72.3128 168.4028 178.9557 195.8509 304.172 1067.9148 194.3088 378.1744 268.8752 118.3849 357.0559 137.5546 232.1402 1079.0389;
	3.7628 50.8437 36.7233 77.0321 14.01 31.9036 0.0144 17.9987 26.3507 24.665 45.5929 68.0157 102.3972 62.9341 185.5574 69.9077 86.7373 91.9156 49.3748 68.0101 0.0048 74.4418 53.6307 84.8865 98.5305 72.9925 13.4916 1230.3688 728.5496 728.5496 539.301 89.0739 164.5825 175.0583 197.3069 310.8478 1131.3097 227.4431 415.7666 263.921 119.3736 353.9174 130.9969 240.7994 1143.0942;
	3.9179 52.94 61.0306 98.7089 14.7233 33.18 30.5421 18.6445 27.7333 28.7075 53.0653 79.163 119.1795 66.1556 181.2264 68.276 84.7128 89.7703 46.0011 68.1836 10.1807 77.42 56.4699 89.6531 103.5429 74.4827 13.51 1281.9193 760.2381 760.2381 612.0341 109.4613 153.3368 175.5047 207.4066 324.3683 1194.5421 260.7587 449.6218 277.3469 123.2096 368.0767 152.0417 267.1966 1206.9852;
	3.9312 53.1193 89.7497 109.1101 15.3484 33.8189 29.9727 18.9432 27.4139 28.9548 53.5225 79.845 120.2063 68.0481 186.0879 70.1076 86.9853 92.1784 36.0053 71.2681 9.9909 78.9108 55.1333 89.8644 104.4665 74.5589 13.478 1228.3282 747.3977 747.3977 636.9561 110.8933 120.0176 183.4443 213.34 318.8897 1219.5332 237.506 468.1337 279.8209 124.0455 375.1643 173.2821 277.5202 1232.2367;
];