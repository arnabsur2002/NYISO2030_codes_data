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
	3.686 49.8065 89.1812 115.5927 14.7602 14.6635 14.6935 18.948 27.5915 26.1974 48.4255 72.2412 108.7588 6.0689 15.8412 5.9681 7.4048 7.8469 13.3713 26.5775 4.8978 34.2148 60.6492 87.1559 102.1236 72.7317 9.3138 677.2105 391.9362 391.9362 217.9419 42.3838 44.5709 68.4105 19.0269 167.2261 508.9022 57.7163 308.5309 273.5454 21.1255 162.6671 109.3162 211.0112 514.2033;
	3.6369 49.1419 90.0802 113.456 14.6915 16.31 13.9103 18.3493 26.6425 26.0429 48.14 71.8153 108.1176 6.5934 6.8988 2.5991 3.2248 3.4173 11.0587 15.0784 4.6368 38.0566 63.1464 83.3067 98.4969 72.7927 8.4771 664.624 365.3767 365.3767 177.2175 35.4643 36.8623 38.8118 20.6713 155.8941 498.5792 49.7333 312.4202 263.8309 16.2475 180.9322 109.9269 203.5501 503.7728;
	3.2512 43.9309 91.6094 114.2754 14.533 13.5664 12.4074 18.3335 27.4484 26.0689 48.1879 71.8869 108.2253 6.7345 12.2389 4.6109 5.721 6.0625 23.4619 22.4761 4.1358 31.6549 66.4514 82.9883 99.1629 75.2511 9.0934 557.3977 321.8466 321.8466 146.0626 33.6406 78.2065 57.8536 21.1135 137.3212 388.4386 35.7003 246.3322 265.615 42.6171 150.4965 83.5789 202.6799 392.4848;
	3.0636 41.3963 91.3553 111.1808 14.6604 12.0858 11.8042 18.1592 26.9929 25.2426 46.6606 69.6084 104.7951 9.0961 5.2316 1.971 2.4455 2.5915 11.2093 23.7094 3.9347 28.2002 68.4657 83.6281 101.878 74.9059 10.0481 478.9779 266.6216 266.6216 148.6475 28.2259 37.3643 61.0282 28.5176 113.7585 314.2669 27.8877 184.729 272.8875 26.1234 134.0719 73.6457 207.4862 317.5405;
	2.5661 34.6733 91.5143 114.8068 14.8689 14.2983 10.505 18.4676 18.9858 24.7177 45.6903 68.1609 102.6159 13.3397 12.3111 4.6381 5.7547 6.0983 19.5925 24.3721 3.5017 33.3627 60.1832 84.6905 103.4201 75.2244 10.4081 381.551 230.1553 230.1553 152.3608 29.4515 65.3084 62.7338 41.8217 98.1996 213.4874 35.4941 179.473 277.0182 15.6385 158.6157 83.0465 220.5337 215.7112;
	3.0404 41.0828 91.7706 115.1595 14.7714 20.5629 10.006 18.7114 10.8892 22.3928 41.3927 61.7498 92.964 28.0783 15.3159 5.7702 7.1593 7.5867 30.0604 26.2716 3.3353 47.9801 58.0723 86.2438 104.0406 74.6824 9.3046 282.7103 213.732 213.732 138.754 24.8837 100.2014 67.6233 88.0294 91.1923 157.9149 33.3244 181.4914 278.6801 13.6709 228.1111 85.1603 217.5274 159.5599;
	2.4618 33.264 90.9471 113.4151 14.4626 21.6293 10.7675 17.6709 12.8063 29.2366 54.0433 80.622 121.376 41.8849 22.5209 8.4846 10.5272 11.1557 38.4411 36.2696 3.5892 50.4683 71.7283 87.6246 102.8353 73.3562 11.9377 250.3827 231.3363 231.3363 104.8315 16.7941 128.1369 93.3581 131.3148 98.7035 175.5322 25.661 149.2094 275.4517 11.8146 239.9408 84.3135 233.6206 177.3606;
	1.6613 22.4484 69.3604 113.1418 14.6912 18.6412 12.0122 17.6358 19.6381 30.5589 56.4877 84.2686 126.8659 47.1642 29.9804 11.295 14.0141 14.8508 49.6971 54.633 4.0041 43.496 75.5093 85.2344 102.8931 75.4371 12.9238 152.6714 180.1904 180.1904 107.6667 10.1204 165.6571 140.6254 147.8662 76.8812 121.4226 29.8098 184.1555 275.6066 11.6664 206.7925 82.4558 212.5874 122.6875;
	2.7948 37.7633 86.7401 109.9055 15.2301 25.3557 11.826 17.9459 22.9499 29.9753 55.4089 82.6591 124.4429 49.7324 25.9239 9.7667 12.1179 12.8414 66.5365 53.9826 3.942 59.1632 75.5558 88.9946 105.2713 76.3877 12.7465 144.0193 145.3542 145.3542 97.1909 7.9542 221.7884 138.9515 155.9179 62.0178 123.6967 28.5972 153.6418 281.9768 24.284 281.2789 79.0287 245.1029 124.9852;
	1.9706 26.6269 86.3424 112.3457 13.8389 14.3767 10.4411 18.4802 26.5395 29.7507 54.9938 82.0399 123.5107 48.5279 29.0826 10.9567 13.5944 14.406 69.3404 42.2298 3.4804 33.5457 71.9083 86.3417 104.7365 76.5883 12.9539 259.0775 227.8185 227.8185 103.2081 9.8941 231.1347 108.6997 152.1415 97.2025 210.274 21.2317 148.9997 280.5441 85.587 159.4857 83.085 232.7266 212.4643;
	1.4708 19.8743 76.6202 100.441 12.3505 23.1253 14.3421 17.6931 27.3665 29.4207 54.3838 81.1299 122.1406 53.3227 11.5579 4.3544 5.4026 5.7252 61.5114 33.8486 4.7807 53.9589 73.4375 80.8607 96.0008 75.1649 12.0003 345.8488 291.849 291.849 161.7287 13.9824 205.038 87.1263 167.1737 124.5222 313.1167 28.4497 185.373 257.1451 50.4712 256.5363 87.6597 190.3487 316.3783;
	1.7253 23.3121 86.2809 93.0248 13.0605 30.2223 20.2669 18.3403 27.9378 29.8333 55.1464 82.2675 123.8533 55.9081 0.3577 0.1347 0.1672 0.1772 75.754 43.1804 6.7556 70.5188 75.0898 81.9291 100.2245 75.4123 12.4857 446.1615 330.7259 330.7259 264.6319 18.9624 252.5134 111.1464 175.2795 141.1097 405.13 47.1321 222.0416 268.4584 42.9384 335.2665 105.0733 204.7171 409.3501;
	2.8459 38.4542 89.7643 91.9239 14.1797 29.574 20.7436 17.8509 27.8323 29.7101 54.9186 81.9278 123.3418 58.6104 40.547 15.2759 18.9534 20.0849 82.8476 58.0476 6.9145 69.0061 74.377 84.1644 103.589 75.349 11.6042 608.9006 379.8943 379.8943 297.6133 25.4117 276.1586 149.4147 183.7515 162.0882 538.2656 57.8303 223.4796 277.4706 27.0805 328.0747 129.8572 222.5013 543.8726;
	3.4807 47.0325 86.3055 104.0528 14.4662 28.1799 20.9689 17.8212 27.2775 30.1901 55.806 83.2516 125.3348 57.8515 54.2859 20.4519 25.3755 26.8904 78.6734 56.4746 6.9896 65.753 68.7595 81.7165 97.977 76.133 11.1644 777.7718 490.5663 490.5663 366.724 31.4003 262.2448 145.3658 181.3722 209.3083 683.7124 76.768 278.1718 262.4384 14.6588 312.6086 128.8059 254.545 690.8344;
	3.8562 52.1061 90.6265 110.4239 15.2318 32.7675 26.432 18.1759 28.4768 27.6221 51.0591 76.1702 114.6738 66.29 93.7683 35.3267 43.8312 46.448 83.0685 55.9997 8.8107 76.4575 52.2438 86.0696 101.2714 76.0881 12.5939 1062.295 639.7856 639.7856 489.9279 39.8504 276.8948 144.1433 207.828 272.9752 964.7641 116.9744 442.411 271.2627 49.438 363.5009 164.1811 263.0617 974.8137;
	3.7231 50.3077 92.4949 114.1095 15.2741 32.1044 25.8425 18.1882 27.8611 21.7631 40.2287 60.0133 90.3497 65.5899 129.93 48.9504 60.7347 64.3607 84.3285 59.8391 8.6142 74.9102 45.9197 87.7508 103.7127 75.7063 12.5144 1058.747 670.6491 670.6491 665.0424 49.1889 281.0948 154.0261 205.6331 286.1436 972.3646 167.3237 384.1308 277.802 18.6435 356.1444 165.6881 265.0143 982.4934;
	3.7452 50.6062 89.8479 113.7042 14.9882 32.3147 28.5079 18.5408 25.9168 16.5542 30.6003 45.6496 68.7252 62.9736 140.7518 53.0274 65.7933 69.7212 85.5985 66.9054 9.5026 75.4009 16.1897 85.6082 103.1784 76.5595 12.8143 1043.2623 664.2601 664.2601 622.819 83.2295 285.3283 172.2147 197.4308 283.4176 974.3035 204.0107 381.8577 276.3706 1.4886 358.4774 202.5342 280.2216 984.4525;
	3.6781 49.6993 89.7938 109.1635 14.7393 30.98 25.8607 18.3499 22.241 9.1277 16.8725 25.1704 37.8939 63.8314 171.8873 64.7575 80.3473 85.1442 84.9933 68.6441 8.6202 72.2867 32.7934 84.0774 102.2869 75.7354 13.1987 1103.483 660.5708 660.5708 629.4579 92.2119 283.3111 176.69 200.12 281.8435 986.9782 226.9481 391.3852 273.9828 100.9471 343.6717 185.597 269.7771 997.2592;
	3.7004 50.0008 88.4527 104.1376 15.061 32.2461 28.8015 13.3405 24.0592 18.1188 33.4923 49.9639 75.2204 64.7101 172.2937 64.9107 80.5373 85.3455 86.6986 67.5477 9.6005 75.2408 45.1957 85.5543 103.646 70.7631 12.5828 1193.1655 697.1486 697.1486 606.1008 99.617 288.9954 173.8679 202.875 297.4501 1011.0706 240.5566 424.6126 277.6231 111.3943 357.7163 198.8703 280.2526 1021.6025;
	3.8286 51.7327 93.2598 100.543 15.1977 33.4304 30.3706 9.2482 25.7367 18.0003 33.2733 49.6372 74.7285 63.2168 189.9 71.5437 88.7672 94.0668 89.3961 66.9451 10.1235 78.0043 47.064 41.1583 47.5099 67.4874 11.6402 1233.4697 747.2322 747.2322 672.3335 106.038 297.9869 172.3169 198.1932 318.8191 1094.9787 259.3724 445.0701 127.2587 117.6708 370.8548 203.794 258.3448 1106.3847;
	3.8955 52.6371 93.5547 113.0983 15.1644 33.9723 30.4282 18.9758 15.7582 15.5468 28.7381 42.8716 64.5429 61.272 186.7889 70.3716 87.313 92.5257 84.4183 67.4153 10.1427 79.2687 27.5083 80.4865 105.389 75.6311 14.1587 1273.0952 767.3928 767.3928 675.8233 104.0009 281.3944 173.5271 192.0959 327.4209 1057.0139 248.1679 438.3772 282.2919 120.01 376.866 206.287 282.5342 1068.0245;
	3.8887 52.5446 93.4934 121.4217 15.2528 34.219 31.1564 18.7781 7.8067 19.0516 35.2166 52.5362 79.093 61.6103 183.5936 69.1678 85.8193 90.9429 84.3301 69.335 10.3855 79.8444 44.6331 89.1844 106.487 75.5063 14.0705 1293.1774 802.737 802.737 727.3342 112.4628 281.1002 178.4685 193.1567 342.5011 1147.5074 260.9427 435.9938 285.233 121.35 379.6033 208.0111 262.5943 1159.4606;
	3.9068 52.7896 93.7725 115.1109 15.2451 33.5012 31.5197 18.8615 18.6497 18.5404 34.2717 51.1266 76.9708 61.3969 186.7668 70.3633 87.3026 92.5147 84.2079 66.7753 10.5066 78.1694 48.5693 87.6195 100.3648 75.9402 14.0238 1293.7501 801.5219 801.5219 714.3029 115.3426 280.693 171.8797 192.4876 341.9827 1178.4005 264.0804 437.8805 268.8342 120.1559 371.6397 206.778 271.3981 1190.6755;
	3.8428 51.9252 92.422 116.4473 15.0441 33.0156 32.4846 18.9599 10.3259 18.1301 33.5133 49.9952 75.2675 61.2174 188.969 71.193 88.332 93.6056 83.9434 68.2825 10.8282 77.0365 48.5512 88.2035 106.4724 75.0339 13.9265 1210.6843 796.3788 796.3788 706.7867 113.677 279.8112 175.7593 191.9249 339.7883 1138.474 275.2516 438.1489 285.1939 121.0889 366.2536 206.9583 273.9222 1150.3331;
];